package BattleSystems.Other
{
   import BattleSystems.WinScreen.BattleScreenTalentTreeWrapper;
   import BattleSystems.WinScreen.EvolvingPopup;
   import BattleSystems.WinScreen.LeveledUpBattleScreenPiece;
   import Minions.OwnedMinion;
   import States.GameState;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseBattleFinishScreen
   {
       
      
      protected var m_previousMinionLevels:Vector.<int>;
      
      public var m_moveQueue:Vector.<MoveQueueObject>;
      
      public var m_minionForQueue:Vector.<OwnedMinion>;
      
      public var m_minionLevelForQueue:Vector.<int>;
      
      protected var m_currentSpotInQueue:int;
      
      protected var m_leveledUpBattleScreenPiece:LeveledUpBattleScreenPiece;
      
      protected var m_battleScreenTalentTreeWrapper:BattleScreenTalentTreeWrapper;
      
      protected var m_evolvingPopup:EvolvingPopup;
      
      protected var m_isTalentTreeIn:Boolean;
      
      protected var m_isInEvolutionPopup:Boolean;
      
      public function BaseBattleFinishScreen()
      {
         super();
         this.m_leveledUpBattleScreenPiece = new LeveledUpBattleScreenPiece();
         this.m_battleScreenTalentTreeWrapper = new BattleScreenTalentTreeWrapper();
         this.m_evolvingPopup = new EvolvingPopup();
      }
      
      public function LoadSprites(param1:Sprite) : void
      {
         this.m_leveledUpBattleScreenPiece.LoadSprites();
         param1.addChild(this.m_leveledUpBattleScreenPiece);
         this.m_battleScreenTalentTreeWrapper.LoadSprites();
         this.m_battleScreenTalentTreeWrapper.x = 177;
         this.m_battleScreenTalentTreeWrapper.y = 30;
         param1.addChild(this.m_battleScreenTalentTreeWrapper);
         this.m_evolvingPopup.LoadSprites();
         param1.addChild(this.m_evolvingPopup);
      }
      
      public function DeActivate() : void
      {
      }
      
      public function BringInScreen(param1:Boolean) : void
      {
         var _loc3_:OwnedMinion = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         this.m_isTalentTreeIn = false;
         this.m_previousMinionLevels = new Vector.<int>(5);
         this.m_moveQueue = new Vector.<MoveQueueObject>();
         this.m_minionForQueue = new Vector.<OwnedMinion>();
         this.m_minionLevelForQueue = new Vector.<int>();
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) != null)
            {
               this.m_previousMinionLevels[_loc2_] = Singleton.dynamicData.GetOwnedMinionAt(_loc2_).m_currLevel;
            }
            _loc2_++;
         }
         if(param1)
         {
            this.AddItemToQueue(1.8);
         }
         else
         {
            this.AddItemToQueue(0.3);
         }
         Singleton.utility.AddExpToMinions(param1);
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            _loc3_ = Singleton.dynamicData.GetOwnedMinionAt(_loc2_);
            if(_loc3_ != null && _loc3_.m_currLevel < 59)
            {
               this.AddItemToQueue(0.3,this.BringInExpBar,_loc3_);
               _loc4_ = false;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.m_currLevel - this.m_previousMinionLevels[_loc2_])
               {
                  _loc6_ = this.m_previousMinionLevels[_loc2_] + _loc5_;
                  this.AddItemToQueue(0.6,this.FillExpBarWithAnimation,_loc3_,-99,this.SetExpBarWithAnimation);
                  this.AddItemToQueue(3,this.BringInLeveledStatsMenu,_loc3_,_loc6_,this.ExitOutLeveledStatsMenu);
                  if(_loc3_.IsTalentPointEarnedOnLevel(_loc6_ + 1))
                  {
                     this.AddItemToQueue(-99,this.BringInTalentPointScreen,_loc3_,_loc6_);
                  }
                  else if(!_loc4_ && _loc6_ >= _loc3_.m_baseMinion.m_evolutionLevel - 1)
                  {
                     this.AddItemToQueue(-99,this.BringInEvolutionScreen,_loc3_,_loc6_);
                     _loc4_ = true;
                  }
                  this.AddItemToQueue(0.15,this.ResetExpBar,_loc3_);
                  _loc5_++;
               }
               this.AddItemToQueue(0.7,this.FillExpBarToCurrentExpPercentage,_loc3_,-99,this.SetExpBarToCurrentExpPercentage);
               this.AddItemToQueue(0.5,this.CloseOutExpBar,_loc3_);
            }
            _loc2_++;
         }
         this.AddItemToQueue(1,this.FadeOutMusic);
         this.m_currentSpotInQueue = 0;
         this.RunQueuedMoves();
      }
      
      protected function AddItemToQueue(param1:Number, param2:Function = null, param3:OwnedMinion = null, param4:int = -99, param5:Function = null) : void
      {
         var _loc6_:MoveQueueObject;
         (_loc6_ = new MoveQueueObject(param1,param2)).m_skipFunction = param5;
         this.m_moveQueue.push(_loc6_);
         this.m_minionForQueue.push(param3);
         this.m_minionLevelForQueue.push(param4);
      }
      
      protected function FadeOutMusic() : void
      {
         Singleton.utility.m_soundController.FadeCurrentMusic(0,1.5);
      }
      
      protected function GotoTopDownScreen() : void
      {
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
      }
      
      protected function RunQueuedMoves() : void
      {
         if(this.m_currentSpotInQueue == this.m_moveQueue.length)
         {
            this.GotoTopDownScreen();
            return;
         }
         if(this.m_moveQueue[this.m_currentSpotInQueue].m_function != null)
         {
            if(this.m_minionForQueue[this.m_currentSpotInQueue] == null)
            {
               this.m_moveQueue[this.m_currentSpotInQueue].m_function.call();
            }
            else if(this.m_minionLevelForQueue[this.m_currentSpotInQueue] != -99)
            {
               this.m_moveQueue[this.m_currentSpotInQueue].m_function.call(null,this.m_minionForQueue[this.m_currentSpotInQueue],this.m_minionLevelForQueue[this.m_currentSpotInQueue]);
            }
            else
            {
               this.m_moveQueue[this.m_currentSpotInQueue].m_function.call(null,this.m_minionForQueue[this.m_currentSpotInQueue]);
            }
         }
         ++this.m_currentSpotInQueue;
         if(this.m_moveQueue[this.m_currentSpotInQueue - 1].m_timeQueueLasts != -99)
         {
            TweenLite.to(this,this.m_moveQueue[this.m_currentSpotInQueue - 1].m_timeQueueLasts,{"onComplete":this.RunQueuedMoves});
         }
      }
      
      protected function BringInExpBar(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.TurnOnExpBarForMinion(param1);
      }
      
      protected function CloseOutExpBar(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.TurnOffExpBarForMinion(param1);
      }
      
      protected function FillExpBarToCurrentExpPercentage(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.AnimateExpBarForMinion(param1,param1.m_currExpPercentageToNextLevel);
      }
      
      protected function FillExpBarWithAnimation(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.AnimateExpBarForMinion(param1,1);
      }
      
      protected function SetExpBarToCurrentExpPercentage(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetExpBarForMinion(param1,param1.m_currExpPercentageToNextLevel);
      }
      
      protected function SetExpBarWithAnimation(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetExpBarForMinion(param1,1);
      }
      
      protected function ResetExpBar(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetExpBarForMinion(param1,0);
      }
      
      protected function BringInLeveledStatsMenu(param1:OwnedMinion, param2:int) : void
      {
         this.m_leveledUpBattleScreenPiece.BringInForMinion(param1,param2);
      }
      
      protected function ExitOutLeveledStatsMenu(param1:OwnedMinion) : void
      {
         this.m_leveledUpBattleScreenPiece.ExitOutForMinion();
      }
      
      protected function BringInTalentPointScreen(param1:OwnedMinion, param2:int) : void
      {
         if(param1.m_availableTalentPoints < 1)
         {
            TweenLite.to(this,0.1,{"onComplete":this.RunQueuedMoves});
            return;
         }
         this.m_isTalentTreeIn = true;
         this.m_battleScreenTalentTreeWrapper.BringIn(param1);
      }
      
      public function ExitTalentPointScreen() : void
      {
         this.m_isTalentTreeIn = false;
         this.RunQueuedMoves();
      }
      
      protected function BringInEvolutionScreen(param1:OwnedMinion, param2:int) : void
      {
         this.m_isInEvolutionPopup = true;
         this.m_evolvingPopup.BringInForMinion(param1);
      }
      
      public function ExitEvolutionScreen() : void
      {
         this.m_isInEvolutionPopup = false;
         this.RunQueuedMoves();
      }
      
      public function Update() : void
      {
         if(this.m_isInEvolutionPopup)
         {
            this.m_evolvingPopup.UpdateFullFrames();
         }
         else if(this.m_isTalentTreeIn)
         {
            this.m_battleScreenTalentTreeWrapper.UpdateFullFrames();
         }
         else
         {
            if(Input.kp("ESC"))
            {
               TweenLite.killTweensOf(this);
               this.GotoTopDownScreen();
               return;
            }
            if(Input.kp("ENTER","SPACE"))
            {
               if(this.m_moveQueue[this.m_currentSpotInQueue - 1].m_skipFunction != null)
               {
                  if(this.m_minionForQueue[this.m_currentSpotInQueue - 1] != null)
                  {
                     this.m_moveQueue[this.m_currentSpotInQueue - 1].m_skipFunction.call(null,this.m_minionForQueue[this.m_currentSpotInQueue - 1]);
                  }
                  else
                  {
                     this.m_moveQueue[this.m_currentSpotInQueue - 1].m_skipFunction.call();
                  }
               }
               TweenLite.killTweensOf(this);
               this.RunQueuedMoves();
            }
         }
      }
   }
}
