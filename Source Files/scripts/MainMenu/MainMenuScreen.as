package MainMenu
{
   import Minions.OwnedMinion;
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseInterfacePieces.ToggleButton;
   import SharedObjects.BaseScreen;
   import States.BackgroundMusicTracks;
   import States.GameState;
   import States.MainMenuStates;
   import States.MinionDexID;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MainMenuScreen extends BaseScreen
   {
      
      private static var FacebookSwf:Class = MainMenuScreen_FacebookSwf;
      
      private static var TwitterSwf:Class = MainMenuScreen_TwitterSwf;
       
      
      private var m_sponsorFacebook:Loader;
      
      private var m_sponsorTwitter:Loader;
      
      public var m_currState:int;
      
      public var m_backgroundForZoom:Sprite;
      
      public var m_menuBackground:Sprite;
      
      public var m_doorLeft:Sprite;
      
      public var m_doorRight:Sprite;
      
      public var m_doorOuterGlow:Sprite;
      
      public var m_doorOuterGlow_mask:Sprite;
      
      public var m_doorLeftGlow:Sprite;
      
      public var m_doorRightGlow:Sprite;
      
      public var m_doorLeftGlow_mask:Sprite;
      
      public var m_doorRightGlow_mask:Sprite;
      
      public var m_titleIcon:Sprite;
      
      public var m_fullBlackOverlay:Sprite;
      
      public var m_blackOverlayForButtons:Sprite;
      
      public var m_playButton:TCButton;
      
      public var m_creditsButton:TCButton;
      
      public var m_sponsorButton:TCButton;
      
      public var m_tcGamesButton:TCButton;
      
      public var m_hostGamesButton:TCButton;
      
      public var m_creditsScreen:CreditsScreen;
      
      public var m_saveSlots:Vector.<FileSelectIcon>;
      
      public var m_charCreationPopup:CharCreationPopup;
      
      public var m_muteMusicButton:ToggleButton;
      
      public var m_muteSoundButton:ToggleButton;
      
      public var m_textSet1:Vector.<TextField>;
      
      public var m_textSet2:Vector.<TextField>;
      
      public var m_textSet3:Vector.<TextField>;
      
      public var m_textSet4:Vector.<TextField>;
      
      public var m_skipIntroButton:TCButton;
      
      public function MainMenuScreen()
      {
         super();
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_backgroundForZoom = new Sprite();
         addChild(this.m_backgroundForZoom);
         var _loc1_:Sprite = this.m_backgroundForZoom;
         this.m_doorLeft = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorLeft");
         this.m_doorLeft.x = 164;
         this.m_doorLeft.y = 229 + 379;
         _loc1_.addChild(this.m_doorLeft);
         this.m_doorRight = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorRight");
         this.m_doorRight.x = 349;
         this.m_doorRight.y = 229 + 379;
         _loc1_.addChild(this.m_doorRight);
         this.m_doorLeftGlow = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorLeft_glow");
         this.m_doorLeftGlow.x = 164;
         this.m_doorLeftGlow.y = 230;
         _loc1_.addChild(this.m_doorLeftGlow);
         this.m_doorLeftGlow.cacheAsBitmap = true;
         this.m_doorLeftGlow.alpha = 0.5;
         this.m_doorRightGlow = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorRight_glow");
         this.m_doorRightGlow.x = 349;
         this.m_doorRightGlow.y = 230;
         this.m_doorRightGlow.cacheAsBitmap = true;
         _loc1_.addChild(this.m_doorRightGlow);
         this.m_doorRightGlow.alpha = 0.5;
         this.m_doorLeftGlow_mask = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_doorAnimationMask1");
         this.m_doorLeftGlow_mask.x = 155;
         this.m_doorLeftGlow_mask.y = 646;
         _loc1_.addChild(this.m_doorLeftGlow_mask);
         this.m_doorLeftGlow_mask.cacheAsBitmap = true;
         this.m_doorLeftGlow_mask.graphics.beginFill(5592405);
         this.m_doorLeftGlow_mask.graphics.drawRect(0,-322,399,325);
         this.m_doorLeftGlow_mask.graphics.endFill();
         this.m_doorLeftGlow_mask.scaleY = -1;
         this.m_doorLeftGlow.mask = this.m_doorLeftGlow_mask;
         this.m_doorRightGlow_mask = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_doorAnimationMask1");
         this.m_doorRightGlow_mask.x = 155;
         this.m_doorRightGlow_mask.y = 646;
         _loc1_.addChild(this.m_doorRightGlow_mask);
         this.m_doorRightGlow_mask.cacheAsBitmap = true;
         this.m_doorRightGlow_mask.graphics.beginFill(5592405);
         this.m_doorRightGlow_mask.graphics.drawRect(0,-322,399,325);
         this.m_doorRightGlow_mask.graphics.endFill();
         this.m_doorRightGlow_mask.scaleY = -1;
         this.m_doorRightGlow.mask = this.m_doorRightGlow_mask;
         this.m_menuBackground = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_background");
         this.m_menuBackground.x = -30;
         this.m_menuBackground.y = -70;
         _loc1_.addChild(this.m_menuBackground);
         this.m_doorOuterGlow = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorCracksGlow");
         this.m_doorOuterGlow.x = 155;
         this.m_doorOuterGlow.y = 222;
         addChild(this.m_doorOuterGlow);
         this.m_doorOuterGlow.cacheAsBitmap = true;
         this.m_doorOuterGlow_mask = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_doorAnimationMask1");
         this.m_doorOuterGlow_mask.x = 154;
         this.m_doorOuterGlow_mask.y = 107;
         addChild(this.m_doorOuterGlow_mask);
         this.m_doorOuterGlow_mask.cacheAsBitmap = true;
         this.m_doorOuterGlow_mask.graphics.beginFill(5592405);
         this.m_doorOuterGlow_mask.graphics.drawRect(0,-322,399,325);
         this.m_doorOuterGlow_mask.graphics.endFill();
         this.m_doorOuterGlow.mask = this.m_doorOuterGlow_mask;
         this.m_titleIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleLogo");
         this.m_titleIcon.x = 185;
         this.m_titleIcon.y = 0;
         addChild(this.m_titleIcon);
         this.m_blackOverlayForButtons = new Sprite();
         this.m_blackOverlayForButtons.x = 0;
         this.m_blackOverlayForButtons.y = 194;
         addChild(this.m_blackOverlayForButtons);
         this.m_blackOverlayForButtons.graphics.beginFill(0,0.5);
         this.m_blackOverlayForButtons.graphics.drawRect(0,0,700,218);
         this.m_blackOverlayForButtons.graphics.endFill();
         this.m_playButton = new TCButton(this.PlayButtonPressed,"mainMenu_playButton");
         this.m_playButton.x = 263;
         this.m_playButton.y = 261;
         addChild(this.m_playButton);
         this.m_creditsButton = new TCButton(this.CreditsButtonPressed,"mainMenu_creditsButton");
         this.m_creditsButton.x = 296;
         this.m_creditsButton.y = 469;
         addChild(this.m_creditsButton);
         this.m_sponsorButton = new TCButton(this.SponsorButtonPressed,"mainMenu_titleScreen_sponsorLogo");
         this.m_sponsorButton.x = 27;
         this.m_sponsorButton.y = 267;
         addChild(this.m_sponsorButton);
         this.m_tcGamesButton = new TCButton(this.TCGamesButtonPressed,"mainMenu_titleScreen_ourLogo");
         this.m_tcGamesButton.x = 472;
         this.m_tcGamesButton.y = 268;
         addChild(this.m_tcGamesButton);
         this.m_hostGamesButton = new TCButton(this.HostGamesButtonPressed,"mainMenu_hostGamesLogo");
         this.m_hostGamesButton.x = 15;
         this.m_hostGamesButton.y = 491;
         addChild(this.m_hostGamesButton);
         this.m_saveSlots = new Vector.<FileSelectIcon>(3);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_saveSlots.length)
         {
            this.m_saveSlots[_loc2_] = new FileSelectIcon(_loc2_);
            this.m_saveSlots[_loc2_].LoadSprites();
            this.m_saveSlots[_loc2_].x = 230;
            this.m_saveSlots[_loc2_].y = 188 + 67 * _loc2_;
            addChild(this.m_saveSlots[_loc2_]);
            _loc2_++;
         }
         this.m_muteMusicButton = new ToggleButton(this.ToggleMuteMusic,"menu_muteMusicButton_on","menu_muteMusicButton_off");
         this.m_muteMusicButton.x = 4;
         this.m_muteMusicButton.y = 6;
         addChild(this.m_muteMusicButton);
         this.m_muteSoundButton = new ToggleButton(this.ToggleSoundMusic,"menu_muteSoundButton_on","menu_muteSoundButton_off");
         this.m_muteSoundButton.x = 36;
         this.m_muteSoundButton.y = 5;
         addChild(this.m_muteSoundButton);
         this.m_fullBlackOverlay = new Sprite();
         addChild(this.m_fullBlackOverlay);
         this.m_fullBlackOverlay.graphics.beginFill(0,1);
         this.m_fullBlackOverlay.graphics.drawRect(0,0,700,525);
         this.m_fullBlackOverlay.graphics.endFill();
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.color = 15066856;
         _loc3_.size = 20;
         _loc3_.font = "BurbinCasual";
         _loc3_.align = TextFormatAlign.CENTER;
         var _loc7_:Array = ["Thousands","apply","to","train","at","the","Tower","of","Sages."];
         this.m_textSet1 = new Vector.<TextField>();
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_.length)
         {
            this.m_textSet1[_loc8_] = new TextField();
            this.m_textSet1[_loc8_].embedFonts = true;
            this.m_textSet1[_loc8_].defaultTextFormat = _loc3_;
            this.m_textSet1[_loc8_].autoSize = TextFieldAutoSize.LEFT;
            this.m_textSet1[_loc8_].text = _loc7_[_loc8_];
            this.m_textSet1[_loc8_].selectable = false;
            if(_loc8_ != 0)
            {
               this.m_textSet1[_loc8_].x = this.m_textSet1[_loc8_ - 1].textWidth + this.m_textSet1[_loc8_ - 1].x + 4;
            }
            else
            {
               this.m_textSet1[_loc8_].x = 143;
            }
            this.m_textSet1[_loc8_].y = 209 + -30;
            this.m_textSet1[_loc8_].alpha = 0;
            addChild(this.m_textSet1[_loc8_]);
            _loc8_++;
         }
         _loc7_ = ["Only","a","few","are","ever","chosen."];
         this.m_textSet2 = new Vector.<TextField>();
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            this.m_textSet2[_loc8_] = new TextField();
            this.m_textSet2[_loc8_].embedFonts = true;
            this.m_textSet2[_loc8_].defaultTextFormat = _loc3_;
            this.m_textSet2[_loc8_].autoSize = TextFieldAutoSize.LEFT;
            this.m_textSet2[_loc8_].text = _loc7_[_loc8_];
            this.m_textSet2[_loc8_].selectable = false;
            if(_loc8_ != 0)
            {
               this.m_textSet2[_loc8_].x = this.m_textSet2[_loc8_ - 1].textWidth + this.m_textSet2[_loc8_ - 1].x + 4;
            }
            else
            {
               this.m_textSet2[_loc8_].x = 143;
            }
            this.m_textSet2[_loc8_].y = 239 + -30;
            this.m_textSet2[_loc8_].alpha = 0;
            addChild(this.m_textSet2[_loc8_]);
            _loc8_++;
         }
         _loc7_ = ["But","all","dream","of","training","Titans..."];
         this.m_textSet3 = new Vector.<TextField>();
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            this.m_textSet3[_loc8_] = new TextField();
            this.m_textSet3[_loc8_].embedFonts = true;
            this.m_textSet3[_loc8_].defaultTextFormat = _loc3_;
            this.m_textSet3[_loc8_].autoSize = TextFieldAutoSize.LEFT;
            this.m_textSet3[_loc8_].text = _loc7_[_loc8_];
            this.m_textSet3[_loc8_].selectable = false;
            if(_loc8_ != 0)
            {
               this.m_textSet3[_loc8_].x = this.m_textSet3[_loc8_ - 1].textWidth + this.m_textSet3[_loc8_ - 1].x + 4;
            }
            else
            {
               this.m_textSet3[_loc8_].x = 143;
            }
            this.m_textSet3[_loc8_].y = 269 + -30;
            this.m_textSet3[_loc8_].alpha = 0;
            addChild(this.m_textSet3[_loc8_]);
            _loc8_++;
         }
         _loc7_ = ["This","is","the","story","of","one","who","was","chosen."];
         this.m_textSet4 = new Vector.<TextField>();
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            this.m_textSet4[_loc8_] = new TextField();
            this.m_textSet4[_loc8_].embedFonts = true;
            this.m_textSet4[_loc8_].defaultTextFormat = _loc3_;
            this.m_textSet4[_loc8_].autoSize = TextFieldAutoSize.LEFT;
            this.m_textSet4[_loc8_].text = _loc7_[_loc8_];
            this.m_textSet4[_loc8_].selectable = false;
            if(_loc8_ != 0)
            {
               this.m_textSet4[_loc8_].x = this.m_textSet4[_loc8_ - 1].textWidth + this.m_textSet4[_loc8_ - 1].x + 4;
            }
            else
            {
               this.m_textSet4[_loc8_].x = 143;
            }
            this.m_textSet4[_loc8_].y = 299 + -30;
            this.m_textSet4[_loc8_].alpha = 0;
            addChild(this.m_textSet4[_loc8_]);
            _loc8_++;
         }
         this.m_charCreationPopup = new CharCreationPopup();
         this.m_charCreationPopup.LoadSprites();
         this.m_charCreationPopup.x = 108;
         this.m_charCreationPopup.y = 139;
         addChild(this.m_charCreationPopup);
         this.m_creditsScreen = new CreditsScreen();
         this.m_creditsScreen.LoadSprites();
         addChild(this.m_creditsScreen);
         this.m_creditsScreen.x = 16;
         this.m_creditsScreen.y = 16 - 50;
         this.m_skipIntroButton = new TCButton(this.SkipButtonPressed,"menu_skipIntroButton");
         this.m_skipIntroButton.x = 625;
         this.m_skipIntroButton.y = 489;
         addChild(this.m_skipIntroButton);
      }
      
      private function ToggleMuteMusic() : void
      {
         Singleton.dynamicData.m_isMusicOn = this.m_muteMusicButton.m_isToggleOn;
      }
      
      private function ToggleSoundMusic() : void
      {
         Singleton.dynamicData.m_isSoundOn = this.m_muteSoundButton.m_isToggleOn;
      }
      
      public function FadeOutForReturnToGame() : void
      {
         TweenLite.to(this.m_fullBlackOverlay,1,{"alpha":1});
         TweenLite.to(this.m_sponsorTwitter,0.5,{
            "alpha":0,
            "y":"50"
         });
         TweenLite.to(this.m_sponsorFacebook,0.5,{
            "alpha":0,
            "y":"50"
         });
         this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
      }
      
      override public function StartActivate() : void
      {
         super.StartActivate();
         Singleton.dynamicData.LoadInitialData();
         this.m_charCreationPopup.visible = false;
         this.m_blackOverlayForButtons.x = 0;
         this.m_blackOverlayForButtons.y = 194;
         this.m_playButton.x = 263;
         this.m_playButton.y = 261;
         this.m_muteSoundButton.m_isToggleOn = Singleton.dynamicData.m_isSoundOn;
         this.m_muteMusicButton.m_isToggleOn = Singleton.dynamicData.m_isMusicOn;
         this.m_doorLeft.x = 164;
         this.m_doorLeft.y = 229 + 379;
         this.m_doorRight.x = 349;
         this.m_doorRight.y = 229 + 379;
         this.m_menuBackground.x = -30;
         this.m_menuBackground.y = -70;
         this.m_backgroundForZoom.x = 0;
         this.m_backgroundForZoom.y = 0;
         this.m_backgroundForZoom.scaleX = 1;
         this.m_backgroundForZoom.scaleY = 1;
         this.m_doorLeftGlow.x = 164;
         this.m_doorLeftGlow.y = 230;
         this.m_doorRightGlow.x = 349;
         this.m_doorRightGlow.y = 230;
         this.m_doorLeftGlow_mask.x = 155;
         this.m_doorLeftGlow_mask.y = 646;
         this.m_doorRightGlow_mask.x = 155;
         this.m_doorRightGlow_mask.y = 646;
         this.m_doorOuterGlow_mask.x = 154;
         this.m_doorOuterGlow_mask.y = 107;
         this.m_muteSoundButton.alpha = 0;
         this.m_muteMusicButton.alpha = 0;
         var _loc1_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         _loc1_.allowCodeImport = true;
         this.m_sponsorFacebook = new Loader();
         this.m_sponsorFacebook.loadBytes(new FacebookSwf(),_loc1_);
         addChild(this.m_sponsorFacebook);
         this.m_sponsorFacebook.x = 590;
         this.m_sponsorFacebook.y = 475;
         this.m_sponsorFacebook.alpha = 0;
         var _loc2_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         _loc2_.allowCodeImport = true;
         this.m_sponsorTwitter = new Loader();
         this.m_sponsorTwitter.loadBytes(new TwitterSwf(),_loc2_);
         addChild(this.m_sponsorTwitter);
         this.m_sponsorTwitter.x = 639;
         this.m_sponsorTwitter.y = 473;
         this.m_sponsorTwitter.alpha = 0;
         this.m_currState = MainMenuStates.MAIN_MENU_BRINGING_IN;
         Singleton.utility.m_soundController.ChangeMusicTrack(BackgroundMusicTracks.MUSIC_TITLE);
         Singleton.utility.m_soundController.FadeCurrentMusic(1,3);
      }
      
      override public function FinishActivate() : void
      {
         super.FinishActivate();
         this.TurnOffAllTheAlphasBeforeAnimation();
         this.StartBringInAnimation_Part1();
      }
      
      override public function DeActivate() : void
      {
         super.DeActivate();
         removeChild(this.m_sponsorTwitter);
         this.m_sponsorTwitter.unloadAndStop();
         removeChild(this.m_sponsorFacebook);
         this.m_sponsorFacebook.unloadAndStop();
      }
      
      private function TurnOffAllTheAlphasBeforeAnimation() : void
      {
         this.m_titleIcon.alpha = 0;
         this.m_blackOverlayForButtons.alpha = 0;
         this.m_playButton.alpha = 0;
         this.m_creditsButton.alpha = 0;
         this.m_sponsorButton.alpha = 0;
         this.m_tcGamesButton.alpha = 0;
         this.m_hostGamesButton.alpha = 0;
         this.m_fullBlackOverlay.alpha = 0;
         this.m_skipIntroButton.alpha = 0;
         this.m_sponsorTwitter.alpha = 0;
         this.m_sponsorFacebook.alpha = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_saveSlots.length)
         {
            this.m_saveSlots[_loc1_].alpha = 0;
            _loc1_++;
         }
      }
      
      private function StartBringInAnimation_Part1() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_fullBlackOverlay,0.5,{"onComplete":this.StartTheBackgroundMovement}));
         _loc1_.append(new TweenLite(this.m_fullBlackOverlay,1.5,{"alpha":0}));
         _loc1_ = new TimelineLite();
         _loc1_.append(new TweenLite(this,1.9,{"onComplete":this.StartBringInAnimation_Part2}));
      }
      
      private function StartTheBackgroundMovement() : void
      {
         this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
      }
      
      private function StartBringInAnimation_Part2() : void
      {
         this.m_titleIcon.alpha = 0;
         this.m_titleIcon.y -= 50;
         this.m_blackOverlayForButtons.alpha = 0;
         this.m_blackOverlayForButtons.scaleY = 0.9;
         this.m_playButton.alpha = 0;
         this.m_creditsButton.alpha = 0;
         this.m_creditsButton.y += 50;
         this.m_sponsorButton.alpha = 0;
         this.m_tcGamesButton.alpha = 0;
         this.m_hostGamesButton.alpha = 0;
         this.m_fullBlackOverlay.alpha = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_saveSlots.length)
         {
            this.m_saveSlots[_loc2_].alpha = 0;
            _loc2_++;
         }
         var _loc3_:TimelineLite = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_blackOverlayForButtons,1,{}));
         _loc3_.append(new TweenLite(this.m_blackOverlayForButtons,1,{"transformAroundCenter":{
            "alpha":1,
            "scaleY":1
         }}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_playButton,1.8,{}));
         _loc3_.append(new TweenLite(this.m_playButton,0.5,{"alpha":1}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_sponsorTwitter,2.7,{}));
         _loc3_.append(new TweenLite(this.m_sponsorTwitter,0.8,{"alpha":1}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_sponsorFacebook,2.7,{}));
         _loc3_.append(new TweenLite(this.m_sponsorFacebook,0.8,{"alpha":1}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_titleIcon,2.7,{}));
         _loc3_.append(new TweenLite(this.m_titleIcon,0.8,{
            "alpha":1,
            "y":"" + 50
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_creditsButton,2.7,{}));
         _loc3_.append(new TweenLite(this.m_creditsButton,0.8,{
            "alpha":1,
            "y":"-" + 50
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_sponsorButton,2.7,{}));
         _loc3_.append(new TweenLite(this.m_sponsorButton,0.8,{"alpha":1}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_hostGamesButton,2.7,{}));
         _loc3_.append(new TweenLite(this.m_hostGamesButton,0.8,{"alpha":1}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_tcGamesButton,2.7,{}));
         _loc3_.append(new TweenLite(this.m_tcGamesButton,0.8,{
            "alpha":1,
            "onComplete":this.FinishBringInAnimation
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_muteMusicButton,2.7,{}));
         _loc3_.append(new TweenLite(this.m_muteMusicButton,0.8,{"alpha":1}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_muteSoundButton,2.7,{}));
         _loc3_.append(new TweenLite(this.m_muteSoundButton,0.8,{"alpha":1}));
      }
      
      private function FinishBringInAnimation() : void
      {
         this.m_currState = MainMenuStates.MAIN_MENU_TITLE_SCREEN;
      }
      
      private function SkipButtonPressed(param1:MouseEvent) : void
      {
         TweenLite.killTweensOf(this);
         Singleton.dynamicData.LoadData(Singleton.dynamicData.m_saveSlot);
         this.AddInitialMinions();
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN,true,0.5);
         Singleton.utility.m_soundController.FadeCurrentMusic(0.1,0.8);
      }
      
      private function CheckToActivateSkipButton(param1:MouseEvent) : void
      {
         TweenLite.to(this.m_skipIntroButton,0.5,{"alpha":1});
      }
      
      private function PlayButtonPressed(param1:MouseEvent) : void
      {
         TweenLite.to(this.m_playButton,0.7,{
            "y":"-90",
            "alpha":0
         });
         var _loc2_:int = 0;
         while(_loc2_ < this.m_saveSlots.length)
         {
            this.m_saveSlots[_loc2_].BringIn();
            this.m_saveSlots[_loc2_].y = 341 - 7;
            TweenLite.to(this.m_saveSlots[_loc2_],0.6,{
               "delay":0.3 * _loc2_,
               "y":188 + 67 * _loc2_,
               "alpha":1
            });
            _loc2_++;
         }
      }
      
      private function CreditsButtonPressed(param1:MouseEvent) : void
      {
         this.m_currState = MainMenuStates.MAIN_MENU_CREDITS;
         this.m_creditsScreen.BringIn();
         TweenLite.to(this.m_creditsButton,0.5,{"y":"80"});
         TweenLite.to(this.m_sponsorTwitter,0.5,{
            "alpha":0,
            "y":"50"
         });
         TweenLite.to(this.m_sponsorFacebook,0.5,{
            "alpha":0,
            "y":"50"
         });
         TweenLite.to(this.m_hostGamesButton,0.5,{
            "alpha":0,
            "y":"50"
         });
      }
      
      public function BringBackInCreditsButton() : void
      {
         TweenLite.to(this.m_creditsButton,0.7,{"y":"-80"});
         TweenLite.to(this.m_sponsorTwitter,0.5,{
            "alpha":1,
            "y":"-50"
         });
         TweenLite.to(this.m_sponsorFacebook,0.5,{
            "alpha":1,
            "y":"-50"
         });
         TweenLite.to(this.m_hostGamesButton,0.5,{
            "alpha":1,
            "y":"-50"
         });
      }
      
      private function SponsorButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:StaticData = Singleton.staticData;
         var _loc3_:String = _loc2_.m_sponsorURL_part1 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5;
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         navigateToURL(_loc4_);
      }
      
      private function HostGamesButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://sogood.com/gamesforsite.php");
         navigateToURL(_loc2_);
      }
      
      private function TCGamesButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://www.facebook.com/ToyChestGames");
         navigateToURL(_loc2_);
      }
      
      private function AddAnimationShakeToObject(param1:Sprite) : void
      {
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(param1,0.7,{}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"18"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-18"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"18"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-18"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"12"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-12"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"8"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-8"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"5"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-5"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"4"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-4"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"3"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-3"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"2"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-2"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"1"}));
         _loc2_.append(new TweenLite(param1,0.1,{"x":"-1"}));
      }
      
      public function StartTheEnterGameForTheFirstTimeAnimaiton() : void
      {
         var _loc3_:TimelineLite = null;
         Singleton.utility.m_stage.addEventListener(MouseEvent.CLICK,this.CheckToActivateSkipButton);
         Singleton.utility.m_soundController.FadeCurrentMusic(0,1.5);
         this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_muteMusicButton,0.5,{"alpha":0}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_muteSoundButton,0.5,{"alpha":0}));
         TweenLite.to(this.m_fullBlackOverlay,0.5,{"alpha":0});
         TweenLite.to(this.m_blackOverlayForButtons,0.5,{"alpha":0});
         TweenLite.to(this.m_charCreationPopup,0.5,{"alpha":0});
         TweenLite.to(this.m_titleIcon,0.5,{"alpha":0});
         this.m_charCreationPopup.ExitOut();
         this.m_doorOuterGlow_mask.visible = true;
         this.m_doorOuterGlow.visible = true;
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorOuterGlow_mask,0.7 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorOuterGlow_mask,10,{"y":524}));
         this.AddAnimationShakeToObject(this.m_doorLeft);
         this.AddAnimationShakeToObject(this.m_doorRight);
         this.AddAnimationShakeToObject(this.m_menuBackground);
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorLeftGlow_mask,1.2 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorLeftGlow_mask,4.5,{"y":261}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorRightGlow_mask,1.2 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorRightGlow_mask,4.5,{"y":261}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorRightGlow,5.9 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorRightGlow,0.3,{"alpha":1}));
         _loc3_.append(new TweenLite(this.m_doorRightGlow,1,{}));
         _loc3_.append(new TweenLite(this.m_doorRightGlow,6.3,{
            "x":"188",
            "alpha":0.4
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorLeftGlow,5.9 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorLeftGlow,0.3,{"alpha":1}));
         _loc3_.append(new TweenLite(this.m_doorLeftGlow,1,{}));
         _loc3_.append(new TweenLite(this.m_doorLeftGlow,6.3,{
            "x":"-188",
            "alpha":0.4
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorOuterGlow,5.9 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorOuterGlow,2.8,{"alpha":0}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorRight,7.2 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorRight,6.3,{"x":"188"}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_doorLeft,7.2 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_doorLeft,6.3,{"x":"-188"}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,7.2 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"3"}));
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"-3"}));
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"2"}));
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"-2"}));
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"1"}));
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"-1"}));
         var _loc4_:int = 0;
         while(_loc4_ < 16)
         {
            _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.15,{"x":"1"}));
            _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.15,{"x":"-1"}));
            _loc4_++;
         }
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{}));
         _loc3_.append(new TweenLite(this.m_backgroundForZoom,30.2,{
            "scaleX":2,
            "scaleY":2,
            "x":-348,
            "y":-490
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this.m_fullBlackOverlay,14 + 2.2,{}));
         _loc3_.append(new TweenLite(this.m_fullBlackOverlay,4,{"alpha":1}));
         _loc3_.append(new TweenLite(this.m_fullBlackOverlay,0.5,{"onComplete":this.KillExtraTweens}));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this,15 + 2.2,{}));
         _loc3_.append(new TweenLite(this,9.8,{
            "onComplete":this.FadeOutTextSet,
            "onCompleteParams":[this.m_textSet1]
         }));
         _loc3_.append(new TweenLite(this,3.9,{
            "onComplete":this.FadeOutTextSet,
            "onCompleteParams":[this.m_textSet2]
         }));
         _loc3_.append(new TweenLite(this,3.9,{
            "onComplete":this.FadeOutTextSet,
            "onCompleteParams":[this.m_textSet3]
         }));
         _loc3_.append(new TweenLite(this,3.9,{
            "onComplete":this.FadeOutTextSet,
            "onCompleteParams":[this.m_textSet4]
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this,15 + 2.2,{}));
         _loc3_.append(new TweenLite(this,2.3,{
            "onComplete":this.FadeInTextSet,
            "onCompleteParams":[this.m_textSet1]
         }));
         _loc3_.append(new TweenLite(this,3.6,{
            "onComplete":this.FadeInTextSet,
            "onCompleteParams":[this.m_textSet2]
         }));
         _loc3_.append(new TweenLite(this,3.6,{
            "onComplete":this.FadeInTextSet,
            "onCompleteParams":[this.m_textSet3]
         }));
         _loc3_.append(new TweenLite(this,3.6,{
            "onComplete":this.FadeInTextSet,
            "onCompleteParams":[this.m_textSet4]
         }));
         _loc3_.append(new TweenLite(this,10.05,{
            "onComplete":Singleton.dynamicData.LoadData,
            "onCompleteParams":[Singleton.dynamicData.m_saveSlot]
         }));
         _loc3_.append(new TweenLite(this,0.05,{"onComplete":this.AddInitialMinions}));
         _loc3_.append(new TweenLite(this,0.8,{
            "onComplete":Singleton.utility.m_screenControllers.SetSceneTo,
            "onCompleteParams":[GameState.TOP_DOWN_SCREEN,true,0.5]
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this,13 + 2.2,{
            "onComplete":Singleton.utility.m_soundController.FadeCurrentMusic,
            "onCompleteParams":[0.7,4]
         }));
         _loc3_.append(new TweenLite(this,19.5 + 2.2,{
            "onComplete":Singleton.utility.m_soundController.FadeCurrentMusic,
            "onCompleteParams":[0,4]
         }));
         Singleton.utility.m_soundController.FadeCurrentMusic(0.2,2);
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this,0.3,{}));
         _loc3_.append(new TweenLite(this,2.2,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["doorEntryHum",0.35]
         }));
         var _loc7_:int = 0;
         while(_loc7_ < 5)
         {
            _loc3_.append(new TweenLite(this,1.15,{
               "onComplete":Singleton.utility.m_soundController.PlaySound,
               "onCompleteParams":["doorEntryHum",0.35]
            }));
            _loc7_++;
         }
         _loc3_.append(new TweenLite(this,1.15,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["doorEntryHum_fadeout",0.35]
         }));
         _loc3_ = new TimelineLite();
         _loc3_.append(new TweenLite(this,0.2,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_earthquake2"]
         }));
         _loc3_.append(new TweenLite(this,2.2,{}));
         _loc3_.append(new TweenLite(this,5.7,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_whoosh_magic2"]
         }));
         _loc3_.append(new TweenLite(this,1,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_earthquake2",0.5]
         }));
         _loc3_.append(new TweenLite(this,0.45,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_earthquake2",0.4]
         }));
         _loc3_.append(new TweenLite(this,0.55,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_earthquake2",0.4]
         }));
         _loc3_.append(new TweenLite(this,0.65,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_earthquake2",0.4]
         }));
      }
      
      private function AddInitialMinions() : void
      {
         Singleton.utility.m_stage.removeEventListener(MouseEvent.CLICK,this.CheckToActivateSkipButton);
         this.m_skipIntroButton.alpha = 0;
         var _loc1_:OwnedMinion = new OwnedMinion(MinionDexID.DEX_ID_Tiger_1);
         Singleton.dynamicData.AddToOwnedMinions(_loc1_);
         _loc1_.SetLevel(5);
         _loc1_.m_currentExp += 300;
         _loc1_.CalculateCurrStats();
         _loc1_.ReFillHealthAndEnergy();
         _loc1_ = new OwnedMinion(MinionDexID.DEX_ID_fire_pig_1);
         Singleton.dynamicData.AddToOwnedMinions(_loc1_);
         _loc1_.SetLevel(4);
         _loc1_.m_currentExp += 350;
         _loc1_.CalculateCurrStats();
         _loc1_.ReFillHealthAndEnergy();
         Singleton.dynamicData.SetHasUnlockedFloor(0,true);
         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_FOCUS_TARGETS,true);
         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_DONT_HAVE_TO_BEAT_HARD_AND_EXPERT_TRAINERS,true);
         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_TANKS,true);
         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_HEALERS,true);
      }
      
      private function KillExtraTweens() : void
      {
         TweenLite.killTweensOf(this.m_backgroundForZoom);
      }
      
      private function FadeOutTextSet(param1:Vector.<TextField>) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc7_:TimelineLite = null;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            (_loc7_ = new TimelineLite()).append(new TweenLite(param1[_loc6_],3.7,{"transformAroundCenter":{
               "scaleY":0.85,
               "alpha":0,
               "y":"-3"
            }}));
            _loc6_++;
         }
      }
      
      private function FadeInTextSet(param1:Vector.<TextField>) : void
      {
         var _loc3_:TimelineLite = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_].scaleY = 0.85;
            param1[_loc2_].x += 10 + _loc2_ * 5;
            _loc3_ = new TimelineLite();
            _loc3_.append(new TweenLite(param1[_loc2_],_loc2_ * 0.07,{}));
            _loc3_.append(new TweenLite(param1[_loc2_],1.2,{"transformAroundCenter":{
               "scaleY":1,
               "alpha":1,
               "x":"-" + (10 + _loc2_ * 5)
            }}));
            _loc2_++;
         }
      }
      
      public function AnimateInTheCharSelectionScreen() : void
      {
         TweenLite.to(this.m_fullBlackOverlay,0.5,{"alpha":0.3});
         var _loc1_:int = 0;
         while(_loc1_ < this.m_saveSlots.length)
         {
            TweenLite.to(this.m_saveSlots[_loc1_],0.5,{
               "delay":0.1,
               "alpha":0
            });
            _loc1_++;
         }
         TweenLite.to(this.m_creditsButton,0.5,{"alpha":0});
         TweenLite.to(this.m_sponsorButton,0.5,{
            "delay":0.2,
            "alpha":0
         });
         TweenLite.to(this.m_tcGamesButton,0.5,{
            "delay":0.2,
            "alpha":0
         });
         TweenLite.to(this.m_titleIcon,0.5,{"alpha":0});
         TweenLite.to(this.m_blackOverlayForButtons,1.2,{"transformAroundCenter":{"scaleY":1.4}});
         TweenLite.to(this.m_sponsorTwitter,0.5,{
            "alpha":0,
            "y":"50"
         });
         TweenLite.to(this.m_sponsorFacebook,0.5,{
            "alpha":0,
            "y":"50"
         });
         TweenLite.to(this.m_creditsButton,0.5,{"alpha":0});
         TweenLite.to(this.m_hostGamesButton,0.5,{
            "alpha":0,
            "y":"50"
         });
         this.m_charCreationPopup.visible = true;
         this.m_charCreationPopup.alpha = 0;
         TweenLite.to(this.m_charCreationPopup,0.9,{
            "delay":0.5,
            "alpha":1
         });
         this.m_currState = MainMenuStates.MAIN_MENU_CHAR_CREATION;
         this.m_charCreationPopup.BringIn();
      }
      
      public function AnimateOutTheCharSelectionScreen() : void
      {
         TweenLite.to(this.m_fullBlackOverlay,0.5,{"alpha":0});
         var _loc1_:int = 0;
         while(_loc1_ < this.m_saveSlots.length)
         {
            TweenLite.to(this.m_saveSlots[_loc1_],0.5,{"alpha":1});
            _loc1_++;
         }
         TweenLite.to(this.m_creditsButton,0.5,{"alpha":1});
         TweenLite.to(this.m_hostGamesButton,0.5,{
            "alpha":1,
            "y":"-50"
         });
         TweenLite.to(this.m_sponsorButton,0.5,{"alpha":1});
         TweenLite.to(this.m_tcGamesButton,0.5,{"alpha":1});
         TweenLite.to(this.m_sponsorTwitter,0.5,{
            "alpha":1,
            "y":"-50"
         });
         TweenLite.to(this.m_sponsorFacebook,0.5,{
            "alpha":1,
            "y":"-50"
         });
         TweenLite.to(this.m_titleIcon,0.5,{"alpha":1});
         TweenLite.to(this.m_blackOverlayForButtons,1.2,{"transformAroundCenter":{"scaleY":1}});
         TweenLite.to(this.m_charCreationPopup,0.5,{
            "alpha":0,
            "onComplete":this.FinishAnimateOutTheCharSelectionScreen
         });
         this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
         this.m_charCreationPopup.ExitOut();
      }
      
      private function FinishAnimateOutTheCharSelectionScreen() : void
      {
         this.m_currState = MainMenuStates.MAIN_MENU_TITLE_SCREEN;
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:int = 0;
         super.UpdateFullFrames();
         if(this.m_menuBackground.y > -448 && this.m_currState != MainMenuStates.MAIN_MENU_BRINGING_IN)
         {
            this.m_menuBackground.y -= 1.5;
            this.m_doorLeft.y -= 1.5;
            this.m_doorRight.y -= 1.5;
            if(this.m_playButton.alpha == 1)
            {
               this.m_playButton.m_isActive = true;
            }
         }
         if(this.m_currState != MainMenuStates.MAIN_MENU_ANIMATING)
         {
            this.m_muteMusicButton.Update();
            this.m_muteSoundButton.Update();
         }
         if(this.m_currState == MainMenuStates.MAIN_MENU_TITLE_SCREEN)
         {
            _loc1_ = 0;
            while(_loc1_ < this.m_saveSlots.length)
            {
               if(this.m_saveSlots[_loc1_].m_conformationBox.m_isOpen)
               {
                  return;
               }
               _loc1_++;
            }
            if(this.m_playButton.alpha == 1)
            {
               this.m_playButton.m_isActive = true;
            }
            _loc1_ = 0;
            while(_loc1_ < this.m_saveSlots.length)
            {
               if(this.m_saveSlots[_loc1_].alpha == 1)
               {
                  this.m_saveSlots[_loc1_].Update();
               }
               _loc1_++;
            }
            this.m_creditsButton.m_isActive = true;
            this.m_sponsorButton.m_isActive = true;
            this.m_tcGamesButton.m_isActive = true;
            this.m_hostGamesButton.m_isActive = true;
         }
         else if(this.m_currState == MainMenuStates.MAIN_MENU_CREDITS)
         {
            this.m_creditsScreen.Update();
         }
         else if(this.m_currState == MainMenuStates.MAIN_MENU_CHAR_CREATION)
         {
            this.m_charCreationPopup.Update();
         }
         if(this.m_skipIntroButton.alpha == 1)
         {
            this.m_skipIntroButton.m_isActive = true;
         }
      }
   }
}
