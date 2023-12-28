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
      
      private static var intro:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            intro = SponsorIntroScreen_intro;
         }
      }
      
      private var m_sponsorIntro:Loader;
      
      private var m_sponsorButton:TCButton;
      
      private var m_whiteBackground:Sprite;
      
      private var m_sponsorTimer:Timer;
      
      public function SponsorIntroScreen()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function StartActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.StartActivate();
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.LoadSprites();
            if(_loc2_ || _loc2_)
            {
               this.m_whiteBackground = new Sprite();
               this.m_whiteBackground.x = 0;
               this.m_whiteBackground.y = 0;
               this.m_whiteBackground.graphics.beginFill(16777215);
               if(_loc2_)
               {
                  this.m_whiteBackground.graphics.drawRect(0,0,700,525);
                  addr56:
                  this.m_whiteBackground.graphics.endFill();
                  if(_loc2_ || Boolean(this))
                  {
                     addr67:
                     addChild(this.m_whiteBackground);
                  }
                  var _loc1_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
                  _loc1_.allowCodeImport = true;
                  this.m_sponsorIntro = new Loader();
                  if(!(_loc3_ && _loc2_))
                  {
                     this.m_sponsorIntro.loadBytes(new intro(),_loc1_);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addChild(this.m_sponsorIntro);
                     }
                     this.m_sponsorIntro.x = -38;
                     this.m_sponsorIntro.y = -50;
                     this.m_sponsorButton = new TCButton(this.BackgroundButton,"whiteFadeBackground");
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§push(this.m_sponsorButton);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc2_ || _loc3_)
                           {
                              §§pop().x = §§pop();
                              addr165:
                              §§push(this.m_sponsorButton);
                              §§push(0);
                           }
                           §§pop().y = §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              addChild(this.m_sponsorButton);
                           }
                           return;
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr165);
               }
            }
            §§goto(addr67);
         }
         §§goto(addr56);
      }
      
      override public function FinishActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super.FinishActivate();
            if(!(_loc1_ && _loc2_))
            {
               TweenLite.to(this.m_sponsorButton,0.4,{
                  "alpha":0,
                  "delay":0.4
               });
               if(!_loc1_)
               {
                  this.m_sponsorTimer = new Timer(11300,1);
                  if(_loc2_)
                  {
                     addr64:
                     this.m_sponsorTimer.addEventListener("timer",this.timerHandler);
                     if(!_loc1_)
                     {
                        this.m_sponsorTimer.start();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.UpdateFullFrames();
            if(!_loc1_)
            {
               this.m_sponsorButton.m_isActive = true;
            }
         }
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.MAIN_MENU,true,0.5,false);
         }
      }
      
      public function BackgroundButton(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest("http://sogood.com/");
         if(!_loc4_)
         {
            navigateToURL(_loc2_);
         }
      }
      
      override public function DeActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super.DeActivate();
            if(_loc2_ || Boolean(this))
            {
               this.m_sponsorTimer.stop();
               addr40:
               removeChild(this.m_sponsorIntro);
               if(_loc2_ || _loc1_)
               {
                  this.m_sponsorIntro.unloadAndStop();
               }
               this.m_sponsorButton.Cleanup();
               removeChild(this.m_sponsorButton);
               removeChild(this.m_whiteBackground);
            }
            this.m_whiteBackground = null;
            return;
         }
         §§goto(addr40);
      }
   }
}
