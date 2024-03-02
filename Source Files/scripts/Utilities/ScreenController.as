package Utilities
{
   import BattleSystems.BattleScreen;
   import LevelSelect.LevelSelectScreen;
   import MainMenu.MainMenuScreen;
   import States.GameState;
   import TopDown.TopdownScreen;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class ScreenController
   {
       
      
      public var m_topDownScreen:TopdownScreen;
      
      public var m_battleScreen:BattleScreen;
      
      public var m_levelSelectScreen:LevelSelectScreen;
      
      public var m_mainMenuScreen:MainMenuScreen;
      
      public var m_siteLockedScreen:SiteLockedScreen;
      
      public var m_sponsorScreen:SponsorIntroScreen;
      
      public var m_topMostLayer:Sprite;
      
      private var m_previousGameState:int;
      
      private var m_gameStateToGoto:int;
      
      private var m_blackForFade:Sprite;
      
      public function ScreenController()
      {
         super();
         this.m_topMostLayer = new Sprite();
         this.m_topDownScreen = new TopdownScreen();
         this.m_battleScreen = new BattleScreen();
         this.m_levelSelectScreen = new LevelSelectScreen();
         this.m_mainMenuScreen = new MainMenuScreen();
         this.m_siteLockedScreen = new SiteLockedScreen();
         this.m_sponsorScreen = new SponsorIntroScreen();
         this.m_previousGameState = GameState.NONE;
         this.m_gameStateToGoto = GameState.NONE;
      }
      
      public function LoadAllScreens() : void
      {
         this.m_topDownScreen.LoadSprites();
         this.m_battleScreen.LoadSprites();
         this.m_levelSelectScreen.LoadSprites();
         this.m_mainMenuScreen.LoadSprites();
         this.m_siteLockedScreen.LoadSprites();
         this.m_sponsorScreen.LoadSprites();
         this.m_blackForFade = new Sprite();
         this.m_blackForFade.graphics.beginFill(0);
         this.m_blackForFade.graphics.drawRect(0,0,700,525);
         this.m_blackForFade.graphics.endFill();
         Singleton.utility.m_stage.addChild(this.m_topMostLayer);
         Singleton.utility.m_tutorialHandler.LoadSprites();
         Singleton.utility.m_bonusItemPopup.LoadSprites();
      }
      
      public function SetSceneTo(param1:int, param2:Boolean = true, param3:Number = 0.5, param4:Boolean = true) : void
      {
         var _loc5_:TimelineLite = null;
         Singleton.dynamicData.m_gameState = GameState.TRANSITIONING;
         this.m_previousGameState = this.m_gameStateToGoto;
         this.m_gameStateToGoto = param1;
         Singleton.utility.m_stage.focus = null;
         switch(this.m_gameStateToGoto)
         {
            case GameState.MAIN_MENU:
               Singleton.utility.m_stage.addChild(this.m_mainMenuScreen);
               this.m_mainMenuScreen.visible = false;
               this.m_mainMenuScreen.StartActivate();
               break;
            case GameState.BATTLE_SCREEN:
               Singleton.utility.m_stage.addChild(this.m_battleScreen);
               this.m_battleScreen.visible = false;
               this.m_battleScreen.StartActivate();
               break;
            case GameState.TOP_DOWN_SCREEN:
               Singleton.utility.m_stage.addChild(this.m_topDownScreen);
               this.m_topDownScreen.visible = false;
               this.m_topDownScreen.StartActivate();
               break;
            case GameState.LEVEL_SELECT_SCREEN:
               Singleton.utility.m_stage.addChild(this.m_levelSelectScreen);
               this.m_levelSelectScreen.visible = false;
               this.m_levelSelectScreen.StartActivate();
               break;
            case GameState.SITE_LOCKED_SCREEN:
               Singleton.utility.m_stage.addChild(this.m_siteLockedScreen);
               this.m_siteLockedScreen.visible = false;
               this.m_siteLockedScreen.StartActivate();
               break;
            case GameState.SPONSOR_SCREEN:
               Singleton.utility.m_stage.addChild(this.m_sponsorScreen);
               this.m_sponsorScreen.visible = false;
               this.m_sponsorScreen.StartActivate();
         }
         Singleton.utility.m_stage.removeChild(this.m_topMostLayer);
         Singleton.utility.m_stage.addChild(this.m_topMostLayer);
         Singleton.utility.m_stage.addChild(this.m_blackForFade);
         this.m_blackForFade.graphics.clear();
         if(param4)
         {
            this.m_blackForFade.graphics.beginFill(0);
         }
         else
         {
            this.m_blackForFade.graphics.beginFill(16777215);
         }
         this.m_blackForFade.graphics.drawRect(0,0,700,525);
         this.m_blackForFade.graphics.endFill();
         if(param2)
         {
            this.m_blackForFade.alpha = 0;
            (_loc5_ = new TimelineLite()).append(new TweenLite(this.m_blackForFade,param3,{
               "alpha":1,
               "onComplete":this.TurnOnNewScreen
            }));
            _loc5_.append(new TweenLite(this.m_blackForFade,0.2,{}));
            _loc5_.append(new TweenLite(this.m_blackForFade,param3,{
               "alpha":0,
               "onComplete":this.FinishTransitioningToAScreen
            }));
         }
         else
         {
            this.TurnOnNewScreen();
            this.FinishTransitioningToAScreen();
         }
      }
      
      private function TurnOnNewScreen() : void
      {
         switch(this.m_gameStateToGoto)
         {
            case GameState.MAIN_MENU:
               this.m_mainMenuScreen.visible = true;
               this.m_mainMenuScreen.FinishActivate();
               break;
            case GameState.BATTLE_SCREEN:
               this.m_battleScreen.visible = true;
               this.m_battleScreen.FinishActivate();
               break;
            case GameState.TOP_DOWN_SCREEN:
               this.m_topDownScreen.visible = true;
               this.m_topDownScreen.FinishActivate();
               break;
            case GameState.LEVEL_SELECT_SCREEN:
               this.m_levelSelectScreen.visible = true;
               this.m_levelSelectScreen.FinishActivate();
               break;
            case GameState.SITE_LOCKED_SCREEN:
               this.m_siteLockedScreen.visible = true;
               this.m_siteLockedScreen.FinishActivate();
               break;
            case GameState.SPONSOR_SCREEN:
               this.m_sponsorScreen.visible = true;
               this.m_sponsorScreen.FinishActivate();
         }
         switch(this.m_previousGameState)
         {
            case GameState.MAIN_MENU:
               Singleton.utility.m_stage.removeChild(this.m_mainMenuScreen);
               this.m_mainMenuScreen.DeActivate();
               break;
            case GameState.BATTLE_SCREEN:
               Singleton.utility.m_stage.removeChild(this.m_battleScreen);
               this.m_battleScreen.DeActivate();
               break;
            case GameState.TOP_DOWN_SCREEN:
               Singleton.utility.m_stage.removeChild(this.m_topDownScreen);
               this.m_topDownScreen.DeActivate();
               break;
            case GameState.LEVEL_SELECT_SCREEN:
               Singleton.utility.m_stage.removeChild(this.m_levelSelectScreen);
               this.m_levelSelectScreen.DeActivate();
               break;
            case GameState.SITE_LOCKED_SCREEN:
               Singleton.utility.m_stage.removeChild(this.m_siteLockedScreen);
               this.m_siteLockedScreen.DeActivate();
               break;
            case GameState.SPONSOR_SCREEN:
               Singleton.utility.m_stage.removeChild(this.m_sponsorScreen);
               this.m_sponsorScreen.DeActivate();
         }
      }
      
      private function FinishTransitioningToAScreen() : void
      {
         Singleton.dynamicData.m_gameState = this.m_gameStateToGoto;
         Singleton.utility.m_stage.removeChild(this.m_blackForFade);
      }
   }
}
