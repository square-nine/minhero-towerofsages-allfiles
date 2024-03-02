package
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.Gems.OwnedGem;
   import States.*;
   import Utilities.FramerateTracker;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.plugins.*;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class Main extends Sprite
   {
       
      
      private var m_updateLoopCounter:int;
      
      private var m_currMouseMovementEvent:MouseEvent;
      
      private var m_frameRateTracker:FramerateTracker;
      
      public function Main()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      private function init(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         Singleton.CreateObjects();
         Singleton.utility.m_stage = stage;
         Singleton.utility.m_globalMouseMovementUpdateFunction = this.CallGlobalMouseMovement;
         Singleton.utility.m_spriteHandler.LoadSpriteSheets();
         Singleton.utility.m_screenControllers.LoadAllScreens();
         Singleton.utility.m_mousePointObject = new Sprite();
         Singleton.utility.m_mousePointObject.graphics.beginFill(5592405,1);
         Singleton.utility.m_mousePointObject.graphics.drawRect(0,0,1,1);
         Singleton.utility.m_mousePointObject.graphics.endFill();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_gemShop.CreateNewGems();
         TweenPlugin.activate([TransformAroundPointPlugin,ShortRotationPlugin,TransformAroundCenterPlugin,TintPlugin,ColorTransformPlugin,RemoveTintPlugin]);
         Input.initialize(Singleton.utility.m_stage,false);
         Singleton.utility.m_analyticsController.StartAnalytics();
         Singleton.utility.m_analyticsController.LogStartPlay();
         var _loc2_:Array = ["","http://armorgames.com","http://games.armorgames.com","http://preview.armorgames.com","http://cache.armorgames.com","http://cdn.armorgames.com","http://gamemedia.armorgames.com","http://*.armorgames.com"];
         var _loc3_:Boolean = true;
         var _loc5_:Array;
         var _loc4_:String;
         var _loc6_:Array = (_loc5_ = (_loc4_ = Singleton.utility.m_stage.root.loaderInfo.url).split("://"))[1].split("/");
         var _loc7_:uint = 0;
         while(_loc7_ < _loc2_.length)
         {
            if(_loc2_[_loc7_] == _loc6_[0])
            {
               _loc3_ = false;
            }
            _loc7_++;
         }
         if(_loc3_)
         {
            MochiBot.track(this,"cfa9e6c8");
         }
         this.m_updateLoopCounter = 0;
         Singleton.dynamicData.m_hasBeatenHardMode = false;
         Singleton.dynamicData.ResetOpponentsMinions();
         Singleton.dynamicData.SetHasUnlockedFloor(0,true);
         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_FOCUS_TARGETS,true);
         Singleton.dynamicData.m_isAutoSaveOn = true;
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.SPONSOR_SCREEN,false);
         Singleton.dynamicData.SetNewReturnToOnDeathPoint();
         addEventListener(Event.ENTER_FRAME,this.Update);
         stage.addEventListener(MouseEvent.CLICK,this.GlobalMouseClicked);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.GlobalMouseMovement);
      }
      
      public function CallGlobalMouseMovement() : void
      {
         if(this.m_currMouseMovementEvent != null)
         {
            this.GlobalMouseMovement(this.m_currMouseMovementEvent);
         }
      }
      
      private function GlobalMouseMovement(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:TCButton = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         this.m_currMouseMovementEvent = param1;
         Singleton.utility.m_mousePointObject.x = this.m_currMouseMovementEvent.stageX;
         Singleton.utility.m_mousePointObject.y = this.m_currMouseMovementEvent.stageY;
         var _loc6_:int = 0;
         while(_loc6_ < Singleton.utility.m_allButtons.length)
         {
            _loc3_ = Singleton.utility.m_allButtons[_loc6_];
            _loc4_ = false;
            _loc5_ = _loc3_.m_isMouseOver;
            _loc2_ = Singleton.utility.m_allButtons[_loc6_].m_restingSprite.localToGlobal(new Point(0,0));
            _loc3_.MouseMovementForPopup(param1);
            if(Singleton.utility.m_collController.RectDisplayObjectCollision(Singleton.utility.m_mousePointObject,_loc3_.m_restingSprite))
            {
               _loc4_ = true;
            }
            if(_loc4_ != _loc5_)
            {
               if(_loc4_)
               {
                  _loc3_.m_onOverFunction.call();
               }
               else
               {
                  _loc3_.m_onOutFunction.call();
               }
            }
            _loc6_++;
         }
      }
      
      private function GlobalMouseClicked(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:TCButton = null;
         Singleton.utility.m_mousePointObject.x = param1.stageX;
         Singleton.utility.m_mousePointObject.y = param1.stageY;
         var _loc4_:int = 0;
         while(_loc4_ < Singleton.utility.m_allButtons.length)
         {
            _loc3_ = Singleton.utility.m_allButtons[_loc4_];
            _loc2_ = _loc3_.m_restingSprite.localToGlobal(new Point(0,0));
            if(Singleton.utility.m_collController.RectDisplayObjectCollision(Singleton.utility.m_mousePointObject,_loc3_.m_restingSprite))
            {
               _loc3_.Clicked(param1);
            }
            _loc4_++;
         }
      }
      
      private function Update(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this.m_updateLoopCounter % 3 == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < Singleton.utility.m_allButtons.length)
            {
               Singleton.utility.m_allButtons[_loc2_].Update();
               _loc2_++;
            }
         }
         switch(Singleton.dynamicData.m_gameState)
         {
            case GameState.BATTLE_SCREEN:
               Singleton.utility.m_screenControllers.m_battleScreen.UpdateFullFrames();
               break;
            case GameState.TOP_DOWN_SCREEN:
               Singleton.utility.m_screenControllers.m_topDownScreen.UpdateFullFrames();
               break;
            case GameState.LEVEL_SELECT_SCREEN:
               Singleton.utility.m_screenControllers.m_levelSelectScreen.UpdateFullFrames();
               break;
            case GameState.MAIN_MENU:
               Singleton.utility.m_screenControllers.m_mainMenuScreen.UpdateFullFrames();
               break;
            case GameState.SITE_LOCKED_SCREEN:
               Singleton.utility.m_screenControllers.m_siteLockedScreen.UpdateFullFrames();
               break;
            case GameState.SPONSOR_SCREEN:
               Singleton.utility.m_screenControllers.m_sponsorScreen.UpdateFullFrames();
         }
         if(this.m_updateLoopCounter % 3 == 0)
         {
            switch(Singleton.dynamicData.m_gameState)
            {
               case GameState.BATTLE_SCREEN:
                  Singleton.utility.m_screenControllers.m_battleScreen.UpdateMidFrames();
                  break;
               case GameState.TOP_DOWN_SCREEN:
                  Singleton.utility.m_screenControllers.m_topDownScreen.UpdateMidFrames();
                  break;
               case GameState.LEVEL_SELECT_SCREEN:
                  Singleton.utility.m_screenControllers.m_levelSelectScreen.UpdateMidFrames();
                  break;
               case GameState.MAIN_MENU:
                  Singleton.utility.m_screenControllers.m_mainMenuScreen.UpdateMidFrames();
            }
         }
         if(this.m_updateLoopCounter % 10 == 0)
         {
            switch(Singleton.dynamicData.m_gameState)
            {
               case GameState.BATTLE_SCREEN:
                  Singleton.utility.m_screenControllers.m_battleScreen.UpdateLowFrames();
                  break;
               case GameState.TOP_DOWN_SCREEN:
                  Singleton.utility.m_screenControllers.m_topDownScreen.UpdateLowFrames();
                  break;
               case GameState.LEVEL_SELECT_SCREEN:
                  Singleton.utility.m_screenControllers.m_levelSelectScreen.UpdateLowFrames();
                  break;
               case GameState.MAIN_MENU:
                  Singleton.utility.m_screenControllers.m_mainMenuScreen.UpdateLowFrames();
            }
         }
         Input.clear();
         ++this.m_updateLoopCounter;
         if(this.m_updateLoopCounter == 30)
         {
            this.m_updateLoopCounter = 0;
         }
      }
      
      private function TestGotoBattleScreen() : void
      {
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.BATTLE_SCREEN);
      }
      
      private function TestGotoTopDownScreen() : void
      {
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
      }
      
      private function CreateFromSnapShot() : void
      {
         var _loc1_:OwnedMinion = null;
         var _loc2_:Vector.<int> = null;
         var _loc3_:OwnedGem = null;
         Singleton.dynamicData.m_currMoney = 9;
         _loc1_ = new OwnedMinion(0);
         Singleton.dynamicData.AddToOwnedMinions(_loc1_);
         _loc1_.m_currentExp = 10980;
         _loc2_ = new Vector.<int>();
         _loc2_.push(80);
         _loc2_.push(105);
         _loc2_.push(201);
         _loc2_.push(176);
         Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
         _loc1_.CalculateCurrStats();
         _loc1_.ReFillHealthAndEnergy();
         _loc1_ = new OwnedMinion(3);
         Singleton.dynamicData.AddToOwnedMinions(_loc1_);
         _loc1_.m_currentExp = 11129;
         _loc2_ = new Vector.<int>();
         _loc2_.push(80);
         _loc2_.push(5);
         _loc2_.push(350);
         _loc2_.push(335);
         Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
         _loc1_.CalculateCurrStats();
         _loc1_.ReFillHealthAndEnergy();
         _loc1_ = new OwnedMinion(11);
         Singleton.dynamicData.AddToOwnedMinions(_loc1_);
         _loc1_.m_currentExp = 10906;
         _loc2_ = new Vector.<int>();
         _loc2_.push(75);
         _loc2_.push(105);
         _loc2_.push(455);
         _loc2_.push(460);
         Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
         _loc3_ = new OwnedGem();
         _loc3_.m_tier = 1;
         _loc3_.m_rawStats[0] = 0;
         _loc3_.m_rawStats[1] = 0.9026685781311242;
         _loc3_.m_rawStats[2] = 0;
         _loc3_.m_rawStats[3] = 0;
         _loc3_.m_rawStats[4] = 1.8053371562622484;
         _loc1_.SetGemAt(_loc3_,0);
         _loc1_.CalculateCurrStats();
         _loc1_.ReFillHealthAndEnergy();
         _loc1_ = new OwnedMinion(15);
         Singleton.dynamicData.AddToOwnedMinions(_loc1_);
         _loc1_.m_currentExp = 10000;
         _loc2_ = new Vector.<int>();
         _loc2_.push(75);
         _loc2_.push(155);
         _loc2_.push(150);
         _loc2_.push(165);
         Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
         _loc3_ = new OwnedGem();
         _loc3_.m_tier = 1;
         _loc3_.m_rawStats[0] = 0;
         _loc3_.m_rawStats[1] = 0;
         _loc3_.m_rawStats[2] = 1.0881441179197282;
         _loc3_.m_rawStats[3] = 1.0881441179197282;
         _loc3_.m_rawStats[4] = 1.0881441179197282;
         _loc1_.SetGemAt(_loc3_,0);
         _loc1_.CalculateCurrStats();
         _loc1_.ReFillHealthAndEnergy();
      }
   }
}
