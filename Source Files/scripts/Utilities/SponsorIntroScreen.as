package Utilities
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseScreen;
   import States.GameState;
   import com.greensock.TweenLite;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.Timer;
   
   public class SponsorIntroScreen extends BaseScreen
   {
      
      private static var intro:Class = SponsorIntroScreen_intro;
       
      
      private var m_sponsorIntro:Loader;
      
      private var m_sponsorButton:TCButton;
      
      private var m_whiteBackground:Sprite;
      
      private var m_sponsorTimer:Timer;
      
      public function SponsorIntroScreen()
      {
         super();
      }
      
      override public function StartActivate() : void
      {
         super.StartActivate();
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_whiteBackground = new Sprite();
         this.m_whiteBackground.x = 0;
         this.m_whiteBackground.y = 0;
         this.m_whiteBackground.graphics.beginFill(16777215);
         this.m_whiteBackground.graphics.drawRect(0,0,700,525);
         this.m_whiteBackground.graphics.endFill();
         addChild(this.m_whiteBackground);
         var _loc1_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         _loc1_.allowCodeImport = true;
         this.m_sponsorIntro = new Loader();
         this.m_sponsorIntro.loadBytes(new intro(),_loc1_);
         addChild(this.m_sponsorIntro);
         this.m_sponsorIntro.x = -38;
         this.m_sponsorIntro.y = -50;
         this.m_sponsorButton = new TCButton(this.BackgroundButton,"whiteFadeBackground");
         this.m_sponsorButton.x = 0;
         this.m_sponsorButton.y = 0;
         addChild(this.m_sponsorButton);
      }
      
      override public function FinishActivate() : void
      {
         super.FinishActivate();
         TweenLite.to(this.m_sponsorButton,0.4,{
            "alpha":0,
            "delay":0.4
         });
         this.m_sponsorTimer = new Timer(11300,1);
         this.m_sponsorTimer.addEventListener("timer",this.timerHandler);
         this.m_sponsorTimer.start();
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_sponsorButton.m_isActive = true;
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.MAIN_MENU,true,0.5,false);
      }
      
      public function BackgroundButton(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://sogood.com/");
         navigateToURL(_loc2_);
      }
      
      override public function DeActivate() : void
      {
         super.DeActivate();
         this.m_sponsorTimer.stop();
         removeChild(this.m_sponsorIntro);
         this.m_sponsorIntro.unloadAndStop();
         this.m_sponsorButton.Cleanup();
         removeChild(this.m_sponsorButton);
         removeChild(this.m_whiteBackground);
         this.m_whiteBackground = null;
      }
   }
}
