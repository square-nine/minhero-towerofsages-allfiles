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
      
      private static var FacebookSwf:Class;
      
      private static var TwitterSwf:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            FacebookSwf = MainMenuScreen_FacebookSwf;
            if(_loc2_ || MainMenuScreen)
            {
               TwitterSwf = MainMenuScreen_TwitterSwf;
            }
         }
      }
      
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || _loc1_)
         {
            super.LoadSprites();
            if(!_loc10_)
            {
               this.m_backgroundForZoom = new Sprite();
               if(_loc9_ || _loc1_)
               {
                  addr35:
                  addChild(this.m_backgroundForZoom);
               }
               var _loc1_:Sprite = this.m_backgroundForZoom;
               this.m_doorLeft = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorLeft");
               this.m_doorLeft.x = 164;
               this.m_doorLeft.y = 229 + 379;
               if(_loc9_ || Boolean(_loc1_))
               {
                  _loc1_.addChild(this.m_doorLeft);
                  this.m_doorRight = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorRight");
                  this.m_doorRight.x = 349;
                  if(!_loc10_)
                  {
                     this.m_doorRight.y = 229 + 379;
                     _loc1_.addChild(this.m_doorRight);
                     this.m_doorLeftGlow = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorLeft_glow");
                     this.m_doorLeftGlow.x = 164;
                     if(!(_loc10_ && Boolean(_loc1_)))
                     {
                        this.m_doorLeftGlow.y = 230;
                        _loc1_.addChild(this.m_doorLeftGlow);
                        this.m_doorLeftGlow.cacheAsBitmap = true;
                        this.m_doorLeftGlow.alpha = 0.5;
                        if(!_loc10_)
                        {
                           this.m_doorRightGlow = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorRight_glow");
                           this.m_doorRightGlow.x = 349;
                           this.m_doorRightGlow.y = 230;
                           addr145:
                           this.m_doorRightGlow.cacheAsBitmap = true;
                        }
                        _loc1_.addChild(this.m_doorRightGlow);
                        if(!_loc10_)
                        {
                           this.m_doorRightGlow.alpha = 0.5;
                           if(!(_loc10_ && Boolean(_loc1_)))
                           {
                              this.m_doorLeftGlow_mask = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_doorAnimationMask1");
                              this.m_doorLeftGlow_mask.x = 155;
                              this.m_doorLeftGlow_mask.y = 646;
                              if(!_loc10_)
                              {
                                 _loc1_.addChild(this.m_doorLeftGlow_mask);
                                 if(!_loc10_)
                                 {
                                    this.m_doorLeftGlow_mask.cacheAsBitmap = true;
                                    if(_loc9_ || Boolean(this))
                                    {
                                       addr200:
                                       this.m_doorLeftGlow_mask.graphics.beginFill(5592405);
                                       this.m_doorLeftGlow_mask.graphics.drawRect(0,-322,399,325);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          this.m_doorLeftGlow_mask.graphics.endFill();
                                          this.m_doorLeftGlow_mask.scaleY = -1;
                                          this.m_doorLeftGlow.mask = this.m_doorLeftGlow_mask;
                                          if(_loc9_ || Boolean(_loc1_))
                                          {
                                             this.m_doorRightGlow_mask = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_doorAnimationMask1");
                                             if(_loc9_ || _loc3_)
                                             {
                                                this.m_doorRightGlow_mask.x = 155;
                                                if(!_loc10_)
                                                {
                                                   this.m_doorRightGlow_mask.y = 646;
                                                   _loc1_.addChild(this.m_doorRightGlow_mask);
                                                   this.m_doorRightGlow_mask.cacheAsBitmap = true;
                                                   this.m_doorRightGlow_mask.graphics.beginFill(5592405);
                                                   if(!(_loc10_ && Boolean(_loc1_)))
                                                   {
                                                      this.m_doorRightGlow_mask.graphics.drawRect(0,-322,399,325);
                                                      this.m_doorRightGlow_mask.graphics.endFill();
                                                      this.m_doorRightGlow_mask.scaleY = -1;
                                                      if(!_loc10_)
                                                      {
                                                         this.m_doorRightGlow.mask = this.m_doorRightGlow_mask;
                                                         this.m_menuBackground = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_background");
                                                         this.m_menuBackground.x = -30;
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            this.m_menuBackground.y = -70;
                                                            if(_loc9_ || Boolean(this))
                                                            {
                                                               _loc1_.addChild(this.m_menuBackground);
                                                               this.m_doorOuterGlow = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleScreen_doorCracksGlow");
                                                               this.m_doorOuterGlow.x = 155;
                                                               this.m_doorOuterGlow.y = 222;
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  addChild(this.m_doorOuterGlow);
                                                                  if(!_loc10_)
                                                                  {
                                                                     this.m_doorOuterGlow.cacheAsBitmap = true;
                                                                     if(!(_loc10_ && Boolean(this)))
                                                                     {
                                                                        this.m_doorOuterGlow_mask = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_doorAnimationMask1");
                                                                        if(_loc9_)
                                                                        {
                                                                           this.m_doorOuterGlow_mask.x = 154;
                                                                           if(!(_loc10_ && Boolean(_loc1_)))
                                                                           {
                                                                              addr399:
                                                                              this.m_doorOuterGlow_mask.y = 107;
                                                                              addChild(this.m_doorOuterGlow_mask);
                                                                              addr407:
                                                                              this.m_doorOuterGlow_mask.cacheAsBitmap = true;
                                                                              this.m_doorOuterGlow_mask.graphics.beginFill(5592405);
                                                                              this.m_doorOuterGlow_mask.graphics.drawRect(0,-322,399,325);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 this.m_doorOuterGlow_mask.graphics.endFill();
                                                                                 addr435:
                                                                                 this.m_doorOuterGlow.mask = this.m_doorOuterGlow_mask;
                                                                                 this.m_titleIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_titleLogo");
                                                                                 this.m_titleIcon.x = 185;
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    this.m_titleIcon.y = 0;
                                                                                    if(!(_loc10_ && Boolean(this)))
                                                                                    {
                                                                                       addChild(this.m_titleIcon);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr470:
                                                                                          this.m_blackOverlayForButtons = new Sprite();
                                                                                          this.m_blackOverlayForButtons.x = 0;
                                                                                          addr478:
                                                                                          this.m_blackOverlayForButtons.y = 194;
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addChild(this.m_blackOverlayForButtons);
                                                                                             this.m_blackOverlayForButtons.graphics.beginFill(0,0.5);
                                                                                             addr494:
                                                                                             this.m_blackOverlayForButtons.graphics.drawRect(0,0,700,218);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr504:
                                                                                                this.m_blackOverlayForButtons.graphics.endFill();
                                                                                                this.m_playButton = new TCButton(this.PlayButtonPressed,"mainMenu_playButton");
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr517:
                                                                                                   §§push(this.m_playButton);
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(263);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         if(!(_loc10_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr540:
                                                                                                            this.m_playButton.y = 261;
                                                                                                            addChild(this.m_playButton);
                                                                                                            this.m_creditsButton = new TCButton(this.CreditsButtonPressed,"mainMenu_creditsButton");
                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                            {
                                                                                                               addr559:
                                                                                                               §§push(this.m_creditsButton);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(296);
                                                                                                                  if(!(_loc10_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr636:
                                                                                                                     addr639:
                                                                                                                     addr638:
                                                                                                                     if(_loc9_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr581:
                                                                                                                        §§push(this.m_creditsButton);
                                                                                                                        §§push(469);
                                                                                                                     }
                                                                                                                     this.m_tcGamesButton.y = 268;
                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                     {
                                                                                                                        addChild(this.m_tcGamesButton);
                                                                                                                     }
                                                                                                                     this.m_hostGamesButton = new TCButton(this.HostGamesButtonPressed,"mainMenu_hostGamesLogo");
                                                                                                                     §§push(this.m_hostGamesButton);
                                                                                                                     if(_loc9_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        §§push(15);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           addr673:
                                                                                                                           §§push(this.m_hostGamesButton);
                                                                                                                           §§push(491);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        if(!(_loc10_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr682:
                                                                                                                           addChild(this.m_hostGamesButton);
                                                                                                                           this.m_saveSlots = new Vector.<FileSelectIcon>(3);
                                                                                                                           addr693:
                                                                                                                           var _loc2_:int = 0;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_ < this.m_saveSlots.length)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(this.m_muteMusicButton);
                                                                                                                              if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 §§push(4);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    addr769:
                                                                                                                                    §§push(this.m_muteMusicButton);
                                                                                                                                    §§push(6);
                                                                                                                                 }
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addChild(this.m_muteMusicButton);
                                                                                                                                 }
                                                                                                                                 this.m_muteSoundButton = new ToggleButton(this.ToggleSoundMusic,"menu_muteSoundButton_on","menu_muteSoundButton_off");
                                                                                                                                 §§push(this.m_muteSoundButton);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(36);
                                                                                                                                    if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       addr800:
                                                                                                                                       §§push(this.m_muteSoundButton);
                                                                                                                                       §§push(5);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addChild(this.m_muteSoundButton);
                                                                                                                                    if(!(_loc10_ && Boolean(_loc1_)))
                                                                                                                                    {
                                                                                                                                       this.m_fullBlackOverlay = new Sprite();
                                                                                                                                    }
                                                                                                                                    addChild(this.m_fullBlackOverlay);
                                                                                                                                    if(_loc9_ || Boolean(_loc1_))
                                                                                                                                    {
                                                                                                                                       this.m_fullBlackOverlay.graphics.beginFill(0,1);
                                                                                                                                       this.m_fullBlackOverlay.graphics.drawRect(0,0,700,525);
                                                                                                                                       if(_loc9_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          addr856:
                                                                                                                                          this.m_fullBlackOverlay.graphics.endFill();
                                                                                                                                       }
                                                                                                                                       var _loc3_:TextFormat = new TextFormat();
                                                                                                                                       if(_loc9_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          _loc3_.color = 15066856;
                                                                                                                                          if(_loc9_ || Boolean(_loc1_))
                                                                                                                                          {
                                                                                                                                             _loc3_.size = 20;
                                                                                                                                             if(_loc9_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                addr891:
                                                                                                                                                _loc3_.font = "BurbinCasual";
                                                                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc3_.align = TextFormatAlign.CENTER;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc4_:int = 4;
                                                                                                                                          var _loc5_:int = -30;
                                                                                                                                          var _loc6_:int = 143;
                                                                                                                                          var _loc7_:Array = ["Thousands","apply","to","train","at","the","Tower","of","Sages."];
                                                                                                                                          if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                          {
                                                                                                                                             this.m_textSet1 = new Vector.<TextField>();
                                                                                                                                          }
                                                                                                                                          var _loc8_:* = 0;
                                                                                                                                          loop1:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             while(§§pop() < _loc7_.length)
                                                                                                                                             {
                                                                                                                                                this.m_textSet1[_loc8_] = new TextField();
                                                                                                                                                this.m_textSet1[_loc8_].embedFonts = true;
                                                                                                                                                if(!(_loc10_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   this.m_textSet1[_loc8_].defaultTextFormat = _loc3_;
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      this.m_textSet1[_loc8_].autoSize = TextFieldAutoSize.LEFT;
                                                                                                                                                      this.m_textSet1[_loc8_].text = _loc7_[_loc8_];
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr984:
                                                                                                                                                         this.m_textSet1[_loc8_].selectable = false;
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc10_ && Boolean(_loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() != 0)
                                                                                                                                                         {
                                                                                                                                                            this.m_textSet1[_loc8_].x = this.m_textSet1[_loc8_ - 1].textWidth + this.m_textSet1[_loc8_ - 1].x + _loc4_;
                                                                                                                                                            addr1034:
                                                                                                                                                            this.m_textSet1[_loc8_].y = 209 + _loc5_;
                                                                                                                                                            if(_loc10_ && Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            addr1049:
                                                                                                                                                            this.m_textSet1[_loc8_].alpha = 0;
                                                                                                                                                            if(_loc10_ && Boolean(_loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue loop1;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            this.m_textSet1[_loc8_].x = _loc6_;
                                                                                                                                                            if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1034);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addChild(this.m_textSet1[_loc8_]);
                                                                                                                                                      }
                                                                                                                                                      _loc8_++;
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1049);
                                                                                                                                                }
                                                                                                                                                §§goto(addr984);
                                                                                                                                             }
                                                                                                                                             _loc7_ = ["Only","a","few","are","ever","chosen."];
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                this.m_textSet2 = new Vector.<TextField>();
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      addr1215:
                                                                                                                                                      _loc8_++;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(§§pop() < _loc7_.length)
                                                                                                                                                {
                                                                                                                                                   this.m_textSet2[_loc8_] = new TextField();
                                                                                                                                                }
                                                                                                                                                _loc7_ = ["But","all","dream","of","training","Titans..."];
                                                                                                                                                if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                {
                                                                                                                                                   this.m_textSet3 = new Vector.<TextField>();
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc9_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                         }
                                                                                                                                                         addr1370:
                                                                                                                                                      }
                                                                                                                                                      loop6:
                                                                                                                                                      while(§§pop() < _loc7_.length)
                                                                                                                                                      {
                                                                                                                                                         this.m_textSet3[_loc8_] = new TextField();
                                                                                                                                                         if(_loc9_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            this.m_textSet3[_loc8_].embedFonts = true;
                                                                                                                                                            this.m_textSet3[_loc8_].defaultTextFormat = _loc3_;
                                                                                                                                                            this.m_textSet3[_loc8_].autoSize = TextFieldAutoSize.LEFT;
                                                                                                                                                            this.m_textSet3[_loc8_].text = _loc7_[_loc8_];
                                                                                                                                                            this.m_textSet3[_loc8_].selectable = false;
                                                                                                                                                            if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc10_ && Boolean(_loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop() != 0)
                                                                                                                                                                  {
                                                                                                                                                                     this.m_textSet3[_loc8_].x = this.m_textSet3[_loc8_ - 1].textWidth + this.m_textSet3[_loc8_ - 1].x + _loc4_;
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1340:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr1340:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     this.m_textSet3[_loc8_].x = _loc6_;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.m_textSet3[_loc8_].y = 269 + _loc5_;
                                                                                                                                                                     this.m_textSet3[_loc8_].alpha = 0;
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop6;
                                                                                                                                                                     }
                                                                                                                                                                     addChild(this.m_textSet3[_loc8_]);
                                                                                                                                                                     _loc8_++;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1308:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1340);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1370);
                                                                                                                                                      }
                                                                                                                                                      _loc7_ = ["This","is","the","story","of","one","who","was","chosen."];
                                                                                                                                                      this.m_textSet4 = new Vector.<TextField>();
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            loop7:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < _loc7_.length)
                                                                                                                                                                  {
                                                                                                                                                                     this.m_textSet4[_loc8_] = new TextField();
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        this.m_textSet4[_loc8_].embedFonts = true;
                                                                                                                                                                        this.m_textSet4[_loc8_].defaultTextFormat = _loc3_;
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           this.m_textSet4[_loc8_].autoSize = TextFieldAutoSize.LEFT;
                                                                                                                                                                           this.m_textSet4[_loc8_].text = _loc7_[_loc8_];
                                                                                                                                                                           this.m_textSet4[_loc8_].selectable = false;
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(_loc10_ && Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != 0)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.m_textSet4[_loc8_].x = this.m_textSet4[_loc8_ - 1].textWidth + this.m_textSet4[_loc8_ - 1].x + _loc4_;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1494:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.m_textSet4[_loc8_].y = 299 + _loc5_;
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.m_textSet4[_loc8_].alpha = 0;
                                                                                                                                                                                                if(!(_loc9_ || Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                addChild(this.m_textSet4[_loc8_]);
                                                                                                                                                                                                if(!(_loc9_ || Boolean(_loc3_)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop12;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop7;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1636:
                                                                                                                                                                                             this.m_skipIntroButton.y = 489;
                                                                                                                                                                                             addr1637:
                                                                                                                                                                                             addChild(this.m_skipIntroButton);
                                                                                                                                                                                             return;
                                                                                                                                                                                             addr1504:
                                                                                                                                                                                             addr1633:
                                                                                                                                                                                             addr1635:
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1585);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1480:
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              this.m_textSet4[_loc8_].x = _loc6_;
                                                                                                                                                                              if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1494);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1504);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1560);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1637);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  this.m_charCreationPopup = new CharCreationPopup();
                                                                                                                                                                  if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.m_charCreationPopup);
                                                                                                                                                                     if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().LoadSprites();
                                                                                                                                                                        §§push(this.m_charCreationPopup);
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1560:
                                                                                                                                                                           §§push(108);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              addr1566:
                                                                                                                                                                              §§push(this.m_charCreationPopup);
                                                                                                                                                                              §§push(139);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           addChild(this.m_charCreationPopup);
                                                                                                                                                                           this.m_creditsScreen = new CreditsScreen();
                                                                                                                                                                           §§push(this.m_creditsScreen);
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().LoadSprites();
                                                                                                                                                                              addChild(this.m_creditsScreen);
                                                                                                                                                                              addr1585:
                                                                                                                                                                              §§push(this.m_creditsScreen);
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1589:
                                                                                                                                                                                 §§push(16);
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    addr1595:
                                                                                                                                                                                    §§push(this.m_creditsScreen);
                                                                                                                                                                                    §§push(16);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().y = §§pop() - 50;
                                                                                                                                                                                 this.m_skipIntroButton = new TCButton(this.SkipButtonPressed,"menu_skipIntroButton");
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1595);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1589);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1566);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1560);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1585);
                                                                                                                                                                  §§goto(addr1560);
                                                                                                                                                               }
                                                                                                                                                               §§push(this.m_skipIntroButton);
                                                                                                                                                               if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(625);
                                                                                                                                                                  if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1633);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1637);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1636);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1635);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1480);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1451);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1308);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1340);
                                                                                                                                                addr1217:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.m_textSet2[_loc8_].embedFonts = true;
                                                                                                                                                this.m_textSet2[_loc8_].defaultTextFormat = _loc3_;
                                                                                                                                                this.m_textSet2[_loc8_].autoSize = TextFieldAutoSize.LEFT;
                                                                                                                                                this.m_textSet2[_loc8_].text = _loc7_[_loc8_];
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   this.m_textSet2[_loc8_].selectable = false;
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != 0)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               this.m_textSet2[_loc8_].x = this.m_textSet2[_loc8_ - 1].textWidth + this.m_textSet2[_loc8_ - 1].x + _loc4_;
                                                                                                                                                               addr1195:
                                                                                                                                                               this.m_textSet2[_loc8_].y = 239 + _loc5_;
                                                                                                                                                            }
                                                                                                                                                            this.m_textSet2[_loc8_].alpha = 0;
                                                                                                                                                            addChild(this.m_textSet2[_loc8_]);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            this.m_textSet2[_loc8_].x = _loc6_;
                                                                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1195);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1215);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1217);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1215);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr891);
                                                                                                                                    }
                                                                                                                                    §§goto(addr856);
                                                                                                                                 }
                                                                                                                                 §§goto(addr800);
                                                                                                                              }
                                                                                                                              §§goto(addr769);
                                                                                                                           }
                                                                                                                           this.m_muteMusicButton = new ToggleButton(this.ToggleMuteMusic,"menu_muteMusicButton_on","menu_muteMusicButton_off");
                                                                                                                           §§goto(addr754);
                                                                                                                        }
                                                                                                                        §§goto(addr693);
                                                                                                                     }
                                                                                                                     §§goto(addr673);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addChild(this.m_creditsButton);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr589:
                                                                                                                     this.m_sponsorButton = new TCButton(this.SponsorButtonPressed,"mainMenu_titleScreen_sponsorLogo");
                                                                                                                     §§push(this.m_sponsorButton);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(27);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           addr606:
                                                                                                                           §§push(this.m_sponsorButton);
                                                                                                                           §§push(267);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addChild(this.m_sponsorButton);
                                                                                                                           addr614:
                                                                                                                           this.m_tcGamesButton = new TCButton(this.TCGamesButtonPressed,"mainMenu_titleScreen_ourLogo");
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr623:
                                                                                                                              §§push(this.m_tcGamesButton);
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(472);
                                                                                                                                 if(_loc9_ || Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    §§goto(addr636);
                                                                                                                                 }
                                                                                                                                 §§goto(addr639);
                                                                                                                              }
                                                                                                                              §§goto(addr638);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr636);
                                                                                                                     }
                                                                                                                     §§goto(addr606);
                                                                                                                  }
                                                                                                                  §§goto(addr673);
                                                                                                               }
                                                                                                               §§goto(addr581);
                                                                                                            }
                                                                                                            §§goto(addr673);
                                                                                                         }
                                                                                                         §§goto(addr581);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr540);
                                                                                                }
                                                                                                §§goto(addr614);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr589);
                                                                                       }
                                                                                       §§goto(addr494);
                                                                                    }
                                                                                    §§goto(addr673);
                                                                                 }
                                                                                 §§goto(addr623);
                                                                              }
                                                                           }
                                                                           §§goto(addr682);
                                                                        }
                                                                        §§goto(addr478);
                                                                     }
                                                                     §§goto(addr504);
                                                                  }
                                                                  §§goto(addr636);
                                                               }
                                                               §§goto(addr682);
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         §§goto(addr504);
                                                      }
                                                   }
                                                   §§goto(addr470);
                                                }
                                                §§goto(addr407);
                                             }
                                             §§goto(addr517);
                                          }
                                          §§goto(addr559);
                                       }
                                       §§goto(addr494);
                                    }
                                    §§goto(addr673);
                                 }
                              }
                              §§goto(addr399);
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr504);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr435);
               }
               §§goto(addr470);
            }
         }
         §§goto(addr35);
      }
      
      private function ToggleMuteMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
      
      public function FadeOutForReturnToGame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            TweenLite.to(this.m_fullBlackOverlay,1,{"alpha":1});
            if(!(_loc2_ && Boolean(this)))
            {
               TweenLite.to(this.m_sponsorTwitter,0.5,{
                  "alpha":0,
                  "y":"50"
               });
               §§goto(addr42);
            }
            §§goto(addr73);
         }
         addr42:
         if(!_loc2_)
         {
            TweenLite.to(this.m_sponsorFacebook,0.5,{
               "alpha":0,
               "y":"50"
            });
            if(!_loc2_)
            {
               addr73:
               this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
            }
         }
      }
      
      override public function StartActivate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super.StartActivate();
         if(!(_loc3_ && _loc3_))
         {
            Singleton.dynamicData.LoadInitialData();
            if(!(_loc3_ && Boolean(this)))
            {
               this.m_charCreationPopup.visible = false;
               if(!(_loc3_ && _loc2_))
               {
                  this.m_blackOverlayForButtons.x = 0;
                  if(_loc4_)
                  {
                     this.m_blackOverlayForButtons.y = 194;
                     §§push(this.m_playButton);
                     if(_loc4_)
                     {
                        §§push(263);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§pop().x = §§pop();
                           if(_loc4_)
                           {
                              addr72:
                              this.m_playButton.y = 261;
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(this.m_muteSoundButton);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§pop().m_isToggleOn = Singleton.dynamicData.m_isSoundOn;
                                    §§push(this.m_muteMusicButton);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§pop().m_isToggleOn = Singleton.dynamicData.m_isMusicOn;
                                       this.m_doorLeft.x = 164;
                                       if(_loc4_)
                                       {
                                          addr112:
                                          this.m_doorLeft.y = 229 + 379;
                                       }
                                       this.m_doorRight.x = 349;
                                       this.m_doorRight.y = 229 + 379;
                                       if(_loc4_)
                                       {
                                          this.m_menuBackground.x = -30;
                                          addr134:
                                          this.m_menuBackground.y = -70;
                                          this.m_backgroundForZoom.x = 0;
                                          if(!_loc3_)
                                          {
                                             this.m_backgroundForZoom.y = 0;
                                             this.m_backgroundForZoom.scaleX = 1;
                                             if(_loc4_)
                                             {
                                                this.m_backgroundForZoom.scaleY = 1;
                                                if(!_loc3_)
                                                {
                                                   this.m_doorLeftGlow.x = 164;
                                                   addr164:
                                                   this.m_doorLeftGlow.y = 230;
                                                   this.m_doorRightGlow.x = 349;
                                                   addr172:
                                                   this.m_doorRightGlow.y = 230;
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      this.m_doorLeftGlow_mask.x = 155;
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         addr201:
                                                         this.m_doorLeftGlow_mask.y = 646;
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            this.m_doorRightGlow_mask.x = 155;
                                                            this.m_doorRightGlow_mask.y = 646;
                                                            addr220:
                                                            this.m_doorOuterGlow_mask.x = 154;
                                                            addr224:
                                                            this.m_doorOuterGlow_mask.y = 107;
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               addr237:
                                                               this.m_muteSoundButton.alpha = 0;
                                                               addr235:
                                                               if(!_loc3_)
                                                               {
                                                                  addr243:
                                                                  this.m_muteMusicButton.alpha = 0;
                                                                  addr241:
                                                               }
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         var _loc1_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
                                                         _loc1_.allowCodeImport = true;
                                                         this.m_sponsorFacebook = new Loader();
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            this.m_sponsorFacebook.loadBytes(new FacebookSwf(),_loc1_);
                                                            addChild(this.m_sponsorFacebook);
                                                            this.m_sponsorFacebook.x = 590;
                                                            this.m_sponsorFacebook.y = 475;
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr291:
                                                               this.m_sponsorFacebook.alpha = 0;
                                                            }
                                                            var _loc2_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
                                                            if(_loc4_)
                                                            {
                                                               _loc2_.allowCodeImport = true;
                                                               if(!_loc3_)
                                                               {
                                                                  this.m_sponsorTwitter = new Loader();
                                                               }
                                                               this.m_sponsorTwitter.loadBytes(new TwitterSwf(),_loc2_);
                                                               if(_loc4_ || Boolean(_loc2_))
                                                               {
                                                                  addChild(this.m_sponsorTwitter);
                                                                  if(_loc4_ || Boolean(_loc2_))
                                                                  {
                                                                     this.m_sponsorTwitter.x = 639;
                                                                     this.m_sponsorTwitter.y = 473;
                                                                     addr345:
                                                                     this.m_sponsorTwitter.alpha = 0;
                                                                     this.m_currState = MainMenuStates.MAIN_MENU_BRINGING_IN;
                                                                  }
                                                                  §§push(Singleton.utility);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop().m_soundController);
                                                                     if(!(_loc3_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(BackgroundMusicTracks.MUSIC_TITLE);
                                                                        if(_loc4_ || Boolean(_loc2_))
                                                                        {
                                                                           §§pop().ChangeMusicTrack(§§pop());
                                                                           addr385:
                                                                           §§push(Singleton.utility.m_soundController);
                                                                           §§push(1);
                                                                        }
                                                                        §§pop().FadeCurrentMusic(§§pop(),3);
                                                                        return;
                                                                     }
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                            §§goto(addr385);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr172);
                        }
                     }
                     §§goto(addr72);
                  }
               }
               §§goto(addr134);
            }
            §§goto(addr220);
         }
         §§goto(addr164);
      }
      
      override public function FinishActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.FinishActivate();
            if(!(_loc1_ && _loc2_))
            {
               this.TurnOffAllTheAlphasBeforeAnimation();
               if(_loc2_)
               {
               }
               §§goto(addr43);
            }
            this.StartBringInAnimation_Part1();
         }
         addr43:
      }
      
      override public function DeActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.DeActivate();
            if(!(_loc2_ && Boolean(this)))
            {
               removeChild(this.m_sponsorTwitter);
               if(_loc1_ || _loc2_)
               {
                  this.m_sponsorTwitter.unloadAndStop();
                  addr47:
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr75);
            }
            addr64:
            removeChild(this.m_sponsorFacebook);
            if(_loc1_ || _loc1_)
            {
               addr75:
               this.m_sponsorFacebook.unloadAndStop();
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function TurnOffAllTheAlphasBeforeAnimation() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.m_titleIcon.alpha = 0;
            this.m_blackOverlayForButtons.alpha = 0;
            if(!(_loc2_ && _loc1_))
            {
               this.m_playButton.alpha = 0;
               if(_loc3_ || Boolean(this))
               {
                  addr47:
                  this.m_creditsButton.alpha = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.m_sponsorButton.alpha = 0;
                     §§goto(addr69);
                  }
                  §§goto(addr94);
               }
               addr69:
               this.m_tcGamesButton.alpha = 0;
               §§goto(addr73);
            }
            §§goto(addr47);
         }
         addr73:
         this.m_hostGamesButton.alpha = 0;
         this.m_fullBlackOverlay.alpha = 0;
         if(_loc3_)
         {
            this.m_skipIntroButton.alpha = 0;
            if(_loc3_ || _loc3_)
            {
               addr94:
               this.m_sponsorTwitter.alpha = 0;
            }
            this.m_sponsorFacebook.alpha = 0;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_saveSlots.length)
         {
            this.m_saveSlots[_loc1_].alpha = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_++;
               if(_loc2_)
               {
                  break;
               }
            }
         }
      }
      
      private function StartBringInAnimation_Part1() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TimelineLite = new TimelineLite();
         if(!_loc2_)
         {
            _loc1_.append(new TweenLite(this.m_fullBlackOverlay,0.5,{"onComplete":this.StartTheBackgroundMovement}));
            if(_loc3_)
            {
               _loc1_.append(new TweenLite(this.m_fullBlackOverlay,1.5,{"alpha":0}));
               addr40:
            }
            _loc1_ = new TimelineLite();
            if(!_loc2_)
            {
               _loc1_.append(new TweenLite(this,1.9,{"onComplete":this.StartBringInAnimation_Part2}));
            }
            return;
         }
         §§goto(addr40);
      }
      
      private function StartTheBackgroundMovement() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
         }
      }
      
      private function StartBringInAnimation_Part2() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = 50;
         this.m_titleIcon.alpha = 0;
         this.m_titleIcon.y -= _loc1_;
         this.m_blackOverlayForButtons.alpha = 0;
         this.m_blackOverlayForButtons.scaleY = 0.9;
         this.m_playButton.alpha = 0;
         if(!_loc6_)
         {
            §§push(this.m_creditsButton);
            if(!(_loc6_ && Boolean(this)))
            {
               §§pop().alpha = 0;
               §§push(this.m_creditsButton);
            }
            §§pop().y = this.m_creditsButton.y + _loc1_;
            if(_loc5_)
            {
               addr62:
               this.m_sponsorButton.alpha = 0;
               this.m_tcGamesButton.alpha = 0;
               this.m_hostGamesButton.alpha = 0;
               if(_loc5_)
               {
                  addr76:
                  this.m_fullBlackOverlay.alpha = 0;
               }
               var _loc2_:int = 0;
               while(_loc2_ < this.m_saveSlots.length)
               {
                  this.m_saveSlots[_loc2_].alpha = 0;
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc2_++;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
               }
               var _loc3_:TimelineLite = new TimelineLite();
               if(!_loc6_)
               {
                  _loc3_.append(new TweenLite(this.m_blackOverlayForButtons,1,{}));
                  if(_loc5_)
                  {
                     addr121:
                     _loc3_.append(new TweenLite(this.m_blackOverlayForButtons,1,{"transformAroundCenter":{
                        "alpha":1,
                        "scaleY":1
                     }}));
                  }
                  _loc3_ = new TimelineLite();
                  if(_loc5_)
                  {
                     _loc3_.append(new TweenLite(this.m_playButton,1.8,{}));
                     if(!_loc6_)
                     {
                        addr151:
                        _loc3_.append(new TweenLite(this.m_playButton,0.5,{"alpha":1}));
                     }
                     _loc3_ = new TimelineLite();
                     if(!(_loc6_ && Boolean(_loc1_)))
                     {
                        _loc3_.append(new TweenLite(this.m_sponsorTwitter,2.7,{}));
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           _loc3_.append(new TweenLite(this.m_sponsorTwitter,0.8,{"alpha":1}));
                        }
                     }
                     _loc3_ = new TimelineLite();
                     if(_loc5_)
                     {
                        _loc3_.append(new TweenLite(this.m_sponsorFacebook,2.7,{}));
                        if(!(_loc6_ && Boolean(this)))
                        {
                           _loc3_.append(new TweenLite(this.m_sponsorFacebook,0.8,{"alpha":1}));
                        }
                     }
                     §§push(0.8);
                     if(!(_loc6_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     _loc3_ = new TimelineLite();
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        _loc3_.append(new TweenLite(this.m_titleIcon,2.7,{}));
                        if(_loc5_)
                        {
                           addr266:
                           _loc3_.append(new TweenLite(this.m_titleIcon,_loc4_,{
                              "alpha":1,
                              "y":"" + _loc1_
                           }));
                        }
                        _loc3_ = new TimelineLite();
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           _loc3_.append(new TweenLite(this.m_creditsButton,2.7,{}));
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              addr306:
                              §§push(_loc3_);
                              §§push(§§findproperty(TweenLite));
                              §§push(this.m_creditsButton);
                              §§push(_loc4_);
                              §§push("alpha");
                              §§push(1);
                              §§push("y");
                              §§push("-");
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop() + _loc1_);
                              }
                              §§pop().append(new §§pop().TweenLite(§§pop(),§§pop(),null));
                           }
                           _loc3_ = new TimelineLite();
                           if(!(_loc6_ && Boolean(this)))
                           {
                              _loc3_.append(new TweenLite(this.m_sponsorButton,2.7,{}));
                              if(_loc5_)
                              {
                                 _loc3_.append(new TweenLite(this.m_sponsorButton,_loc4_,{"alpha":1}));
                              }
                           }
                           _loc3_ = new TimelineLite();
                           if(_loc5_)
                           {
                              _loc3_.append(new TweenLite(this.m_hostGamesButton,2.7,{}));
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 _loc3_.append(new TweenLite(this.m_hostGamesButton,_loc4_,{"alpha":1}));
                              }
                           }
                           _loc3_ = new TimelineLite();
                           if(!_loc6_)
                           {
                              _loc3_.append(new TweenLite(this.m_tcGamesButton,2.7,{}));
                              if(!_loc6_)
                              {
                                 addr405:
                                 _loc3_.append(new TweenLite(this.m_tcGamesButton,_loc4_,{
                                    "alpha":1,
                                    "onComplete":this.FinishBringInAnimation
                                 }));
                              }
                              _loc3_ = new TimelineLite();
                              if(_loc5_)
                              {
                                 _loc3_.append(new TweenLite(this.m_muteMusicButton,2.7,{}));
                                 if(_loc5_)
                                 {
                                    addr434:
                                    _loc3_.append(new TweenLite(this.m_muteMusicButton,_loc4_,{"alpha":1}));
                                 }
                                 _loc3_ = new TimelineLite();
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    _loc3_.append(new TweenLite(this.m_muteSoundButton,2.7,{}));
                                    if(_loc5_)
                                    {
                                       addr472:
                                       _loc3_.append(new TweenLite(this.m_muteSoundButton,_loc4_,{"alpha":1}));
                                    }
                                    return;
                                 }
                                 §§goto(addr472);
                              }
                              §§goto(addr434);
                           }
                           §§goto(addr405);
                        }
                        §§goto(addr306);
                     }
                     §§goto(addr266);
                  }
                  §§goto(addr151);
               }
               §§goto(addr121);
            }
            §§goto(addr76);
         }
         §§goto(addr62);
      }
      
      private function FinishBringInAnimation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_currState = MainMenuStates.MAIN_MENU_TITLE_SCREEN;
         }
      }
      
      private function SkipButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            TweenLite.killTweensOf(this);
            if(_loc3_)
            {
               Singleton.dynamicData.LoadData(Singleton.dynamicData.m_saveSlot);
               if(_loc3_ || Boolean(param1))
               {
                  this.AddInitialMinions();
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§push(Singleton.utility);
                     if(_loc3_ || Boolean(param1))
                     {
                        §§pop().m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN,true,0.5);
                        §§goto(addr80);
                     }
                     §§pop().m_soundController.FadeCurrentMusic(0.1,0.8);
                  }
               }
            }
         }
         addr80:
         if(!_loc2_)
         {
            §§push(Singleton.utility);
         }
      }
      
      private function CheckToActivateSkipButton(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            TweenLite.to(this.m_skipIntroButton,0.5,{"alpha":1});
         }
      }
      
      private function PlayButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            TweenLite.to(this.m_playButton,0.7,{
               "y":"-90",
               "alpha":0
            });
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_saveSlots.length)
         {
            this.m_saveSlots[_loc2_].BringIn();
            if(!_loc4_)
            {
               this.m_saveSlots[_loc2_].y = 341 - 7;
               if(_loc4_)
               {
               }
               break;
            }
            TweenLite.to(this.m_saveSlots[_loc2_],0.6,{
               "delay":0.3 * _loc2_,
               "y":188 + 67 * _loc2_,
               "alpha":1
            });
            if(_loc4_ && Boolean(_loc2_))
            {
               break;
            }
            _loc2_++;
            if(_loc4_ && Boolean(_loc2_))
            {
               break;
            }
         }
      }
      
      private function CreditsButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            TweenLite.to(this.m_creditsButton,0.7,{"y":"-80"});
            if(_loc1_)
            {
               TweenLite.to(this.m_sponsorTwitter,0.5,{
                  "alpha":1,
                  "y":"-50"
               });
               if(_loc1_)
               {
                  addr51:
                  TweenLite.to(this.m_sponsorFacebook,0.5,{
                     "alpha":1,
                     "y":"-50"
                  });
                  if(!_loc2_)
                  {
                     addr63:
                     TweenLite.to(this.m_hostGamesButton,0.5,{
                        "alpha":1,
                        "y":"-50"
                     });
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr51);
      }
      
      private function SponsorButtonPressed(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:StaticData = Singleton.staticData;
         §§push(_loc2_.m_sponsorURL_part1);
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(§§pop() + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5);
         }
         var _loc3_:* = §§pop();
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         if(!_loc6_)
         {
            navigateToURL(_loc4_);
         }
      }
      
      private function HostGamesButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest("http://sogood.com/gamesforsite.php");
         if(!(_loc4_ && Boolean(this)))
         {
            navigateToURL(_loc2_);
         }
      }
      
      private function TCGamesButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest("http://www.facebook.com/ToyChestGames");
         if(_loc3_)
         {
            navigateToURL(_loc2_);
         }
      }
      
      private function AddAnimationShakeToObject(param1:Sprite) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TimelineLite = new TimelineLite();
         if(_loc3_ || Boolean(this))
         {
            _loc2_.append(new TweenLite(param1,0.7,{}));
            _loc2_.append(new TweenLite(param1,0.1,{"x":"18"}));
            if(!_loc4_)
            {
               _loc2_.append(new TweenLite(param1,0.1,{"x":"-18"}));
               _loc2_.append(new TweenLite(param1,0.1,{"x":"18"}));
               _loc2_.append(new TweenLite(param1,0.1,{"x":"-18"}));
               _loc2_.append(new TweenLite(param1,0.1,{"x":"12"}));
               _loc2_.append(new TweenLite(param1,0.1,{"x":"-12"}));
               if(!_loc4_)
               {
                  _loc2_.append(new TweenLite(param1,0.1,{"x":"8"}));
                  if(_loc3_ || Boolean(param1))
                  {
                     addr112:
                     _loc2_.append(new TweenLite(param1,0.1,{"x":"-8"}));
                     _loc2_.append(new TweenLite(param1,0.1,{"x":"5"}));
                     addr130:
                     _loc2_.append(new TweenLite(param1,0.1,{"x":"-5"}));
                     _loc2_.append(new TweenLite(param1,0.1,{"x":"4"}));
                     _loc2_.append(new TweenLite(param1,0.1,{"x":"-4"}));
                  }
                  _loc2_.append(new TweenLite(param1,0.1,{"x":"3"}));
                  _loc2_.append(new TweenLite(param1,0.1,{"x":"-3"}));
                  _loc2_.append(new TweenLite(param1,0.1,{"x":"2"}));
                  _loc2_.append(new TweenLite(param1,0.1,{"x":"-2"}));
                  _loc2_.append(new TweenLite(param1,0.1,{"x":"1"}));
                  if(_loc3_)
                  {
                     _loc2_.append(new TweenLite(param1,0.1,{"x":"-1"}));
                  }
                  return;
               }
            }
            §§goto(addr130);
         }
         §§goto(addr112);
      }
      
      public function StartTheEnterGameForTheFirstTimeAnimaiton() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:TimelineLite = null;
         if(_loc8_)
         {
            §§push(Singleton.utility);
            if(!_loc9_)
            {
               §§pop().m_stage.addEventListener(MouseEvent.CLICK,this.CheckToActivateSkipButton);
               if(_loc8_ || _loc2_)
               {
                  addr37:
                  Singleton.utility.m_soundController.FadeCurrentMusic(0,1.5);
                  addr35:
                  if(_loc8_)
                  {
                     addr43:
                     this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
                  }
                  §§push(0.5);
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop());
                  }
                  var _loc1_:* = §§pop();
                  _loc3_ = new TimelineLite();
                  if(_loc8_ || _loc1_)
                  {
                     _loc3_.append(new TweenLite(this.m_muteMusicButton,_loc1_,{"alpha":0}));
                  }
                  _loc3_ = new TimelineLite();
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     _loc3_.append(new TweenLite(this.m_muteSoundButton,_loc1_,{"alpha":0}));
                     if(_loc8_)
                     {
                        TweenLite.to(this.m_fullBlackOverlay,_loc1_,{"alpha":0});
                        TweenLite.to(this.m_blackOverlayForButtons,_loc1_,{"alpha":0});
                     }
                     TweenLite.to(this.m_charCreationPopup,_loc1_,{"alpha":0});
                     if(!_loc9_)
                     {
                        addr127:
                        TweenLite.to(this.m_titleIcon,_loc1_,{"alpha":0});
                     }
                     this.m_charCreationPopup.ExitOut();
                     this.m_doorOuterGlow_mask.visible = true;
                     if(_loc8_ || Boolean(this))
                     {
                        this.m_doorOuterGlow.visible = true;
                     }
                     §§push(2.2);
                     if(!(_loc9_ && Boolean(this)))
                     {
                        §§push(§§pop());
                     }
                     var _loc2_:* = §§pop();
                     _loc3_ = new TimelineLite();
                     if(_loc8_)
                     {
                        _loc3_.append(new TweenLite(this.m_doorOuterGlow_mask,0.7 + _loc2_,{}));
                        if(!_loc9_)
                        {
                           _loc3_.append(new TweenLite(this.m_doorOuterGlow_mask,10,{"y":524}));
                           if(!(_loc9_ && Boolean(this)))
                           {
                              addr198:
                              this.AddAnimationShakeToObject(this.m_doorLeft);
                              if(_loc8_)
                              {
                                 addr204:
                                 this.AddAnimationShakeToObject(this.m_doorRight);
                                 if(!_loc9_)
                                 {
                                    this.AddAnimationShakeToObject(this.m_menuBackground);
                                 }
                              }
                           }
                           _loc3_ = new TimelineLite();
                           if(!_loc9_)
                           {
                              _loc3_.append(new TweenLite(this.m_doorLeftGlow_mask,1.2 + _loc2_,{}));
                              if(!(_loc9_ && _loc1_))
                              {
                                 addr237:
                                 _loc3_.append(new TweenLite(this.m_doorLeftGlow_mask,4.5,{"y":261}));
                              }
                              _loc3_ = new TimelineLite();
                              if(_loc8_)
                              {
                                 _loc3_.append(new TweenLite(this.m_doorRightGlow_mask,1.2 + _loc2_,{}));
                                 if(_loc8_)
                                 {
                                    _loc3_.append(new TweenLite(this.m_doorRightGlow_mask,4.5,{"y":261}));
                                 }
                              }
                              _loc3_ = new TimelineLite();
                              if(_loc8_ || Boolean(_loc3_))
                              {
                                 _loc3_.append(new TweenLite(this.m_doorRightGlow,5.9 + _loc2_,{}));
                                 if(_loc8_)
                                 {
                                    addr298:
                                    _loc3_.append(new TweenLite(this.m_doorRightGlow,0.3,{"alpha":1}));
                                    if(_loc8_ || Boolean(this))
                                    {
                                       addr315:
                                       _loc3_.append(new TweenLite(this.m_doorRightGlow,1,{}));
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          addr330:
                                          _loc3_.append(new TweenLite(this.m_doorRightGlow,6.3,{
                                             "x":"188",
                                             "alpha":0.4
                                          }));
                                       }
                                       _loc3_ = new TimelineLite();
                                       if(!(_loc9_ && _loc1_))
                                       {
                                          _loc3_.append(new TweenLite(this.m_doorLeftGlow,5.9 + _loc2_,{}));
                                          if(!_loc9_)
                                          {
                                             _loc3_.append(new TweenLite(this.m_doorLeftGlow,0.3,{"alpha":1}));
                                             if(_loc8_)
                                             {
                                                _loc3_.append(new TweenLite(this.m_doorLeftGlow,1,{}));
                                                if(_loc8_)
                                                {
                                                   addr387:
                                                   _loc3_.append(new TweenLite(this.m_doorLeftGlow,6.3,{
                                                      "x":"-188",
                                                      "alpha":0.4
                                                   }));
                                                }
                                             }
                                             _loc3_ = new TimelineLite();
                                             if(!_loc9_)
                                             {
                                                _loc3_.append(new TweenLite(this.m_doorOuterGlow,5.9 + _loc2_,{}));
                                                if(_loc8_ || _loc2_)
                                                {
                                                   _loc3_.append(new TweenLite(this.m_doorOuterGlow,2.8,{"alpha":0}));
                                                }
                                             }
                                             _loc3_ = new TimelineLite();
                                             if(_loc8_)
                                             {
                                                _loc3_.append(new TweenLite(this.m_doorRight,7.2 + _loc2_,{}));
                                                if(_loc8_)
                                                {
                                                   _loc3_.append(new TweenLite(this.m_doorRight,6.3,{"x":"188"}));
                                                }
                                             }
                                             _loc3_ = new TimelineLite();
                                             if(_loc8_ || _loc1_)
                                             {
                                                _loc3_.append(new TweenLite(this.m_doorLeft,7.2 + _loc2_,{}));
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   _loc3_.append(new TweenLite(this.m_doorLeft,6.3,{"x":"-188"}));
                                                }
                                             }
                                             _loc3_ = new TimelineLite();
                                             _loc3_.append(new TweenLite(this.m_backgroundForZoom,7.2 + _loc2_,{}));
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"3"}));
                                                _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"-3"}));
                                                _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"2"}));
                                                _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"-2"}));
                                                _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"1"}));
                                             }
                                             _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{"x":"-1"}));
                                             var _loc4_:int = 0;
                                             while(true)
                                             {
                                                if(_loc4_ < 16)
                                                {
                                                   _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.15,{"x":"1"}));
                                                   if(_loc8_)
                                                   {
                                                      _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.15,{"x":"-1"}));
                                                      if(_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr627);
                                                   }
                                                   break;
                                                }
                                                if(_loc8_)
                                                {
                                                   addr627:
                                                   _loc3_.append(new TweenLite(this.m_backgroundForZoom,0.1,{}));
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc3_ = new TimelineLite();
                                                if(_loc8_)
                                                {
                                                   _loc3_.append(new TweenLite(this.m_fullBlackOverlay,14 + _loc2_,{}));
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      _loc3_.append(new TweenLite(this.m_fullBlackOverlay,4,{"alpha":1}));
                                                      if(_loc9_ && _loc1_)
                                                      {
                                                      }
                                                      addr709:
                                                      _loc3_ = new TimelineLite();
                                                      if(_loc8_)
                                                      {
                                                         _loc3_.append(new TweenLite(this,15 + _loc2_,{}));
                                                         if(_loc8_)
                                                         {
                                                            _loc3_.append(new TweenLite(this,9.8,{
                                                               "onComplete":this.FadeOutTextSet,
                                                               "onCompleteParams":[this.m_textSet1]
                                                            }));
                                                            if(_loc8_ || Boolean(this))
                                                            {
                                                               addr747:
                                                               _loc3_.append(new TweenLite(this,3.9,{
                                                                  "onComplete":this.FadeOutTextSet,
                                                                  "onCompleteParams":[this.m_textSet2]
                                                               }));
                                                               if(!_loc9_)
                                                               {
                                                                  _loc3_.append(new TweenLite(this,3.9,{
                                                                     "onComplete":this.FadeOutTextSet,
                                                                     "onCompleteParams":[this.m_textSet3]
                                                                  }));
                                                                  if(_loc9_)
                                                                  {
                                                                  }
                                                                  addr793:
                                                                  _loc3_ = new TimelineLite();
                                                                  _loc3_.append(new TweenLite(this,15 + _loc2_,{}));
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc3_.append(new TweenLite(this,2.3,{
                                                                        "onComplete":this.FadeInTextSet,
                                                                        "onCompleteParams":[this.m_textSet1]
                                                                     }));
                                                                     _loc3_.append(new TweenLite(this,3.6,{
                                                                        "onComplete":this.FadeInTextSet,
                                                                        "onCompleteParams":[this.m_textSet2]
                                                                     }));
                                                                     if(_loc8_)
                                                                     {
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
                                                                        if(_loc8_)
                                                                        {
                                                                           addr884:
                                                                           _loc3_.append(new TweenLite(this,0.05,{"onComplete":this.AddInitialMinions}));
                                                                           _loc3_.append(new TweenLite(this,0.8,{
                                                                              "onComplete":Singleton.utility.m_screenControllers.SetSceneTo,
                                                                              "onCompleteParams":[GameState.TOP_DOWN_SCREEN,true,0.5]
                                                                           }));
                                                                        }
                                                                     }
                                                                     _loc3_ = new TimelineLite();
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc3_.append(new TweenLite(this,13 + _loc2_,{
                                                                           "onComplete":Singleton.utility.m_soundController.FadeCurrentMusic,
                                                                           "onCompleteParams":[0.7,4]
                                                                        }));
                                                                        if(!(_loc9_ && Boolean(this)))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           §§push(§§findproperty(TweenLite));
                                                                           §§push(this);
                                                                           §§push(19.5);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(§§pop() + _loc2_);
                                                                           }
                                                                           §§pop().append(new §§pop().TweenLite(§§pop(),§§pop(),{
                                                                              "onComplete":Singleton.utility.m_soundController.FadeCurrentMusic,
                                                                              "onCompleteParams":[0,4]
                                                                           }));
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              addr970:
                                                                              Singleton.utility.m_soundController.FadeCurrentMusic(0.2,2);
                                                                           }
                                                                           §§push(0.74);
                                                                           if(_loc8_ || Boolean(_loc3_))
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           var _loc5_:* = §§pop();
                                                                           §§push(0.35);
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           var _loc6_:* = §§pop();
                                                                           _loc3_ = new TimelineLite();
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc3_.append(new TweenLite(this,0.3,{}));
                                                                              if(!_loc9_)
                                                                              {
                                                                                 _loc3_.append(new TweenLite(this,_loc2_,{
                                                                                    "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                                                    "onCompleteParams":["doorEntryHum",_loc6_]
                                                                                 }));
                                                                              }
                                                                           }
                                                                           var _loc7_:int = 0;
                                                                           if(_loc8_)
                                                                           {
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ >= 5)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr1059:
                                                                                       _loc3_.append(new TweenLite(this,1.15,{
                                                                                          "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                                                          "onCompleteParams":["doorEntryHum_fadeout",_loc6_]
                                                                                       }));
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 _loc3_.append(new TweenLite(this,1.15,{
                                                                                    "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                                                    "onCompleteParams":["doorEntryHum",_loc6_]
                                                                                 }));
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_++;
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§goto(addr1059);
                                                                                    addr1051:
                                                                                 }
                                                                                 break;
                                                                                 §§goto(addr1059);
                                                                              }
                                                                              _loc3_ = new TimelineLite();
                                                                              _loc3_.append(new TweenLite(this,0.2,{
                                                                                 "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                                                 "onCompleteParams":["battle_earthquake2"]
                                                                              }));
                                                                              _loc3_.append(new TweenLite(this,_loc2_,{}));
                                                                              _loc3_.append(new TweenLite(this,5.7,{
                                                                                 "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                                                 "onCompleteParams":["battle_whoosh_magic2"]
                                                                              }));
                                                                              if(!(_loc9_ && _loc1_))
                                                                              {
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
                                                                                 if(_loc8_ || Boolean(_loc3_))
                                                                                 {
                                                                                    _loc3_.append(new TweenLite(this,0.65,{
                                                                                       "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                                                       "onCompleteParams":["battle_earthquake2",0.4]
                                                                                    }));
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr1051);
                                                                        }
                                                                     }
                                                                     §§goto(addr970);
                                                                  }
                                                                  §§goto(addr884);
                                                               }
                                                               §§goto(addr793);
                                                            }
                                                            _loc3_.append(new TweenLite(this,3.9,{
                                                               "onComplete":this.FadeOutTextSet,
                                                               "onCompleteParams":[this.m_textSet4]
                                                            }));
                                                            §§goto(addr793);
                                                         }
                                                         §§goto(addr747);
                                                      }
                                                      §§goto(addr793);
                                                   }
                                                   _loc3_.append(new TweenLite(this.m_fullBlackOverlay,0.5,{"onComplete":this.KillExtraTweens}));
                                                }
                                                §§goto(addr709);
                                                §§goto(addr627);
                                             }
                                             _loc3_.append(new TweenLite(this.m_backgroundForZoom,30.2,{
                                                "scaleX":2,
                                                "scaleY":2,
                                                "x":-348,
                                                "y":-490
                                             }));
                                             §§goto(addr658);
                                          }
                                       }
                                       §§goto(addr387);
                                    }
                                    §§goto(addr330);
                                 }
                                 §§goto(addr315);
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr127);
               }
               §§goto(addr43);
            }
            §§goto(addr37);
         }
         §§goto(addr35);
      }
      
      private function AddInitialMinions() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            Singleton.utility.m_stage.removeEventListener(MouseEvent.CLICK,this.CheckToActivateSkipButton);
            if(!_loc2_)
            {
               addr31:
               this.m_skipIntroButton.alpha = 0;
            }
            var _loc1_:OwnedMinion = new OwnedMinion(MinionDexID.DEX_ID_Tiger_1);
            if(!(_loc2_ && Boolean(this)))
            {
               Singleton.dynamicData.AddToOwnedMinions(_loc1_);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.SetLevel(5);
                  if(_loc3_)
                  {
                  }
                  addr77:
                  _loc1_.CalculateCurrStats();
                  if(_loc3_ || Boolean(this))
                  {
                     addr86:
                     _loc1_.ReFillHealthAndEnergy();
                  }
                  _loc1_ = new OwnedMinion(MinionDexID.DEX_ID_fire_pig_1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc3_ || Boolean(this))
                     {
                        §§pop().AddToOwnedMinions(_loc1_);
                        addr119:
                        _loc1_.SetLevel(4);
                        _loc1_.m_currentExp += 350;
                        if(_loc3_)
                        {
                           _loc1_.CalculateCurrStats();
                           _loc1_.ReFillHealthAndEnergy();
                           §§push(Singleton.dynamicData);
                           if(_loc3_)
                           {
                              addr138:
                              §§push(0);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(true);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§pop().SetHasUnlockedFloor(§§pop(),§§pop());
                                    if(_loc3_)
                                    {
                                       §§push(Singleton.dynamicData);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(TutorialTypes.TUTORIAL_FOCUS_TARGETS);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§push(true);
                                             if(!_loc2_)
                                             {
                                                §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                §§push(Singleton.dynamicData);
                                                if(_loc3_)
                                                {
                                                   addr183:
                                                   §§push(TutorialTypes.TUTORIAL_DONT_HAVE_TO_BEAT_HARD_AND_EXPERT_TRAINERS);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr192:
                                                      §§push(true);
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                         if(_loc3_)
                                                         {
                                                            addr231:
                                                            §§push(Singleton.dynamicData);
                                                            if(!(_loc2_ && Boolean(_loc1_)))
                                                            {
                                                               addr214:
                                                               §§push(TutorialTypes.TUTORIAL_TANKS);
                                                               if(!_loc2_)
                                                               {
                                                                  addr218:
                                                                  §§push(true);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr226:
                                                                     §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               addr233:
                                                               addr234:
                                                               §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                               addr235:
                                                               return;
                                                               §§push(true);
                                                            }
                                                            §§goto(addr233);
                                                            §§push(TutorialTypes.TUTORIAL_HEALERS);
                                                         }
                                                         §§goto(addr231);
                                                         §§push(Singleton.dynamicData);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr119);
               }
               _loc1_.m_currentExp += 300;
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr77);
               }
               §§goto(addr86);
            }
            §§goto(addr77);
         }
         §§goto(addr31);
      }
      
      private function KillExtraTweens() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            TweenLite.killTweensOf(this.m_backgroundForZoom);
         }
      }
      
      private function FadeOutTextSet(param1:Vector.<TextField>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
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
            if(!(_loc9_ && Boolean(param1)))
            {
               _loc6_++;
            }
         }
      }
      
      private function FadeInTextSet(param1:Vector.<TextField>) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TimelineLite = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_].scaleY = 0.85;
            if(!(_loc5_ || Boolean(this)))
            {
               break;
            }
            param1[_loc2_].x += 10 + _loc2_ * 5;
            if(!(_loc5_ || Boolean(_loc3_)))
            {
               break;
            }
            _loc3_ = new TimelineLite();
            if(!_loc4_)
            {
               _loc3_.append(new TweenLite(param1[_loc2_],_loc2_ * 0.07,{}));
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc3_.append(new TweenLite(param1[_loc2_],1.2,{"transformAroundCenter":{
                     "scaleY":1,
                     "alpha":1,
                     "x":"-" + (10 + _loc2_ * 5)
                  }}));
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function AnimateInTheCharSelectionScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            TweenLite.to(this.m_fullBlackOverlay,0.5,{"alpha":0.3});
         }
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
         if(!_loc2_)
         {
            TweenLite.to(this.m_sponsorButton,0.5,{
               "delay":0.2,
               "alpha":0
            });
         }
         TweenLite.to(this.m_tcGamesButton,0.5,{
            "delay":0.2,
            "alpha":0
         });
         if(_loc3_)
         {
            TweenLite.to(this.m_titleIcon,0.5,{"alpha":0});
            TweenLite.to(this.m_blackOverlayForButtons,1.2,{"transformAroundCenter":{"scaleY":1.4}});
            TweenLite.to(this.m_sponsorTwitter,0.5,{
               "alpha":0,
               "y":"50"
            });
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               TweenLite.to(this.m_sponsorFacebook,0.5,{
                  "alpha":0,
                  "y":"50"
               });
               TweenLite.to(this.m_creditsButton,0.5,{"alpha":0});
               if(_loc3_)
               {
                  §§goto(addr145);
               }
            }
            §§goto(addr198);
         }
         addr145:
         TweenLite.to(this.m_hostGamesButton,0.5,{
            "alpha":0,
            "y":"50"
         });
         §§push(this.m_charCreationPopup);
         if(_loc3_ || Boolean(_loc1_))
         {
            §§pop().visible = true;
            §§push(this.m_charCreationPopup);
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr182);
            }
            §§goto(addr204);
         }
         addr182:
         §§pop().alpha = 0;
         if(_loc3_)
         {
            TweenLite.to(this.m_charCreationPopup,0.9,{
               "delay":0.5,
               "alpha":1
            });
            if(_loc3_)
            {
               addr198:
               this.m_currState = MainMenuStates.MAIN_MENU_CHAR_CREATION;
               addr204:
               this.m_charCreationPopup.BringIn();
            }
         }
      }
      
      public function AnimateOutTheCharSelectionScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            TweenLite.to(this.m_fullBlackOverlay,0.5,{"alpha":0});
         }
         var _loc1_:int = 0;
         do
         {
            if(_loc1_ >= this.m_saveSlots.length)
            {
               TweenLite.to(this.m_creditsButton,0.5,{"alpha":1});
               break;
            }
            TweenLite.to(this.m_saveSlots[_loc1_],0.5,{"alpha":1});
            _loc1_++;
         }
         while(_loc3_);
         
         TweenLite.to(this.m_hostGamesButton,0.5,{
            "alpha":1,
            "y":"-50"
         });
         if(_loc3_ || Boolean(this))
         {
            TweenLite.to(this.m_sponsorButton,0.5,{"alpha":1});
            TweenLite.to(this.m_tcGamesButton,0.5,{"alpha":1});
            if(!_loc2_)
            {
               addr101:
               TweenLite.to(this.m_sponsorTwitter,0.5,{
                  "alpha":1,
                  "y":"-50"
               });
            }
            TweenLite.to(this.m_sponsorFacebook,0.5,{
               "alpha":1,
               "y":"-50"
            });
            if(_loc3_ || _loc2_)
            {
               TweenLite.to(this.m_titleIcon,0.5,{"alpha":1});
               TweenLite.to(this.m_blackOverlayForButtons,1.2,{"transformAroundCenter":{"scaleY":1}});
               TweenLite.to(this.m_charCreationPopup,0.5,{
                  "alpha":0,
                  "onComplete":this.FinishAnimateOutTheCharSelectionScreen
               });
               if(_loc3_)
               {
                  this.m_currState = MainMenuStates.MAIN_MENU_ANIMATING;
               }
            }
            this.m_charCreationPopup.ExitOut();
            return;
         }
         §§goto(addr101);
      }
      
      private function FinishAnimateOutTheCharSelectionScreen() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.m_currState = MainMenuStates.MAIN_MENU_TITLE_SCREEN;
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         super.UpdateFullFrames();
         if(!_loc2_)
         {
            §§push(this.m_menuBackground.y > -448);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr36:
                     §§pop();
                     if(!_loc2_)
                     {
                        §§push(this.m_currState);
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(MainMenuStates.MAIN_MENU_BRINGING_IN);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr66:
                                 if(!§§pop())
                                 {
                                    this.m_menuBackground.y -= 1.5;
                                    this.m_doorLeft.y -= 1.5;
                                    this.m_doorRight.y -= 1.5;
                                    if(_loc3_)
                                    {
                                       §§push(this.m_playButton);
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr116:
                                          if(§§pop().alpha == 1)
                                          {
                                             §§push(this.m_playButton);
                                          }
                                          §§push(this.m_currState);
                                          if(_loc3_)
                                          {
                                             addr120:
                                             §§push(MainMenuStates.MAIN_MENU_ANIMATING);
                                             if(_loc3_ || Boolean(this))
                                             {
                                                addr129:
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.m_muteMusicButton.Update();
                                                      addr135:
                                                      this.m_muteSoundButton.Update();
                                                      addr138:
                                                      §§push(this.m_currState);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr156:
                                                         if(§§pop() == MainMenuStates.MAIN_MENU_TITLE_SCREEN)
                                                         {
                                                            addr158:
                                                            _loc1_ = 0;
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  if(§§pop() >= this.m_saveSlots.length)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr196:
                                                                        §§push(this.m_playButton);
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(§§pop().alpha == 1)
                                                                           {
                                                                              addr205:
                                                                              this.m_playButton.m_isActive = true;
                                                                           }
                                                                           §§push(0);
                                                                           if(_loc3_)
                                                                           {
                                                                              _loc1_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 if(§§pop() >= this.m_saveSlots.length)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       this.m_creditsButton.m_isActive = true;
                                                                                       this.m_sponsorButton.m_isActive = true;
                                                                                       this.m_tcGamesButton.m_isActive = true;
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          this.m_hostGamesButton.m_isActive = true;
                                                                                          if(_loc3_ || Boolean(_loc1_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr312);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr280:
                                                                                       }
                                                                                       addr280:
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 if(this.m_saveSlots[_loc1_].alpha == 1)
                                                                                 {
                                                                                    this.m_saveSlots[_loc1_].Update();
                                                                                 }
                                                                                 _loc1_++;
                                                                              }
                                                                              addr296:
                                                                              §§push(this.m_skipIntroButton);
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 if(§§pop().alpha == 1)
                                                                                 {
                                                                                    addr310:
                                                                                    this.m_skipIntroButton.m_isActive = true;
                                                                                 }
                                                                                 addr312:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  else
                                                                  {
                                                                     if(!this.m_saveSlots[_loc1_].m_conformationBox.m_isOpen)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc3_ || Boolean(_loc1_))
                                                                     {
                                                                        return;
                                                                     }
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               break;
                                                            }
                                                            addr157:
                                                         }
                                                         else
                                                         {
                                                            §§push(this.m_currState);
                                                            if(_loc3_ || Boolean(_loc1_))
                                                            {
                                                               §§push(MainMenuStates.MAIN_MENU_CREDITS);
                                                               if(_loc3_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        this.m_creditsScreen.Update();
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr292:
                                                                     if(this.m_currState == MainMenuStates.MAIN_MENU_CHAR_CREATION)
                                                                     {
                                                                        this.m_charCreationPopup.Update();
                                                                     }
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr138);
                                             }
                                          }
                                          §§goto(addr156);
                                       }
                                       §§pop().m_isActive = true;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§goto(addr116);
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr157);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr36);
         }
         §§goto(addr135);
      }
   }
}
