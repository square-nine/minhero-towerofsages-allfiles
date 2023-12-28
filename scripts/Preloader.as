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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TextFormat = null;
         if(_loc2_)
         {
            this.LOADER_FONT = Preloader_LOADER_FONT;
            if(!_loc3_)
            {
               this.loadingScreen_background = Preloader_loadingScreen_background;
               this.loadingScreen_female_side_still = Preloader_loadingScreen_female_side_still;
               if(!_loc3_)
               {
                  this.loadingScreen_fillBar = Preloader_loadingScreen_fillBar;
                  if(_loc2_)
                  {
                     this.loadingScreen_playButton = Preloader_loadingScreen_playButton;
                     this.loadingScreen_playButtonMask = Preloader_loadingScreen_playButtonMask;
                     addr42:
                     this.loadingScreen_boySpeechBubble = Preloader_loadingScreen_boySpeechBubble;
                     this.loadingScreen_progressPopup = Preloader_loadingScreen_progressPopup;
                     addr48:
                     this.loadingScreen_female_side_1 = Preloader_loadingScreen_female_side_1;
                     this.loadingScreen_female_side_2 = Preloader_loadingScreen_female_side_2;
                  }
                  this.loadingScreen_female_side_3 = Preloader_loadingScreen_female_side_3;
                  this.loadingScreen_female_side_4 = Preloader_loadingScreen_female_side_4;
                  if(_loc2_ || Boolean(this))
                  {
                     this.loadingScreen_female_side_5 = Preloader_loadingScreen_female_side_5;
                     if(_loc2_ || Boolean(this))
                     {
                        this.loadingScreen_female_side_6 = Preloader_loadingScreen_female_side_6;
                        if(!(_loc3_ && _loc3_))
                        {
                           this.loadingScreen_female_side_7 = Preloader_loadingScreen_female_side_7;
                           addr90:
                           this.loadingScreen_female_side_8 = Preloader_loadingScreen_female_side_8;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              this.loadingScreen_female_side_9 = Preloader_loadingScreen_female_side_9;
                              addr103:
                              this.loadingScreen_female_side_10 = Preloader_loadingScreen_female_side_10;
                              if(_loc2_ || _loc3_)
                              {
                                 this.loadingScreen_chatCycleBackground = Preloader_loadingScreen_chatCycleBackground;
                                 if(!_loc3_)
                                 {
                                    this.loadingScreen_chatCycleButton = Preloader_loadingScreen_chatCycleButton;
                                    addr121:
                                    super();
                                 }
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr103);
                        }
                        if(stage)
                        {
                           stage.scaleMode = StageScaleMode.NO_SCALE;
                           stage.align = StageAlign.TOP_LEFT;
                        }
                        _loc1_ = new TextFormat();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.size = 10;
                           if(!_loc3_)
                           {
                              _loc1_.align = TextFormatAlign.CENTER;
                              _loc1_.font = "BurbinCasual";
                              if(_loc2_ || _loc2_)
                              {
                                 this.m_background = new Sprite();
                                 this.m_background.addChild(new this.loadingScreen_background());
                                 if(!_loc3_)
                                 {
                                    addChild(this.m_background);
                                    if(!_loc3_)
                                    {
                                       this.m_chatPopupPosition = 0;
                                       if(!_loc3_)
                                       {
                                          this.m_chatPopupBackground = new Sprite();
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             this.m_chatPopupBackground.addChild(new this.loadingScreen_chatCycleBackground());
                                             if(!_loc3_)
                                             {
                                                addChild(this.m_chatPopupBackground);
                                                if(!_loc3_)
                                                {
                                                   this.m_chatPopupBackground.x = 99;
                                                   this.m_chatPopupBackground.y = 522;
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      this.m_chatNumberText = new TextField();
                                                      this.m_chatNumberText.embedFonts = true;
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         this.m_chatNumberText.textColor = 15790320;
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            this.m_chatNumberText.selectable = false;
                                                            this.m_chatNumberText.multiline = false;
                                                            this.m_chatNumberText.wordWrap = true;
                                                            this.m_chatNumberText.x = 21;
                                                            if(_loc2_)
                                                            {
                                                               this.m_chatNumberText.y = 2;
                                                               this.m_chatNumberText.width = 51;
                                                               if(_loc2_)
                                                               {
                                                                  this.m_chatPopupBackground.addChild(this.m_chatNumberText);
                                                                  _loc1_.size = 16;
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     this.m_chatNumberText.defaultTextFormat = _loc1_;
                                                                     this.m_chatNumberText.text = "9";
                                                                     this.m_chatPopupButton_left = new Sprite();
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        this.m_chatPopupButton_left.addChild(new this.loadingScreen_chatCycleButton());
                                                                        this.m_chatPopupBackground.addChild(this.m_chatPopupButton_left);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           this.m_chatPopupButton_left.x = 16;
                                                                           if(_loc2_)
                                                                           {
                                                                              this.m_chatPopupButton_left.y = 6;
                                                                              this.m_chatPopupButton_left.buttonMode = true;
                                                                              if(_loc2_)
                                                                              {
                                                                                 this.m_chatPopupButton_left.addEventListener(MouseEvent.CLICK,this.CycleLeft);
                                                                                 this.m_chatPopupButton_right = new Sprite();
                                                                                 this.m_chatPopupButton_right.addChild(new this.loadingScreen_chatCycleButton());
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    this.m_chatPopupBackground.addChild(this.m_chatPopupButton_right);
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       this.m_chatPopupButton_right.x = 75;
                                                                                       this.m_chatPopupButton_right.y = 6;
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          addr395:
                                                                                          this.m_chatPopupButton_right.scaleX = -1;
                                                                                          this.m_chatPopupButton_right.buttonMode = true;
                                                                                          this.m_chatPopupButton_right.addEventListener(MouseEvent.CLICK,this.CycleRight);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             this.m_femaleStill = new Sprite();
                                                                                             addr416:
                                                                                             this.m_femaleStill.x = 102;
                                                                                             this.m_femaleStill.y = 435;
                                                                                             this.m_femaleStill.addChild(new this.loadingScreen_female_side_still());
                                                                                             addChild(this.m_femaleStill);
                                                                                             this.m_femaleStill.visible = false;
                                                                                             this.m_charAnimaiton = new AnimationForPreloader();
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(this.m_charAnimaiton);
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(102);
                                                                                                   if(_loc2_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      §§pop().x = §§pop() - 140;
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr485:
                                                                                                         §§push(this.m_charAnimaiton);
                                                                                                         if(_loc2_ || Boolean(_loc1_))
                                                                                                         {
                                                                                                            §§push(435);
                                                                                                         }
                                                                                                         §§pop().Create([this.loadingScreen_female_side_1,this.loadingScreen_female_side_2,this.loadingScreen_female_side_3,this.loadingScreen_female_side_4,this.loadingScreen_female_side_5,this.loadingScreen_female_side_6,this.loadingScreen_female_side_7,this.loadingScreen_female_side_8,this.loadingScreen_female_side_9,this.loadingScreen_female_side_10],10);
                                                                                                         addChild(this.m_charAnimaiton);
                                                                                                         this.m_maleSpeechBubble = new Sprite();
                                                                                                         this.m_maleSpeechBubble.x = 131;
                                                                                                         this.m_maleSpeechBubble.y = 374 - 10;
                                                                                                         this.m_maleSpeechBubble.addChild(new this.loadingScreen_boySpeechBubble());
                                                                                                         addChild(this.m_maleSpeechBubble);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr537:
                                                                                                            this.m_maleSpeechBubble.alpha = 0;
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               this.m_femaleSpeechBubble = new Sprite();
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  this.m_femaleSpeechBubble.x = 161;
                                                                                                                  this.m_femaleSpeechBubble.y = 377 - 12;
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     this.m_femaleSpeechBubble.scaleX = -1;
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        this.m_femaleSpeechBubble.addChild(new this.loadingScreen_boySpeechBubble());
                                                                                                                        addr577:
                                                                                                                        addChild(this.m_femaleSpeechBubble);
                                                                                                                        addr581:
                                                                                                                        this.m_femaleSpeechBubble.alpha = 0;
                                                                                                                        if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           this.m_loadingBar = new Sprite();
                                                                                                                           addr596:
                                                                                                                           this.m_loadingBar.x = 55;
                                                                                                                        }
                                                                                                                        this.m_loadingBar.y = 435;
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           this.m_loadingBar.addChild(new this.loadingScreen_fillBar());
                                                                                                                           addChild(this.m_loadingBar);
                                                                                                                           this.m_loadingBar_mask = new Sprite();
                                                                                                                           if(_loc2_ || _loc3_)
                                                                                                                           {
                                                                                                                              this.m_loadingBar_mask.graphics.beginFill(0);
                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                              {
                                                                                                                                 this.m_loadingBar_mask.graphics.drawRect(0,0,291,40);
                                                                                                                                 addr653:
                                                                                                                                 this.m_loadingBar_mask.graphics.endFill();
                                                                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    addr664:
                                                                                                                                    this.m_loadingBar_mask.x = 340;
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr670:
                                                                                                                                       this.m_loadingBar_mask.y = 435;
                                                                                                                                       addChild(this.m_loadingBar_mask);
                                                                                                                                       this.m_loadingBar.mask = this.m_loadingBar_mask;
                                                                                                                                    }
                                                                                                                                    this.m_playButton = new Sprite();
                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       this.m_playButton.x = 451;
                                                                                                                                       this.m_playButton.y = 414;
                                                                                                                                       this.m_playButton.addChild(new this.loadingScreen_playButton());
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addChild(this.m_playButton);
                                                                                                                                          this.m_sponsorButton = new Sprite();
                                                                                                                                          this.m_sponsorButton.x = 7;
                                                                                                                                          this.m_sponsorButton.y = 132;
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             this.m_sponsorButton.graphics.beginFill(5592405);
                                                                                                                                             this.m_sponsorButton.graphics.drawRect(0,0,170,70);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr742:
                                                                                                                                                this.m_sponsorButton.graphics.endFill();
                                                                                                                                                this.m_sponsorButton.alpha = 0;
                                                                                                                                                addChild(this.m_sponsorButton);
                                                                                                                                                this.m_tcGamesButton = new Sprite();
                                                                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   this.m_tcGamesButton.x = 525;
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      this.m_tcGamesButton.y = 132;
                                                                                                                                                      addr780:
                                                                                                                                                      this.m_tcGamesButton.graphics.beginFill(5592405);
                                                                                                                                                      this.m_tcGamesButton.graphics.drawRect(0,0,170,70);
                                                                                                                                                      if(_loc2_ || Boolean(_loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr800:
                                                                                                                                                         this.m_tcGamesButton.graphics.endFill();
                                                                                                                                                         this.m_tcGamesButton.alpha = 0;
                                                                                                                                                         addChild(this.m_tcGamesButton);
                                                                                                                                                         if(_loc2_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            this.m_playButton_mask = new Sprite();
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr825:
                                                                                                                                                               this.m_playButton_mask.x = 451;
                                                                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr836:
                                                                                                                                                                  this.m_playButton_mask.y = 349;
                                                                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     this.m_playButton_mask.addChild(new this.loadingScreen_playButtonMask());
                                                                                                                                                                     addChild(this.m_playButton_mask);
                                                                                                                                                                     addr856:
                                                                                                                                                                     this.m_playButton.mask = this.m_playButton_mask;
                                                                                                                                                                     this.m_loadingBackground = new Sprite();
                                                                                                                                                                     this.m_loadingBackground.x = 451;
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        this.m_loadingBackground.y = 392;
                                                                                                                                                                        addr875:
                                                                                                                                                                        this.m_loadingBackground.addChild(new this.loadingScreen_progressPopup());
                                                                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr887:
                                                                                                                                                                           addChild(this.m_loadingBackground);
                                                                                                                                                                           this.m_loadingBackground_mask = new Sprite();
                                                                                                                                                                           addr895:
                                                                                                                                                                           this.m_loadingBackground_mask.x = 451;
                                                                                                                                                                           this.m_loadingBackground_mask.y = 349;
                                                                                                                                                                           this.m_loadingBackground_mask.addChild(new this.loadingScreen_playButtonMask());
                                                                                                                                                                           addChild(this.m_loadingBackground_mask);
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              this.m_loadingBackground.mask = this.m_loadingBackground_mask;
                                                                                                                                                                              if(_loc2_ || Boolean(_loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 this.m_percentageLoadedText = new TextField();
                                                                                                                                                                                 if(_loc2_ || Boolean(_loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr937:
                                                                                                                                                                                    this.m_percentageLoadedText.textColor = 13423058;
                                                                                                                                                                                    this.m_percentageLoadedText.embedFonts = true;
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.m_percentageLoadedText.selectable = false;
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.m_percentageLoadedText.multiline = false;
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr959:
                                                                                                                                                                                             this.m_percentageLoadedText.x = 0;
                                                                                                                                                                                             this.m_percentageLoadedText.y = 13;
                                                                                                                                                                                             this.m_percentageLoadedText.width = 165;
                                                                                                                                                                                             addr971:
                                                                                                                                                                                             this.m_loadingBackground.addChild(this.m_percentageLoadedText);
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr978:
                                                                                                                                                                                                _loc1_.size = 12;
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr983:
                                                                                                                                                                                                   this.m_percentageLoadedText.defaultTextFormat = _loc1_;
                                                                                                                                                                                                   addr987:
                                                                                                                                                                                                   this.m_percentageLoadedText.text = "0 kb / 0 kb";
                                                                                                                                                                                                   addr991:
                                                                                                                                                                                                   _loc1_.size = 14;
                                                                                                                                                                                                   this.m_maleSpeechText = new TextField();
                                                                                                                                                                                                   this.m_maleSpeechText.textColor = 4803172;
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.m_maleSpeechText.embedFonts = true;
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1010:
                                                                                                                                                                                                         this.m_maleSpeechText.selectable = false;
                                                                                                                                                                                                         this.m_maleSpeechText.multiline = false;
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.m_maleSpeechText.wordWrap = true;
                                                                                                                                                                                                            this.m_maleSpeechText.x = 4;
                                                                                                                                                                                                            addr1028:
                                                                                                                                                                                                            this.m_maleSpeechText.y = 13;
                                                                                                                                                                                                            addr1032:
                                                                                                                                                                                                            this.m_maleSpeechText.width = 143;
                                                                                                                                                                                                            addr1036:
                                                                                                                                                                                                            this.m_maleSpeechBubble.addChild(this.m_maleSpeechText);
                                                                                                                                                                                                            this.m_maleSpeechText.defaultTextFormat = _loc1_;
                                                                                                                                                                                                            this.m_maleSpeechText.text = "temp text";
                                                                                                                                                                                                            this.m_femaleSpeechText = new TextField();
                                                                                                                                                                                                            this.m_femaleSpeechText.textColor = 4803172;
                                                                                                                                                                                                            addr1057:
                                                                                                                                                                                                            this.m_femaleSpeechText.selectable = false;
                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.m_femaleSpeechText.embedFonts = true;
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.m_femaleSpeechText.multiline = false;
                                                                                                                                                                                                                  this.m_femaleSpeechText.wordWrap = true;
                                                                                                                                                                                                                  addr1077:
                                                                                                                                                                                                                  this.m_femaleSpeechText.x = 148;
                                                                                                                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1088:
                                                                                                                                                                                                                     this.m_femaleSpeechText.y = 13;
                                                                                                                                                                                                                     this.m_femaleSpeechText.width = 143;
                                                                                                                                                                                                                     this.m_femaleSpeechBubble.addChild(this.m_femaleSpeechText);
                                                                                                                                                                                                                     this.m_femaleSpeechText.scaleX = -1;
                                                                                                                                                                                                                     if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.m_femaleSpeechText.defaultTextFormat = _loc1_;
                                                                                                                                                                                                                        this.m_femaleSpeechText.text = "temp text";
                                                                                                                                                                                                                        addr1120:
                                                                                                                                                                                                                        _loc1_.size = 13;
                                                                                                                                                                                                                        addr1123:
                                                                                                                                                                                                                        this.m_versionText = new TextField();
                                                                                                                                                                                                                        if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1134:
                                                                                                                                                                                                                           this.m_versionText.textColor = 13423058;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        this.m_versionText.embedFonts = true;
                                                                                                                                                                                                                        if(_loc2_ || Boolean(_loc1_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1149:
                                                                                                                                                                                                                           this.m_versionText.selectable = false;
                                                                                                                                                                                                                           this.m_versionText.multiline = false;
                                                                                                                                                                                                                           this.m_versionText.wordWrap = true;
                                                                                                                                                                                                                           this.m_versionText.x = 638;
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.m_versionText.y = 503;
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1173:
                                                                                                                                                                                                                                 this.m_versionText.width = 80;
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1179:
                                                                                                                                                                                                                                    this.m_versionText.defaultTextFormat = _loc1_;
                                                                                                                                                                                                                                    addr1183:
                                                                                                                                                                                                                                    this.m_versionText.text = "v1.01";
                                                                                                                                                                                                                                    addChild(this.m_versionText);
                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       TweenNano.to(this.m_charAnimaiton,1.8,{
                                                                                                                                                                                                                                          "delay":0.5,
                                                                                                                                                                                                                                          "x":"140",
                                                                                                                                                                                                                                          "onComplete":this.AnimationFinished
                                                                                                                                                                                                                                       });
                                                                                                                                                                                                                                       if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1213:
                                                                                                                                                                                                                                          addEventListener(Event.ENTER_FRAME,this.checkFrame);
                                                                                                                                                                                                                                          if(_loc3_ && Boolean(this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1252);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loaderInfo.addEventListener(ProgressEvent.PROGRESS,this.progress);
                                                                                                                                                                                                                                       addr1232:
                                                                                                                                                                                                                                       loaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioError);
                                                                                                                                                                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1252:
                                                                                                                                                                                                                                          this.m_tcGamesButton.buttonMode = true;
                                                                                                                                                                                                                                          addr1256:
                                                                                                                                                                                                                                          this.m_tcGamesButton.addEventListener(MouseEvent.CLICK,this.TCGamesButtonPressed);
                                                                                                                                                                                                                                          §§goto(addr1263);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1263:
                                                                                                                                                                                                                                       this.m_sponsorButton.buttonMode = true;
                                                                                                                                                                                                                                       §§goto(addr1267);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1252);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1256);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1267:
                                                                                                                                                                                                                              this.m_sponsorButton.addEventListener(MouseEvent.CLICK,this.SponsorButtonPressed);
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1213);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1123);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1183);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1088);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1179);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1088);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1057);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1232);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1134);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1088);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1123);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1232);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1036);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1173);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1134);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1036);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1032);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr887);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr937);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1232);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1032);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr991);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1077);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1149);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1120);
                                                                                                                                             }
                                                                                                                                             §§goto(addr987);
                                                                                                                                          }
                                                                                                                                          §§goto(addr836);
                                                                                                                                       }
                                                                                                                                       §§goto(addr887);
                                                                                                                                    }
                                                                                                                                    §§goto(addr895);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1088);
                                                                                                                              }
                                                                                                                              §§goto(addr856);
                                                                                                                           }
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                        §§goto(addr1010);
                                                                                                                     }
                                                                                                                     §§goto(addr664);
                                                                                                                  }
                                                                                                                  §§goto(addr983);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1010);
                                                                                                         }
                                                                                                         §§goto(addr971);
                                                                                                      }
                                                                                                      §§goto(addr875);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(_loc2_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      §§goto(addr485);
                                                                                                      §§push(this.m_charAnimaiton);
                                                                                                   }
                                                                                                   §§goto(addr800);
                                                                                                }
                                                                                                §§goto(addr485);
                                                                                             }
                                                                                             §§goto(addr856);
                                                                                          }
                                                                                          §§goto(addr1088);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr670);
                                                                                 }
                                                                                 §§goto(addr875);
                                                                              }
                                                                              §§goto(addr825);
                                                                           }
                                                                           §§goto(addr581);
                                                                        }
                                                                        §§goto(addr742);
                                                                     }
                                                                     §§goto(addr596);
                                                                  }
                                                                  §§goto(addr416);
                                                               }
                                                               §§goto(addr485);
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         §§goto(addr577);
                                                      }
                                                      §§goto(addr1213);
                                                   }
                                                   §§goto(addr978);
                                                }
                                                §§goto(addr1028);
                                             }
                                             §§goto(addr537);
                                          }
                                          §§goto(addr395);
                                       }
                                       §§goto(addr983);
                                    }
                                    §§goto(addr1213);
                                 }
                                 §§goto(addr1120);
                              }
                              §§goto(addr1213);
                           }
                           §§goto(addr780);
                        }
                        §§goto(addr959);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr103);
               }
               §§goto(addr48);
            }
            §§goto(addr90);
         }
         §§goto(addr42);
      }
      
      private function AnimationFinished() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_charAnimaiton.visible = false;
            if(_loc2_)
            {
               this.m_femaleStill.visible = true;
               if(_loc1_ && _loc1_)
               {
               }
               §§goto(addr64);
            }
            this.SetNewChatWindows();
            if(!(_loc1_ && _loc1_))
            {
               TweenNano.to(this.m_chatPopupBackground,0.8,{"y":479});
            }
         }
         addr64:
      }
      
      private function CycleLeft(param1:MouseEvent = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_chatPopupPosition);
            if(_loc4_ || Boolean(param1))
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               _loc2_.m_chatPopupPosition = _loc3_;
            }
            if(!(_loc5_ && Boolean(param1)))
            {
               if(this.m_chatPopupPosition < 0)
               {
                  if(_loc4_)
                  {
                     addr67:
                     this.m_chatPopupPosition = 43;
                     if(_loc4_ || Boolean(this))
                     {
                        addr77:
                        this.SetNewChatWindows();
                     }
                  }
                  return;
               }
            }
            §§goto(addr77);
         }
         §§goto(addr67);
      }
      
      private function CycleRight(param1:MouseEvent = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_chatPopupPosition);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               _loc2_.m_chatPopupPosition = _loc3_;
            }
            if(!_loc5_)
            {
               if(this.m_chatPopupPosition > 43)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     addr57:
                     this.m_chatPopupPosition = 0;
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        addr67:
                        this.SetNewChatWindows();
                     }
                  }
                  return;
               }
               §§goto(addr67);
            }
            §§goto(addr57);
         }
         §§goto(addr67);
      }
      
      public function SetNewChatWindows() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_chatNumberText.text = "" + this.m_chatPopupPosition;
         }
         §§push(this.m_chatPopupPosition);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(0 === _loc1_)
            {
               if(_loc3_)
               {
                  §§push(0);
               }
               else
               {
                  addr944:
                  §§push(44);
                  if(_loc2_)
                  {
                     addr973:
                  }
               }
            }
            else if(1 === _loc1_)
            {
               if(_loc3_)
               {
                  §§goto(addr1019);
               }
               else
               {
                  addr596:
                  §§push(18);
                  if(_loc3_)
                  {
                     §§goto(addr1019);
                  }
                  else
                  {
                     addr823:
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        addr826:
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr835:
                              addr1019:
                              addr1020:
                              switch(1)
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
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    addr274:
                                    break;
                                 case 6:
                                    this.SetFeMaleText("Why do we battle them?");
                                    break;
                                 case 7:
                                    this.SetMaleText("So they can grow.");
                                    break;
                                 case 8:
                                    this.SetFeMaleText("Why do we collect stars?");
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    addr233:
                                    break;
                                 case 9:
                                    this.SetMaleText("They are a sign of how strong a...");
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    addr149:
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
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr233);
                                    break;
                                 case 15:
                                    this.SetMaleText("Try to KO their minions before...");
                                    break;
                                 case 16:
                                    this.SetMaleText("they can hit\nyour minions.");
                                    break;
                                 case 17:
                                    this.SetMaleText("It can be good to have a tank...");
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    addr228:
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
                                    if(!_loc3_)
                                    {
                                       addr156:
                                       break;
                                    }
                                    §§goto(addr149);
                                    break;
                                 case 23:
                                    this.SetFeMaleText("And earth minons?");
                                    if(_loc2_)
                                    {
                                       addr342:
                                       break;
                                    }
                                    §§goto(addr156);
                                    break;
                                 case 24:
                                    this.SetMaleText("Water, grass, and undead moves.");
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       break;
                                    }
                                    addr175:
                                    break;
                                 case 25:
                                    this.SetFeMaleText("What about ice minons?");
                                    if(_loc2_)
                                    {
                                       addr216:
                                       break;
                                    }
                                    §§goto(addr175);
                                    break;
                                 case 26:
                                    this.SetMaleText("Fire, flying, titan, and robot.");
                                    break;
                                 case 27:
                                    this.SetFeMaleText("What are fire minions weak to?");
                                    break;
                                 case 28:
                                    this.SetMaleText("Water and earth moves.");
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr274);
                                    break;
                                 case 29:
                                    this.SetFeMaleText("How about electric minons?");
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       break;
                                    }
                                    addr245:
                                    break;
                                 case 30:
                                    this.SetMaleText("Earth and dino moves.");
                                    break;
                                 case 31:
                                    this.SetFeMaleText("And undead minons?");
                                    if(_loc2_)
                                    {
                                       addr359:
                                       break;
                                    }
                                    §§goto(addr216);
                                    break;
                                 case 32:
                                    this.SetMaleText("Fire, plant, and holy.");
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr233);
                                    break;
                                 case 33:
                                    this.SetFeMaleText("What are robot minions weak to?");
                                    §§goto(addr228);
                                 case 34:
                                    this.SetMaleText("Fire, electric, water, and dino.");
                                    §§goto(addr233);
                                 case 35:
                                    this.SetFeMaleText("How about flying minons?");
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    addr320:
                                    break;
                                 case 36:
                                    this.SetMaleText("Electric and earth moves.");
                                    §§goto(addr245);
                                 case 37:
                                    this.SetFeMaleText("What are demonic minions weak to?");
                                    break;
                                 case 38:
                                    this.SetMaleText("Holy and water moves.");
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    addr347:
                                    break;
                                 case 39:
                                    this.SetFeMaleText("And holy minions?");
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       break;
                                    }
                                    addr298:
                                    break;
                                 case 40:
                                    this.SetMaleText("Demonic and normal moves.");
                                    §§goto(addr274);
                                 case 41:
                                    this.SetFeMaleText("What are normal minions weak to?");
                                    if(_loc3_ || _loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr298);
                                    break;
                                 case 42:
                                    this.SetMaleText("Undead and demonic moves.");
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr298);
                                    }
                                    else
                                    {
                                       §§goto(addr320);
                                    }
                                 case 43:
                                    this.SetFeMaleText("And dino minions?");
                                    break;
                                 case 44:
                                    this.SetMaleText("Ice, earth, robot, and titan moves.");
                                    if(_loc3_ || _loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr320);
                                    break;
                                 case 45:
                                    this.SetFeMaleText("What are titan minions weak to?");
                                    §§goto(addr320);
                                 case 46:
                                    this.SetMaleText("Ice, holy, and other titan moves.");
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    addr352:
                                    break;
                                 case 47:
                                    this.SetFeMaleText("What do I do when I beat the game?");
                                    break;
                                 case 48:
                                    this.SetMaleText("Work on hard mode or...");
                                    §§goto(addr342);
                                 case 49:
                                    this.SetMaleText("collect all the minons!");
                                    §§goto(addr347);
                                 case 50:
                                    this.SetFeMaleText("How many minons are there?");
                                    §§goto(addr352);
                                 case 51:
                                    this.SetMaleText("There are 102 minions!");
                                    if(_loc2_)
                                    {
                                       addr363:
                                       break;
                                    }
                                    §§goto(addr359);
                                    break;
                                 default:
                                    this.TurnOffTheChatBubbles();
                                    §§goto(addr363);
                              }
                              return;
                              §§push(35);
                           }
                           else
                           {
                              addr1006:
                              §§push(51);
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr1014:
                              }
                              §§goto(addr1019);
                           }
                        }
                        else if(34 === _loc1_)
                        {
                           addr839:
                           §§goto(addr1019);
                           §§push(36);
                        }
                        else
                        {
                           §§push(35);
                           if(!_loc2_)
                           {
                              addr845:
                              if(§§pop() === _loc1_)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr1019);
                                    §§push(37);
                                 }
                                 else
                                 {
                                    addr928:
                                    §§goto(addr1019);
                                    §§push(43);
                                 }
                                 §§goto(addr1019);
                              }
                              else
                              {
                                 §§push(36);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop() === _loc1_)
                                    {
                                       addr860:
                                       §§push(38);
                                       if(!_loc3_)
                                       {
                                          addr978:
                                       }
                                       §§goto(addr1019);
                                    }
                                    else if(37 === _loc1_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr874:
                                          §§goto(addr1019);
                                          §§push(39);
                                       }
                                       else
                                       {
                                          addr888:
                                          §§push(40);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§goto(addr1019);
                                          }
                                          else
                                          {
                                             §§goto(addr973);
                                          }
                                       }
                                       §§goto(addr1019);
                                    }
                                    else
                                    {
                                       addr877:
                                       §§push(38);
                                       §§push(_loc1_);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr885:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr888);
                                             }
                                             else
                                             {
                                                addr965:
                                                §§goto(addr1019);
                                                §§push(45);
                                             }
                                             §§goto(addr1019);
                                          }
                                          else
                                          {
                                             §§push(35);
                                             if(_loc3_)
                                             {
                                                addr900:
                                                §§push(_loc1_);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr1019);
                                                      §§push(41);
                                                   }
                                                   else
                                                   {
                                                      §§push(36);
                                                      §§push(_loc1_);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr920:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            §§goto(addr1019);
                                                            §§push(42);
                                                         }
                                                         else
                                                         {
                                                            §§push(37);
                                                            if(_loc3_)
                                                            {
                                                               addr926:
                                                               if(§§pop() === _loc1_)
                                                               {
                                                                  §§goto(addr928);
                                                               }
                                                               else
                                                               {
                                                                  §§push(36);
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     addr938:
                                                                     §§push(_loc1_);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr944);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr965);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(37);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              addr956:
                                                                              §§push(_loc1_);
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 addr964:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    §§goto(addr965);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(38);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr970:
                                                                                       if(§§pop() === _loc1_)
                                                                                       {
                                                                                          §§goto(addr973);
                                                                                          §§push(46);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr976:
                                                                                          if(39 === _loc1_)
                                                                                          {
                                                                                             §§goto(addr978);
                                                                                             §§push(47);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr981:
                                                                                             if(40 === _loc1_)
                                                                                             {
                                                                                                addr983:
                                                                                                §§goto(addr1019);
                                                                                                §§push(48);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr986:
                                                                                                if(41 === _loc1_)
                                                                                                {
                                                                                                   addr988:
                                                                                                   §§goto(addr1019);
                                                                                                   §§push(49);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr998:
                                                                                                   if(42 === _loc1_)
                                                                                                   {
                                                                                                      §§push(50);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr1002:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr1005:
                                                                                                      if(43 === _loc1_)
                                                                                                      {
                                                                                                         §§goto(addr1006);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr1019);
                                                                                                         §§push(52);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1019);
                                                                                                }
                                                                                                §§goto(addr1019);
                                                                                             }
                                                                                             §§goto(addr1019);
                                                                                          }
                                                                                          §§goto(addr1019);
                                                                                       }
                                                                                       §§goto(addr1019);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1019);
                                                                              }
                                                                              §§goto(addr986);
                                                                           }
                                                                           §§goto(addr1014);
                                                                        }
                                                                        §§goto(addr1019);
                                                                     }
                                                                     §§goto(addr998);
                                                                  }
                                                                  §§goto(addr986);
                                                               }
                                                            }
                                                            §§goto(addr978);
                                                         }
                                                         §§goto(addr1019);
                                                      }
                                                      §§goto(addr1005);
                                                   }
                                                   §§goto(addr1019);
                                                }
                                                §§goto(addr964);
                                             }
                                             §§goto(addr928);
                                          }
                                       }
                                       §§goto(addr986);
                                    }
                                    §§goto(addr1019);
                                 }
                                 §§goto(addr938);
                              }
                           }
                           §§goto(addr988);
                        }
                        §§goto(addr1019);
                     }
                     §§goto(addr845);
                  }
               }
               §§goto(addr1019);
            }
            else
            {
               §§push(2);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop() === _loc1_)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr1019);
                        §§push(2);
                     }
                     else
                     {
                        addr587:
                        §§push(17);
                        if(_loc2_)
                        {
                           addr793:
                        }
                        §§goto(addr1019);
                     }
                     §§goto(addr1019);
                  }
                  else
                  {
                     §§push(3);
                     §§push(_loc1_);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr1019);
                           §§push(3);
                        }
                        else
                        {
                           §§push(4);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop() === _loc1_)
                              {
                                 §§goto(addr1019);
                                 §§push(4);
                              }
                              else
                              {
                                 §§push(5);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop() === _loc1_)
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§goto(addr1019);
                                          §§push(5);
                                       }
                                       else
                                       {
                                          addr704:
                                          §§goto(addr1019);
                                          §§push(26);
                                       }
                                       §§goto(addr1019);
                                    }
                                    else if(6 === _loc1_)
                                    {
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(6);
                                          if(!_loc2_)
                                          {
                                             §§goto(addr1019);
                                          }
                                          else
                                          {
                                             §§goto(addr877);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr874);
                                       }
                                       §§goto(addr1019);
                                    }
                                    else
                                    {
                                       §§push(7);
                                       if(_loc3_)
                                       {
                                          if(§§pop() === _loc1_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(7);
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr1019);
                                                }
                                                else
                                                {
                                                   §§goto(addr988);
                                                }
                                             }
                                             else
                                             {
                                                addr743:
                                                §§goto(addr1019);
                                                §§push(30);
                                             }
                                             §§goto(addr1019);
                                          }
                                          else
                                          {
                                             §§push(8);
                                             §§push(_loc1_);
                                             if(!_loc2_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr1019);
                                                      §§push(8);
                                                   }
                                                   else
                                                   {
                                                      addr818:
                                                      §§push(34);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr1019);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr835);
                                                      }
                                                   }
                                                   §§goto(addr1019);
                                                }
                                                else
                                                {
                                                   §§push(9);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(§§pop() === _loc1_)
                                                      {
                                                         §§goto(addr1019);
                                                         §§push(9);
                                                      }
                                                      else
                                                      {
                                                         §§push(10);
                                                         §§push(_loc1_);
                                                         if(!_loc2_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr499:
                                                                  §§goto(addr1019);
                                                                  §§push(10);
                                                               }
                                                               else
                                                               {
                                                                  addr673:
                                                                  §§push(23);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr1019);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1002);
                                                                  }
                                                               }
                                                               §§goto(addr1019);
                                                            }
                                                            else
                                                            {
                                                               §§push(11);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(11);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§goto(addr1019);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr704);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr860);
                                                                        }
                                                                        §§goto(addr1019);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(12);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(12);
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr1019);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1002);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr605:
                                                                                    §§goto(addr1019);
                                                                                    §§push(19);
                                                                                 }
                                                                                 §§goto(addr1019);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(13);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr556:
                                                                                    if(§§pop() === _loc1_)
                                                                                    {
                                                                                       §§goto(addr1019);
                                                                                       §§push(13);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       if(14 === _loc1_)
                                                                                       {
                                                                                          §§goto(addr1019);
                                                                                          §§push(14);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(15);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             if(§§pop() === _loc1_)
                                                                                             {
                                                                                                §§push(15);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§goto(addr1019);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr585:
                                                                                                   if(§§pop() === _loc1_)
                                                                                                   {
                                                                                                      §§goto(addr587);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(18);
                                                                                                      §§push(_loc1_);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            §§goto(addr596);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            if(19 === _loc1_)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr605);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr988);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(20);
                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr615:
                                                                                                                  §§push(_loc1_);
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr1019);
                                                                                                                           §§push(20);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr888);
                                                                                                                        }
                                                                                                                        §§goto(addr1019);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr629:
                                                                                                                        if(21 === _loc1_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(21);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1019);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr965);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr785:
                                                                                                                              §§push(33);
                                                                                                                              if(_loc3_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr793);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr970);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1019);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(22);
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(§§pop() === _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(22);
                                                                                                                                 if(_loc3_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1019);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr983);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(23);
                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr673);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(24);
                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() === _loc1_)
                                                                                                                                             {
                                                                                                                                                addr688:
                                                                                                                                                §§goto(addr1019);
                                                                                                                                                §§push(24);
                                                                                                                                             }
                                                                                                                                             else if(23 === _loc1_)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr695:
                                                                                                                                                   §§goto(addr1019);
                                                                                                                                                   §§push(25);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr785);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1019);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(24);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr702:
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr704);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         if(25 === _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(27);
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1019);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr900);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            if(26 === _loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§push(28);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1019);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr793);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(27);
                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                               if(!(_loc2_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1019);
                                                                                                                                                                     §§push(29);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(28);
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr734:
                                                                                                                                                                        if(§§pop() === _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr743);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr944);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(29);
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr956);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1019);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§push(31);
                                                                                                                                                                           if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1019);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr978);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(30);
                                                                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() === _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1019);
                                                                                                                                                                                 §§push(32);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(31);
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() === _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr785);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr860);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(32);
                                                                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr802:
                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr818);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr839);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr823);
                                                                                                                                                                                                §§push(33);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1019);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr981);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr835);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1019);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr965);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1019);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr973);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1019);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr920);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1019);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr885);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1019);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr928);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr998);
                                                                                                                                                }
                                                                                                                                                §§goto(addr928);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1019);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1002);
                                                                                                                                    }
                                                                                                                                    §§goto(addr702);
                                                                                                                                 }
                                                                                                                                 §§goto(addr695);
                                                                                                                              }
                                                                                                                              §§goto(addr1019);
                                                                                                                           }
                                                                                                                           §§goto(addr734);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1019);
                                                                                                                  }
                                                                                                                  §§goto(addr1005);
                                                                                                               }
                                                                                                               §§goto(addr688);
                                                                                                            }
                                                                                                            §§goto(addr1019);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr976);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else if(16 === _loc1_)
                                                                                             {
                                                                                                §§goto(addr1019);
                                                                                                §§push(16);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr585);
                                                                                                §§push(17);
                                                                                             }
                                                                                             §§goto(addr1019);
                                                                                          }
                                                                                          §§goto(addr926);
                                                                                       }
                                                                                       §§goto(addr1019);
                                                                                    }
                                                                                    §§goto(addr1019);
                                                                                 }
                                                                                 §§goto(addr956);
                                                                              }
                                                                           }
                                                                           §§goto(addr826);
                                                                        }
                                                                        §§goto(addr629);
                                                                     }
                                                                  }
                                                                  §§goto(addr976);
                                                               }
                                                               §§goto(addr743);
                                                            }
                                                         }
                                                         §§goto(addr970);
                                                      }
                                                      §§goto(addr1019);
                                                   }
                                                   §§goto(addr585);
                                                }
                                             }
                                             §§goto(addr629);
                                          }
                                       }
                                       §§goto(addr615);
                                    }
                                    §§goto(addr1019);
                                 }
                                 §§goto(addr556);
                              }
                              §§goto(addr1019);
                           }
                           §§goto(addr499);
                        }
                        §§goto(addr1019);
                     }
                     §§goto(addr702);
                  }
               }
               §§goto(addr802);
            }
            §§goto(addr1019);
         }
         §§goto(addr1020);
      }
      
      private function TurnOffTheChatBubbles() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            TweenNano.to(this.m_femaleSpeechBubble,0.5,{"alpha":0});
            if(!(_loc1_ && _loc2_))
            {
               addr38:
               TweenNano.to(this.m_maleSpeechBubble,0.5,{"alpha":0});
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function SetMaleText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_maleSpeechText.text = param1;
         if(param1.length > 20)
         {
            this.m_maleSpeechText.y = 6;
            if(_loc2_ || _loc3_)
            {
               addr58:
               TweenNano.to(this.m_femaleSpeechBubble,0.5,{"alpha":0});
            }
         }
         else
         {
            this.m_maleSpeechText.y = 14;
            if(!(_loc3_ && Boolean(param1)))
            {
               §§goto(addr58);
            }
         }
         TweenNano.to(this.m_maleSpeechBubble,0.5,{"alpha":1});
      }
      
      private function SetFeMaleText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_femaleSpeechText.text = param1;
         if(_loc2_)
         {
            if(param1.length > 20)
            {
               this.m_femaleSpeechText.y = 6;
               addr48:
               TweenNano.to(this.m_femaleSpeechBubble,0.5,{"alpha":1});
               if(_loc2_)
               {
                  TweenNano.to(this.m_maleSpeechBubble,0.5,{"alpha":0});
               }
               addr34:
            }
            else
            {
               this.m_femaleSpeechText.y = 14;
               if(_loc2_)
               {
                  §§goto(addr48);
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function ioError(param1:IOErrorEvent) : void
      {
      }
      
      private function progress(param1:ProgressEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            this.m_percentageLoaded = param1.bytesLoaded / param1.bytesTotal;
            if(_loc4_ || _loc2_)
            {
               this.m_loadingBar.x = 55 + 285 * this.m_percentageLoaded;
            }
         }
         §§push(int(param1.bytesLoaded / 100000) / 10);
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(int(param1.bytesTotal / 100000) / 10);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc2_))
         {
            this.m_percentageLoadedText.text = _loc2_ + "mb / " + _loc3_ + "mb";
         }
      }
      
      private function checkFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            if(currentFrame == totalFrames)
            {
               if(!_loc2_)
               {
                  stop();
                  if(!_loc2_)
                  {
                     addr37:
                     this.loadingFinished();
                  }
               }
               §§goto(addr37);
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function loadingFinished() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         removeEventListener(Event.ENTER_FRAME,this.checkFrame);
         loaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.progress);
         if(!(_loc2_ && _loc2_))
         {
            loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioError);
         }
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.m_playButton.buttonMode = true;
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_playButton.addEventListener(MouseEvent.CLICK,this.TransitionToGame);
               if(_loc1_)
               {
                  if(this.m_skipPlayButton)
                  {
                     if(_loc2_ && Boolean(this))
                     {
                     }
                  }
                  §§goto(addr66);
               }
               this.TransitionToGame();
            }
         }
         addr66:
      }
      
      private function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_tcGamesButton.removeEventListener(MouseEvent.CLICK,this.TCGamesButtonPressed);
            if(_loc2_ || _loc1_)
            {
               this.m_sponsorButton.removeEventListener(MouseEvent.CLICK,this.SponsorButtonPressed);
               if(!_loc1_)
               {
                  removeChild(this.m_tcGamesButton);
                  removeChild(this.m_sponsorButton);
                  removeChild(this.m_background);
                  removeChild(this.m_femaleStill);
                  this.m_playButton.mask = null;
                  if(!_loc1_)
                  {
                     removeChild(this.m_playButton_mask);
                     removeChild(this.m_loadingBar);
                     if(!(_loc1_ && _loc2_))
                     {
                        removeChild(this.m_playButton);
                        removeChild(this.m_fadeBackground);
                        if(_loc2_ || Boolean(this))
                        {
                           this.m_loadingBackground.removeChild(this.m_percentageLoadedText);
                           if(_loc2_ || _loc1_)
                           {
                              removeChild(this.m_loadingBackground);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr121:
                                 this.m_maleSpeechBubble.removeChild(this.m_maleSpeechText);
                                 if(_loc2_)
                                 {
                                    removeChild(this.m_maleSpeechBubble);
                                    addr132:
                                    this.m_femaleSpeechBubble.removeChild(this.m_femaleSpeechText);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr144:
                                       removeChild(this.m_femaleSpeechBubble);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          this.m_charAnimaiton.Cleanup();
                                       }
                                       this.m_chatPopupButton_left.removeEventListener(MouseEvent.CLICK,this.CycleLeft);
                                       addr204:
                                       this.m_chatPopupBackground.removeChild(this.m_chatPopupButton_right);
                                       if(_loc2_)
                                       {
                                          addr211:
                                          this.m_chatPopupButton_right.removeEventListener(MouseEvent.CLICK,this.CycleRight);
                                       }
                                       addr218:
                                       removeChild(this.m_versionText);
                                       return;
                                       addr190:
                                    }
                                    removeChild(this.m_charAnimaiton);
                                 }
                                 removeChild(this.m_chatPopupBackground);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr173:
                                    this.m_chatPopupBackground.removeChild(this.m_chatNumberText);
                                    this.m_chatPopupBackground.removeChild(this.m_chatPopupButton_left);
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       §§goto(addr190);
                                    }
                                    §§goto(addr211);
                                 }
                              }
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr132);
               }
               §§goto(addr121);
            }
            §§goto(addr144);
         }
         §§goto(addr204);
      }
      
      private function SponsorButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:URLRequest = new URLRequest("http://www.sogood.com");
         if(!_loc3_)
         {
            navigateToURL(_loc2_);
         }
      }
      
      private function TCGamesButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest("http://www.facebook.com/ToyChestGames");
         if(_loc3_ || Boolean(param1))
         {
            navigateToURL(_loc2_);
         }
      }
      
      private function TransitionToGame(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.m_playButton.removeEventListener(MouseEvent.CLICK,this.TransitionToGame);
         if(!_loc2_)
         {
            this.m_fadeBackground = new Sprite();
            this.m_fadeBackground.graphics.beginFill(16777215);
            this.m_fadeBackground.graphics.drawRect(0,0,700,525);
            if(!_loc2_)
            {
               this.m_fadeBackground.graphics.endFill();
               if(!_loc2_)
               {
                  addChild(this.m_fadeBackground);
                  if(!_loc2_)
                  {
                     §§goto(addr68);
                  }
                  §§goto(addr79);
               }
               §§goto(addr74);
            }
            §§goto(addr77);
         }
         addr68:
         this.m_fadeBackground.alpha = 0;
         if(_loc3_)
         {
            addr74:
            if(this.m_skipPlayButton)
            {
               addr77:
               this.startup();
               addr79:
            }
            else
            {
               TweenNano.to(this.m_fadeBackground,0.4,{
                  "alpha":1,
                  "onComplete":this.startup
               });
            }
         }
      }
      
      private function startup() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.cleanup();
         }
         var _loc1_:Class = getDefinitionByName("Main") as Class;
         if(_loc2_ || Boolean(_loc1_))
         {
            addChild(new _loc1_() as DisplayObject);
         }
      }
   }
}
