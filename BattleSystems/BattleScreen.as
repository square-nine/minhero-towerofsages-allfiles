package BattleSystems
{
   import BattleSystems.LoseScreen.LoseScreen;
   import BattleSystems.Other.AIMoveSystem;
   import BattleSystems.Other.MoveQueueObject;
   import BattleSystems.Other.PlayerMoveSystem;
   import BattleSystems.Visuals.BattleScreenVisualController;
   import BattleSystems.WinScreen.WinScreen;
   import Minions.OwnedMinion;
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.ConformationBox;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseInterfacePieces.ToggleButton;
   import SharedObjects.BaseScreen;
   import SharedObjects.Gems.OwnedGem;
   import States.BackgroundMusicTracks;
   import States.BattleScreenStates;
   import States.BattleScreenViualControllerStates;
   import States.GameState;
   import States.MinionDexID;
   import States.ModStoneTypes;
   import States.StarUpgradeTypes;
   import States.TrainerType;
   import States.TutorialTypes;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Singleton;
   import com.greensock.*;
   import com.greensock.easing.*;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   
   public class BattleScreen extends BaseScreen
   {
       
      
      public var m_currState:int;
      
      public var m_battleScreenVisualController:BattleScreenVisualController;
      
      public var m_playerMoveSystem:PlayerMoveSystem;
      
      public var m_aiMoveSystem:AIMoveSystem;
      
      public var m_loseScreen:LoseScreen;
      
      public var m_winScreen:WinScreen;
      
      public var m_moveQueue:Vector.<MoveQueueObject>;
      
      private var m_currentSpotInQueue:int;
      
      private var m_doTiesGoToPlayer:Boolean;
      
      private var m_forfeitButton:TCButton;
      
      public var m_conformationBox:ConformationBox;
      
      private var m_currMinion:OwnedMinion;
      
      public var m_muteMusicButton:ToggleButton;
      
      public var m_muteSoundButton:ToggleButton;
      
      private var m_currentMovesTickedForMod:int;
      
      private var m_minionForMoveTimerMod:OwnedMinion;
      
      public var m_extraPlayerMinionsForMod:int;
      
      public var m_extraOpponentMinionsForMod:int;
      
      public var m_resurectionModCounts:Vector.<int>;
      
      public var m_resurectionCounts:Vector.<int>;
      
      public var m_sponsorURL_part1:String;
      
      public var m_sponsorURL_part2:String;
      
      public var m_sponsorURL_part3:String;
      
      public var m_sponsorURL_part4:String;
      
      public var m_sponsorURL_part5:String;
      
      public var m_sponsorURL_part6:String;
      
      public var m_sponsorURL_part7:String;
      
      public var m_sponsorURL_part8:String;
      
      public var m_sponsorURL_part9:String;
      
      public var m_sponsorURL_part10:String;
      
      public var m_sponsorURL_part11:String;
      
      public var m_sponsorURL_part12:String;
      
      private var m_sponsorTimer:Timer;
      
      public function BattleScreen()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.m_battleScreenVisualController = new BattleScreenVisualController();
         this.m_playerMoveSystem = new PlayerMoveSystem();
         if(_loc1_ || _loc2_)
         {
            this.m_aiMoveSystem = new AIMoveSystem();
            this.m_loseScreen = new LoseScreen();
            this.m_winScreen = new WinScreen();
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_resurectionModCounts = new Vector.<int>(5);
               if(_loc1_)
               {
                  this.m_resurectionCounts = new Vector.<int>(5);
                  addr79:
                  this.m_sponsorTimer = new Timer(100000 + Math.random() * 250000,0);
                  if(_loc1_)
                  {
                     addr92:
                     this.m_sponsorTimer.addEventListener("timer",this.timerHandler);
                     this.m_sponsorTimer.start();
                  }
               }
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr79);
      }
      
      override public function LoadSprites() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.LoadSprites();
            this.m_battleScreenVisualController.LoadSprites(this);
            if(!_loc1_)
            {
               this.m_winScreen.LoadSprites(this);
               if(_loc2_)
               {
                  this.m_loseScreen.LoadSprites(this);
                  if(_loc2_ || _loc1_)
                  {
                     addr41:
                     this.m_forfeitButton = new TCButton(this.ForfeitButtonPressed,"forfeitButton");
                     §§push(this.m_forfeitButton);
                     if(!_loc1_)
                     {
                        §§push(624);
                        if(!_loc1_)
                        {
                           §§pop().x = §§pop();
                           addr58:
                           §§push(this.m_forfeitButton);
                           §§push(0);
                        }
                        §§pop().y = §§pop();
                        addChild(this.m_forfeitButton);
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr58);
                  }
                  addr71:
                  this.m_muteMusicButton = new ToggleButton(this.ToggleMuteMusic,"menu_muteMusicButton_on","menu_muteMusicButton_off");
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(this.m_muteMusicButton);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(4);
                        if(_loc2_ || Boolean(this))
                        {
                           §§pop().x = §§pop();
                           addr106:
                           §§push(this.m_muteMusicButton);
                           §§push(6);
                        }
                        §§pop().y = §§pop();
                        addr108:
                        addChild(this.m_muteMusicButton);
                        if(_loc2_)
                        {
                           this.m_sponsorURL_part1 = "h";
                           §§goto(addr124);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr106);
                  }
                  addr124:
                  this.m_sponsorURL_part2 = "t";
                  if(!(_loc1_ && _loc1_))
                  {
                     this.m_sponsorURL_part3 = "p";
                     addr137:
                     this.m_sponsorURL_part4 = ":";
                     this.m_sponsorURL_part5 = "/";
                     this.m_sponsorURL_part6 = "so";
                     if(!_loc1_)
                     {
                        this.m_sponsorURL_part7 = "go";
                        addr151:
                        this.m_sponsorURL_part8 = "o";
                        if(!(_loc1_ && _loc2_))
                        {
                           this.m_sponsorURL_part9 = "d";
                           this.m_sponsorURL_part10 = ".";
                           this.m_sponsorURL_part11 = "c";
                           this.m_sponsorURL_part12 = "m";
                           addr173:
                           this.m_muteSoundButton = new ToggleButton(this.ToggleSoundMusic,"menu_muteSoundButton_on","menu_muteSoundButton_off");
                           §§push(this.m_muteSoundButton);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(36);
                              if(_loc2_ || _loc1_)
                              {
                                 §§pop().x = §§pop();
                                 addr214:
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr208:
                                    §§push(this.m_muteSoundButton);
                                    §§push(5);
                                 }
                                 this.m_conformationBox = new ConformationBox();
                                 §§push(this.m_conformationBox);
                                 if(_loc2_)
                                 {
                                    §§push(490);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§pop().x = §§pop();
                                       §§goto(addr251);
                                    }
                                    §§pop().y = §§pop();
                                    if(_loc2_ || Boolean(this))
                                    {
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr242);
                              }
                              §§pop().y = §§pop();
                              addChild(this.m_muteSoundButton);
                              §§goto(addr214);
                           }
                           §§goto(addr208);
                        }
                     }
                     §§goto(addr214);
                  }
                  addr251:
                  if(!_loc1_)
                  {
                     addr242:
                     §§push(this.m_conformationBox);
                     §§push(10);
                  }
                  addChild(this.m_conformationBox);
                  return;
               }
               §§goto(addr173);
            }
            §§goto(addr108);
         }
         §§goto(addr41);
      }
      
      private function ToggleMuteMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            Singleton.dynamicData.m_isMusicOn = this.m_muteMusicButton.m_isToggleOn;
         }
      }
      
      private function ToggleSoundMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            Singleton.dynamicData.m_isSoundOn = this.m_muteSoundButton.m_isToggleOn;
         }
      }
      
      override public function StartActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super.StartActivate();
         this.m_muteSoundButton.m_isToggleOn = Singleton.dynamicData.m_isSoundOn;
         this.m_muteMusicButton.m_isToggleOn = Singleton.dynamicData.m_isMusicOn;
         Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
         if(!_loc5_)
         {
            §§push(Singleton.utility.m_analyticsController);
            §§push("Battle Started");
            §§push("");
            if(_loc4_)
            {
               §§push(Singleton.dynamicData);
               if(!_loc5_)
               {
                  §§push(§§pop().m_currFloorOfTower);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        addr49:
                        §§push(§§pop() + "_");
                        if(!(_loc5_ && _loc2_))
                        {
                           addr61:
                           §§push(§§pop() + Singleton.dynamicData.m_currRoomOfTower);
                        }
                     }
                     §§pop().LogCounterMetric_enterBattle(§§pop(),§§pop());
                     if(_loc4_)
                     {
                        this.m_currentMovesTickedForMod = 0;
                        if(_loc4_)
                        {
                           this.m_extraPlayerMinionsForMod = 0;
                           if(_loc4_)
                           {
                           }
                           addr78:
                           var _loc1_:int = 0;
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc5_)
                              {
                                 if(§§pop() >= 5)
                                 {
                                    if(_loc4_)
                                    {
                                       addr111:
                                       this.m_doTiesGoToPlayer = Math.random() * 1000 > 500;
                                    }
                                    break;
                                 }
                                 this.m_resurectionModCounts[_loc1_] = 0;
                                 if(!_loc5_)
                                 {
                                    this.m_resurectionCounts[_loc1_] = 0;
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    _loc1_++;
                                    if(_loc4_ || Boolean(_loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr111);
                              }
                              break;
                           }
                           var _loc2_:* = §§pop();
                           while(_loc2_ < 5)
                           {
                              if(Singleton.dynamicData.m_opponentsMinions[_loc2_] != null)
                              {
                                 if(_loc5_ && Boolean(_loc1_))
                                 {
                                    continue;
                                 }
                                 §§push(Singleton.dynamicData);
                                 if(!_loc5_)
                                 {
                                    §§pop().SetHasMinionBeenSeen(Singleton.dynamicData.m_opponentsMinions[_loc2_].m_minionDexID,true);
                                    §§push(Singleton.dynamicData);
                                    if(!_loc5_)
                                    {
                                       §§pop().m_opponentsMinions[_loc2_].SetupForCombat();
                                       if(!_loc5_)
                                       {
                                          Singleton.dynamicData.m_opponentsMinions[_loc2_].CalculateCurrStats();
                                          addr172:
                                          §§push(Singleton.dynamicData);
                                          §§push(_loc2_);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                             if(_loc4_)
                                             {
                                                if(§§pop() != null)
                                                {
                                                   if(_loc5_ && Boolean(_loc1_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(Singleton.dynamicData);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ || Boolean(_loc1_))
                                                      {
                                                         addr219:
                                                         §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            §§pop().SetupForCombat();
                                                            §§push(Singleton.dynamicData);
                                                         }
                                                         §§pop().CalculateCurrStats();
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr227:
                                                            _loc2_++;
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      addr218:
                                                      §§goto(addr219);
                                                      §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                   }
                                                   §§goto(addr218);
                                                   §§push(_loc2_);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                                 var _loc3_:TrainerDataObject = §§pop().m_currTrainerData;
                                 if(!(_loc5_ && Boolean(_loc1_)))
                                 {
                                    §§push(_loc3_.IsModActive(ModStoneTypes.MOD_STONE_MOVE_TIMER));
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             this.m_minionForMoveTimerMod = new OwnedMinion(MinionDexID.DEX_ID_battleModMinion_1 + _loc3_.m_movePower,false);
                                             §§push(this.m_minionForMoveTimerMod);
                                             if(!_loc5_)
                                             {
                                                §§pop().SetLevel(Singleton.dynamicData.m_opponentsMinions[0].m_currLevel);
                                                if(_loc4_ || Boolean(_loc1_))
                                                {
                                                   addr282:
                                                   §§push(this.m_minionForMoveTimerMod);
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      §§pop().CalculateCurrStats();
                                                      addr294:
                                                      this.m_minionForMoveTimerMod.ReFillHealthAndEnergy();
                                                      if(Singleton.staticData.AUTO_WIN_BATTLES)
                                                      {
                                                         §§push(0);
                                                         if(_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                            }
                                                            addr331:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() >= Singleton.dynamicData.m_opponentsMinions.length)
                                                            {
                                                               if(_loc4_ || Boolean(_loc3_))
                                                               {
                                                                  addr344:
                                                                  this.m_battleScreenVisualController.SetupVisuals();
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            §§push(Singleton.dynamicData);
                                                            if(!_loc5_)
                                                            {
                                                               if(§§pop().m_opponentsMinions[_loc2_] != null)
                                                               {
                                                                  Singleton.dynamicData.m_opponentsMinions[_loc2_].m_currHealth = 0;
                                                                  addr316:
                                                               }
                                                               _loc2_++;
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         this.PlayStartingAnimation();
                                                         §§goto(addr349);
                                                      }
                                                      §§goto(addr344);
                                                      addr292:
                                                   }
                                                   §§goto(addr294);
                                                }
                                                addr349:
                                                return;
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr292);
                                       }
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr235);
                           §§push(Singleton.dynamicData);
                        }
                        §§goto(addr78);
                     }
                     this.m_extraOpponentMinionsForMod = 0;
                     §§goto(addr78);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr49);
         }
         §§goto(addr78);
      }
      
      override public function FinishActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.FinishActivate();
            if(_loc1_)
            {
               addr19:
               TweenLite.to(this,0.2,{"onComplete":Singleton.utility.CheckForSiteLock});
            }
            return;
         }
         §§goto(addr19);
      }
      
      override public function DeActivate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:OwnedMinion = null;
         if(_loc4_)
         {
            super.DeActivate();
         }
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            _loc2_ = Singleton.dynamicData.GetOwnedMinionAt(_loc1_);
            if(!_loc3_)
            {
               if(_loc2_ != null)
               {
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc2_.ClearBuffsAndDebuffs();
                     if(_loc4_ || Boolean(this))
                     {
                        addr59:
                        _loc2_.CalculateCurrStats();
                        if(_loc3_ && Boolean(this))
                        {
                           continue;
                        }
                     }
                  }
               }
               _loc1_++;
               continue;
            }
            §§goto(addr59);
         }
         if(!(_loc3_ && Boolean(this)))
         {
            this.m_battleScreenVisualController.Cleanup();
            if(!_loc3_)
            {
               addr91:
               this.m_winScreen.DeActivate();
            }
            return;
         }
         §§goto(addr91);
      }
      
      public function PlayStartingAnimation() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         if(!(_loc4_ && _loc3_))
         {
            this.m_currState = BattleScreenStates.BSS_PLAY_STARTING_ANIMATION;
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(this.m_battleScreenVisualController);
               if(_loc3_ || _loc2_)
               {
                  §§pop().UpdateMinionVisuals();
                  addr51:
                  if(_loc3_)
                  {
                     §§push(this.m_battleScreenVisualController);
                  }
                  §§push(3.5);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop());
                  }
                  var _loc2_:* = §§pop();
                  §§push(Singleton.dynamicData);
                  if(!_loc4_)
                  {
                     §§push(TutorialTypes.TUTORIAL_BATTLE_BASICS);
                     if(_loc3_)
                     {
                        if(!§§pop().HasTutorialBeenSeen(§§pop()))
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§push(Singleton.dynamicData);
                              if(!_loc4_)
                              {
                                 §§push(TutorialTypes.TUTORIAL_BATTLE_BASICS);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(true);
                                    if(!_loc4_)
                                    {
                                       §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                       TweenLite.to(this,_loc2_,{
                                          "onComplete":Singleton.utility.m_tutorialHandler.BringIn_BattleBasicTuts,
                                          "onCompleteParams":[this.IntroTutFinished]
                                       });
                                    }
                                    else
                                    {
                                       addr384:
                                       §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                       if(_loc3_)
                                       {
                                          TweenLite.to(this,_loc2_,{
                                             "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ExtraMovesBattleModTut,
                                             "onCompleteParams":[this.IntroTutFinished]
                                          });
                                          if(!_loc3_)
                                          {
                                             addr545:
                                          }
                                       }
                                       else
                                       {
                                          addr428:
                                          §§push(Singleton.dynamicData.m_currTrainerData);
                                          if(!_loc4_)
                                          {
                                             §§push(ModStoneTypes.MOD_STONE_EXTRA_MINIONS);
                                             if(!_loc4_)
                                             {
                                                addr441:
                                                §§push(§§pop().IsModActive(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   addr440:
                                                   §§push(§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr444:
                                                      §§push(Singleton.dynamicData);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr453:
                                                         §§push(TutorialTypes.TUTORIAL_EXTRA_MINIONS_BATTLE_MOD);
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§push(true);
                                                            if(_loc3_ || Boolean(_loc1_))
                                                            {
                                                               addr470:
                                                               §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  TweenLite.to(this,_loc2_,{
                                                                     "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ExtraMinionsBattleModTut,
                                                                     "onCompleteParams":[this.IntroTutFinished]
                                                                  });
                                                                  addr558:
                                                                  TweenLite.to(this,1,{"onComplete":this.StartTheBattleTrack});
                                                               }
                                                               §§goto(addr558);
                                                            }
                                                            else
                                                            {
                                                               addr521:
                                                               §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                               addr522:
                                                               TweenLite.to(this,_loc2_,{
                                                                  "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ResurectionnBattleModTut,
                                                                  "onCompleteParams":[this.IntroTutFinished]
                                                               });
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr545);
                                                               }
                                                            }
                                                            §§goto(addr566);
                                                         }
                                                         else
                                                         {
                                                            addr494:
                                                            §§push(!§§pop().HasTutorialBeenSeen(§§pop()));
                                                            if(!_loc4_)
                                                            {
                                                               addr499:
                                                               if(§§pop() && Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION))
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr518:
                                                                     §§goto(addr521);
                                                                     §§push(Singleton.dynamicData);
                                                                     §§push(TutorialTypes.TUTORIAL_RESURECTION_BATTLE_MOD);
                                                                     §§push(true);
                                                                  }
                                                                  addr566:
                                                                  return;
                                                               }
                                                               §§push(TweenLite);
                                                               §§push(this);
                                                               §§push(_loc2_);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() - 0.3);
                                                               }
                                                               §§pop().to(§§pop(),§§pop(),{"onComplete":this.StartRound});
                                                               §§goto(addr558);
                                                               §§goto(addr558);
                                                            }
                                                            §§goto(addr507);
                                                         }
                                                      }
                                                      §§goto(addr518);
                                                   }
                                                   §§goto(addr522);
                                                }
                                                else
                                                {
                                                   §§push(Singleton.dynamicData);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr494);
                                                      §§push(TutorialTypes.TUTORIAL_RESURECTION_BATTLE_MOD);
                                                   }
                                                   §§goto(addr507);
                                                }
                                             }
                                          }
                                          §§goto(addr507);
                                       }
                                    }
                                    §§goto(addr558);
                                 }
                                 §§goto(addr494);
                              }
                              §§goto(addr507);
                           }
                           else
                           {
                              addr223:
                              §§push(Singleton.dynamicData.m_currTrainerData);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(ModStoneTypes.MOD_STONE_SHIELD);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(§§pop().IsModActive(§§pop()));
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr253:
                                          if(§§pop())
                                          {
                                             addr254:
                                             §§push(Singleton.dynamicData);
                                             if(!_loc4_)
                                             {
                                                §§push(TutorialTypes.TUTORIAL_SHIELD_BATTLE_MOD);
                                                if(_loc3_)
                                                {
                                                   addr262:
                                                   §§push(true);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                      if(_loc3_)
                                                      {
                                                         TweenLite.to(this,_loc2_,{
                                                            "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ShieldBattleModTut,
                                                            "onCompleteParams":[this.IntroTutFinished]
                                                         });
                                                         if(!(_loc3_ || Boolean(_loc1_)))
                                                         {
                                                            addr365:
                                                            §§push(Singleton.dynamicData);
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               addr374:
                                                               §§push(TutorialTypes.TUTORIAL_EXTRA_MOVES_BATTLE_MOD);
                                                               §§push(true);
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr470);
                                                            }
                                                            §§goto(addr453);
                                                         }
                                                         §§goto(addr558);
                                                      }
                                                      else
                                                      {
                                                         addr336:
                                                         §§push(Singleton.dynamicData.m_currTrainerData);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr344:
                                                            §§push(ModStoneTypes.MOD_STONE_MOVE_TIMER);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop().IsModActive(§§pop()));
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr357:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§goto(addr365);
                                                                     }
                                                                     §§goto(addr521);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr408:
                                                                     §§push(Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_EXTRA_MINIONS_BATTLE_MOD));
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr419:
                                                                           §§push(§§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr422:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr425:
                                                                                    §§pop();
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr507);
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                           §§goto(addr499);
                                                                        }
                                                                        §§goto(addr494);
                                                                     }
                                                                     §§goto(addr425);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr441);
                                                         }
                                                      }
                                                      §§goto(addr507);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                §§goto(addr518);
                                             }
                                             §§goto(addr336);
                                          }
                                          else
                                          {
                                             §§push(Singleton.dynamicData);
                                             §§push(TutorialTypes.TUTORIAL_EXTRA_MOVES_BATTLE_MOD);
                                             if(!_loc4_)
                                             {
                                                addr308:
                                                §§push(!§§pop().HasTutorialBeenSeen(§§pop()));
                                                §§push(!§§pop().HasTutorialBeenSeen(§§pop()));
                                                if(!(_loc4_ && Boolean(_loc1_)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         addr326:
                                                         §§pop();
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr558);
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                   §§goto(addr357);
                                                }
                                                §§goto(addr422);
                                             }
                                             §§goto(addr408);
                                          }
                                       }
                                       §§goto(addr425);
                                    }
                                    §§goto(addr419);
                                 }
                                 §§goto(addr507);
                              }
                              §§goto(addr344);
                           }
                        }
                        else
                        {
                           §§push(Singleton.dynamicData);
                           if(!_loc4_)
                           {
                              §§push(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_FOCUS_TARGETS));
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§pop();
                                          addr139:
                                          §§push(Singleton.dynamicData.m_currFloorOfTower);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§push(1);
                                             if(_loc3_)
                                             {
                                                addr151:
                                                §§push(§§pop() == §§pop());
                                                §§push(§§pop() == §§pop());
                                                if(_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         addr163:
                                                         if(Singleton.dynamicData.m_currRoomOfTower == 1)
                                                         {
                                                            §§push(Singleton.dynamicData);
                                                            §§push(TutorialTypes.TUTORIAL_FOCUS_TARGETS);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(true);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                                  TweenLite.to(this,_loc2_,{
                                                                     "onComplete":Singleton.utility.m_tutorialHandler.BringIn_FocusTargetsTut,
                                                                     "onCompleteParams":[this.IntroTutFinished]
                                                                  });
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr558);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr262);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(Singleton.dynamicData);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(TutorialTypes.TUTORIAL_SHIELD_BATTLE_MOD);
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  §§push(!§§pop().HasTutorialBeenSeen(§§pop()));
                                                                  §§push(!§§pop().HasTutorialBeenSeen(§§pop()));
                                                                  if(_loc3_)
                                                                  {
                                                                     addr212:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc4_ && Boolean(_loc1_)))
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr223);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  §§goto(addr422);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                         }
                                                         §§goto(addr507);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr422);
                                             }
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr326);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr507);
                           }
                        }
                        §§goto(addr374);
                     }
                     §§goto(addr408);
                  }
                  §§goto(addr139);
               }
               §§pop().PlayIntroAnimation();
            }
         }
         §§goto(addr51);
      }
      
      public function IntroTutFinished() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            TweenLite.to(this,0.9,{"onComplete":this.StartRound});
         }
      }
      
      private function StartTheBattleTrack() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(Singleton.utility);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop().m_soundController);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(BackgroundMusicTracks.MUSIC_BATTLE);
                  if(!_loc1_)
                  {
                     §§pop().ChangeMusicTrack(§§pop());
                     §§goto(addr65);
                  }
                  §§pop().FadeCurrentMusic(§§pop(),6);
                  §§goto(addr65);
               }
            }
            §§goto(addr62);
         }
         addr65:
         if(_loc2_)
         {
            addr62:
            §§push(Singleton.utility.m_soundController);
            §§push(1);
         }
      }
      
      public function StartRound() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:Vector.<Boolean> = null;
         var _loc7_:Vector.<Boolean> = null;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:int = 0;
         if(!(_loc11_ && _loc1_))
         {
            this.m_currState = BattleScreenStates.BSS_START_ROUND;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               §§push(5);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(Singleton.dynamicData);
                     if(!(_loc11_ && Boolean(_loc1_)))
                     {
                        if(§§pop().m_opponentsMinions[_loc3_] != null)
                        {
                           if(!_loc11_)
                           {
                              if(Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth > 0)
                              {
                                 if(_loc12_)
                                 {
                                    Singleton.dynamicData.m_opponentsMinions[_loc3_].m_hasMovedOnThisTurn = false;
                                    if(_loc11_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(Singleton.dynamicData);
                                    if(!(_loc11_ && Boolean(this)))
                                    {
                                       addr89:
                                       §§pop().m_opponentsMinions[_loc3_].TickTurn();
                                       if(!(_loc11_ && Boolean(_loc3_)))
                                       {
                                          addr100:
                                          _loc2_++;
                                          §§push(Singleton.dynamicData);
                                          §§push(_loc3_);
                                          if(_loc12_ || Boolean(_loc1_))
                                          {
                                             §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                             if(_loc12_)
                                             {
                                                if(§§pop() != null)
                                                {
                                                   §§push(Singleton.dynamicData);
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      addr125:
                                                      §§push(_loc3_);
                                                      if(!(_loc11_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop().m_currHealth);
                                                            if(!(_loc12_ || Boolean(_loc2_)))
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            if(!_loc12_)
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               §§push(Singleton.dynamicData);
                                                               §§push(_loc3_);
                                                               if(!(_loc11_ && Boolean(_loc1_)))
                                                               {
                                                                  addr158:
                                                                  §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                  if(!(_loc11_ && Boolean(_loc1_)))
                                                                  {
                                                                     addr166:
                                                                     §§pop().m_hasMovedOnThisTurn = false;
                                                                     addr176:
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr173:
                                                                        §§push(Singleton.dynamicData.GetOwnedMinionAt(_loc3_));
                                                                     }
                                                                     _loc3_++;
                                                                     if(!(_loc11_ && Boolean(_loc1_)))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr187:
                                                                     var _loc4_:* = false;
                                                                     var _loc5_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
                                                                     if(!(_loc11_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§push(Singleton.dynamicData);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(Boolean(§§pop().m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION)));
                                                                           if(_loc12_ || Boolean(_loc3_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc11_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             §§goto(addr236);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    §§goto(addr765);
                                                                                 }
                                                                                 §§goto(addr287);
                                                                              }
                                                                              addr236:
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc12_ || Boolean(this))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                    }
                                                                                    addr290:
                                                                                    if(§§pop() < 5)
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       if(!(_loc11_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          addr259:
                                                                                          if(§§pop().m_opponentsMinions[_loc3_] != null)
                                                                                          {
                                                                                             addr266:
                                                                                             if(Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth <= 0)
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(this.m_resurectionModCounts[_loc3_] == 0)
                                                                                                   {
                                                                                                      §§goto(addr280);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr280);
                                                                                             }
                                                                                          }
                                                                                          _loc3_++;
                                                                                          addr289:
                                                                                          §§goto(addr290);
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              addr292:
                                                                              §§push(_loc5_.IsModActive(ModStoneTypes.MOD_STONE_SHIELD));
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr280:
                                                                                 this.m_battleScreenVisualController.AnimateInTombstoneVisuals(_loc3_);
                                                                                 §§push(true);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr287:
                                                                                    _loc4_ = §§pop();
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc6_ = new Vector.<Boolean>(5);
                                                                                    _loc7_ = new Vector.<Boolean>(5);
                                                                                    _loc3_ = 0;
                                                                                    if(!(_loc11_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr342:
                                                                                       §§push(_loc3_);
                                                                                       §§push(5);
                                                                                       if(!(_loc11_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             _loc6_[_loc3_] = false;
                                                                                             if(_loc12_ || Boolean(_loc2_))
                                                                                             {
                                                                                                _loc7_[_loc3_] = false;
                                                                                                _loc3_++;
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§goto(addr342);
                                                                                                }
                                                                                                addr354:
                                                                                                §§push(0);
                                                                                                if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr492:
                                                                                                      §§push(_loc1_);
                                                                                                      §§push(1);
                                                                                                      if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            §§push(Math.random() * 5);
                                                                                                            if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               _loc10_ = §§pop();
                                                                                                               §§push(!_loc6_[_loc10_]);
                                                                                                               §§push(!_loc6_[_loc10_]);
                                                                                                               if(_loc12_ || Boolean(this))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr403:
                                                                                                                        §§push(Singleton.dynamicData);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                              if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                                              {
                                                                                                                                 §§push(null);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       addr425:
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          §§push(Singleton.dynamicData);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             addr430:
                                                                                                                                             §§push(_loc10_);
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                                                if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                                                                {
                                                                                                                                                   addr441:
                                                                                                                                                   if(§§pop().m_currHealth > 0)
                                                                                                                                                   {
                                                                                                                                                      if(_loc12_)
                                                                                                                                                      {
                                                                                                                                                         _loc6_[_loc10_] = true;
                                                                                                                                                         if(_loc12_ || Boolean(_loc1_))
                                                                                                                                                         {
                                                                                                                                                            _loc8_++;
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               addr461:
                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                                                                        {
                                                                                                                                                                           addr478:
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() == _loc5_.m_numOfPlayerShields);
                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr490:
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr492);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr504:
                                                                                                                                                                                       _loc8_ = 0;
                                                                                                                                                                                       addr610:
                                                                                                                                                                                       §§push(_loc2_);
                                                                                                                                                                                       if(!_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > 1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr512:
                                                                                                                                                                                             _loc10_ = Math.random() * 5;
                                                                                                                                                                                             addr518:
                                                                                                                                                                                             §§push(!_loc7_[_loc10_]);
                                                                                                                                                                                             §§push(!_loc7_[_loc10_]);
                                                                                                                                                                                             if(!_loc11_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   §§push(Singleton.dynamicData);
                                                                                                                                                                                                   if(_loc12_ || Boolean(_loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().m_opponentsMinions[_loc10_] != null);
                                                                                                                                                                                                      if(_loc12_ || Boolean(_loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr545:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc12_ || Boolean(_loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr553:
                                                                                                                                                                                                               §§push(Singleton.dynamicData);
                                                                                                                                                                                                               if(!_loc11_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop().m_opponentsMinions[_loc10_].m_currHealth > 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc7_[_loc10_] = true;
                                                                                                                                                                                                                        _loc8_++;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr745:
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr750);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr610);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr698);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                            if(!(_loc11_ && Boolean(this)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr582:
                                                                                                                                                                                                               §§push(§§pop() == §§pop() - 1);
                                                                                                                                                                                                               if(!(§§pop() == §§pop() - 1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     if(_loc12_ || Boolean(_loc1_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        §§push(_loc5_.m_numOfEnemyShields);
                                                                                                                                                                                                                        if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr603:
                                                                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr606:
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr610);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr615:
                                                                                                                                                                                                                                 _loc9_ = false;
                                                                                                                                                                                                                                 if(_loc12_ || Boolean(_loc1_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr627:
                                                                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr750);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr681);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr750);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr745);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr695);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr606);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr750);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr610);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr722);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr639);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr545);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr582);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr615);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr627);
                                                                                                                                                                                       addr491:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr686);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr492);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr745);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr490);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr582);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr518);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr582);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr492);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr750);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr553);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr492);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr639);
                                                                                                                                          }
                                                                                                                                          §§goto(addr686);
                                                                                                                                       }
                                                                                                                                       §§goto(addr492);
                                                                                                                                    }
                                                                                                                                    §§goto(addr518);
                                                                                                                                 }
                                                                                                                                 §§goto(addr639);
                                                                                                                              }
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                           §§goto(addr639);
                                                                                                                        }
                                                                                                                        §§goto(addr430);
                                                                                                                     }
                                                                                                                     §§goto(addr491);
                                                                                                                  }
                                                                                                                  §§goto(addr425);
                                                                                                               }
                                                                                                               §§goto(addr478);
                                                                                                            }
                                                                                                            §§goto(addr512);
                                                                                                         }
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            §§goto(addr504);
                                                                                                         }
                                                                                                         §§goto(addr716);
                                                                                                      }
                                                                                                      §§goto(addr603);
                                                                                                   }
                                                                                                   §§goto(addr750);
                                                                                                }
                                                                                                §§goto(addr461);
                                                                                             }
                                                                                             §§goto(addr403);
                                                                                          }
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       §§goto(addr582);
                                                                                    }
                                                                                    addr750:
                                                                                    _loc4_ = true;
                                                                                    addr751:
                                                                                    _loc3_++;
                                                                                    addr749:
                                                                                    if(_loc3_ < 5)
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       if(_loc12_ || Boolean(this))
                                                                                       {
                                                                                          addr639:
                                                                                          if(§§pop().GetOwnedMinionAt(_loc3_) != null)
                                                                                          {
                                                                                             §§push(Singleton.utility);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop().m_screenControllers);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§push(§§pop().m_battleScreen);
                                                                                                   if(_loc12_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop().m_battleScreenVisualController);
                                                                                                      if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         §§push(Singleton.dynamicData);
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            §§push(§§pop().GetMinionBottomLayerVisualObjectFor(§§pop().GetOwnedMinionAt(_loc3_)));
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop().AnimateAndSetBattleModShield(_loc6_[_loc3_]));
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  addr681:
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  addr683:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     addr686:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc12_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           addr695:
                                                                                                                           _loc4_ = true;
                                                                                                                        }
                                                                                                                        §§goto(addr749);
                                                                                                                     }
                                                                                                                     addr698:
                                                                                                                     if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null)
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           addr716:
                                                                                                                           §§push(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(Singleton.dynamicData.m_opponentsMinions[_loc3_]).AnimateAndSetBattleModShield(_loc7_[_loc3_]));
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              addr722:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc12_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                 if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr745);
                                                                                                                                 }
                                                                                                                                 §§goto(addr751);
                                                                                                                              }
                                                                                                                              §§goto(addr750);
                                                                                                                           }
                                                                                                                           §§goto(addr745);
                                                                                                                        }
                                                                                                                        §§goto(addr750);
                                                                                                                     }
                                                                                                                     §§goto(addr745);
                                                                                                                  }
                                                                                                                  §§goto(addr695);
                                                                                                               }
                                                                                                               §§goto(addr750);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr716);
                                                                                          }
                                                                                          §§goto(addr683);
                                                                                       }
                                                                                       §§goto(addr698);
                                                                                    }
                                                                                    §§goto(addr755);
                                                                                 }
                                                                                 addr755:
                                                                                 §§goto(addr756);
                                                                              }
                                                                              addr756:
                                                                              if(_loc4_)
                                                                              {
                                                                                 TweenLite.to(this,1,{"onComplete":this.CheckForWinLose});
                                                                                 addr765:
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.CheckForWinLose();
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§pop().TickTurn();
                                                                  _loc1_++;
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr173);
                                                }
                                             }
                                             §§goto(addr166);
                                          }
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr125);
                                 }
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr187);
               }
            }
         }
      }
      
      public function CheckToSeeIfBothPartiesAreStillAlive() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(5);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     addr168:
                     §§push(_loc2_);
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           addr174:
                           if(!_loc1_)
                           {
                              §§goto(addr177);
                           }
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr174);
                  }
                  else
                  {
                     §§push(Singleton.dynamicData);
                     if(!_loc5_)
                     {
                        §§push(§§pop().m_opponentsMinions[_loc3_] != null);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop();
                                    §§push(Singleton.dynamicData);
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr60:
                                       if(§§pop().m_opponentsMinions[_loc3_].m_currHealth > 0)
                                       {
                                          _loc2_ = true;
                                          if(_loc5_)
                                          {
                                             break loop1;
                                          }
                                       }
                                       §§push(Singleton.dynamicData);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          addr74:
                                          §§push(_loc3_);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                             if(_loc4_ || Boolean(this))
                                             {
                                                addr94:
                                                §§push(§§pop() != null);
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            addr118:
                                                            §§push(Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_currHealth);
                                                            if(_loc5_ && _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            if(!_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc5_ && _loc1_))
                                                            {
                                                               addr137:
                                                               if(!§§pop())
                                                               {
                                                                  break loop1;
                                                               }
                                                               §§push(true);
                                                            }
                                                            _loc1_ = §§pop();
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               break loop1;
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         addr177:
                                                         return false;
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr168);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr168);
                                             }
                                          }
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr74);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr60);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr74);
                  }
               }
            }
            _loc3_++;
            if(_loc5_ && Boolean(this))
            {
               addr175:
               return true;
            }
         }
      }
      
      public function CheckForWinLose() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc8_:OwnedMinion = null;
         var _loc9_:int = 0;
         var _loc10_:OwnedMinion = null;
         var _loc11_:* = false;
         var _loc12_:OwnedMinion = null;
         var _loc13_:* = false;
         var _loc14_:OwnedMinion = null;
         var _loc15_:* = 0;
         var _loc16_:OwnedMinion = null;
         var _loc1_:* = false;
         if(!_loc20_)
         {
            this.m_currState = BattleScreenStates.BSS_CHECK_FOR_WIN_LOSE;
         }
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc4_:* = true;
         var _loc5_:* = true;
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            while(true)
            {
               §§push(5);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(Singleton.dynamicData);
                     if(!_loc20_)
                     {
                        if(§§pop().m_opponentsMinions[_loc6_] != null)
                        {
                           §§push(Singleton.dynamicData);
                           if(!(_loc20_ && Boolean(_loc2_)))
                           {
                              if(§§pop().m_opponentsMinions[_loc6_].m_currHealth > 0)
                              {
                                 if(!(_loc21_ || Boolean(this)))
                                 {
                                    continue loop0;
                                 }
                                 §§push(false);
                                 if(!_loc20_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!_loc20_)
                                    {
                                       addr106:
                                       §§push(Singleton.dynamicData);
                                       if(_loc21_ || _loc1_)
                                       {
                                          addr115:
                                          §§push(_loc6_);
                                          if(!(_loc20_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                             if(!(_loc20_ && Boolean(this)))
                                             {
                                                if(§§pop() != null)
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(Singleton.dynamicData);
                                                   if(_loc21_ || Boolean(this))
                                                   {
                                                      addr146:
                                                      §§push(§§pop().GetOwnedMinionAt(_loc6_).m_currHealth);
                                                      if(!_loc21_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(0);
                                                      if(_loc20_)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            addr156:
                                                            _loc4_ = false;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc3_.push(_loc6_);
                                                      }
                                                   }
                                                   addr174:
                                                   var _loc7_:TrainerDataObject;
                                                   if((_loc7_ = §§pop().m_currTrainerData).IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         _loc9_ = 0;
                                                         if(!(_loc20_ && _loc1_))
                                                         {
                                                            addr448:
                                                            if(_loc9_ < _loc2_.length)
                                                            {
                                                               §§push(this.m_extraOpponentMinionsForMod);
                                                               §§push(_loc7_.m_numOfExtraOpponentMinions);
                                                               if(_loc21_ || _loc1_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!(_loc20_ && _loc1_))
                                                                     {
                                                                        _loc8_ = Singleton.dynamicData.m_opponentsMinions[_loc2_[_loc9_]];
                                                                        if(!(_loc20_ && _loc1_))
                                                                        {
                                                                           §§push(this.m_battleScreenVisualController);
                                                                           if(!(_loc20_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§pop().GetMinionBottomLayerVisualObjectFor(_loc8_).Cleanup();
                                                                              if(_loc21_)
                                                                              {
                                                                                 addr246:
                                                                                 this.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(_loc8_).Cleanup();
                                                                              }
                                                                              (_loc8_ = new OwnedMinion(_loc7_.m_extraOpponentMinionID,false)).m_isExtraBattleModMinion = true;
                                                                              _loc8_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower) + _loc7_.m_extraOpponentMinionLevelModifier);
                                                                              if(!(_loc20_ && Boolean(_loc2_)))
                                                                              {
                                                                                 if(_loc7_.m_extraOpponentMinionTalentTree == null)
                                                                                 {
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(Singleton.utility);
                                                                                       if(!(_loc20_ && Boolean(this)))
                                                                                       {
                                                                                          §§pop().AutoBuildMovesForMinion(_loc8_,new Vector.<int>());
                                                                                          addr310:
                                                                                          _loc8_.CalculateCurrStats();
                                                                                          _loc8_.ReFillHealthAndEnergy();
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(this.m_battleScreenVisualController);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§pop().m_visualMinionsForOpponent[_loc2_[_loc9_]].SetNewMinion(_loc8_,false);
                                                                                                if(_loc21_ || Boolean(this))
                                                                                                {
                                                                                                   §§push(this.m_battleScreenVisualController);
                                                                                                   if(_loc21_ || Boolean(this))
                                                                                                   {
                                                                                                      §§pop().m_visualMinionsForOpponentOverGrey[_loc2_[_loc9_]].SetNewMinion(_loc8_,false);
                                                                                                      TweenLite.killTweensOf(this.m_battleScreenVisualController.m_visualMinionsForOpponent[_loc2_[_loc9_]]);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(this.m_battleScreenVisualController);
                                                                                                         if(_loc21_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            §§pop().m_visualMinionsForOpponent[_loc2_[_loc9_]].AnimateIn();
                                                                                                            addr378:
                                                                                                            §§push(this.m_battleScreenVisualController);
                                                                                                            if(_loc20_ && _loc1_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr435:
                                                                                                            §§pop().m_extraMinionsMod.SetMinionsToAddText(_loc7_.m_numOfExtraOpponentMinions - this.m_extraOpponentMinionsForMod,_loc7_.m_numOfExtraPlayerMinions - this.m_extraPlayerMinionsForMod);
                                                                                                            _loc9_++;
                                                                                                            §§goto(addr448);
                                                                                                         }
                                                                                                         §§pop().m_visualMinionsForOpponent[_loc2_[_loc9_]].UpdateHealth();
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr395:
                                                                                                            Singleton.dynamicData.m_opponentsMinions[_loc2_[_loc9_]] = _loc8_;
                                                                                                            §§push(false);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               if(_loc21_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  addr415:
                                                                                                                  _loc1_ = true;
                                                                                                                  addr414:
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr433:
                                                                                                                  §§goto(addr435);
                                                                                                                  §§push(this.m_battleScreenVisualController);
                                                                                                               }
                                                                                                               var _loc17_:*;
                                                                                                               §§push((_loc17_ = this).m_extraOpponentMinionsForMod);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                               }
                                                                                                               var _loc18_:* = §§pop();
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  _loc17_.m_extraOpponentMinionsForMod = _loc18_;
                                                                                                               }
                                                                                                               §§goto(addr433);
                                                                                                            }
                                                                                                            §§goto(addr415);
                                                                                                         }
                                                                                                         §§goto(addr414);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr378);
                                                                                                }
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          §§goto(addr395);
                                                                                       }
                                                                                       addr301:
                                                                                       §§pop().AutoBuildMovesForMinion(_loc8_,Vector.<int>(_loc7_.m_extraOpponentMinionTalentTree));
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr415);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                                 §§push(Singleton.utility);
                                                                              }
                                                                              §§goto(addr415);
                                                                           }
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     addr1074:
                                                                     var _loc19_:* = (_loc17_ = this.m_resurectionModCounts)[_loc18_ = _loc6_] + 1;
                                                                     if(!(_loc20_ && Boolean(_loc3_)))
                                                                     {
                                                                        _loc17_[_loc18_] = _loc19_;
                                                                     }
                                                                     if(this.m_resurectionModCounts[_loc6_] >= _loc7_.m_turnsUntilResurection)
                                                                     {
                                                                        addr1107:
                                                                        (_loc16_ = Singleton.dynamicData.m_opponentsMinions[_loc6_]).ClearBuffsAndDebuffs();
                                                                        _loc16_.m_currHealth = Singleton.dynamicData.m_opponentsMinions[_loc6_].m_currHealthStat / Math.pow(2,this.m_resurectionCounts[_loc6_] + 1);
                                                                        if(_loc16_.m_currHealth < 1)
                                                                        {
                                                                           if(!(_loc20_ && Boolean(this)))
                                                                           {
                                                                              _loc16_.m_currHealth = 1;
                                                                              if(_loc21_ || Boolean(this))
                                                                              {
                                                                                 addr1153:
                                                                                 §§push(this.m_battleScreenVisualController);
                                                                                 if(_loc21_ || _loc1_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§pop().AnimateOutTombstoneVisuals(§§pop());
                                                                                       if(!(_loc20_ && Boolean(this)))
                                                                                       {
                                                                                          TweenLite.killTweensOf(this.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc16_));
                                                                                          if(_loc21_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§push(this.m_battleScreenVisualController);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop().GetMinionBottomLayerVisualObjectFor(_loc16_));
                                                                                                if(_loc21_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   §§pop().AnimateIn();
                                                                                                   addr1200:
                                                                                                   addr1253:
                                                                                                   §§push(this.m_battleScreenVisualController);
                                                                                                   if(!(_loc20_ && _loc1_))
                                                                                                   {
                                                                                                      addr1211:
                                                                                                      §§pop().GetMinionBottomLayerVisualObjectFor(_loc16_).UpdateHealth();
                                                                                                      §§push(this.m_battleScreenVisualController);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§pop().GetMinionTopLayerVisualObjectFor(_loc16_).UpdateHealth();
                                                                                                         addr1219:
                                                                                                         this.m_resurectionModCounts[_loc6_] = 0;
                                                                                                         _loc19_ = (_loc17_ = this.m_resurectionCounts)[_loc18_ = _loc6_] + 1;
                                                                                                         if(_loc21_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            _loc17_[_loc18_] = _loc19_;
                                                                                                         }
                                                                                                         _loc1_ = true;
                                                                                                         §§push(this.m_battleScreenVisualController);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   §§push(_loc7_.m_turnsUntilResurection - this.m_resurectionModCounts[_loc6_]);
                                                                                                   if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                   }
                                                                                                   §§pop().UpdateTombstoneVisuals(§§pop(),§§pop());
                                                                                                   addr1289:
                                                                                                   _loc6_++;
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      addr1301:
                                                                                                      if(_loc6_ < 5)
                                                                                                      {
                                                                                                         §§push(Singleton.dynamicData);
                                                                                                         if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            addr1019:
                                                                                                            if(§§pop().m_opponentsMinions[_loc6_] != null)
                                                                                                            {
                                                                                                               §§push(Singleton.dynamicData);
                                                                                                               if(_loc21_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr1033:
                                                                                                                  if(§§pop().m_opponentsMinions[_loc6_].m_currHealth <= 0)
                                                                                                                  {
                                                                                                                     if(this.m_resurectionModCounts[_loc6_] == 0)
                                                                                                                     {
                                                                                                                        addr1045:
                                                                                                                        §§push(this.m_battleScreenVisualController);
                                                                                                                        if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§pop().AnimateInTombstoneVisuals(§§pop());
                                                                                                                              if(!(_loc20_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 _loc1_ = true;
                                                                                                                                 if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1074);
                                                                                                                                 }
                                                                                                                                 addr1302:
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       addr1306:
                                                                                                                                       this.CalculateNewMinionStats();
                                                                                                                                       if(_loc20_ && Boolean(_loc3_))
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    TweenLite.to(this,1,{"onComplete":this.CalculateNewMinionStats});
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1324);
                                                                                                                           }
                                                                                                                           addr1273:
                                                                                                                           §§push(_loc7_.m_turnsUntilResurection - this.m_resurectionModCounts[_loc6_]);
                                                                                                                           if(!(_loc20_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                           }
                                                                                                                           §§pop().UpdateTombstoneVisuals(§§pop(),§§pop());
                                                                                                                           §§goto(addr1289);
                                                                                                                        }
                                                                                                                        addr1272:
                                                                                                                        §§goto(addr1273);
                                                                                                                        §§push(_loc6_);
                                                                                                                     }
                                                                                                                     §§goto(addr1074);
                                                                                                                  }
                                                                                                                  §§goto(addr1289);
                                                                                                               }
                                                                                                               §§goto(addr1107);
                                                                                                            }
                                                                                                            §§goto(addr1289);
                                                                                                         }
                                                                                                         §§goto(addr1033);
                                                                                                      }
                                                                                                      §§goto(addr1302);
                                                                                                   }
                                                                                                   addr1324:
                                                                                                   return;
                                                                                                   addr1269:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1211);
                                                                                          }
                                                                                          §§goto(addr1200);
                                                                                       }
                                                                                       §§goto(addr1269);
                                                                                    }
                                                                                    §§goto(addr1253);
                                                                                 }
                                                                                 §§goto(addr1211);
                                                                              }
                                                                              §§goto(addr1200);
                                                                           }
                                                                           §§goto(addr1219);
                                                                        }
                                                                        §§goto(addr1153);
                                                                     }
                                                                     §§goto(addr1272);
                                                                     §§push(this.m_battleScreenVisualController);
                                                                  }
                                                                  §§goto(addr378);
                                                               }
                                                               §§goto(addr1301);
                                                            }
                                                            addr452:
                                                            _loc9_ = 0;
                                                            if(_loc21_)
                                                            {
                                                               addr715:
                                                               if(_loc9_ < _loc3_.length)
                                                               {
                                                                  §§push(this.m_extraPlayerMinionsForMod);
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§push(_loc7_.m_numOfExtraPlayerMinions);
                                                                     if(!(_loc20_ && _loc1_))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc21_ || _loc1_)
                                                                           {
                                                                              _loc8_ = Singleton.dynamicData.GetOwnedMinionAt(_loc3_[_loc9_]);
                                                                              if(!(_loc20_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(this.m_battleScreenVisualController);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§pop().GetMinionBottomLayerVisualObjectFor(_loc8_).Cleanup();
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr505:
                                                                                       this.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(_loc8_).Cleanup();
                                                                                    }
                                                                                    (_loc8_ = new OwnedMinion(_loc7_.m_extraPlayerMinionID,true)).m_isExtraBattleModMinion = true;
                                                                                    if(!(_loc20_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       _loc8_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower) + _loc7_.m_extraPlayerMinionLevelModifier);
                                                                                       if(_loc7_.m_extraPlayerMinionTalentTree == null)
                                                                                       {
                                                                                          §§push(Singleton.utility);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§pop().AutoBuildMovesForMinion(_loc8_,new Vector.<int>());
                                                                                             addr564:
                                                                                             _loc8_.CalculateCurrStats();
                                                                                             _loc8_.ReFillHealthAndEnergy();
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(this.m_battleScreenVisualController);
                                                                                                if(_loc21_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   §§pop().m_visualMinionsForPlayer[_loc3_[_loc9_]].SetNewMinion(_loc8_,true);
                                                                                                   addr587:
                                                                                                   §§push(this.m_battleScreenVisualController);
                                                                                                   if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      §§pop().m_visualMinionsForPlayerOverGrey[_loc3_[_loc9_]].SetNewMinion(_loc8_,true);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         TweenLite.killTweensOf(this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc3_[_loc9_]]);
                                                                                                         §§push(this.m_battleScreenVisualController);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr619:
                                                                                                            §§pop().m_visualMinionsForPlayer[_loc3_[_loc9_]].AnimateIn();
                                                                                                            if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               §§push(this.m_battleScreenVisualController);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  addr636:
                                                                                                                  §§pop().m_visualMinionsForPlayer[_loc3_[_loc9_]].UpdateHealth();
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr644:
                                                                                                                     Singleton.dynamicData.SetExtraBattleModMinion(_loc8_,_loc3_[_loc9_]);
                                                                                                                  }
                                                                                                                  §§push(false);
                                                                                                                  if(_loc21_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     addr667:
                                                                                                                     §§push(true);
                                                                                                                  }
                                                                                                                  _loc1_ = §§pop();
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr671:
                                                                                                                     §§push((_loc17_ = this).m_extraPlayerMinionsForMod);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                     }
                                                                                                                     _loc18_ = §§pop();
                                                                                                                     if(_loc21_ || _loc1_)
                                                                                                                     {
                                                                                                                        _loc17_.m_extraPlayerMinionsForMod = _loc18_;
                                                                                                                     }
                                                                                                                     if(_loc21_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr712:
                                                                                                                     _loc9_++;
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§goto(addr715);
                                                                                                                     }
                                                                                                                     §§goto(addr1306);
                                                                                                                  }
                                                                                                                  §§push(this.m_battleScreenVisualController);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr667);
                                                                                                         }
                                                                                                         §§pop().m_extraMinionsMod.SetMinionsToAddText(_loc7_.m_numOfExtraOpponentMinions - this.m_extraOpponentMinionsForMod,_loc7_.m_numOfExtraPlayerMinions - this.m_extraPlayerMinionsForMod);
                                                                                                         §§goto(addr712);
                                                                                                      }
                                                                                                      §§goto(addr667);
                                                                                                   }
                                                                                                   §§goto(addr636);
                                                                                                }
                                                                                                §§goto(addr619);
                                                                                             }
                                                                                             §§goto(addr587);
                                                                                          }
                                                                                          addr553:
                                                                                          §§pop().AutoBuildMovesForMinion(_loc8_,Vector.<int>(_loc7_.m_extraPlayerMinionTalentTree));
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§goto(addr564);
                                                                                          }
                                                                                          §§goto(addr671);
                                                                                       }
                                                                                       §§goto(addr553);
                                                                                       §§push(Singleton.utility);
                                                                                    }
                                                                                    §§goto(addr644);
                                                                                 }
                                                                              }
                                                                              §§goto(addr505);
                                                                           }
                                                                           addr745:
                                                                           §§push(Singleton.dynamicData);
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop().m_currTrainerData);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(ModStoneTypes.MOD_STONE_SHIELD);
                                                                                 if(!(_loc20_ && _loc1_))
                                                                                 {
                                                                                    if(§§pop().IsModActive(§§pop()))
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          _loc10_ = null;
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             _loc11_ = false;
                                                                                          }
                                                                                          _loc12_ = null;
                                                                                          §§push(false);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             §§push(0);
                                                                                             if(!(_loc20_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                _loc15_ = §§pop();
                                                                                                addr902:
                                                                                                §§push(_loc15_);
                                                                                             }
                                                                                             if(§§pop() < 5)
                                                                                             {
                                                                                                if((_loc14_ = Singleton.dynamicData.GetOwnedMinionAt(_loc15_)) != null)
                                                                                                {
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      if(_loc14_.m_currHealth > 0)
                                                                                                      {
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc14_.m_isBattleModShieldActive);
                                                                                                            if(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     if(_loc10_ == null)
                                                                                                                     {
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr829:
                                                                                                                           _loc10_ = _loc14_;
                                                                                                                           addr847:
                                                                                                                           if((_loc14_ = Singleton.dynamicData.m_opponentsMinions[_loc15_]) != null)
                                                                                                                           {
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 if(_loc14_.m_currHealth > 0)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_.m_isBattleModShieldActive);
                                                                                                                                    if(_loc21_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr873:
                                                                                                                                          if(_loc12_ == null)
                                                                                                                                          {
                                                                                                                                             _loc12_ = _loc14_;
                                                                                                                                             addr901:
                                                                                                                                             _loc15_++;
                                                                                                                                             addr891:
                                                                                                                                             §§goto(addr902);
                                                                                                                                             addr891:
                                                                                                                                          }
                                                                                                                                          if(Math.random() * 100 > 50)
                                                                                                                                          {
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                _loc12_ = _loc14_;
                                                                                                                                                §§goto(addr891);
                                                                                                                                             }
                                                                                                                                             §§goto(addr902);
                                                                                                                                          }
                                                                                                                                          §§goto(addr891);
                                                                                                                                       }
                                                                                                                                       §§push(true);
                                                                                                                                    }
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                                    {
                                                                                                                                       §§goto(addr901);
                                                                                                                                    }
                                                                                                                                    §§goto(addr902);
                                                                                                                                 }
                                                                                                                                 §§goto(addr901);
                                                                                                                              }
                                                                                                                              §§goto(addr873);
                                                                                                                           }
                                                                                                                           §§goto(addr901);
                                                                                                                           addr844:
                                                                                                                        }
                                                                                                                        §§goto(addr847);
                                                                                                                     }
                                                                                                                     if(Math.random() * 100 > 50)
                                                                                                                     {
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr841:
                                                                                                                           _loc10_ = _loc14_;
                                                                                                                        }
                                                                                                                        §§goto(addr847);
                                                                                                                     }
                                                                                                                     §§goto(addr844);
                                                                                                                  }
                                                                                                                  §§goto(addr829);
                                                                                                               }
                                                                                                               §§push(true);
                                                                                                            }
                                                                                                            _loc11_ = §§pop();
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr829);
                                                                                                   }
                                                                                                   §§goto(addr841);
                                                                                                }
                                                                                                §§goto(addr829);
                                                                                             }
                                                                                             §§push(_loc11_);
                                                                                             if(_loc21_ || Boolean(_loc3_))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(_loc21_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         §§push(Singleton.utility);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(§§pop().m_screenControllers);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop().m_battleScreen);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop().m_battleScreenVisualController);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().GetMinionBottomLayerVisualObjectFor(_loc10_));
                                                                                                                     if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        §§push(false);
                                                                                                                        if(_loc21_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§pop().AnimateAndSetBattleModShield(§§pop());
                                                                                                                           addr961:
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              addr983:
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    addr973:
                                                                                                                                    _loc1_ = true;
                                                                                                                                 }
                                                                                                                                 addr981:
                                                                                                                                 §§push(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc12_));
                                                                                                                                 §§push(false);
                                                                                                                              }
                                                                                                                              §§push(Singleton.dynamicData);
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 addr990:
                                                                                                                                 §§push(§§pop().m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION));
                                                                                                                                 if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    addr998:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc21_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          _loc6_ = 0;
                                                                                                                                          addr1008:
                                                                                                                                          §§goto(addr1301);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1324);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1302);
                                                                                                                              }
                                                                                                                              §§goto(addr1019);
                                                                                                                           }
                                                                                                                           §§goto(addr973);
                                                                                                                        }
                                                                                                                        §§pop().AnimateAndSetBattleModShield(§§pop());
                                                                                                                        §§goto(addr983);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr981);
                                                                                                      }
                                                                                                      §§goto(addr973);
                                                                                                   }
                                                                                                   §§goto(addr983);
                                                                                                }
                                                                                                §§goto(addr961);
                                                                                             }
                                                                                             §§goto(addr983);
                                                                                          }
                                                                                          §§goto(addr973);
                                                                                       }
                                                                                       §§goto(addr1074);
                                                                                    }
                                                                                    §§goto(addr983);
                                                                                 }
                                                                              }
                                                                              §§goto(addr990);
                                                                           }
                                                                           §§goto(addr1107);
                                                                        }
                                                                        §§goto(addr671);
                                                                     }
                                                                     §§goto(addr1301);
                                                                  }
                                                                  §§goto(addr715);
                                                               }
                                                               addr719:
                                                               §§push(_loc4_);
                                                               if(!(_loc20_ && Boolean(_loc3_)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        this.OpenLoseMenus();
                                                                        return;
                                                                     }
                                                                     §§goto(addr1045);
                                                                  }
                                                                  else if(_loc5_)
                                                                  {
                                                                     this.OpenVictoryMenus();
                                                                     if(!(_loc20_ && Boolean(this)))
                                                                     {
                                                                        return;
                                                                     }
                                                                     §§goto(addr1008);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr745);
                                                                  }
                                                                  §§goto(addr1107);
                                                               }
                                                               §§goto(addr998);
                                                            }
                                                            §§goto(addr1045);
                                                         }
                                                         §§goto(addr1074);
                                                      }
                                                      §§goto(addr452);
                                                   }
                                                   §§goto(addr719);
                                                }
                                                _loc6_++;
                                                if(_loc21_ || Boolean(_loc3_))
                                                {
                                                   continue loop0;
                                                }
                                                addr172:
                                                §§goto(addr174);
                                                §§push(Singleton.dynamicData);
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr106);
                                 }
                                 §§goto(addr156);
                              }
                              else
                              {
                                 _loc2_.push(_loc6_);
                                 §§goto(addr106);
                              }
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr172);
               }
            }
         }
      }
      
      public function CalculateNewMinionStats() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.m_currState = BattleScreenStates.BSS_CALCULATE_NEW_STATS;
         }
         var _loc1_:* = 0;
         while(_loc1_ < 5)
         {
            §§push(Singleton.dynamicData);
            if(_loc4_ || Boolean(_loc1_))
            {
               if(§§pop().m_opponentsMinions[_loc1_] != null)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§push(Singleton.dynamicData);
                  if(!_loc3_)
                  {
                     addr44:
                     §§pop().m_opponentsMinions[_loc1_].CalculateCurrStats();
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr55:
                        §§push(Singleton.dynamicData);
                        if(!_loc3_)
                        {
                           §§push(_loc1_);
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              §§push(§§pop().GetOwnedMinionAt(§§pop()));
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop() != null)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr88:
                                       Singleton.dynamicData.GetOwnedMinionAt(_loc1_).CalculateCurrStats();
                                       if(_loc3_ && Boolean(this))
                                       {
                                       }
                                       break;
                                    }
                                    break;
                                 }
                                 _loc1_++;
                                 if(_loc3_ && Boolean(_loc1_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr88);
                        }
                     }
                     break;
                  }
                  §§goto(addr88);
               }
               §§goto(addr55);
            }
            §§goto(addr44);
         }
         var _loc2_:Array = new Array();
         §§push(this.m_doTiesGoToPlayer);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§push(0);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_ = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push(5);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(Singleton.dynamicData.m_opponentsMinions[_loc1_] == null);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                    §§push(!§§pop());
                                    if(_loc4_ || Boolean(_loc1_))
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(_loc4_ || Boolean(this))
                                          {
                                             addr169:
                                             if(Singleton.dynamicData.m_opponentsMinions[_loc1_].m_currHealth > 0)
                                             {
                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                {
                                                   while(true)
                                                   {
                                                      _loc2_.push(Singleton.dynamicData.m_opponentsMinions[_loc1_]);
                                                      addr184:
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(Singleton.dynamicData);
                                                         §§push(_loc1_);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                            if(_loc4_ || Boolean(_loc2_))
                                                            {
                                                               §§push(null);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop() != §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc4_ || _loc3_))
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Singleton.dynamicData);
                                                                                 §§push(_loc1_);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().m_currHealth);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break loop4;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          if(_loc3_ && Boolean(this))
                                                                                          {
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   §§push(Singleton.dynamicData);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().m_opponentsMinions[_loc1_].m_currHealth > 0);
                                                                                                      addr401:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc2_.push(Singleton.dynamicData.m_opponentsMinions[_loc1_]);
                                                                                                            }
                                                                                                            addr402:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr395:
                                                                                                }
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_++;
                                                                                                   if(_loc4_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(5);
                                                                                                            addr419:
                                                                                                            addr420:
                                                                                                            loop3:
                                                                                                            while(§§pop() < §§pop())
                                                                                                            {
                                                                                                               §§push(Singleton.dynamicData);
                                                                                                               if(_loc4_ || Boolean(_loc1_))
                                                                                                               {
                                                                                                                  §§push(_loc1_);
                                                                                                                  if(_loc4_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     break loop22;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                     addr333:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().m_currHealth);
                                                                                                                        if(!(_loc4_ || Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    _loc2_.push(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
                                                                                                                                    if(_loc3_ && Boolean(this))
                                                                                                                                    {
                                                                                                                                       break loop3;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(Singleton.dynamicData);
                                                                                                                                 if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().m_opponentsMinions[_loc1_] == null);
                                                                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             addr383:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr384:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr382:
                                                                                                                                       }
                                                                                                                                       §§goto(addr383);
                                                                                                                                    }
                                                                                                                                    addr370:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr395);
                                                                                                                                 }
                                                                                                                                 §§goto(addr401);
                                                                                                                              }
                                                                                                                              addr347:
                                                                                                                           }
                                                                                                                           §§goto(addr382);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr332:
                                                                                                               }
                                                                                                               §§goto(addr370);
                                                                                                            }
                                                                                                            addr420:
                                                                                                            _loc2_ = _loc2_.sortOn("m_currSpeedStat",Array.DESCENDING | Array.NUMERIC);
                                                                                                            §§push(0);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               if(_loc4_ || Boolean(_loc1_))
                                                                                                               {
                                                                                                                  loop5:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     addr461:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() >= _loc2_.length)
                                                                                                                        {
                                                                                                                           this.m_battleScreenVisualController.UpdateMinionVisuals();
                                                                                                                           if(_loc4_ || Boolean(this))
                                                                                                                           {
                                                                                                                              this.GetAPlayersMove();
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        _loc2_[_loc1_].m_moveOrderPosition = _loc1_ + 1;
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr461);
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      addr417:
                                                                                                   }
                                                                                                   §§goto(addr420);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                                 break loop22;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc2_.push(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
                                                                              }
                                                                              _loc1_++;
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr332);
                                                                           }
                                                                           addr328:
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     addr327:
                                                                     addr204:
                                                                  }
                                                                  §§goto(addr383);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc3_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr327);
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr401);
                                                               }
                                                               addr313:
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§goto(addr313);
                                                            §§push(null);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                   }
                                                   addr177:
                                                }
                                                §§goto(addr402);
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr420);
                           }
                           §§goto(addr419);
                        }
                        break;
                     }
                  }
                  addr284:
                  _loc1_ = §§pop();
                  §§goto(addr417);
               }
               §§goto(addr177);
            }
            else
            {
               §§push(0);
               if(_loc4_)
               {
                  §§goto(addr284);
               }
            }
            §§goto(addr341);
         }
         §§goto(addr204);
      }
      
      public function GetAPlayersMove() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:OwnedMinion = null;
         if(!(_loc8_ && _loc3_))
         {
            this.m_currState = BattleScreenStates.BSS_GET_A_PLAYERS_MOVE;
         }
         var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         §§push(_loc1_.IsModActive(ModStoneTypes.MOD_STONE_MOVE_TIMER));
         if(!_loc8_)
         {
            if(§§pop())
            {
               if(_loc9_)
               {
                  §§push(this.m_battleScreenVisualController);
                  if(!_loc8_)
                  {
                     §§push(§§pop().m_moveTimerMod);
                     if(_loc9_)
                     {
                        §§pop().SetTimerText(_loc1_.m_moveTimeCounter - this.m_currentMovesTickedForMod);
                        §§push(_loc1_.m_moveTimeCounter);
                        if(!(_loc8_ && Boolean(this)))
                        {
                           if(§§pop() - this.m_currentMovesTickedForMod == 0)
                           {
                              §§push(this.m_aiMoveSystem);
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 §§pop().Reset();
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(this.m_aiMoveSystem);
                                    if(_loc9_)
                                    {
                                       addr90:
                                       §§pop().m_currMove = _loc1_.m_moveOnTimer;
                                       addr93:
                                       §§push(this.m_aiMoveSystem);
                                       if(_loc9_ || Boolean(_loc1_))
                                       {
                                          addr102:
                                          §§pop().m_currMinion = this.m_minionForMoveTimerMod;
                                          §§push(this.m_aiMoveSystem);
                                          if(!(_loc8_ && Boolean(this)))
                                          {
                                             §§push(§§pop().m_currMove.m_chargeTime > 0);
                                             if(!_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§pop();
                                                      addr151:
                                                      §§push(this.m_aiMoveSystem);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         addr134:
                                                         §§push(§§pop().m_currMinion.m_currCharge == -99);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            addr145:
                                                            §§push(!§§pop());
                                                         }
                                                      }
                                                      §§pop().m_currMinion.m_currCharge = -99;
                                                      addr154:
                                                      TweenLite.to(this,0.7,{
                                                         "onComplete":this.m_aiMoveSystem.GetRandomMinionsForMove,
                                                         "onCompleteParams":[_loc1_.m_moveOnTimer]
                                                      });
                                                      addr170:
                                                      this.m_battleScreenVisualController.m_moveTimerMod.PlayUseMoveAnimation();
                                                      this.m_currentMovesTickedForMod = 0;
                                                      if(!_loc8_)
                                                      {
                                                         return;
                                                      }
                                                      addr179:
                                                      var _loc6_:*;
                                                      §§push((_loc6_ = this).m_currentMovesTickedForMod);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      if(_loc9_)
                                                      {
                                                         _loc6_.m_currentMovesTickedForMod = _loc7_;
                                                      }
                                                      var _loc3_:* = 1000;
                                                      var _loc4_:Boolean = true;
                                                      var _loc5_:int = 0;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(5);
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  break loop1;
                                                               }
                                                               §§push(Singleton.dynamicData.m_opponentsMinions[_loc5_] == null);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  §§push(!§§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        if(_loc9_ || Boolean(_loc1_))
                                                                        {
                                                                           §§push(Singleton.dynamicData);
                                                                           if(!(_loc8_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(§§pop().m_opponentsMinions[_loc5_].m_currHealth > 0);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr241:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc8_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       if(_loc9_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr271:
                                                                                          §§push(§§pop().m_opponentsMinions[_loc5_].m_moveOrderPosition < _loc3_);
                                                                                          §§push(§§pop().m_opponentsMinions[_loc5_].m_moveOrderPosition < _loc3_);
                                                                                          if(_loc9_ || Boolean(_loc3_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr290:
                                                                                                   §§push(!Singleton.dynamicData.m_opponentsMinions[_loc5_].m_hasMovedOnThisTurn);
                                                                                                   if(_loc9_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                   }
                                                                                                   addr444:
                                                                                                   §§push(!§§pop());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr447:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc9_ || Boolean(_loc3_)))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr459:
                                                                                                         _loc2_ = Singleton.dynamicData.GetOwnedMinionAt(_loc5_);
                                                                                                         addr458:
                                                                                                         addr457:
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§push(_loc2_.m_moveOrderPosition);
                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr478:
                                                                                                            _loc5_++;
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         _loc4_ = true;
                                                                                                      }
                                                                                                      §§goto(addr478);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr495:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            §§push(this.m_playerMoveSystem);
                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                            {
                                                                                                               §§pop().Reset();
                                                                                                               if(_loc9_ || Boolean(_loc1_))
                                                                                                               {
                                                                                                                  addr529:
                                                                                                                  this.m_playerMoveSystem.ChooseAMoveFor(_loc2_);
                                                                                                                  this.m_currMinion = _loc2_;
                                                                                                                  addr531:
                                                                                                               }
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                            §§goto(addr529);
                                                                                                         }
                                                                                                         §§goto(addr531);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(this.m_aiMoveSystem);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§pop().Reset();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr539:
                                                                                                               §§push(this.m_aiMoveSystem);
                                                                                                            }
                                                                                                            §§goto(addr529);
                                                                                                         }
                                                                                                         §§pop().ChooseAMoveFor(_loc2_);
                                                                                                      }
                                                                                                      §§goto(addr529);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr444);
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc2_ = Singleton.dynamicData.m_opponentsMinions[_loc5_];
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(_loc2_.m_moveOrderPosition);
                                                                                                   if(!(_loc8_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      _loc4_ = false;
                                                                                                      addr327:
                                                                                                      §§push(Singleton.dynamicData);
                                                                                                      §§push(_loc5_);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                         if(!(_loc8_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            §§push(§§pop() != null);
                                                                                                            §§push(§§pop() != null);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr346:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§push(Singleton.dynamicData);
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc9_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().m_currHealth);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(0);
                                                                                                                        if(_loc9_ || Boolean(_loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr375:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§push(Singleton.dynamicData);
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr381:
                                                                                                                                    §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                                    if(_loc9_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr389:
                                                                                                                                       §§push(§§pop().m_moveOrderPosition);
                                                                                                                                       if(_loc8_ && Boolean(_loc1_))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc8_ && Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       addr405:
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                       if(!(_loc8_ && Boolean(_loc2_)))
                                                                                                                                       {
                                                                                                                                          addr414:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                addr422:
                                                                                                                                                §§pop();
                                                                                                                                                §§push(Singleton.dynamicData);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr435:
                                                                                                                                                      §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                                                      if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr443:
                                                                                                                                                         §§goto(addr444);
                                                                                                                                                         §§push(§§pop().m_hasMovedOnThisTurn);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr459);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr458);
                                                                                                                                                }
                                                                                                                                                §§goto(addr457);
                                                                                                                                             }
                                                                                                                                             §§goto(addr444);
                                                                                                                                          }
                                                                                                                                          §§goto(addr447);
                                                                                                                                       }
                                                                                                                                       §§goto(addr444);
                                                                                                                                    }
                                                                                                                                    §§goto(addr443);
                                                                                                                                 }
                                                                                                                                 §§goto(addr435);
                                                                                                                              }
                                                                                                                              §§goto(addr478);
                                                                                                                           }
                                                                                                                           §§goto(addr422);
                                                                                                                        }
                                                                                                                        §§goto(addr405);
                                                                                                                     }
                                                                                                                     §§goto(addr389);
                                                                                                                  }
                                                                                                                  §§goto(addr381);
                                                                                                               }
                                                                                                               §§goto(addr375);
                                                                                                            }
                                                                                                            §§goto(addr414);
                                                                                                         }
                                                                                                         §§goto(addr389);
                                                                                                      }
                                                                                                      §§goto(addr459);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr494:
                                                                                       §§push(_loc4_);
                                                                                    }
                                                                                    §§goto(addr495);
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                        §§goto(addr422);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr346);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                         }
                                                         if(!(_loc8_ && Boolean(_loc2_)))
                                                         {
                                                            _loc2_.m_hasMovedOnThisTurn = true;
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr494);
                                                            }
                                                            addr546:
                                                            return;
                                                         }
                                                         §§goto(addr539);
                                                      }
                                                      addr169:
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr151);
                                                      §§push(this.m_aiMoveSystem);
                                                   }
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr145);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr90);
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr169);
               }
            }
            §§goto(addr179);
         }
         §§goto(addr145);
      }
      
      public function StartQueuedMoves() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_currState = BattleScreenStates.BSS_RUN_QUEUED_MOVES;
            if(_loc2_)
            {
               this.m_battleScreenVisualController.SetScreenToPlayMoveVisuals();
               if(!_loc1_)
               {
                  this.m_currentSpotInQueue = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     addr44:
                     this.RunQueuedMoves();
                  }
                  return;
               }
            }
         }
         §§goto(addr44);
      }
      
      private function RunQueuedMoves() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc5_)
         {
            §§push(this.m_currentSpotInQueue);
            if(!_loc4_)
            {
               if(§§pop() == this.m_moveQueue.length)
               {
                  if(!_loc4_)
                  {
                     addr29:
                     _loc1_ = 0;
                     addr30:
                     loop0:
                     while(true)
                     {
                        §§push(_loc1_);
                        loop1:
                        while(true)
                        {
                           §§push(5);
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(this.CheckToSeeIfBothPartiesAreStillAlive());
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(Singleton.dynamicData);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().m_opponentsMinions[_loc1_] == null);
                                    if(_loc5_ || Boolean(_loc1_))
                                    {
                                       §§push(!§§pop());
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop());
                                       if(_loc5_ || Boolean(this))
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                §§push(Singleton.dynamicData);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop().m_opponentsMinions[_loc1_].m_currHealth > 0);
                                                   if(!_loc4_)
                                                   {
                                                      addr75:
                                                      §§push(§§pop());
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr83:
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(Singleton.dynamicData);
                                                            if(_loc5_ || Boolean(_loc1_))
                                                            {
                                                               §§push(!§§pop().m_opponentsMinions[_loc1_].m_hasMovedOnThisTurn);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr106:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        this.CheckForWinLose();
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           return;
                                                                        }
                                                                        addr204:
                                                                        return;
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§push(Singleton.dynamicData);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           addr146:
                                                                           §§push(§§pop() != null);
                                                                           §§push(§§pop() != null);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr157:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(Singleton.dynamicData);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr170:
                                                                                       §§push(_loc1_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr173:
                                                                                          §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop().m_currHealth);
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr190:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr192:
                                                                                                      §§pop();
                                                                                                      addr197:
                                                                                                      §§push(Singleton.dynamicData.GetOwnedMinionAt(_loc1_).m_hasMovedOnThisTurn);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr200:
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr197);
                                                                                 }
                                                                                 §§goto(addr192);
                                                                              }
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr192);
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr106);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr192);
                                             }
                                             addr271:
                                             this.m_battleScreenVisualController.UpdateMinionVisuals();
                                             §§goto(addr274);
                                          }
                                          §§goto(addr75);
                                       }
                                       §§goto(addr83);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr170);
                              }
                              addr274:
                              var _loc2_:*;
                              §§push((_loc2_ = this).m_currentSpotInQueue);
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc3_:* = §§pop();
                              if(_loc5_)
                              {
                                 _loc2_.m_currentSpotInQueue = _loc3_;
                              }
                              if(_loc5_)
                              {
                                 TweenLite.to(this,this.m_moveQueue[this.m_currentSpotInQueue - 1].m_timeQueueLasts,{"onComplete":this.RunQueuedMoves});
                              }
                              return;
                           }
                           if(§§pop())
                           {
                              addr223:
                              this.RunTickMoves();
                              if(_loc4_ && _loc3_)
                              {
                                 addr242:
                                 if(this.m_moveQueue[this.m_currentSpotInQueue].m_function != null)
                                 {
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       this.m_moveQueue[this.m_currentSpotInQueue].m_function.call();
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§goto(addr271);
                                       }
                                    }
                                 }
                                 §§goto(addr271);
                              }
                           }
                           else
                           {
                              TweenLite.to(this,0.5,{"onComplete":this.StartRound});
                           }
                           addr241:
                           return;
                        }
                     }
                     this.CheckForWinLose();
                     §§goto(addr204);
                  }
                  §§goto(addr30);
               }
               §§goto(addr242);
            }
         }
         §§goto(addr29);
      }
      
      public function RunTickMoves() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.m_currState = BattleScreenStates.BSS_RUN_TICK_MOVES;
         }
         var _loc1_:* = 0;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(5);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this.m_battleScreenVisualController);
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        §§pop().UpdateMinionVisuals();
                        §§push(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController);
                     }
                     §§pop().UpdateMinionHealth();
                     break;
                  }
                  §§push(Singleton.dynamicData);
                  if(_loc5_ || Boolean(this))
                  {
                     §§push(§§pop().m_opponentsMinions[_loc3_] != null);
                     if(_loc5_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 §§push(Singleton.dynamicData);
                                 if(_loc5_)
                                 {
                                    addr74:
                                    if(§§pop().m_opponentsMinions[_loc3_].m_currHealth > 0)
                                    {
                                       §§push(Singleton.dynamicData);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          _loc2_ = Number(§§pop().m_opponentsMinions[_loc3_].TickDotsAndHots());
                                          if(_loc5_)
                                          {
                                             §§push(_loc2_);
                                             §§push(_loc1_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc5_ || Boolean(_loc2_))
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr107:
                                                      §§push(Singleton.dynamicData);
                                                      if(_loc5_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                            if(_loc5_ || Boolean(_loc3_))
                                                            {
                                                               §§push(§§pop() != null);
                                                               if(!_loc4_)
                                                               {
                                                                  addr135:
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     §§push(Singleton.dynamicData);
                                                                     if(_loc5_ || Boolean(_loc3_))
                                                                     {
                                                                        addr146:
                                                                        §§push(_loc3_);
                                                                        if(_loc5_ || Boolean(_loc3_))
                                                                        {
                                                                           addr154:
                                                                           §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                           if(!(_loc4_ && Boolean(_loc1_)))
                                                                           {
                                                                              §§push(§§pop().m_currHealth);
                                                                              if(!(_loc5_ || Boolean(_loc2_)))
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr174:
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              addr177:
                                                                              §§push(Singleton.dynamicData);
                                                                              §§push(_loc3_);
                                                                           }
                                                                           addr179:
                                                                           _loc2_ = Number(§§pop().TickDotsAndHots());
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc2_);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr188:
                                                                              if(§§pop() <= _loc1_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              addr190:
                                                                              §§push(_loc2_);
                                                                           }
                                                                           _loc1_ = §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr179);
                                                                        §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr107);
                                             }
                                             §§goto(addr188);
                                          }
                                          break;
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr240);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr177);
               }
               §§push(TweenLite);
               §§push(this);
               §§push(_loc1_);
               if(_loc5_)
               {
                  §§push(§§pop() + 0.5);
               }
               §§pop().to(§§pop(),§§pop(),{"onComplete":this.StartRound});
               addr240:
               return;
            }
         }
      }
      
      private function ResetExtraMinionsForBattleMod() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:OwnedMinion = null;
         var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         var _loc2_:Vector.<Boolean> = new Vector.<Boolean>(5);
         var _loc4_:* = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(5);
               if(!_loc5_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(Singleton.dynamicData);
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           addr134:
                           §§pop().ResetThePlayersBattleModMinions();
                           if(!_loc5_)
                           {
                              §§push(0);
                              if(_loc6_ || Boolean(this))
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(5);
                                 addr224:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(Singleton.dynamicData);
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          addr158:
                                          §§goto(addr225);
                                       }
                                       addr157:
                                    }
                                    §§goto(addr225);
                                 }
                              }
                           }
                           §§goto(addr222);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr225);
                  }
                  else
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(_loc4_);
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§push(§§pop().GetOwnedMinionAt(§§pop()));
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              _loc3_ = §§pop();
                              if(_loc3_ != null)
                              {
                                 _loc2_[_loc4_] = _loc3_.m_isExtraBattleModMinion;
                                 if(!(_loc6_ || Boolean(_loc2_)))
                                 {
                                    continue;
                                 }
                                 if(_loc2_[_loc4_])
                                 {
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       §§push(this.m_battleScreenVisualController);
                                       if(!_loc5_)
                                       {
                                          §§pop().GetMinionBottomLayerVisualObjectFor(_loc3_).Cleanup();
                                          addr93:
                                          §§push(this.m_battleScreenVisualController);
                                       }
                                       §§pop().GetMinionTopLayerVisualObjectFor(_loc3_).Cleanup();
                                       addr98:
                                       _loc4_++;
                                       continue;
                                    }
                                    §§goto(addr93);
                                 }
                              }
                              §§goto(addr98);
                           }
                           else
                           {
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr158);
                     }
                     else
                     {
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr134);
               }
               §§goto(addr224);
            }
            break;
         }
         _loc4_ = §§pop();
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§goto(addr134);
         }
         addr225:
         while(true)
         {
            §§push(§§pop().GetOwnedMinionAt(§§pop()));
            addr159:
            while(true)
            {
               _loc3_ = §§pop();
               if(_loc2_[_loc4_])
               {
                  if(_loc6_)
                  {
                     §§push(this.m_battleScreenVisualController);
                     if(_loc6_)
                     {
                        §§pop().m_visualMinionsForPlayer[_loc4_].SetNewMinion(_loc3_,true);
                        if(!_loc5_)
                        {
                           §§push(this.m_battleScreenVisualController);
                           if(_loc6_)
                           {
                              §§pop().m_visualMinionsForPlayerOverGrey[_loc4_].SetNewMinion(_loc3_,true);
                              §§push(this.m_battleScreenVisualController);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 addr205:
                                 §§pop().m_visualMinionsForPlayer[_loc4_].alpha = 0.5;
                                 if(_loc6_)
                                 {
                                    addr214:
                                    this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc4_].visible = true;
                                    if(!_loc5_)
                                    {
                                       addr221:
                                       _loc4_++;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                                 addr222:
                              }
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr205);
                  }
               }
               §§goto(addr221);
            }
            continue loop6;
         }
         addr225:
      }
      
      public function OpenVictoryMenus() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:OwnedGem = null;
         if(_loc5_ || _loc3_)
         {
            if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION))
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  addr39:
                  _loc1_ = 0;
               }
               while(true)
               {
                  §§push(_loc1_);
                  §§push(5);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           addr67:
                           Singleton.dynamicData.UpdateTrainersStarsForCurrentTrainer();
                           §§push(Singleton.utility);
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              §§pop().m_soundController.FadeCurrentMusic(0,1);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(Singleton.dynamicData);
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    §§push(0);
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§pop().m_numberOfDeathsSinceVictory = §§pop();
                                       this.m_currState = BattleScreenStates.BSS_VICTORY_MENUS;
                                       §§push(this.m_winScreen);
                                       if(!_loc6_)
                                       {
                                          §§pop().m_victoryPopup.BringInVictoryPopup();
                                          §§push(Singleton.dynamicData);
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             §§push(§§pop().m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS));
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   this.ResetExtraMinionsForBattleMod();
                                                   if(_loc5_ || Boolean(_loc1_))
                                                   {
                                                      addr145:
                                                      this.m_battleScreenVisualController.SetupVisualsForTheWinningScreen();
                                                      addr143:
                                                      if(_loc5_)
                                                      {
                                                         addr150:
                                                         this.m_winScreen.BringInScreen(true);
                                                         addr152:
                                                         if(!Singleton.dynamicData.HasBeatenCurrentTrainer())
                                                         {
                                                            addr158:
                                                            §§push(Singleton.dynamicData);
                                                            §§push(Singleton.dynamicData);
                                                            if(!(_loc6_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(§§pop().m_currMoney);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Singleton.staticData);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop().GetMoneyRewardForCurrentFloor());
                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(6);
                                                                        if(_loc5_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(Singleton.dynamicData);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(StarUpgradeTypes.STAR_UPGRADE_MONEY);
                                                                                 if(_loc5_ || Boolean(_loc1_))
                                                                                 {
                                                                                    §§push(§§pop().GetStarUpgradeAmount(§§pop()));
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc6_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          addr226:
                                                                                          §§push(Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_MONEY));
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr229:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                addr237:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc6_ && Boolean(this)))
                                                                                                {
                                                                                                   §§pop().m_currMoney = §§pop();
                                                                                                   §§push(Singleton.dynamicData);
                                                                                                   §§push(true);
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      §§pop().SetHasBeatenTheCurrTrainer(§§pop());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(Singleton.staticData);
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop().m_trainerSystem.GetCurrentTrainer());
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop().m_trainerType);
                                                                                                               if(!(_loc6_ && Boolean(this)))
                                                                                                               {
                                                                                                                  if(§§pop() == TrainerType.NORMAL_TRAINER)
                                                                                                                  {
                                                                                                                     §§push(Singleton.dynamicData);
                                                                                                                     if(_loc5_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                        var _loc3_:*;
                                                                                                                        §§push((_loc3_ = §§pop()).m_currKeysOnFloor);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                        }
                                                                                                                        var _loc4_:* = §§pop();
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           _loc3_.m_currKeysOnFloor = _loc4_;
                                                                                                                        }
                                                                                                                        addr306:
                                                                                                                        §§push(Singleton.utility);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().m_screenControllers);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().m_topDownScreen);
                                                                                                                              if(_loc5_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().m_topDownMovementScreen);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().m_mainChar);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(true);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§pop().m_hasEarnedANewKey = §§pop();
                                                                                                                                          if(!(_loc6_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§push(Singleton.utility);
                                                                                                                                             if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                addr347:
                                                                                                                                                §§push(§§pop().m_screenControllers);
                                                                                                                                                if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().m_topDownScreen);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr358:
                                                                                                                                                      §§push(§§pop().m_topDownMovementScreen);
                                                                                                                                                      if(!(_loc6_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         addr366:
                                                                                                                                                         §§push(§§pop().m_mainChar);
                                                                                                                                                         if(!(_loc6_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().m_hasEarnedMoney = §§pop();
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Singleton.dynamicData);
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr389:
                                                                                                                                                                     §§push(Singleton.dynamicData.m_currMoney);
                                                                                                                                                                     §§push(Singleton.staticData.GetMoneyRewardForCurrentFloor());
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        addr395:
                                                                                                                                                                        §§pop().m_currMoney = §§pop() + §§pop() / 3;
                                                                                                                                                                        §§goto(addr394);
                                                                                                                                                                     }
                                                                                                                                                                     addr394:
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr891);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr631:
                                                                                                                                                                     §§push((_loc3_ = §§pop()).m_currEggeryKeys);
                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + 1);
                                                                                                                                                                     }
                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                     if(!(_loc6_ && Boolean(this)))
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_.m_currEggeryKeys = _loc4_;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc5_ || Boolean(_loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_ = new OwnedGem();
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_.CreateRandomGemWithTier(Singleton.staticData.GetGemTierRewardForCurrentFloor());
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              Singleton.dynamicData.AddToOwnedGems(_loc2_);
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr681:
                                                                                                                                                                                 §§push(Singleton.utility);
                                                                                                                                                                                 if(_loc5_ || Boolean(_loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().m_screenControllers);
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().m_topDownScreen);
                                                                                                                                                                                       if(!(_loc6_ && Boolean(this)))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().m_topDownMovementScreen);
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().m_mainChar);
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().m_hasEarnedANewGem = §§pop();
                                                                                                                                                                                                   §§goto(addr721);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().m_hasEarnedANewKey = §§pop();
                                                                                                                                                                                                §§goto(addr721);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr719);
                                                                                                                                                                              }
                                                                                                                                                                              addr721:
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr719:
                                                                                                                                                                                 §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar);
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr891);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr681);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr744:
                                                                                                                                                                        this.AddSageSeal(1);
                                                                                                                                                                        §§goto(addr891);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr769:
                                                                                                                                                                  this.AddSageSeal(2);
                                                                                                                                                                  if(!(_loc5_ || Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     addr849:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr891);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr602:
                                                                                                                                                               §§pop().m_hasEarnedANewSageSeal = §§pop();
                                                                                                                                                               §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr891);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr610);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr593:
                                                                                                                                                      §§push(§§pop().m_topDownMovementScreen);
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().m_mainChar);
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr602);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr610);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr610:
                                                                                                                                                   §§pop().m_hasEarnedANewKey = true;
                                                                                                                                                   addr891:
                                                                                                                                                   return;
                                                                                                                                                   §§push(§§pop().m_mainChar);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr577:
                                                                                                                                                §§push(§§pop().m_screenControllers);
                                                                                                                                                if(!(_loc6_ && Boolean(_loc1_)))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().m_topDownScreen);
                                                                                                                                                   if(!(_loc6_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr593);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr602);
                                                                                                                                          }
                                                                                                                                          §§goto(addr744);
                                                                                                                                       }
                                                                                                                                       §§goto(addr602);
                                                                                                                                    }
                                                                                                                                    §§goto(addr610);
                                                                                                                                 }
                                                                                                                                 §§goto(addr366);
                                                                                                                              }
                                                                                                                              §§goto(addr358);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr602);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr552:
                                                                                                                        §§push(§§pop().m_currFloorOfTower);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr734:
                                                                                                                        §§push(TrainerType.TRAINER_GYM_1);
                                                                                                                        if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr744);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Singleton.staticData.m_trainerSystem);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().GetCurrentTrainer());
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().m_trainerType);
                                                                                                                                    §§push(TrainerType.TRAINER_GYM_2);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       addr761:
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && Boolean(_loc1_)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr769);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr869:
                                                                                                                                             this.AddSageSeal(6);
                                                                                                                                             §§goto(addr891);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(Singleton.staticData);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr786:
                                                                                                                                             §§push(§§pop().m_trainerSystem.GetCurrentTrainer().m_trainerType);
                                                                                                                                             §§push(TrainerType.TRAINER_GYM_3);
                                                                                                                                             if(!(_loc6_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      this.AddSageSeal(3);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr888:
                                                                                                                                                      this.AddSageSeal(7);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr891);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(Singleton.staticData.m_trainerSystem);
                                                                                                                                                   if(_loc5_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().GetCurrentTrainer());
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr822:
                                                                                                                                                         §§push(§§pop().m_trainerType);
                                                                                                                                                         §§push(TrainerType.TRAINER_GYM_4);
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               this.AddSageSeal(4);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(Singleton.staticData);
                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr842:
                                                                                                                                                                  if(§§pop().m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GYM_5)
                                                                                                                                                                  {
                                                                                                                                                                     this.AddSageSeal(5);
                                                                                                                                                                     §§goto(addr849);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Singleton.staticData);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr891);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().m_trainerSystem.GetCurrentTrainer());
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr856:
                                                                                                                                                                  if(§§pop().m_trainerType == TrainerType.TRAINER_GYM_6)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr869);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr888);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr875:
                                                                                                                                                                     §§push(Singleton.staticData.m_trainerSystem.GetCurrentTrainer());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr891);
                                                                                                                                                               }
                                                                                                                                                               addr880:
                                                                                                                                                               if(§§pop().m_trainerType == TrainerType.TRAINER_GRAND_SAGE)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && Boolean(_loc1_)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr888);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr891);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr880);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr842);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr842);
                                                                                                                                          }
                                                                                                                                          §§goto(addr875);
                                                                                                                                       }
                                                                                                                                       §§goto(addr891);
                                                                                                                                    }
                                                                                                                                    §§goto(addr880);
                                                                                                                                 }
                                                                                                                                 §§goto(addr786);
                                                                                                                              }
                                                                                                                              §§goto(addr842);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr842);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(Singleton.staticData.m_trainerSystem.GetCurrentTrainer());
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().m_trainerType);
                                                                                                                        §§push(TrainerType.HARD_TRAINER);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              §§push(Singleton.dynamicData);
                                                                                                                              if(_loc5_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§push((_loc3_ = §§pop()).m_currEggeryKeys);
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                 }
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 if(_loc5_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    _loc3_.m_currEggeryKeys = _loc4_;
                                                                                                                                 }
                                                                                                                                 §§push(Singleton.dynamicData);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr456:
                                                                                                                                    §§pop().m_hasBeatenHardMode = true;
                                                                                                                                    _loc2_ = new OwnedGem();
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       _loc2_.CreateRandomGemWithTier(Singleton.staticData.GetGemTierRewardForCurrentFloor());
                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          Singleton.dynamicData.AddToOwnedGems(_loc2_);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr516:
                                                                                                                                          §§goto(addr891);
                                                                                                                                       }
                                                                                                                                       §§push(Singleton.utility);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().m_screenControllers);
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().m_topDownScreen);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().m_topDownMovementScreen);
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().m_mainChar);
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(true);
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().m_hasEarnedANewGem = §§pop();
                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr514:
                                                                                                                                                            §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar);
                                                                                                                                                            §§push(true);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr516);
                                                                                                                                                      }
                                                                                                                                                      §§pop().m_hasEarnedANewKey = §§pop();
                                                                                                                                                      §§goto(addr516);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr514);
                                                                                                                                    }
                                                                                                                                    §§goto(addr516);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr536:
                                                                                                                                    §§push((_loc3_ = §§pop()).m_currEggeryKeys);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                    }
                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       _loc3_.m_currEggeryKeys = _loc4_;
                                                                                                                                    }
                                                                                                                                    §§goto(addr552);
                                                                                                                                    §§push(Singleton.dynamicData);
                                                                                                                                 }
                                                                                                                                 §§goto(addr891);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Singleton.staticData.m_trainerSystem.GetCurrentTrainer());
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().m_trainerType);
                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(§§pop() == TrainerType.BOSS_TRAINER)
                                                                                                                                    {
                                                                                                                                       §§goto(addr536);
                                                                                                                                       §§push(Singleton.dynamicData);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(Singleton.staticData.m_trainerSystem);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          addr618:
                                                                                                                                          §§push(§§pop().GetCurrentTrainer().m_trainerType);
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr626:
                                                                                                                                             if(§§pop() == TrainerType.EXPERT_TRAINER)
                                                                                                                                             {
                                                                                                                                                §§goto(addr631);
                                                                                                                                                §§push(Singleton.dynamicData);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(Singleton.staticData.m_trainerSystem.GetCurrentTrainer());
                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr734);
                                                                                                                                                   §§push(§§pop().m_trainerType);
                                                                                                                                                }
                                                                                                                                                §§goto(addr856);
                                                                                                                                             }
                                                                                                                                             §§goto(addr891);
                                                                                                                                          }
                                                                                                                                          §§goto(addr822);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr842);
                                                                                                                                 }
                                                                                                                                 §§goto(addr626);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr856);
                                                                                                                        }
                                                                                                                        §§goto(addr761);
                                                                                                                     }
                                                                                                                     §§goto(addr618);
                                                                                                                  }
                                                                                                                  §§goto(addr822);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr842);
                                                                                                      }
                                                                                                      §§goto(addr306);
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr395);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr395);
                                                                                 }
                                                                              }
                                                                              §§goto(addr226);
                                                                           }
                                                                           §§goto(addr395);
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     §§goto(addr237);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                         §§goto(addr891);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr152);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr389);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr347);
                        }
                        addr557:
                        if(Singleton.dynamicData.m_currFloorOfTower + 2 > Singleton.dynamicData.GetHighestFloor())
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(Singleton.utility);
                              if(_loc5_)
                              {
                                 §§goto(addr577);
                              }
                              §§goto(addr602);
                           }
                           else
                           {
                              §§goto(addr744);
                           }
                        }
                        §§goto(addr602);
                     }
                     else
                     {
                        §§push(this.m_battleScreenVisualController);
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr145);
                  }
                  break;
               }
               if(§§pop() != §§pop())
               {
               }
               §§goto(addr557);
            }
            §§goto(addr67);
         }
         §§goto(addr39);
      }
      
      private function AddSageSeal(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:OwnedGem = null;
         if(_loc4_ || Boolean(this))
         {
            §§push(Singleton.utility);
            if(_loc4_)
            {
               §§pop().UnlockNextFloor();
               §§push(Singleton.dynamicData);
               if(!_loc3_)
               {
                  §§push(§§pop().GetTotalSageSeals());
                  if(_loc4_)
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(param1);
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              §§push(7);
                              if(_loc4_ || Boolean(param1))
                              {
                                 addr63:
                                 if(§§pop() != §§pop())
                                 {
                                    addr66:
                                    Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_playSageSealAnimation = true;
                                    addr64:
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr80:
                                       Singleton.dynamicData.SetTotalSageSeals(param1);
                                       addr78:
                                    }
                                    §§goto(addr84);
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr84);
                           }
                           addr84:
                           if(param1 == 5)
                           {
                              _loc2_ = new OwnedGem();
                              if(!_loc3_)
                              {
                                 _loc2_.CreateRandomGemWithTier(10,1);
                                 if(_loc4_)
                                 {
                                    Singleton.dynamicData.AddToOwnedGems(_loc2_);
                                    if(_loc3_ && Boolean(this))
                                    {
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewGem = true;
                           }
                           §§goto(addr123);
                        }
                        addr123:
                        return;
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr84);
               }
               §§goto(addr80);
            }
            §§goto(addr66);
         }
         §§goto(addr64);
      }
      
      public function OpenLoseMenus() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Singleton.utility);
            if(!_loc3_)
            {
               §§pop().m_soundController.FadeCurrentMusic(0.4,4);
               if(!_loc3_)
               {
                  §§push(Singleton.dynamicData);
                  if(!_loc3_)
                  {
                     §§push(TutorialTypes.TUTORIAL_DEATH_EXP);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                        if(_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(Singleton.dynamicData);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    addr61:
                                    §§pop().SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH_EXP,true);
                                    if(_loc4_)
                                    {
                                       TweenLite.to(this,0.4,{
                                          "onComplete":Singleton.utility.m_tutorialHandler.BringIn_DeathTut,
                                          "onCompleteParams":[this.OpenLoseMenus]
                                       });
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    addr100:
                                    var _loc1_:*;
                                    §§push((_loc1_ = §§pop()).m_numberOfDeathsSinceVictory);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc2_:* = §§pop();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       _loc1_.m_numberOfDeathsSinceVictory = _loc2_;
                                    }
                                 }
                              }
                              this.m_currState = BattleScreenStates.BSS_LOST_MENUS;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr142:
                                 this.m_battleScreenVisualController.SetupVisualsForTheWinningScreen();
                                 this.m_loseScreen.BringInScreen(false);
                                 if(_loc4_ || Boolean(this))
                                 {
                                 }
                                 §§goto(addr164);
                              }
                              addr158:
                              Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = false;
                              §§goto(addr164);
                           }
                           else
                           {
                              §§push(Singleton.dynamicData);
                              if(!_loc3_)
                              {
                                 addr95:
                                 if(§§pop().m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
                                 {
                                    this.ResetExtraMinionsForBattleMod();
                                 }
                                 §§push(Singleton.dynamicData);
                              }
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr61);
               }
               addr164:
               return;
            }
            §§goto(addr158);
         }
         §§goto(addr142);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.UpdateFullFrames();
            if(!_loc2_)
            {
               this.m_muteMusicButton.Update();
               if(!(_loc2_ && _loc2_))
               {
                  this.m_muteSoundButton.Update();
                  §§push(Singleton.utility);
                  if(_loc1_)
                  {
                     §§push(§§pop().m_tutorialHandler);
                     if(_loc1_)
                     {
                        §§push(§§pop().m_isActive);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              §§goto(addr56);
                           }
                           else
                           {
                              §§push(this.m_battleScreenVisualController);
                              if(!_loc2_)
                              {
                                 §§pop().Update();
                                 §§push(this.m_conformationBox.m_isOpen);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       return;
                                    }
                                    §§push(this.m_currState);
                                    if(_loc1_)
                                    {
                                       §§push(BattleScreenStates.BSS_VICTORY_MENUS);
                                       if(_loc1_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             this.m_winScreen.Update();
                                             addr101:
                                             §§push(this.m_currState);
                                             if(!_loc2_)
                                             {
                                                §§push(BattleScreenStates.BSS_LOST_MENUS);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      this.m_loseScreen.Update();
                                                      addr160:
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr161:
                                                         §§push(this.m_currState);
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            addr134:
                                                            §§push(BattleScreenStates.BSS_GET_A_PLAYERS_MOVE);
                                                            if(_loc1_)
                                                            {
                                                               addr138:
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc1_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr164);
                                                            }
                                                            addr163:
                                                            addr164:
                                                            if(§§pop())
                                                            {
                                                               §§push(this.m_forfeitButton);
                                                               if(_loc1_)
                                                               {
                                                                  §§pop().m_isActive = true;
                                                                  §§push(this.m_forfeitButton);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().alpha = 1;
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.m_forfeitButton);
                                                            }
                                                            §§pop().alpha = 0.3;
                                                            addr182:
                                                            return;
                                                            §§push(§§pop() == §§pop());
                                                         }
                                                         §§goto(addr163);
                                                         §§push(BattleScreenViualControllerStates.BSVCS_GETTING_MOVE);
                                                      }
                                                      §§goto(addr161);
                                                      §§push(this.m_battleScreenVisualController.m_currState);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr101);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr160);
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr56);
                  }
                  addr56:
                  Singleton.utility.m_tutorialHandler.Update();
                  return;
               }
            }
            §§goto(addr182);
         }
         §§goto(addr101);
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:URLRequest = null;
         var _loc2_:StaticData = Singleton.staticData;
         §§push(_loc2_.m_sponsorURL_part1);
         if(!_loc7_)
         {
            §§push(§§pop() + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5);
         }
         var _loc3_:* = §§pop();
         §§push(this.m_sponsorURL_part1);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_sponsorURL_part2 + this.m_sponsorURL_part2 + this.m_sponsorURL_part3 + this.m_sponsorURL_part4 + this.m_sponsorURL_part5 + this.m_sponsorURL_part5 + this.m_sponsorURL_part6 + this.m_sponsorURL_part7 + this.m_sponsorURL_part8 + this.m_sponsorURL_part9 + this.m_sponsorURL_part10 + this.m_sponsorURL_part11 + this.m_sponsorURL_part8 + this.m_sponsorURL_part12 + this.m_sponsorURL_part5);
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            if(_loc3_ != _loc4_)
            {
               addr134:
               _loc5_ = new URLRequest(_loc4_);
               if(!(_loc7_ && _loc3_))
               {
                  navigateToURL(_loc5_,"_self");
                  if(!_loc7_)
                  {
                     Singleton.utility.m_screenControllers.SetSceneTo(GameState.SITE_LOCKED_SCREEN,false);
                     if(_loc6_)
                     {
                     }
                     §§goto(addr171);
                  }
               }
               this.m_sponsorTimer.stop();
            }
            addr171:
            return;
         }
         §§goto(addr134);
      }
      
      public function ForfeitButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_conformationBox.BringIn(this.ForfeitYesButtonPressed,this.ForfeitNoButtonPressed);
         }
      }
      
      public function ForfeitNoButtonPressed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.m_playerMoveSystem);
            if(_loc1_)
            {
               §§pop().Reset();
               §§goto(addr39);
            }
            §§pop().ChooseAMoveFor(this.m_currMinion);
         }
         addr39:
         if(_loc1_ || _loc1_)
         {
            §§push(this.m_playerMoveSystem);
         }
      }
      
      public function ForfeitYesButtonPressed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Singleton.dynamicData);
            if(!_loc1_)
            {
               §§pop().ResetThePlayersBattleModMinions();
               §§push(Singleton.dynamicData);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§pop().SetToReturnToOnDeathPoint();
                  §§push(Singleton.dynamicData);
               }
            }
            §§pop().HealAllOfAPlayersInPartyMinions();
         }
         §§push(Singleton.utility);
         if(!_loc1_)
         {
            §§push(§§pop().m_screenControllers);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = false;
               §§push(Singleton.utility);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(§§pop().m_analyticsController);
                  §§push("Forfeit");
                  §§push("");
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(Singleton.dynamicData);
                     if(!_loc1_)
                     {
                        §§push(§§pop().m_currFloorOfTower);
                        if(!_loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc1_)
                           {
                              §§push(§§pop() + "_");
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr99:
                                 §§push(§§pop() + Singleton.dynamicData.m_currRoomOfTower);
                              }
                           }
                           §§pop().LogCounterMetric(§§pop(),§§pop());
                           §§push(Singleton.utility);
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr117);
                           }
                           §§goto(addr130);
                        }
                     }
                  }
                  §§goto(addr99);
               }
               addr117:
               §§pop().m_soundController.FadeCurrentMusic(0,0.5);
               if(_loc2_ || _loc2_)
               {
                  addr131:
                  Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
                  addr130:
               }
               return;
            }
         }
         §§goto(addr131);
      }
   }
}
