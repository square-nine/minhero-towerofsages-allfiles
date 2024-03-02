package
{
   import SharedObjects.AnimationForPreloader;
   import com.greensock.TweenNano;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.getDefinitionByName;
   
   public class Preloader extends MovieClip
   {
       
      
      private var LOADER_FONT:Class;
      
      protected var loadingScreen_background:Class;
      
      protected var loadingScreen_female_side_still:Class;
      
      protected var loadingScreen_fillBar:Class;
      
      protected var loadingScreen_playButton:Class;
      
      protected var loadingScreen_playButtonMask:Class;
      
      protected var loadingScreen_boySpeechBubble:Class;
      
      protected var loadingScreen_progressPopup:Class;
      
      protected var loadingScreen_female_side_1:Class;
      
      protected var loadingScreen_female_side_2:Class;
      
      protected var loadingScreen_female_side_3:Class;
      
      protected var loadingScreen_female_side_4:Class;
      
      protected var loadingScreen_female_side_5:Class;
      
      protected var loadingScreen_female_side_6:Class;
      
      protected var loadingScreen_female_side_7:Class;
      
      protected var loadingScreen_female_side_8:Class;
      
      protected var loadingScreen_female_side_9:Class;
      
      protected var loadingScreen_female_side_10:Class;
      
      protected var loadingScreen_chatCycleBackground:Class;
      
      protected var loadingScreen_chatCycleButton:Class;
      
      private var m_loadingBackground:Sprite;
      
      private var m_percentageLoadedText:TextField;
      
      private var m_background:Sprite;
      
      private var m_femaleStill:Sprite;
      
      private var m_maleSpeechBubble:Sprite;
      
      private var m_femaleSpeechBubble:Sprite;
      
      private var m_femaleSpeechText:TextField;
      
      private var m_maleSpeechText:TextField;
      
      private var m_loadingBar:Sprite;
      
      private var m_loadingBar_mask:Sprite;
      
      private var m_playButton:Sprite;
      
      private var m_playButton_mask:Sprite;
      
      private var m_loadingBackground_mask:Sprite;
      
      private var m_charAnimaiton:AnimationForPreloader;
      
      private var m_chatPopupBackground:Sprite;
      
      private var m_chatPopupButton_left:Sprite;
      
      private var m_chatPopupButton_right:Sprite;
      
      private var m_chatNumberText:TextField;
      
      private var m_chatPopupPosition:int;
      
      private var m_sponsorButton:Sprite;
      
      private var m_tcGamesButton:Sprite;
      
      private var m_fadeBackground:Sprite;
      
      private const m_skipPlayButton:Boolean = false;
      
      private var m_percentageLoaded:Number;
      
      private var m_versionText:TextField;
      
      public function Preloader()
      {
         var _loc1_:TextFormat = null;
         this.LOADER_FONT = Preloader_LOADER_FONT;
         this.loadingScreen_background = Preloader_loadingScreen_background;
         this.loadingScreen_female_side_still = Preloader_loadingScreen_female_side_still;
         this.loadingScreen_fillBar = Preloader_loadingScreen_fillBar;
         this.loadingScreen_playButton = Preloader_loadingScreen_playButton;
         this.loadingScreen_playButtonMask = Preloader_loadingScreen_playButtonMask;
         this.loadingScreen_boySpeechBubble = Preloader_loadingScreen_boySpeechBubble;
         this.loadingScreen_progressPopup = Preloader_loadingScreen_progressPopup;
         this.loadingScreen_female_side_1 = Preloader_loadingScreen_female_side_1;
         this.loadingScreen_female_side_2 = Preloader_loadingScreen_female_side_2;
         this.loadingScreen_female_side_3 = Preloader_loadingScreen_female_side_3;
         this.loadingScreen_female_side_4 = Preloader_loadingScreen_female_side_4;
         this.loadingScreen_female_side_5 = Preloader_loadingScreen_female_side_5;
         this.loadingScreen_female_side_6 = Preloader_loadingScreen_female_side_6;
         this.loadingScreen_female_side_7 = Preloader_loadingScreen_female_side_7;
         this.loadingScreen_female_side_8 = Preloader_loadingScreen_female_side_8;
         this.loadingScreen_female_side_9 = Preloader_loadingScreen_female_side_9;
         this.loadingScreen_female_side_10 = Preloader_loadingScreen_female_side_10;
         this.loadingScreen_chatCycleBackground = Preloader_loadingScreen_chatCycleBackground;
         this.loadingScreen_chatCycleButton = Preloader_loadingScreen_chatCycleButton;
         super();
         if(stage)
         {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;
         }
         _loc1_ = new TextFormat();
         _loc1_.size = 10;
         _loc1_.align = TextFormatAlign.CENTER;
         _loc1_.font = "BurbinCasual";
         this.m_background = new Sprite();
         this.m_background.addChild(new this.loadingScreen_background());
         addChild(this.m_background);
         this.m_chatPopupPosition = 0;
         this.m_chatPopupBackground = new Sprite();
         this.m_chatPopupBackground.addChild(new this.loadingScreen_chatCycleBackground());
         addChild(this.m_chatPopupBackground);
         this.m_chatPopupBackground.x = 99;
         this.m_chatPopupBackground.y = 522;
         this.m_chatNumberText = new TextField();
         this.m_chatNumberText.embedFonts = true;
         this.m_chatNumberText.textColor = 15790320;
         this.m_chatNumberText.selectable = false;
         this.m_chatNumberText.multiline = false;
         this.m_chatNumberText.wordWrap = true;
         this.m_chatNumberText.x = 21;
         this.m_chatNumberText.y = 2;
         this.m_chatNumberText.width = 51;
         this.m_chatPopupBackground.addChild(this.m_chatNumberText);
         _loc1_.size = 16;
         this.m_chatNumberText.defaultTextFormat = _loc1_;
         this.m_chatNumberText.text = "9";
         this.m_chatPopupButton_left = new Sprite();
         this.m_chatPopupButton_left.addChild(new this.loadingScreen_chatCycleButton());
         this.m_chatPopupBackground.addChild(this.m_chatPopupButton_left);
         this.m_chatPopupButton_left.x = 16;
         this.m_chatPopupButton_left.y = 6;
         this.m_chatPopupButton_left.buttonMode = true;
         this.m_chatPopupButton_left.addEventListener(MouseEvent.CLICK,this.CycleLeft);
         this.m_chatPopupButton_right = new Sprite();
         this.m_chatPopupButton_right.addChild(new this.loadingScreen_chatCycleButton());
         this.m_chatPopupBackground.addChild(this.m_chatPopupButton_right);
         this.m_chatPopupButton_right.x = 75;
         this.m_chatPopupButton_right.y = 6;
         this.m_chatPopupButton_right.scaleX = -1;
         this.m_chatPopupButton_right.buttonMode = true;
         this.m_chatPopupButton_right.addEventListener(MouseEvent.CLICK,this.CycleRight);
         this.m_femaleStill = new Sprite();
         this.m_femaleStill.x = 102;
         this.m_femaleStill.y = 435;
         this.m_femaleStill.addChild(new this.loadingScreen_female_side_still());
         addChild(this.m_femaleStill);
         this.m_femaleStill.visible = false;
         this.m_charAnimaiton = new AnimationForPreloader();
         this.m_charAnimaiton.x = 102 - 140;
         this.m_charAnimaiton.y = 435;
         this.m_charAnimaiton.Create([this.loadingScreen_female_side_1,this.loadingScreen_female_side_2,this.loadingScreen_female_side_3,this.loadingScreen_female_side_4,this.loadingScreen_female_side_5,this.loadingScreen_female_side_6,this.loadingScreen_female_side_7,this.loadingScreen_female_side_8,this.loadingScreen_female_side_9,this.loadingScreen_female_side_10],10);
         addChild(this.m_charAnimaiton);
         this.m_maleSpeechBubble = new Sprite();
         this.m_maleSpeechBubble.x = 131;
         this.m_maleSpeechBubble.y = 374 - 10;
         this.m_maleSpeechBubble.addChild(new this.loadingScreen_boySpeechBubble());
         addChild(this.m_maleSpeechBubble);
         this.m_maleSpeechBubble.alpha = 0;
         this.m_femaleSpeechBubble = new Sprite();
         this.m_femaleSpeechBubble.x = 161;
         this.m_femaleSpeechBubble.y = 377 - 12;
         this.m_femaleSpeechBubble.scaleX = -1;
         this.m_femaleSpeechBubble.addChild(new this.loadingScreen_boySpeechBubble());
         addChild(this.m_femaleSpeechBubble);
         this.m_femaleSpeechBubble.alpha = 0;
         this.m_loadingBar = new Sprite();
         this.m_loadingBar.x = 55;
         this.m_loadingBar.y = 435;
         this.m_loadingBar.addChild(new this.loadingScreen_fillBar());
         addChild(this.m_loadingBar);
         this.m_loadingBar_mask = new Sprite();
         this.m_loadingBar_mask.graphics.beginFill(0);
         this.m_loadingBar_mask.graphics.drawRect(0,0,291,40);
         this.m_loadingBar_mask.graphics.endFill();
         this.m_loadingBar_mask.x = 340;
         this.m_loadingBar_mask.y = 435;
         addChild(this.m_loadingBar_mask);
         this.m_loadingBar.mask = this.m_loadingBar_mask;
         this.m_playButton = new Sprite();
         this.m_playButton.x = 451;
         this.m_playButton.y = 414;
         this.m_playButton.addChild(new this.loadingScreen_playButton());
         addChild(this.m_playButton);
         this.m_sponsorButton = new Sprite();
         this.m_sponsorButton.x = 7;
         this.m_sponsorButton.y = 132;
         this.m_sponsorButton.graphics.beginFill(5592405);
         this.m_sponsorButton.graphics.drawRect(0,0,170,70);
         this.m_sponsorButton.graphics.endFill();
         this.m_sponsorButton.alpha = 0;
         addChild(this.m_sponsorButton);
         this.m_tcGamesButton = new Sprite();
         this.m_tcGamesButton.x = 525;
         this.m_tcGamesButton.y = 132;
         this.m_tcGamesButton.graphics.beginFill(5592405);
         this.m_tcGamesButton.graphics.drawRect(0,0,170,70);
         this.m_tcGamesButton.graphics.endFill();
         this.m_tcGamesButton.alpha = 0;
         addChild(this.m_tcGamesButton);
         this.m_playButton_mask = new Sprite();
         this.m_playButton_mask.x = 451;
         this.m_playButton_mask.y = 349;
         this.m_playButton_mask.addChild(new this.loadingScreen_playButtonMask());
         addChild(this.m_playButton_mask);
         this.m_playButton.mask = this.m_playButton_mask;
         this.m_loadingBackground = new Sprite();
         this.m_loadingBackground.x = 451;
         this.m_loadingBackground.y = 392;
         this.m_loadingBackground.addChild(new this.loadingScreen_progressPopup());
         addChild(this.m_loadingBackground);
         this.m_loadingBackground_mask = new Sprite();
         this.m_loadingBackground_mask.x = 451;
         this.m_loadingBackground_mask.y = 349;
         this.m_loadingBackground_mask.addChild(new this.loadingScreen_playButtonMask());
         addChild(this.m_loadingBackground_mask);
         this.m_loadingBackground.mask = this.m_loadingBackground_mask;
         this.m_percentageLoadedText = new TextField();
         this.m_percentageLoadedText.textColor = 13423058;
         this.m_percentageLoadedText.embedFonts = true;
         this.m_percentageLoadedText.selectable = false;
         this.m_percentageLoadedText.multiline = false;
         this.m_percentageLoadedText.x = 0;
         this.m_percentageLoadedText.y = 13;
         this.m_percentageLoadedText.width = 165;
         this.m_loadingBackground.addChild(this.m_percentageLoadedText);
         _loc1_.size = 12;
         this.m_percentageLoadedText.defaultTextFormat = _loc1_;
         this.m_percentageLoadedText.text = "0 kb / 0 kb";
         _loc1_.size = 14;
         this.m_maleSpeechText = new TextField();
         this.m_maleSpeechText.textColor = 4803172;
         this.m_maleSpeechText.embedFonts = true;
         this.m_maleSpeechText.selectable = false;
         this.m_maleSpeechText.multiline = false;
         this.m_maleSpeechText.wordWrap = true;
         this.m_maleSpeechText.x = 4;
         this.m_maleSpeechText.y = 13;
         this.m_maleSpeechText.width = 143;
         this.m_maleSpeechBubble.addChild(this.m_maleSpeechText);
         this.m_maleSpeechText.defaultTextFormat = _loc1_;
         this.m_maleSpeechText.text = "temp text";
         this.m_femaleSpeechText = new TextField();
         this.m_femaleSpeechText.textColor = 4803172;
         this.m_femaleSpeechText.selectable = false;
         this.m_femaleSpeechText.embedFonts = true;
         this.m_femaleSpeechText.multiline = false;
         this.m_femaleSpeechText.wordWrap = true;
         this.m_femaleSpeechText.x = 148;
         this.m_femaleSpeechText.y = 13;
         this.m_femaleSpeechText.width = 143;
         this.m_femaleSpeechBubble.addChild(this.m_femaleSpeechText);
         this.m_femaleSpeechText.scaleX = -1;
         this.m_femaleSpeechText.defaultTextFormat = _loc1_;
         this.m_femaleSpeechText.text = "temp text";
         _loc1_.size = 13;
         this.m_versionText = new TextField();
         this.m_versionText.textColor = 13423058;
         this.m_versionText.embedFonts = true;
         this.m_versionText.selectable = false;
         this.m_versionText.multiline = false;
         this.m_versionText.wordWrap = true;
         this.m_versionText.x = 638;
         this.m_versionText.y = 503;
         this.m_versionText.width = 80;
         this.m_versionText.defaultTextFormat = _loc1_;
         this.m_versionText.text = "v1.01";
         addChild(this.m_versionText);
         TweenNano.to(this.m_charAnimaiton,1.8,{
            "delay":0.5,
            "x":"140",
            "onComplete":this.AnimationFinished
         });
         addEventListener(Event.ENTER_FRAME,this.checkFrame);
         loaderInfo.addEventListener(ProgressEvent.PROGRESS,this.progress);
         loaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioError);
         this.m_tcGamesButton.buttonMode = true;
         this.m_tcGamesButton.addEventListener(MouseEvent.CLICK,this.TCGamesButtonPressed);
         this.m_sponsorButton.buttonMode = true;
         this.m_sponsorButton.addEventListener(MouseEvent.CLICK,this.SponsorButtonPressed);
      }
      
      private function AnimationFinished() : void
      {
         this.m_charAnimaiton.visible = false;
         this.m_femaleStill.visible = true;
         this.SetNewChatWindows();
         TweenNano.to(this.m_chatPopupBackground,0.8,{"y":479});
      }
      
      private function CycleLeft(param1:MouseEvent = null) : void
      {
         --this.m_chatPopupPosition;
         if(this.m_chatPopupPosition < 0)
         {
            this.m_chatPopupPosition = 43;
         }
         this.SetNewChatWindows();
      }
      
      private function CycleRight(param1:MouseEvent = null) : void
      {
         ++this.m_chatPopupPosition;
         if(this.m_chatPopupPosition > 43)
         {
            this.m_chatPopupPosition = 0;
         }
         this.SetNewChatWindows();
      }
      
      public function SetNewChatWindows() : void
      {
         this.m_chatNumberText.text = "" + this.m_chatPopupPosition;
         switch(this.m_chatPopupPosition)
         {
            case 0:
               this.TurnOffTheChatBubbles();
               break;
            case 1:
               this.SetFeMaleText("Mind telling me about the Tower?");
               break;
            case 2:
               this.SetMaleText("Not at all.\nAsk away!");
               break;
            case 3:
               this.SetFeMaleText("What are minions?");
               break;
            case 4:
               this.SetMaleText("They are special creatures...");
               break;
            case 5:
               this.SetMaleText("that few people can command.");
               break;
            case 6:
               this.SetFeMaleText("Why do we battle them?");
               break;
            case 7:
               this.SetMaleText("So they can grow.");
               break;
            case 8:
               this.SetFeMaleText("Why do we collect stars?");
               break;
            case 9:
               this.SetMaleText("They are a sign of how strong a...");
               break;
            case 10:
               this.SetMaleText("keeper we are.  You can use...");
               break;
            case 11:
               this.SetMaleText("them to make your team stronger.");
               break;
            case 12:
               this.SetFeMaleText("Any tips if a fight gets hard?");
               break;
            case 13:
               this.SetMaleText("Make sure all your minions have...");
               break;
            case 14:
               this.SetMaleText("good gems.");
               break;
            case 15:
               this.SetMaleText("Try to KO their minions before...");
               break;
            case 16:
               this.SetMaleText("they can hit\nyour minions.");
               break;
            case 17:
               this.SetMaleText("It can be good to have a tank...");
               break;
            case 18:
               this.SetMaleText("to protect your fragile minions.");
               break;
            case 19:
               this.SetFeMaleText("What are water minions weak to?");
               break;
            case 20:
               this.SetMaleText("Electric, grass, and flying moves.");
               break;
            case 21:
               this.SetFeMaleText("How about grass minons?");
               break;
            case 22:
               this.SetMaleText("Fire, ice, dino, demon, and flying.");
               break;
            case 23:
               this.SetFeMaleText("And earth minons?");
               break;
            case 24:
               this.SetMaleText("Water, grass, and undead moves.");
               break;
            case 23:
               this.SetFeMaleText("What about ice minons?");
               break;
            case 24:
               this.SetMaleText("Fire, flying, titan, and robot.");
               break;
            case 25:
               this.SetFeMaleText("What are fire minions weak to?");
               break;
            case 26:
               this.SetMaleText("Water and earth moves.");
               break;
            case 27:
               this.SetFeMaleText("How about electric minons?");
               break;
            case 28:
               this.SetMaleText("Earth and dino moves.");
               break;
            case 29:
               this.SetFeMaleText("And undead minons?");
               break;
            case 30:
               this.SetMaleText("Fire, plant, and holy.");
               break;
            case 31:
               this.SetFeMaleText("What are robot minions weak to?");
               break;
            case 32:
               this.SetMaleText("Fire, electric, water, and dino.");
               break;
            case 33:
               this.SetFeMaleText("How about flying minons?");
               break;
            case 34:
               this.SetMaleText("Electric and earth moves.");
               break;
            case 35:
               this.SetFeMaleText("What are demonic minions weak to?");
               break;
            case 36:
               this.SetMaleText("Holy and water moves.");
               break;
            case 37:
               this.SetFeMaleText("And holy minions?");
               break;
            case 38:
               this.SetMaleText("Demonic and normal moves.");
               break;
            case 35:
               this.SetFeMaleText("What are normal minions weak to?");
               break;
            case 36:
               this.SetMaleText("Undead and demonic moves.");
               break;
            case 37:
               this.SetFeMaleText("And dino minions?");
               break;
            case 36:
               this.SetMaleText("Ice, earth, robot, and titan moves.");
               break;
            case 37:
               this.SetFeMaleText("What are titan minions weak to?");
               break;
            case 38:
               this.SetMaleText("Ice, holy, and other titan moves.");
               break;
            case 39:
               this.SetFeMaleText("What do I do when I beat the game?");
               break;
            case 40:
               this.SetMaleText("Work on hard mode or...");
               break;
            case 41:
               this.SetMaleText("collect all the minons!");
               break;
            case 42:
               this.SetFeMaleText("How many minons are there?");
               break;
            case 43:
               this.SetMaleText("There are 102 minions!");
               break;
            default:
               this.TurnOffTheChatBubbles();
         }
      }
      
      private function TurnOffTheChatBubbles() : void
      {
         TweenNano.to(this.m_femaleSpeechBubble,0.5,{"alpha":0});
         TweenNano.to(this.m_maleSpeechBubble,0.5,{"alpha":0});
      }
      
      private function SetMaleText(param1:String) : void
      {
         this.m_maleSpeechText.text = param1;
         if(param1.length > 20)
         {
            this.m_maleSpeechText.y = 6;
         }
         else
         {
            this.m_maleSpeechText.y = 14;
         }
         TweenNano.to(this.m_femaleSpeechBubble,0.5,{"alpha":0});
         TweenNano.to(this.m_maleSpeechBubble,0.5,{"alpha":1});
      }
      
      private function SetFeMaleText(param1:String) : void
      {
         this.m_femaleSpeechText.text = param1;
         if(param1.length > 20)
         {
            this.m_femaleSpeechText.y = 6;
         }
         else
         {
            this.m_femaleSpeechText.y = 14;
         }
         TweenNano.to(this.m_femaleSpeechBubble,0.5,{"alpha":1});
         TweenNano.to(this.m_maleSpeechBubble,0.5,{"alpha":0});
      }
      
      private function ioError(param1:IOErrorEvent) : void
      {
      }
      
      private function progress(param1:ProgressEvent) : void
      {
         this.m_percentageLoaded = param1.bytesLoaded / param1.bytesTotal;
         this.m_loadingBar.x = 55 + 285 * this.m_percentageLoaded;
         var _loc2_:Number = int(param1.bytesLoaded / 100000) / 10;
         var _loc3_:Number = int(param1.bytesTotal / 100000) / 10;
         this.m_percentageLoadedText.text = _loc2_ + "mb / " + _loc3_ + "mb";
      }
      
      private function checkFrame(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            this.loadingFinished();
         }
      }
      
      private function loadingFinished() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.checkFrame);
         loaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.progress);
         loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioError);
         if(this.m_skipPlayButton)
         {
            this.ActivatePlayButton();
         }
         else
         {
            TweenNano.to(this.m_playButton,0.8,{
               "delay":0.8,
               "y":362,
               "onComplete":this.ActivatePlayButton
            });
            TweenNano.to(this.m_loadingBackground,0.8,{"y":420});
         }
      }
      
      private function ActivatePlayButton() : void
      {
         this.m_playButton.buttonMode = true;
         this.m_playButton.addEventListener(MouseEvent.CLICK,this.TransitionToGame);
         if(this.m_skipPlayButton)
         {
            this.TransitionToGame();
         }
      }
      
      private function cleanup() : void
      {
         this.m_tcGamesButton.removeEventListener(MouseEvent.CLICK,this.TCGamesButtonPressed);
         this.m_sponsorButton.removeEventListener(MouseEvent.CLICK,this.SponsorButtonPressed);
         removeChild(this.m_tcGamesButton);
         removeChild(this.m_sponsorButton);
         removeChild(this.m_background);
         removeChild(this.m_femaleStill);
         this.m_playButton.mask = null;
         removeChild(this.m_playButton_mask);
         removeChild(this.m_loadingBar);
         removeChild(this.m_playButton);
         removeChild(this.m_fadeBackground);
         this.m_loadingBackground.removeChild(this.m_percentageLoadedText);
         removeChild(this.m_loadingBackground);
         this.m_maleSpeechBubble.removeChild(this.m_maleSpeechText);
         removeChild(this.m_maleSpeechBubble);
         this.m_femaleSpeechBubble.removeChild(this.m_femaleSpeechText);
         removeChild(this.m_femaleSpeechBubble);
         this.m_charAnimaiton.Cleanup();
         removeChild(this.m_charAnimaiton);
         removeChild(this.m_chatPopupBackground);
         this.m_chatPopupBackground.removeChild(this.m_chatNumberText);
         this.m_chatPopupBackground.removeChild(this.m_chatPopupButton_left);
         this.m_chatPopupButton_left.removeEventListener(MouseEvent.CLICK,this.CycleLeft);
         this.m_chatPopupBackground.removeChild(this.m_chatPopupButton_right);
         this.m_chatPopupButton_right.removeEventListener(MouseEvent.CLICK,this.CycleRight);
         removeChild(this.m_versionText);
      }
      
      private function SponsorButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://www.sogood.com");
         navigateToURL(_loc2_);
      }
      
      private function TCGamesButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://www.facebook.com/ToyChestGames");
         navigateToURL(_loc2_);
      }
      
      private function TransitionToGame(param1:MouseEvent = null) : void
      {
         this.m_playButton.removeEventListener(MouseEvent.CLICK,this.TransitionToGame);
         this.m_fadeBackground = new Sprite();
         this.m_fadeBackground.graphics.beginFill(16777215);
         this.m_fadeBackground.graphics.drawRect(0,0,700,525);
         this.m_fadeBackground.graphics.endFill();
         addChild(this.m_fadeBackground);
         this.m_fadeBackground.alpha = 0;
         if(this.m_skipPlayButton)
         {
            this.startup();
         }
         else
         {
            TweenNano.to(this.m_fadeBackground,0.4,{
               "alpha":1,
               "onComplete":this.startup
            });
         }
      }
      
      private function startup() : void
      {
         this.cleanup();
         var _loc1_:Class = getDefinitionByName("Main") as Class;
         addChild(new _loc1_() as DisplayObject);
      }
   }
}
