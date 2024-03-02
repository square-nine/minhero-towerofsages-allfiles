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
         super();
         this.m_battleScreenVisualController = new BattleScreenVisualController();
         this.m_playerMoveSystem = new PlayerMoveSystem();
         this.m_aiMoveSystem = new AIMoveSystem();
         this.m_loseScreen = new LoseScreen();
         this.m_winScreen = new WinScreen();
         this.m_resurectionModCounts = new Vector.<int>(5);
         this.m_resurectionCounts = new Vector.<int>(5);
         this.m_sponsorTimer = new Timer(100000 + Math.random() * 250000,0);
         this.m_sponsorTimer.addEventListener("timer",this.timerHandler);
         this.m_sponsorTimer.start();
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_battleScreenVisualController.LoadSprites(this);
         this.m_winScreen.LoadSprites(this);
         this.m_loseScreen.LoadSprites(this);
         this.m_forfeitButton = new TCButton(this.ForfeitButtonPressed,"forfeitButton");
         this.m_forfeitButton.x = 624;
         this.m_forfeitButton.y = 0;
         addChild(this.m_forfeitButton);
         this.m_muteMusicButton = new ToggleButton(this.ToggleMuteMusic,"menu_muteMusicButton_on","menu_muteMusicButton_off");
         this.m_muteMusicButton.x = 4;
         this.m_muteMusicButton.y = 6;
         addChild(this.m_muteMusicButton);
         this.m_sponsorURL_part1 = "h";
         this.m_sponsorURL_part2 = "t";
         this.m_sponsorURL_part3 = "p";
         this.m_sponsorURL_part4 = ":";
         this.m_sponsorURL_part5 = "/";
         this.m_sponsorURL_part6 = "so";
         this.m_sponsorURL_part7 = "go";
         this.m_sponsorURL_part8 = "o";
         this.m_sponsorURL_part9 = "d";
         this.m_sponsorURL_part10 = ".";
         this.m_sponsorURL_part11 = "c";
         this.m_sponsorURL_part12 = "m";
         this.m_muteSoundButton = new ToggleButton(this.ToggleSoundMusic,"menu_muteSoundButton_on","menu_muteSoundButton_off");
         this.m_muteSoundButton.x = 36;
         this.m_muteSoundButton.y = 5;
         addChild(this.m_muteSoundButton);
         this.m_conformationBox = new ConformationBox();
         this.m_conformationBox.x = 490;
         this.m_conformationBox.y = 10;
         addChild(this.m_conformationBox);
      }
      
      private function ToggleMuteMusic() : void
      {
         Singleton.dynamicData.m_isMusicOn = this.m_muteMusicButton.m_isToggleOn;
      }
      
      private function ToggleSoundMusic() : void
      {
         Singleton.dynamicData.m_isSoundOn = this.m_muteSoundButton.m_isToggleOn;
      }
      
      override public function StartActivate() : void
      {
         super.StartActivate();
         this.m_muteSoundButton.m_isToggleOn = Singleton.dynamicData.m_isSoundOn;
         this.m_muteMusicButton.m_isToggleOn = Singleton.dynamicData.m_isMusicOn;
         Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
         Singleton.utility.m_analyticsController.LogCounterMetric_enterBattle("Battle Started","" + Singleton.dynamicData.m_currFloorOfTower + "_" + Singleton.dynamicData.m_currRoomOfTower);
         this.m_currentMovesTickedForMod = 0;
         this.m_extraPlayerMinionsForMod = 0;
         this.m_extraOpponentMinionsForMod = 0;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_resurectionModCounts[_loc1_] = 0;
            this.m_resurectionCounts[_loc1_] = 0;
            _loc1_++;
         }
         this.m_doTiesGoToPlayer = Math.random() * 1000 > 500;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc2_] != null)
            {
               Singleton.dynamicData.SetHasMinionBeenSeen(Singleton.dynamicData.m_opponentsMinions[_loc2_].m_minionDexID,true);
               Singleton.dynamicData.m_opponentsMinions[_loc2_].SetupForCombat();
               Singleton.dynamicData.m_opponentsMinions[_loc2_].CalculateCurrStats();
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) != null)
            {
               Singleton.dynamicData.GetOwnedMinionAt(_loc2_).SetupForCombat();
               Singleton.dynamicData.GetOwnedMinionAt(_loc2_).CalculateCurrStats();
            }
            _loc2_++;
         }
         var _loc3_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         if(_loc3_.IsModActive(ModStoneTypes.MOD_STONE_MOVE_TIMER))
         {
            this.m_minionForMoveTimerMod = new OwnedMinion(MinionDexID.DEX_ID_battleModMinion_1 + _loc3_.m_movePower,false);
            this.m_minionForMoveTimerMod.SetLevel(Singleton.dynamicData.m_opponentsMinions[0].m_currLevel);
            this.m_minionForMoveTimerMod.CalculateCurrStats();
            this.m_minionForMoveTimerMod.ReFillHealthAndEnergy();
         }
         if(Singleton.staticData.AUTO_WIN_BATTLES)
         {
            _loc2_ = 0;
            while(_loc2_ < Singleton.dynamicData.m_opponentsMinions.length)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc2_] != null)
               {
                  Singleton.dynamicData.m_opponentsMinions[_loc2_].m_currHealth = 0;
               }
               _loc2_++;
            }
         }
         this.m_battleScreenVisualController.SetupVisuals();
         this.PlayStartingAnimation();
      }
      
      override public function FinishActivate() : void
      {
         super.FinishActivate();
         TweenLite.to(this,0.2,{"onComplete":Singleton.utility.CheckForSiteLock});
      }
      
      override public function DeActivate() : void
      {
         var _loc2_:OwnedMinion = null;
         super.DeActivate();
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            _loc2_ = Singleton.dynamicData.GetOwnedMinionAt(_loc1_);
            if(_loc2_ != null)
            {
               _loc2_.ClearBuffsAndDebuffs();
               _loc2_.CalculateCurrStats();
            }
            _loc1_++;
         }
         this.m_battleScreenVisualController.Cleanup();
         this.m_winScreen.DeActivate();
      }
      
      public function PlayStartingAnimation() : void
      {
         var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         this.m_currState = BattleScreenStates.BSS_PLAY_STARTING_ANIMATION;
         this.m_battleScreenVisualController.UpdateMinionVisuals();
         this.m_battleScreenVisualController.PlayIntroAnimation();
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_BATTLE_BASICS))
         {
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_BATTLE_BASICS,true);
            TweenLite.to(this,3.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_BattleBasicTuts,
               "onCompleteParams":[this.IntroTutFinished]
            });
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_FOCUS_TARGETS) && Singleton.dynamicData.m_currFloorOfTower == 1 && Singleton.dynamicData.m_currRoomOfTower == 1)
         {
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_FOCUS_TARGETS,true);
            TweenLite.to(this,3.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_FocusTargetsTut,
               "onCompleteParams":[this.IntroTutFinished]
            });
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SHIELD_BATTLE_MOD) && Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_SHIELD))
         {
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_SHIELD_BATTLE_MOD,true);
            TweenLite.to(this,3.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ShieldBattleModTut,
               "onCompleteParams":[this.IntroTutFinished]
            });
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_EXTRA_MOVES_BATTLE_MOD) && Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_MOVE_TIMER))
         {
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_EXTRA_MOVES_BATTLE_MOD,true);
            TweenLite.to(this,3.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ExtraMovesBattleModTut,
               "onCompleteParams":[this.IntroTutFinished]
            });
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_EXTRA_MINIONS_BATTLE_MOD) && Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
         {
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_EXTRA_MINIONS_BATTLE_MOD,true);
            TweenLite.to(this,3.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ExtraMinionsBattleModTut,
               "onCompleteParams":[this.IntroTutFinished]
            });
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_RESURECTION_BATTLE_MOD) && Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION))
         {
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_RESURECTION_BATTLE_MOD,true);
            TweenLite.to(this,3.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ResurectionnBattleModTut,
               "onCompleteParams":[this.IntroTutFinished]
            });
         }
         else
         {
            TweenLite.to(this,3.5 - 0.3,{"onComplete":this.StartRound});
         }
         TweenLite.to(this,1,{"onComplete":this.StartTheBattleTrack});
      }
      
      public function IntroTutFinished() : void
      {
         TweenLite.to(this,0.9,{"onComplete":this.StartRound});
      }
      
      private function StartTheBattleTrack() : void
      {
         Singleton.utility.m_soundController.ChangeMusicTrack(BackgroundMusicTracks.MUSIC_BATTLE);
         Singleton.utility.m_soundController.FadeCurrentMusic(1,6);
      }
      
      public function StartRound() : void
      {
         var _loc6_:Vector.<Boolean> = null;
         var _loc7_:Vector.<Boolean> = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         this.m_currState = BattleScreenStates.BSS_START_ROUND;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth > 0)
               {
                  Singleton.dynamicData.m_opponentsMinions[_loc3_].m_hasMovedOnThisTurn = false;
                  Singleton.dynamicData.m_opponentsMinions[_loc3_].TickTurn();
                  _loc2_++;
               }
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_) != null)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_currHealth > 0)
               {
                  Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_hasMovedOnThisTurn = false;
                  Singleton.dynamicData.GetOwnedMinionAt(_loc3_).TickTurn();
                  _loc1_++;
               }
            }
            _loc3_++;
         }
         var _loc4_:Boolean = false;
         var _loc5_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION) && _loc2_ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null)
               {
                  if(Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth <= 0)
                  {
                     if(this.m_resurectionModCounts[_loc3_] == 0)
                     {
                        this.m_battleScreenVisualController.AnimateInTombstoneVisuals(_loc3_);
                        _loc4_ = true;
                     }
                  }
               }
               _loc3_++;
            }
         }
         if(_loc5_.IsModActive(ModStoneTypes.MOD_STONE_SHIELD))
         {
            _loc6_ = new Vector.<Boolean>(5);
            _loc7_ = new Vector.<Boolean>(5);
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc6_[_loc3_] = false;
               _loc7_[_loc3_] = false;
               _loc3_++;
            }
            _loc8_ = 0;
            while(_loc1_ > 1)
            {
               _loc10_ = Math.random() * 5;
               if(!_loc6_[_loc10_] && Singleton.dynamicData.GetOwnedMinionAt(_loc10_) != null)
               {
                  if(Singleton.dynamicData.GetOwnedMinionAt(_loc10_).m_currHealth > 0)
                  {
                     _loc6_[_loc10_] = true;
                     _loc8_++;
                     if(_loc8_ == _loc1_ - 1 || _loc8_ == _loc5_.m_numOfPlayerShields)
                     {
                        break;
                     }
                  }
               }
            }
            _loc8_ = 0;
            while(_loc2_ > 1)
            {
               _loc10_ = Math.random() * 5;
               if(!_loc7_[_loc10_] && Singleton.dynamicData.m_opponentsMinions[_loc10_] != null)
               {
                  if(Singleton.dynamicData.m_opponentsMinions[_loc10_].m_currHealth > 0)
                  {
                     _loc7_[_loc10_] = true;
                     _loc8_++;
                     if(_loc8_ == _loc2_ - 1 || _loc8_ == _loc5_.m_numOfEnemyShields)
                     {
                        break;
                     }
                  }
               }
            }
            _loc9_ = false;
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_) != null)
               {
                  _loc9_ = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(Singleton.dynamicData.GetOwnedMinionAt(_loc3_)).AnimateAndSetBattleModShield(_loc6_[_loc3_]);
               }
               if(_loc9_)
               {
                  _loc4_ = true;
               }
               if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null)
               {
                  _loc9_ = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(Singleton.dynamicData.m_opponentsMinions[_loc3_]).AnimateAndSetBattleModShield(_loc7_[_loc3_]);
               }
               if(_loc9_)
               {
                  _loc4_ = true;
               }
               _loc3_++;
            }
         }
         if(_loc4_)
         {
            TweenLite.to(this,1,{"onComplete":this.CheckForWinLose});
         }
         else
         {
            this.CheckForWinLose();
         }
      }
      
      public function CheckToSeeIfBothPartiesAreStillAlive() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null && Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth > 0)
            {
               _loc2_ = true;
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_currHealth > 0)
            {
               _loc1_ = true;
            }
            _loc3_++;
         }
         if(_loc2_ && _loc1_)
         {
            return true;
         }
         return false;
      }
      
      public function CheckForWinLose() : void
      {
         var _loc8_:OwnedMinion = null;
         var _loc9_:int = 0;
         var _loc10_:OwnedMinion = null;
         var _loc11_:Boolean = false;
         var _loc12_:OwnedMinion = null;
         var _loc13_:Boolean = false;
         var _loc14_:OwnedMinion = null;
         var _loc15_:int = 0;
         var _loc16_:OwnedMinion = null;
         var _loc1_:Boolean = false;
         this.m_currState = BattleScreenStates.BSS_CHECK_FOR_WIN_LOSE;
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = true;
         var _loc6_:int = 0;
         while(_loc6_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc6_] != null)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc6_].m_currHealth > 0)
               {
                  _loc5_ = false;
               }
               else
               {
                  _loc2_.push(_loc6_);
               }
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc6_) != null)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc6_).m_currHealth > 0)
               {
                  _loc4_ = false;
               }
               else
               {
                  _loc3_.push(_loc6_);
               }
            }
            _loc6_++;
         }
         var _loc7_:TrainerDataObject;
         if((_loc7_ = Singleton.dynamicData.m_currTrainerData).IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
         {
            _loc9_ = 0;
            while(_loc9_ < _loc2_.length)
            {
               if(this.m_extraOpponentMinionsForMod < _loc7_.m_numOfExtraOpponentMinions)
               {
                  _loc8_ = Singleton.dynamicData.m_opponentsMinions[_loc2_[_loc9_]];
                  this.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc8_).Cleanup();
                  this.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(_loc8_).Cleanup();
                  (_loc8_ = new OwnedMinion(_loc7_.m_extraOpponentMinionID,false)).m_isExtraBattleModMinion = true;
                  _loc8_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower) + _loc7_.m_extraOpponentMinionLevelModifier);
                  if(_loc7_.m_extraOpponentMinionTalentTree == null)
                  {
                     Singleton.utility.AutoBuildMovesForMinion(_loc8_,new Vector.<int>());
                  }
                  else
                  {
                     Singleton.utility.AutoBuildMovesForMinion(_loc8_,Vector.<int>(_loc7_.m_extraOpponentMinionTalentTree));
                  }
                  _loc8_.CalculateCurrStats();
                  _loc8_.ReFillHealthAndEnergy();
                  this.m_battleScreenVisualController.m_visualMinionsForOpponent[_loc2_[_loc9_]].SetNewMinion(_loc8_,false);
                  this.m_battleScreenVisualController.m_visualMinionsForOpponentOverGrey[_loc2_[_loc9_]].SetNewMinion(_loc8_,false);
                  TweenLite.killTweensOf(this.m_battleScreenVisualController.m_visualMinionsForOpponent[_loc2_[_loc9_]]);
                  this.m_battleScreenVisualController.m_visualMinionsForOpponent[_loc2_[_loc9_]].AnimateIn();
                  this.m_battleScreenVisualController.m_visualMinionsForOpponent[_loc2_[_loc9_]].UpdateHealth();
                  Singleton.dynamicData.m_opponentsMinions[_loc2_[_loc9_]] = _loc8_;
                  _loc5_ = false;
                  _loc1_ = true;
                  ++this.m_extraOpponentMinionsForMod;
                  this.m_battleScreenVisualController.m_extraMinionsMod.SetMinionsToAddText(_loc7_.m_numOfExtraOpponentMinions - this.m_extraOpponentMinionsForMod,_loc7_.m_numOfExtraPlayerMinions - this.m_extraPlayerMinionsForMod);
               }
               _loc9_++;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc3_.length)
            {
               if(this.m_extraPlayerMinionsForMod < _loc7_.m_numOfExtraPlayerMinions)
               {
                  _loc8_ = Singleton.dynamicData.GetOwnedMinionAt(_loc3_[_loc9_]);
                  this.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc8_).Cleanup();
                  this.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(_loc8_).Cleanup();
                  (_loc8_ = new OwnedMinion(_loc7_.m_extraPlayerMinionID,true)).m_isExtraBattleModMinion = true;
                  _loc8_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower) + _loc7_.m_extraPlayerMinionLevelModifier);
                  if(_loc7_.m_extraPlayerMinionTalentTree == null)
                  {
                     Singleton.utility.AutoBuildMovesForMinion(_loc8_,new Vector.<int>());
                  }
                  else
                  {
                     Singleton.utility.AutoBuildMovesForMinion(_loc8_,Vector.<int>(_loc7_.m_extraPlayerMinionTalentTree));
                  }
                  _loc8_.CalculateCurrStats();
                  _loc8_.ReFillHealthAndEnergy();
                  this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc3_[_loc9_]].SetNewMinion(_loc8_,true);
                  this.m_battleScreenVisualController.m_visualMinionsForPlayerOverGrey[_loc3_[_loc9_]].SetNewMinion(_loc8_,true);
                  TweenLite.killTweensOf(this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc3_[_loc9_]]);
                  this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc3_[_loc9_]].AnimateIn();
                  this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc3_[_loc9_]].UpdateHealth();
                  Singleton.dynamicData.SetExtraBattleModMinion(_loc8_,_loc3_[_loc9_]);
                  _loc4_ = false;
                  _loc1_ = true;
                  ++this.m_extraPlayerMinionsForMod;
                  this.m_battleScreenVisualController.m_extraMinionsMod.SetMinionsToAddText(_loc7_.m_numOfExtraOpponentMinions - this.m_extraOpponentMinionsForMod,_loc7_.m_numOfExtraPlayerMinions - this.m_extraPlayerMinionsForMod);
               }
               _loc9_++;
            }
         }
         if(_loc4_)
         {
            this.OpenLoseMenus();
            return;
         }
         if(_loc5_)
         {
            this.OpenVictoryMenus();
            return;
         }
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_SHIELD))
         {
            _loc10_ = null;
            _loc11_ = false;
            _loc12_ = null;
            _loc13_ = false;
            _loc15_ = 0;
            while(_loc15_ < 5)
            {
               if((_loc14_ = Singleton.dynamicData.GetOwnedMinionAt(_loc15_)) != null)
               {
                  if(_loc14_.m_currHealth > 0)
                  {
                     if(_loc14_.m_isBattleModShieldActive)
                     {
                        if(_loc10_ == null)
                        {
                           _loc10_ = _loc14_;
                        }
                        else if(Math.random() * 100 > 50)
                        {
                           _loc10_ = _loc14_;
                        }
                     }
                     else
                     {
                        _loc11_ = true;
                     }
                  }
               }
               if((_loc14_ = Singleton.dynamicData.m_opponentsMinions[_loc15_]) != null)
               {
                  if(_loc14_.m_currHealth > 0)
                  {
                     if(_loc14_.m_isBattleModShieldActive)
                     {
                        if(_loc12_ == null)
                        {
                           _loc12_ = _loc14_;
                        }
                        else if(Math.random() * 100 > 50)
                        {
                           _loc12_ = _loc14_;
                        }
                     }
                     else
                     {
                        _loc13_ = true;
                     }
                  }
               }
               _loc15_++;
            }
            if(!_loc11_)
            {
               _loc1_ = true;
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc10_).AnimateAndSetBattleModShield(false);
            }
            if(!_loc13_)
            {
               _loc1_ = true;
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc12_).AnimateAndSetBattleModShield(false);
            }
         }
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION))
         {
            _loc6_ = 0;
            while(_loc6_ < 5)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc6_] != null)
               {
                  if(Singleton.dynamicData.m_opponentsMinions[_loc6_].m_currHealth <= 0)
                  {
                     if(this.m_resurectionModCounts[_loc6_] == 0)
                     {
                        this.m_battleScreenVisualController.AnimateInTombstoneVisuals(_loc6_);
                        _loc1_ = true;
                     }
                     ++this.m_resurectionModCounts[_loc6_];
                     if(this.m_resurectionModCounts[_loc6_] >= _loc7_.m_turnsUntilResurection)
                     {
                        (_loc16_ = Singleton.dynamicData.m_opponentsMinions[_loc6_]).ClearBuffsAndDebuffs();
                        _loc16_.m_currHealth = Singleton.dynamicData.m_opponentsMinions[_loc6_].m_currHealthStat / Math.pow(2,this.m_resurectionCounts[_loc6_] + 1);
                        if(_loc16_.m_currHealth < 1)
                        {
                           _loc16_.m_currHealth = 1;
                        }
                        this.m_battleScreenVisualController.AnimateOutTombstoneVisuals(_loc6_);
                        TweenLite.killTweensOf(this.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc16_));
                        this.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc16_).AnimateIn();
                        this.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc16_).UpdateHealth();
                        this.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(_loc16_).UpdateHealth();
                        this.m_resurectionModCounts[_loc6_] = 0;
                        ++this.m_resurectionCounts[_loc6_];
                        _loc1_ = true;
                        this.m_battleScreenVisualController.UpdateTombstoneVisuals(_loc6_,_loc7_.m_turnsUntilResurection - this.m_resurectionModCounts[_loc6_] - 1);
                     }
                     else
                     {
                        this.m_battleScreenVisualController.UpdateTombstoneVisuals(_loc6_,_loc7_.m_turnsUntilResurection - this.m_resurectionModCounts[_loc6_] - 1);
                     }
                  }
               }
               _loc6_++;
            }
         }
         if(!_loc1_)
         {
            this.CalculateNewMinionStats();
         }
         else
         {
            TweenLite.to(this,1,{"onComplete":this.CalculateNewMinionStats});
         }
      }
      
      public function CalculateNewMinionStats() : void
      {
         this.m_currState = BattleScreenStates.BSS_CALCULATE_NEW_STATS;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc1_] != null)
            {
               Singleton.dynamicData.m_opponentsMinions[_loc1_].CalculateCurrStats();
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               Singleton.dynamicData.GetOwnedMinionAt(_loc1_).CalculateCurrStats();
            }
            _loc1_++;
         }
         var _loc2_:Array = new Array();
         if(this.m_doTiesGoToPlayer)
         {
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc1_] != null && Singleton.dynamicData.m_opponentsMinions[_loc1_].m_currHealth > 0)
               {
                  _loc2_.push(Singleton.dynamicData.m_opponentsMinions[_loc1_]);
               }
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc1_).m_currHealth > 0)
               {
                  _loc2_.push(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
               }
               _loc1_++;
            }
         }
         else
         {
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc1_).m_currHealth > 0)
               {
                  _loc2_.push(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
               }
               if(Singleton.dynamicData.m_opponentsMinions[_loc1_] != null && Singleton.dynamicData.m_opponentsMinions[_loc1_].m_currHealth > 0)
               {
                  _loc2_.push(Singleton.dynamicData.m_opponentsMinions[_loc1_]);
               }
               _loc1_++;
            }
         }
         _loc2_ = _loc2_.sortOn("m_currSpeedStat",Array.DESCENDING | Array.NUMERIC);
         _loc1_ = 0;
         while(_loc1_ < _loc2_.length)
         {
            _loc2_[_loc1_].m_moveOrderPosition = _loc1_ + 1;
            _loc1_++;
         }
         this.m_battleScreenVisualController.UpdateMinionVisuals();
         this.GetAPlayersMove();
      }
      
      public function GetAPlayersMove() : void
      {
         var _loc2_:OwnedMinion = null;
         this.m_currState = BattleScreenStates.BSS_GET_A_PLAYERS_MOVE;
         var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         if(_loc1_.IsModActive(ModStoneTypes.MOD_STONE_MOVE_TIMER))
         {
            this.m_battleScreenVisualController.m_moveTimerMod.SetTimerText(_loc1_.m_moveTimeCounter - this.m_currentMovesTickedForMod);
            if(_loc1_.m_moveTimeCounter - this.m_currentMovesTickedForMod == 0)
            {
               this.m_aiMoveSystem.Reset();
               this.m_aiMoveSystem.m_currMove = _loc1_.m_moveOnTimer;
               this.m_aiMoveSystem.m_currMinion = this.m_minionForMoveTimerMod;
               if(this.m_aiMoveSystem.m_currMove.m_chargeTime > 0 && this.m_aiMoveSystem.m_currMinion.m_currCharge != -99)
               {
                  this.m_aiMoveSystem.m_currMinion.m_currCharge = -99;
               }
               TweenLite.to(this,0.7,{
                  "onComplete":this.m_aiMoveSystem.GetRandomMinionsForMove,
                  "onCompleteParams":[_loc1_.m_moveOnTimer]
               });
               this.m_battleScreenVisualController.m_moveTimerMod.PlayUseMoveAnimation();
               this.m_currentMovesTickedForMod = 0;
               return;
            }
            ++this.m_currentMovesTickedForMod;
         }
         var _loc3_:int = 1000;
         var _loc4_:Boolean = true;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc5_] != null && Singleton.dynamicData.m_opponentsMinions[_loc5_].m_currHealth > 0)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc5_].m_moveOrderPosition < _loc3_ && !Singleton.dynamicData.m_opponentsMinions[_loc5_].m_hasMovedOnThisTurn)
               {
                  _loc2_ = Singleton.dynamicData.m_opponentsMinions[_loc5_];
                  _loc3_ = _loc2_.m_moveOrderPosition;
                  _loc4_ = false;
               }
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc5_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc5_).m_currHealth > 0)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc5_).m_moveOrderPosition < _loc3_ && !Singleton.dynamicData.GetOwnedMinionAt(_loc5_).m_hasMovedOnThisTurn)
               {
                  _loc2_ = Singleton.dynamicData.GetOwnedMinionAt(_loc5_);
                  _loc3_ = _loc2_.m_moveOrderPosition;
                  _loc4_ = true;
               }
            }
            _loc5_++;
         }
         _loc2_.m_hasMovedOnThisTurn = true;
         if(_loc4_)
         {
            this.m_playerMoveSystem.Reset();
            this.m_playerMoveSystem.ChooseAMoveFor(_loc2_);
         }
         else
         {
            this.m_aiMoveSystem.Reset();
            this.m_aiMoveSystem.ChooseAMoveFor(_loc2_);
         }
         this.m_currMinion = _loc2_;
      }
      
      public function StartQueuedMoves() : void
      {
         this.m_currState = BattleScreenStates.BSS_RUN_QUEUED_MOVES;
         this.m_battleScreenVisualController.SetScreenToPlayMoveVisuals();
         this.m_currentSpotInQueue = 0;
         this.RunQueuedMoves();
      }
      
      private function RunQueuedMoves() : void
      {
         var _loc1_:int = 0;
         if(this.m_currentSpotInQueue == this.m_moveQueue.length)
         {
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc1_] != null && Singleton.dynamicData.m_opponentsMinions[_loc1_].m_currHealth > 0 && !Singleton.dynamicData.m_opponentsMinions[_loc1_].m_hasMovedOnThisTurn)
               {
                  this.CheckForWinLose();
                  return;
               }
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc1_).m_currHealth > 0 && !Singleton.dynamicData.GetOwnedMinionAt(_loc1_).m_hasMovedOnThisTurn)
               {
                  this.CheckForWinLose();
                  return;
               }
               _loc1_++;
            }
            if(this.CheckToSeeIfBothPartiesAreStillAlive())
            {
               this.RunTickMoves();
            }
            else
            {
               TweenLite.to(this,0.5,{"onComplete":this.StartRound});
            }
            return;
         }
         if(this.m_moveQueue[this.m_currentSpotInQueue].m_function != null)
         {
            this.m_moveQueue[this.m_currentSpotInQueue].m_function.call();
         }
         this.m_battleScreenVisualController.UpdateMinionVisuals();
         ++this.m_currentSpotInQueue;
         TweenLite.to(this,this.m_moveQueue[this.m_currentSpotInQueue - 1].m_timeQueueLasts,{"onComplete":this.RunQueuedMoves});
      }
      
      public function RunTickMoves() : void
      {
         this.m_currState = BattleScreenStates.BSS_RUN_TICK_MOVES;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null && Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth > 0)
            {
               _loc2_ = Singleton.dynamicData.m_opponentsMinions[_loc3_].TickDotsAndHots();
               if(_loc2_ > _loc1_)
               {
                  _loc1_ = _loc2_;
               }
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_currHealth > 0)
            {
               _loc2_ = Singleton.dynamicData.GetOwnedMinionAt(_loc3_).TickDotsAndHots();
               if(_loc2_ > _loc1_)
               {
                  _loc1_ = _loc2_;
               }
            }
            _loc3_++;
         }
         this.m_battleScreenVisualController.UpdateMinionVisuals();
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.UpdateMinionHealth();
         TweenLite.to(this,_loc1_ + 0.5,{"onComplete":this.StartRound});
      }
      
      private function ResetExtraMinionsForBattleMod() : void
      {
         var _loc3_:OwnedMinion = null;
         var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
         var _loc2_:Vector.<Boolean> = new Vector.<Boolean>(5);
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            _loc3_ = Singleton.dynamicData.GetOwnedMinionAt(_loc4_);
            if(_loc3_ != null)
            {
               _loc2_[_loc4_] = _loc3_.m_isExtraBattleModMinion;
               if(_loc2_[_loc4_])
               {
                  this.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(_loc3_).Cleanup();
                  this.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(_loc3_).Cleanup();
               }
            }
            _loc4_++;
         }
         Singleton.dynamicData.ResetThePlayersBattleModMinions();
         _loc4_ = 0;
         while(_loc4_ < 5)
         {
            _loc3_ = Singleton.dynamicData.GetOwnedMinionAt(_loc4_);
            if(_loc2_[_loc4_])
            {
               this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc4_].SetNewMinion(_loc3_,true);
               this.m_battleScreenVisualController.m_visualMinionsForPlayerOverGrey[_loc4_].SetNewMinion(_loc3_,true);
               this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc4_].alpha = 0.5;
               this.m_battleScreenVisualController.m_visualMinionsForPlayer[_loc4_].visible = true;
            }
            _loc4_++;
         }
      }
      
      public function OpenVictoryMenus() : void
      {
         var _loc1_:int = 0;
         var _loc2_:OwnedGem = null;
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION))
         {
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               this.m_battleScreenVisualController.AnimateOutTombstoneVisuals(_loc1_);
               _loc1_++;
            }
         }
         Singleton.dynamicData.UpdateTrainersStarsForCurrentTrainer();
         Singleton.utility.m_soundController.FadeCurrentMusic(0,1);
         Singleton.dynamicData.m_numberOfDeathsSinceVictory = 0;
         this.m_currState = BattleScreenStates.BSS_VICTORY_MENUS;
         this.m_winScreen.m_victoryPopup.BringInVictoryPopup();
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
         {
            this.ResetExtraMinionsForBattleMod();
         }
         this.m_battleScreenVisualController.SetupVisualsForTheWinningScreen();
         this.m_winScreen.BringInScreen(true);
         if(!Singleton.dynamicData.HasBeatenCurrentTrainer())
         {
            Singleton.dynamicData.m_currMoney += Singleton.staticData.GetMoneyRewardForCurrentFloor() / 6 * Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_MONEY) * Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_MONEY);
            Singleton.dynamicData.SetHasBeatenTheCurrTrainer(true);
            if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.NORMAL_TRAINER)
            {
               ++Singleton.dynamicData.m_currKeysOnFloor;
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewKey = true;
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedMoney = true;
               Singleton.dynamicData.m_currMoney += Singleton.staticData.GetMoneyRewardForCurrentFloor() / 3;
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.HARD_TRAINER)
            {
               ++Singleton.dynamicData.m_currEggeryKeys;
               Singleton.dynamicData.m_hasBeatenHardMode = true;
               _loc2_ = new OwnedGem();
               _loc2_.CreateRandomGemWithTier(Singleton.staticData.GetGemTierRewardForCurrentFloor());
               Singleton.dynamicData.AddToOwnedGems(_loc2_);
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewGem = true;
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewKey = true;
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.BOSS_TRAINER)
            {
               ++Singleton.dynamicData.m_currEggeryKeys;
               if(Singleton.dynamicData.m_currFloorOfTower != 0)
               {
               }
               if(Singleton.dynamicData.m_currFloorOfTower + 2 > Singleton.dynamicData.GetHighestFloor())
               {
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewSageSeal = true;
               }
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewKey = true;
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.EXPERT_TRAINER)
            {
               ++Singleton.dynamicData.m_currEggeryKeys;
               _loc2_ = new OwnedGem();
               _loc2_.CreateRandomGemWithTier(Singleton.staticData.GetGemTierRewardForCurrentFloor());
               Singleton.dynamicData.AddToOwnedGems(_loc2_);
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewGem = true;
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewKey = true;
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GYM_1)
            {
               this.AddSageSeal(1);
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GYM_2)
            {
               this.AddSageSeal(2);
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GYM_3)
            {
               this.AddSageSeal(3);
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GYM_4)
            {
               this.AddSageSeal(4);
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GYM_5)
            {
               this.AddSageSeal(5);
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GYM_6)
            {
               this.AddSageSeal(6);
            }
            else if(Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType == TrainerType.TRAINER_GRAND_SAGE)
            {
               this.AddSageSeal(7);
            }
         }
      }
      
      private function AddSageSeal(param1:int) : void
      {
         var _loc2_:OwnedGem = null;
         Singleton.utility.UnlockNextFloor();
         if(Singleton.dynamicData.GetTotalSageSeals() < param1)
         {
            if(param1 != 7)
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_playSageSealAnimation = true;
            }
            Singleton.dynamicData.SetTotalSageSeals(param1);
            if(param1 == 5)
            {
               _loc2_ = new OwnedGem();
               _loc2_.CreateRandomGemWithTier(10,1);
               Singleton.dynamicData.AddToOwnedGems(_loc2_);
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_hasEarnedANewGem = true;
            }
         }
      }
      
      public function OpenLoseMenus() : void
      {
         Singleton.utility.m_soundController.FadeCurrentMusic(0.4,4);
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH_EXP))
         {
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH_EXP,true);
            TweenLite.to(this,0.4,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_DeathTut,
               "onCompleteParams":[this.OpenLoseMenus]
            });
            return;
         }
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
         {
            this.ResetExtraMinionsForBattleMod();
         }
         ++Singleton.dynamicData.m_numberOfDeathsSinceVictory;
         this.m_currState = BattleScreenStates.BSS_LOST_MENUS;
         this.m_battleScreenVisualController.SetupVisualsForTheWinningScreen();
         this.m_loseScreen.BringInScreen(false);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = false;
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_muteMusicButton.Update();
         this.m_muteSoundButton.Update();
         if(Singleton.utility.m_tutorialHandler.m_isActive)
         {
            Singleton.utility.m_tutorialHandler.Update();
            return;
         }
         this.m_battleScreenVisualController.Update();
         if(this.m_conformationBox.m_isOpen)
         {
            return;
         }
         if(this.m_currState == BattleScreenStates.BSS_VICTORY_MENUS)
         {
            this.m_winScreen.Update();
         }
         if(this.m_currState == BattleScreenStates.BSS_LOST_MENUS)
         {
            this.m_loseScreen.Update();
         }
         if(this.m_currState == BattleScreenStates.BSS_GET_A_PLAYERS_MOVE && this.m_battleScreenVisualController.m_currState == BattleScreenViualControllerStates.BSVCS_GETTING_MOVE)
         {
            this.m_forfeitButton.m_isActive = true;
            this.m_forfeitButton.alpha = 1;
         }
         else
         {
            this.m_forfeitButton.alpha = 0.3;
         }
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         var _loc5_:URLRequest = null;
         var _loc2_:StaticData = Singleton.staticData;
         var _loc3_:String = _loc2_.m_sponsorURL_part1 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5;
         var _loc4_:String = this.m_sponsorURL_part1 + this.m_sponsorURL_part2 + this.m_sponsorURL_part2 + this.m_sponsorURL_part3 + this.m_sponsorURL_part4 + this.m_sponsorURL_part5 + this.m_sponsorURL_part5 + this.m_sponsorURL_part6 + this.m_sponsorURL_part7 + this.m_sponsorURL_part8 + this.m_sponsorURL_part9 + this.m_sponsorURL_part10 + this.m_sponsorURL_part11 + this.m_sponsorURL_part8 + this.m_sponsorURL_part12 + this.m_sponsorURL_part5;
         if(_loc3_ != _loc4_)
         {
            _loc5_ = new URLRequest(_loc4_);
            navigateToURL(_loc5_,"_self");
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.SITE_LOCKED_SCREEN,false);
            this.m_sponsorTimer.stop();
         }
      }
      
      public function ForfeitButtonPressed(param1:MouseEvent) : void
      {
         this.m_conformationBox.BringIn(this.ForfeitYesButtonPressed,this.ForfeitNoButtonPressed);
      }
      
      public function ForfeitNoButtonPressed() : void
      {
         this.m_playerMoveSystem.Reset();
         this.m_playerMoveSystem.ChooseAMoveFor(this.m_currMinion);
      }
      
      public function ForfeitYesButtonPressed() : void
      {
         Singleton.dynamicData.ResetThePlayersBattleModMinions();
         Singleton.dynamicData.SetToReturnToOnDeathPoint();
         Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = false;
         Singleton.utility.m_analyticsController.LogCounterMetric("Forfeit","" + Singleton.dynamicData.m_currFloorOfTower + "_" + Singleton.dynamicData.m_currRoomOfTower);
         Singleton.utility.m_soundController.FadeCurrentMusic(0,0.5);
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
      }
   }
}
