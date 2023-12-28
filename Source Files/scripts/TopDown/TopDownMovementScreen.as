package TopDown
{
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseInterfacePieces.ToggleButton;
   import SharedObjects.TutorialPopup;
   import States.GameState;
   import States.StarUpgradeTypes;
   import States.TopDownStates;
   import States.TutorialTypes;
   import TopDown.LevelObjects.ChatBox.StandardChatBox;
   import TopDown.LevelObjects.MainChar;
   import TopDown.Levels.BaseTopDownLevel;
   import TopDown.Levels.MainTower.Lobby;
   import TopDown.Menus.ActionAvailbleIcon;
   import TopDown.Menus.MiniMap.MiniMap;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.Timer;
   
   public class TopDownMovementScreen
   {
       
      
      private var m_menuButton:TCButton;
      
      private var m_optionsButton:TCButton;
      
      public var m_muteMusicButton:ToggleButton;
      
      public var m_muteSoundButton:ToggleButton;
      
      public var m_bottomVisualLayer:Sprite;
      
      public var m_mainChar:MainChar;
      
      public var m_topVisualLayer:Sprite;
      
      public var m_transitionBackground:Sprite;
      
      public var m_autoWinModeOn:Sprite;
      
      public var m_keysAndStarBackground:Sprite;
      
      public var m_sageSealPiecesBackground:Sprite;
      
      public var m_numOfStarsText:TextField;
      
      public var m_numOfKeysText:TextField;
      
      public var m_numOfSagePieceText:TextField;
      
      public var m_sageSealPiecesIcon:Sprite;
      
      public var m_cameraCollRect:Sprite;
      
      private var m_charMovementSpeed:Number;
      
      private var m_defaultMovementSpeed:Number = 7;
      
      private var m_mainCharCenterPointX:int;
      
      private var m_mainCharCenterPointY:int;
      
      public var m_mainCharCollBox:Sprite;
      
      private var m_prevLocalCharXPos:Number;
      
      private var m_prevLocalCharYPos:Number;
      
      private var m_prevGlobalCharXPos:Number;
      
      private var m_prevGlobalCharYPos:Number;
      
      private var m_prevVisualLayerXPos:Number;
      
      private var m_prevVisualLayerYPos:Number;
      
      public var m_currLevel:BaseTopDownLevel;
      
      private var m_prevLevel:BaseTopDownLevel;
      
      public var m_returnChatBox:StandardChatBox;
      
      public var m_returnTrianerForChatBox:TrainerDataObject;
      
      public var m_miniMap:MiniMap;
      
      public var m_newStarsPopup:TutorialPopup;
      
      public var m_gemsPopup:TutorialPopup;
      
      public var m_unspentTalentPointsPopup:TutorialPopup;
      
      public var m_actionIcon:ActionAvailbleIcon;
      
      public var m_movementTutorial:ActionAvailbleIcon;
      
      private var m_previousHighestFloor:int;
      
      private var m_sagePiecesForFusion:Vector.<Sprite>;
      
      private var m_sageSealFused:Sprite;
      
      private var m_flash:Sprite;
      
      public var m_playSageSealAnimation:Boolean;
      
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
      
      public function TopDownMovementScreen()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super();
         this.m_previousHighestFloor = -99;
         this.m_playSageSealAnimation = false;
         this.m_sponsorTimer = new Timer(100000 + Math.random() * 250000,0);
         if(_loc2_)
         {
            this.m_sponsorTimer.addEventListener("timer",this.timerHandler);
            if(_loc2_ || _loc2_)
            {
               addr62:
               this.m_sponsorTimer.start();
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function LoadSprites() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.m_bottomVisualLayer = new Sprite();
         if(!_loc3_)
         {
            this.m_topVisualLayer = new Sprite();
            if(!_loc3_)
            {
               §§push(Singleton.utility);
               if(!_loc3_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(_loc4_ || _loc2_)
                     {
                        §§pop().addChild(this.m_bottomVisualLayer);
                        this.m_cameraCollRect = new Sprite();
                        this.m_cameraCollRect.graphics.beginFill(0);
                        this.m_cameraCollRect.graphics.drawRect(0,0,700,525);
                        this.m_cameraCollRect.graphics.endFill();
                        this.m_cameraCollRect.visible = false;
                        if(!_loc3_)
                        {
                           §§push(Singleton.utility);
                           if(!_loc3_)
                           {
                              §§push(§§pop().m_screenControllers.m_topDownScreen);
                              if(!_loc3_)
                              {
                                 §§pop().addChild(this.m_cameraCollRect);
                                 this.m_mainChar = new MainChar();
                                 addr91:
                                 §§push(this.m_mainChar);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§pop().LoadSprites();
                                    §§push(Singleton.utility.m_screenControllers);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(§§pop().m_topDownScreen);
                                       if(!_loc3_)
                                       {
                                          §§pop().addChild(this.m_mainChar);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             this.m_mainCharCollBox = new Sprite();
                                             if(_loc4_ || _loc3_)
                                             {
                                                this.m_mainCharCollBox.graphics.beginFill(16711935);
                                                this.m_mainCharCollBox.graphics.drawRect(0,0,45,25);
                                                this.m_mainCharCollBox.graphics.endFill();
                                                this.m_mainCharCollBox.x = 14;
                                                if(!_loc3_)
                                                {
                                                   this.m_mainCharCollBox.y = 70;
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr171:
                                                      this.m_mainChar.addChild(this.m_mainCharCollBox);
                                                   }
                                                   this.m_mainCharCollBox.visible = false;
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      this.m_charMovementSpeed = this.m_defaultMovementSpeed;
                                                      addr193:
                                                      Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_topVisualLayer);
                                                      addr189:
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this);
                                                         §§push(700 / 2);
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            §§push(§§pop() - 32);
                                                         }
                                                         §§pop().m_mainCharCenterPointX = §§pop();
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(this);
                                                            §§push(525 / 2);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() - 45);
                                                            }
                                                            §§pop().m_mainCharCenterPointY = §§pop();
                                                            this.m_menuButton = new TCButton(this.OnMenuButtonClick,"menus_gameplayMenuTab");
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               addr242:
                                                               §§push(this.m_menuButton);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(596);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr260:
                                                                        this.m_menuButton.y = 491;
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_menuButton);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              this.m_muteMusicButton = new ToggleButton(this.ToggleMuteMusic,"menu_muteMusicButton_on","menu_muteMusicButton_off");
                                                                              §§push(this.m_muteMusicButton);
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr314:
                                                                                 §§push(4);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr310:
                                                                                    §§push(this.m_muteMusicButton);
                                                                                    §§push(6);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 §§push(Singleton.utility.m_screenControllers);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop().m_topDownScreen);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§pop().addChild(this.m_muteMusicButton);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          this.m_muteSoundButton = new ToggleButton(this.ToggleSoundMusic,"menu_muteSoundButton_on","menu_muteSoundButton_off");
                                                                                       }
                                                                                       §§push(this.m_muteSoundButton);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(36);
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             addr363:
                                                                                             §§push(this.m_muteSoundButton);
                                                                                             §§push(5);
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr372:
                                                                                             §§push(Singleton.utility.m_screenControllers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr377:
                                                                                                §§push(§§pop().m_topDownScreen);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§pop().addChild(this.m_muteSoundButton);
                                                                                                   if(_loc4_ || Boolean(this))
                                                                                                   {
                                                                                                      this.m_autoWinModeOn = Singleton.utility.m_spriteHandler.CreateSprite("entryObject");
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         this.m_autoWinModeOn.x = 7;
                                                                                                         this.m_autoWinModeOn.y = 479;
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            addr423:
                                                                                                            Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_autoWinModeOn);
                                                                                                            addr426:
                                                                                                            this.m_autoWinModeOn.visible = Singleton.staticData.AUTO_WIN_BATTLES;
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               this.m_sageSealPiecesBackground = Singleton.utility.m_spriteHandler.CreateSprite("hud_sealPiecesBackground");
                                                                                                            }
                                                                                                            this.m_sageSealPiecesBackground.x = 391;
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               addr457:
                                                                                                               this.m_sageSealPiecesBackground.y = 490;
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr467:
                                                                                                                  Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sageSealPiecesBackground);
                                                                                                                  this.m_sageSealPiecesIcon = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_1_1");
                                                                                                                  addr463:
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr479:
                                                                                                                     this.m_sageSealPiecesIcon.x = 13;
                                                                                                                  }
                                                                                                               }
                                                                                                               this.m_sageSealPiecesIcon.y = 3;
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  this.m_sageSealPiecesBackground.addChild(this.m_sageSealPiecesIcon);
                                                                                                                  addr494:
                                                                                                                  this.m_keysAndStarBackground = Singleton.utility.m_spriteHandler.CreateSprite("hud_starsAndKeysBackground");
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr503:
                                                                                                                     this.m_keysAndStarBackground.x = 388;
                                                                                                                     addr507:
                                                                                                                     this.m_keysAndStarBackground.y = 488;
                                                                                                                     addr514:
                                                                                                                     Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_keysAndStarBackground);
                                                                                                                     addr518:
                                                                                                                     var _loc1_:TextFormat = new TextFormat();
                                                                                                                     _loc1_.color = 15066856;
                                                                                                                     if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                     {
                                                                                                                        _loc1_.size = 25;
                                                                                                                        _loc1_.font = "BurbinCasual";
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           _loc1_.align = TextFormatAlign.CENTER;
                                                                                                                           this.m_numOfSagePieceText = new TextField();
                                                                                                                           this.m_numOfSagePieceText.embedFonts = true;
                                                                                                                           if(_loc4_ || Boolean(this))
                                                                                                                           {
                                                                                                                              this.m_numOfSagePieceText.defaultTextFormat = _loc1_;
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 this.m_numOfSagePieceText.wordWrap = true;
                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    this.m_numOfSagePieceText.autoSize = TextFieldAutoSize.CENTER;
                                                                                                                                    this.m_numOfSagePieceText.text = "x3";
                                                                                                                                    this.m_numOfSagePieceText.width = 150;
                                                                                                                                    this.m_numOfSagePieceText.x = -12;
                                                                                                                                    this.m_numOfSagePieceText.y = -1;
                                                                                                                                    this.m_numOfSagePieceText.selectable = false;
                                                                                                                                    this.m_sageSealPiecesBackground.addChild(this.m_numOfSagePieceText);
                                                                                                                                 }
                                                                                                                                 this.m_numOfStarsText = new TextField();
                                                                                                                                 this.m_numOfStarsText.embedFonts = true;
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    this.m_numOfStarsText.defaultTextFormat = _loc1_;
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       addr627:
                                                                                                                                       this.m_numOfStarsText.wordWrap = true;
                                                                                                                                       this.m_numOfStarsText.autoSize = TextFieldAutoSize.CENTER;
                                                                                                                                       this.m_numOfStarsText.text = "x3";
                                                                                                                                       this.m_numOfStarsText.width = 150;
                                                                                                                                       this.m_numOfStarsText.x = 462;
                                                                                                                                       this.m_numOfStarsText.y = 489;
                                                                                                                                       this.m_numOfStarsText.selectable = false;
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(Singleton.utility.m_screenControllers);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().m_topDownScreen);
                                                                                                                                             if(!(_loc3_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§pop().addChild(this.m_numOfStarsText);
                                                                                                                                                this.m_sponsorURL_part1 = "h";
                                                                                                                                                if(_loc4_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   this.m_sponsorURL_part2 = "t";
                                                                                                                                                   this.m_sponsorURL_part3 = "p";
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr699:
                                                                                                                                                      this.m_sponsorURL_part4 = ":";
                                                                                                                                                      if(_loc4_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         this.m_sponsorURL_part5 = "/";
                                                                                                                                                         addr712:
                                                                                                                                                         this.m_sponsorURL_part6 = "so";
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            this.m_sponsorURL_part7 = "go";
                                                                                                                                                            this.m_sponsorURL_part8 = "o";
                                                                                                                                                            this.m_sponsorURL_part9 = "d";
                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               this.m_sponsorURL_part10 = ".";
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.m_sponsorURL_part11 = "c";
                                                                                                                                                                  this.m_sponsorURL_part12 = "m";
                                                                                                                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                  {
                                                                                                                                                                     this.m_numOfKeysText = new TextField();
                                                                                                                                                                     if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        this.m_numOfKeysText.embedFonts = true;
                                                                                                                                                                        addr766:
                                                                                                                                                                        this.m_numOfKeysText.defaultTextFormat = _loc1_;
                                                                                                                                                                        addr770:
                                                                                                                                                                        this.m_numOfKeysText.wordWrap = true;
                                                                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           this.m_numOfKeysText.autoSize = TextFieldAutoSize.CENTER;
                                                                                                                                                                           addr786:
                                                                                                                                                                           this.m_numOfKeysText.text = "x3";
                                                                                                                                                                           this.m_numOfKeysText.width = 150;
                                                                                                                                                                           this.m_numOfKeysText.x = 382;
                                                                                                                                                                           this.m_numOfKeysText.y = 489;
                                                                                                                                                                        }
                                                                                                                                                                        this.m_numOfKeysText.selectable = false;
                                                                                                                                                                        §§push(Singleton.utility.m_screenControllers.m_topDownScreen);
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().addChild(this.m_numOfKeysText);
                                                                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              this.m_newStarsPopup = new TutorialPopup();
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.m_newStarsPopup);
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().Create("tutorial_newStars_top");
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.m_newStarsPopup);
                                                                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(606);
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             addr851:
                                                                                                                                                                                             §§push(this.m_newStarsPopup);
                                                                                                                                                                                             §§push(436);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          addr853:
                                                                                                                                                                                          §§push(Singleton.utility);
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().m_screenControllers.m_topDownScreen);
                                                                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().addChild(this.m_newStarsPopup);
                                                                                                                                                                                                this.m_unspentTalentPointsPopup = new TutorialPopup();
                                                                                                                                                                                                §§push(this.m_unspentTalentPointsPopup);
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().Create("tutorial_newTalentPointsPopup");
                                                                                                                                                                                                   §§push(this.m_unspentTalentPointsPopup);
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(582);
                                                                                                                                                                                                      if(_loc4_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         addr1076:
                                                                                                                                                                                                         addr1090:
                                                                                                                                                                                                         addr1080:
                                                                                                                                                                                                         addr1079:
                                                                                                                                                                                                         addr1083:
                                                                                                                                                                                                         addr1078:
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr896:
                                                                                                                                                                                                            §§push(this.m_unspentTalentPointsPopup);
                                                                                                                                                                                                            §§push(429);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_movementTutorial);
                                                                                                                                                                                                         this.m_sagePiecesForFusion = new Vector.<Sprite>(3);
                                                                                                                                                                                                         var _loc2_:int = 0;
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc2_ < this.m_sagePiecesForFusion.length)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.m_sagePiecesForFusion[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_1_1");
                                                                                                                                                                                                               §§push(Singleton.utility);
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().m_screenControllers);
                                                                                                                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().m_topDownScreen);
                                                                                                                                                                                                                     if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1376);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1224);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            this.m_sageSealFused = Singleton.utility.m_spriteHandler.CreateSprite("menus_plantMedallion");
                                                                                                                                                                                                            §§push(Singleton.utility);
                                                                                                                                                                                                            if(_loc4_ || Boolean(this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().m_screenControllers);
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().m_topDownScreen);
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().addChild(this.m_sageSealFused);
                                                                                                                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.m_sageSealFused.visible = false;
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.m_flash = new Sprite();
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.m_flash.graphics.beginFill(16777215);
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.m_flash.graphics.drawRect(0,0,700,525);
                                                                                                                                                                                                                                 if(_loc4_ || Boolean(this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.m_flash.graphics.endFill();
                                                                                                                                                                                                                                    §§push(Singleton.utility);
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().m_screenControllers);
                                                                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1224:
                                                                                                                                                                                                                                          §§push(§§pop().m_topDownScreen);
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().addChild(this.m_flash);
                                                                                                                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1237:
                                                                                                                                                                                                                                                this.m_flash.visible = false;
                                                                                                                                                                                                                                                addr1241:
                                                                                                                                                                                                                                                this.m_miniMap = new MiniMap();
                                                                                                                                                                                                                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.m_miniMap);
                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().LoadSprites();
                                                                                                                                                                                                                                                      if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1269:
                                                                                                                                                                                                                                                         §§push(this.m_miniMap);
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1273:
                                                                                                                                                                                                                                                            §§push(9);
                                                                                                                                                                                                                                                            if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                               addr1284:
                                                                                                                                                                                                                                                               §§push(this.m_miniMap);
                                                                                                                                                                                                                                                               §§push(404);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1288:
                                                                                                                                                                                                                                                               §§push(Singleton.utility);
                                                                                                                                                                                                                                                               if(_loc4_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1297:
                                                                                                                                                                                                                                                                  §§push(§§pop().m_screenControllers);
                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1376);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1368:
                                                                                                                                                                                                                                                                  §§push(§§pop().m_topDownScreen);
                                                                                                                                                                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1376:
                                                                                                                                                                                                                                                                     §§push(§§pop().m_topDownScreen);
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1303:
                                                                                                                                                                                                                                                                        §§pop().addChild(this.m_miniMap);
                                                                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.m_transitionBackground = new Sprite();
                                                                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1314:
                                                                                                                                                                                                                                                                              this.m_transitionBackground.graphics.beginFill(0);
                                                                                                                                                                                                                                                                              if(_loc4_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.m_transitionBackground.graphics.drawRect(0,0,700,525);
                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1336:
                                                                                                                                                                                                                                                                                    this.m_transitionBackground.graphics.endFill();
                                                                                                                                                                                                                                                                                    this.m_transitionBackground.visible = false;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(Singleton.utility);
                                                                                                                                                                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1385:
                                                                                                                                                                                                                                                                                 §§pop().m_screenControllers.m_topDownScreen.m_currState = TopDownStates.LOADING;
                                                                                                                                                                                                                                                                                 addr1383:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1388);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1381:
                                                                                                                                                                                                                                                                        §§goto(addr1383);
                                                                                                                                                                                                                                                                        §§push(Singleton.utility);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().addChild(this.m_transitionBackground);
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1381);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1388:
                                                                                                                                                                                                                                                                     return;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1385);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1336);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1284);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1381);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1273);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1314);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1241);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1303);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1368);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1297);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1336);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1269);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1241);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1237);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1288);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1303);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1385);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1297);
                                                                                                                                                                                                            §§goto(addr1224);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().m_screenControllers);
                                                                                                                                                                                                         if(_loc4_ || Boolean(_loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1297);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1385);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      addr898:
                                                                                                                                                                                                      §§push(Singleton.utility);
                                                                                                                                                                                                      if(_loc4_ || Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().m_screenControllers.m_topDownScreen);
                                                                                                                                                                                                         if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().addChild(this.m_unspentTalentPointsPopup);
                                                                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr926:
                                                                                                                                                                                                               this.m_gemsPopup = new TutorialPopup();
                                                                                                                                                                                                               §§push(this.m_gemsPopup);
                                                                                                                                                                                                               if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().Create("tutorial_firstGemMenuPopup");
                                                                                                                                                                                                                  §§push(this.m_gemsPopup);
                                                                                                                                                                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(604);
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                        if(_loc4_ || Boolean(this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr964:
                                                                                                                                                                                                                           this.m_gemsPopup.y = 436;
                                                                                                                                                                                                                           Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_gemsPopup);
                                                                                                                                                                                                                           if(_loc4_ || Boolean(this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.m_actionIcon = new ActionAvailbleIcon("tutorial_pressSpacekey_up","tutorial_pressSpacekey_down");
                                                                                                                                                                                                                              if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.m_actionIcon);
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                       addr1018:
                                                                                                                                                                                                                                       §§push(this.m_actionIcon);
                                                                                                                                                                                                                                       if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(465);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().visible = false;
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1022:
                                                                                                                                                                                                                                          §§push(Singleton.utility.m_screenControllers);
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().m_topDownScreen);
                                                                                                                                                                                                                                             if(_loc4_ || Boolean(this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1035:
                                                                                                                                                                                                                                                §§pop().addChild(this.m_actionIcon);
                                                                                                                                                                                                                                                addr1038:
                                                                                                                                                                                                                                                this.m_movementTutorial = new ActionAvailbleIcon("tutorial_movement","tutorial_movement_down");
                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.m_movementTutorial);
                                                                                                                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(16);
                                                                                                                                                                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         addr1074:
                                                                                                                                                                                                                                                         §§push(this.m_movementTutorial);
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(600);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().visible = false;
                                                                                                                                                                                                                                                         §§goto(addr1076);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.m_movementTutorial);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1090);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1074);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1076);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1080);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1079);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1038);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                    addr1016:
                                                                                                                                                                                                                                    §§push(this.m_actionIcon);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1018);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1076);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1083);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1018);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr964);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr964);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1022);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr964);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1022);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr896);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1035);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1078);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1016);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr851);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr926);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr853);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1035);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr964);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1016);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr766);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr770);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr766);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1076);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr898);
                                                                                                                                                }
                                                                                                                                                §§goto(addr926);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1076);
                                                                                                                                          }
                                                                                                                                          §§goto(addr964);
                                                                                                                                       }
                                                                                                                                       §§goto(addr926);
                                                                                                                                    }
                                                                                                                                    §§goto(addr712);
                                                                                                                                 }
                                                                                                                                 §§goto(addr627);
                                                                                                                              }
                                                                                                                              §§goto(addr1016);
                                                                                                                           }
                                                                                                                           §§goto(addr699);
                                                                                                                        }
                                                                                                                        §§goto(addr786);
                                                                                                                     }
                                                                                                                     §§goto(addr627);
                                                                                                                     addr511:
                                                                                                                  }
                                                                                                                  §§goto(addr511);
                                                                                                               }
                                                                                                               §§goto(addr494);
                                                                                                            }
                                                                                                            §§goto(addr518);
                                                                                                            addr422:
                                                                                                         }
                                                                                                         §§goto(addr463);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr503);
                                                                                                }
                                                                                                §§goto(addr467);
                                                                                             }
                                                                                             §§goto(addr422);
                                                                                          }
                                                                                          §§goto(addr494);
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                    §§goto(addr467);
                                                                                 }
                                                                                 §§goto(addr514);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr507);
                                                                        }
                                                                        §§goto(addr479);
                                                                     }
                                                                     §§goto(addr457);
                                                                  }
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      §§goto(addr479);
                                                   }
                                                   §§goto(addr503);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr426);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr503);
                                 }
                                 §§goto(addr171);
                              }
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr494);
                     }
                     §§goto(addr423);
                  }
                  §§goto(addr377);
               }
               §§goto(addr314);
            }
            §§goto(addr91);
         }
         §§goto(addr503);
      }
      
      private function ToggleMuteMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
      
      public function StartActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         Singleton.staticData.PreBuildRoomsForFloor(Singleton.dynamicData.m_currFloorOfTower);
         if(_loc1_)
         {
            this.RemoveOldRoomCreateNewRooom();
            this.m_prevLevel = this.m_currLevel;
            §§push(Singleton.dynamicData);
            if(!_loc2_)
            {
               §§pop().CalculateTotatNumberOfAvailbleStars();
               §§goto(addr32);
            }
            §§goto(addr98);
         }
         addr32:
         §§push(Singleton.utility);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop().m_screenControllers);
            if(_loc1_ || Boolean(this))
            {
               §§push(§§pop().m_topDownScreen);
               if(_loc1_)
               {
                  §§push(§§pop().m_topDownMovementScreen);
                  if(_loc1_)
                  {
                     §§pop().m_miniMap.CreateMap();
                     §§push(Singleton.dynamicData);
                     if(!_loc2_)
                     {
                        §§push(§§pop().IsMapUnlocked());
                        if(_loc1_ || _loc1_)
                        {
                           §§push(§§pop());
                           if(_loc1_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    addr88:
                                    §§pop();
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr98:
                                       §§push(Singleton.dynamicData.m_currFloorOfTower < 30);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr108:
                                          if(§§pop())
                                          {
                                             §§goto(addr124);
                                          }
                                          else
                                          {
                                             this.TurnOffTheMiniMap();
                                          }
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr135);
                                 }
                              }
                              §§goto(addr108);
                           }
                           addr124:
                           §§goto(addr121);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr98);
                  }
                  addr121:
                  §§goto(addr120);
               }
               addr120:
               §§goto(addr119);
            }
            addr119:
            §§goto(addr118);
         }
         addr118:
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_currLevel is Lobby)
         {
            this.TurnOffTheMiniMap();
            addr135:
            this.UpdateMovementHUD();
            addr132:
         }
         else
         {
            this.TurnOnTheMiniMap();
            if(_loc1_)
            {
               §§goto(addr132);
            }
         }
         this.m_actionIcon.TryAndReStartAnimation(-999);
      }
      
      public function UpdateMovementHUD() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1060
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function FinishActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.m_returnChatBox);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || _loc1_)
                  {
                     if(this.m_playSageSealAnimation)
                     {
                        if(_loc1_)
                        {
                           this.PlayFuseSageSealsTogether();
                           addr95:
                           TweenLite.to(this,0.8,{"onComplete":this.TryAndActivateTheMovementTutorial});
                           if(_loc1_ || _loc2_)
                           {
                              addr110:
                              this.CheckForTutorials();
                           }
                           return;
                           addr77:
                        }
                     }
                     else
                     {
                        §§push(this.m_returnChatBox);
                        if(_loc1_)
                        {
                           §§pop().SetFunctions(this.AfterChatBox);
                        }
                        addr62:
                        §§pop().BringInWithText(this.m_returnTrianerForChatBox.m_whatTrainerSaysAtLose,this.m_returnTrianerForChatBox.m_trainerName);
                        this.m_returnChatBox = null;
                        this.m_returnTrianerForChatBox = null;
                        if(!_loc2_)
                        {
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr62);
                  §§push(this.m_returnChatBox);
               }
               else
               {
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
                  this.m_mainChar.FinishActivate();
               }
               §§goto(addr95);
            }
            §§goto(addr62);
         }
         §§goto(addr110);
      }
      
      private function CheckForTutorials() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Singleton.dynamicData);
         if(!_loc1_)
         {
            §§push(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_KEY_KEEPERS));
            §§push(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_KEY_KEEPERS));
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§pop();
                     §§push(Singleton.dynamicData.m_currFloorOfTower);
                     if(!_loc1_)
                     {
                        §§push(§§pop() == 0);
                        if(_loc2_ || Boolean(this))
                        {
                           addr48:
                           if(§§pop())
                           {
                              §§pop();
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(Singleton.dynamicData);
                                 if(!_loc1_)
                                 {
                                    addr65:
                                    if(§§pop().m_currRoomOfTower == 11)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          TweenLite.to(this,0.9,{
                                             "onComplete":Singleton.utility.m_tutorialHandler.BringIn_KeyKeepersTut,
                                             "onCompleteParams":[null]
                                          });
                                          §§push(Singleton.dynamicData);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             §§push(TutorialTypes.TUTORIAL_KEY_KEEPERS);
                                             §§push(true);
                                             if(!_loc1_)
                                             {
                                                §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                             }
                                             else
                                             {
                                                addr169:
                                                §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                             }
                                          }
                                          else
                                          {
                                             addr180:
                                             §§push(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_HEALERS));
                                             if(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_HEALERS))
                                             {
                                                if(!_loc1_)
                                                {
                                                   §§pop();
                                                   if(_loc2_)
                                                   {
                                                      §§push(Singleton.dynamicData.m_numberOfDeathsSinceVictory > 0);
                                                      if(!_loc1_)
                                                      {
                                                         addr198:
                                                         §§push(§§pop());
                                                         if(!(_loc1_ && Boolean(this)))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§pop();
                                                                  addr227:
                                                                  if(Singleton.dynamicData.m_currFloorOfTower > 10)
                                                                  {
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        TweenLite.to(this,1.5,{
                                                                           "onComplete":Singleton.utility.m_tutorialHandler.BringIn_HealerTut,
                                                                           "onCompleteParams":[null]
                                                                        });
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           §§push(Singleton.dynamicData);
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §§push(TutorialTypes.TUTORIAL_HEALERS);
                                                                              §§push(true);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr421:
                                                                                 §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr324:
                                                                              §§push(§§pop().m_numberOfDeathsSinceVictory);
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 addr334:
                                                                                 if(§§pop() == 2)
                                                                                 {
                                                                                    TweenLite.to(this,1.5,{
                                                                                       "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ResetTalentTreesTut,
                                                                                       "onCompleteParams":[null]
                                                                                    });
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       §§push(TutorialTypes.TUTORIAL_DEATH);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr356:
                                                                                          §§push(true);
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             addr364:
                                                                                             §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                                                             addr367:
                                                                                             §§push(Singleton.dynamicData);
                                                                                             §§push(0);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr421);
                                                                                          }
                                                                                          §§goto(addr422);
                                                                                       }
                                                                                       §§pop().m_numberOfDeathsSinceVictory = §§pop();
                                                                                       addr369:
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(Singleton.dynamicData);
                                                                                    §§push(TutorialTypes.TUTORIAL_DEATH_2);
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       addr379:
                                                                                       §§goto(addr400);
                                                                                       §§push(!§§pop().HasTutorialBeenSeen(§§pop()) && TutorialTypes.TUTORIAL_DEATH_2);
                                                                                    }
                                                                                    §§push(true);
                                                                                 }
                                                                                 §§goto(addr421);
                                                                              }
                                                                              §§goto(addr400);
                                                                           }
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                     §§goto(addr416);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(Singleton.dynamicData);
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        addr295:
                                                                        §§push(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH));
                                                                        §§push(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH));
                                                                        if(!_loc1_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc2_ || Boolean(this))
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc1_ && Boolean(this)))
                                                                                 {
                                                                                    addr315:
                                                                                    §§push(Singleton.dynamicData);
                                                                                    if(_loc2_ || Boolean(this))
                                                                                    {
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr367);
                                                                              }
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr379);
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   §§goto(addr315);
                                                }
                                             }
                                             §§goto(addr198);
                                          }
                                       }
                                       §§goto(addr422);
                                    }
                                    else
                                    {
                                       §§push(Singleton.dynamicData);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(TutorialTypes.TUTORIAL_TANKS);
                                          if(!_loc1_)
                                          {
                                             §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                                             if(_loc2_ || Boolean(this))
                                             {
                                                §§push(!§§pop());
                                                if(!_loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(!_loc1_)
                                                      {
                                                         addr134:
                                                         §§push(Singleton.dynamicData.m_numberOfDeathsSinceVictory > 0);
                                                         if(!_loc1_)
                                                         {
                                                            addr138:
                                                            if(§§pop())
                                                            {
                                                               addr140:
                                                               §§pop();
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr148);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr138);
                                                }
                                                addr148:
                                                if(Singleton.dynamicData.m_currFloorOfTower > 7)
                                                {
                                                   TweenLite.to(this,1.5,{
                                                      "onComplete":Singleton.utility.m_tutorialHandler.BringIn_TankTut,
                                                      "onCompleteParams":[null]
                                                   });
                                                   addr164:
                                                   §§push(Singleton.dynamicData);
                                                   §§push(TutorialTypes.TUTORIAL_TANKS);
                                                   §§push(true);
                                                   if(!_loc1_)
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr364);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(Singleton.dynamicData);
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr418);
                                                }
                                                addr422:
                                                return;
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                                 §§goto(addr400);
                              }
                              §§goto(addr364);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr198);
               }
               §§goto(addr48);
            }
            §§goto(addr379);
         }
         §§goto(addr180);
      }
      
      private function AfterChatBox() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_mainChar.FinishActivate();
            if(!(_loc2_ && _loc1_))
            {
               §§push(Singleton.dynamicData);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(TutorialTypes.TUTORIAL_BOSS_ROOM);
                  if(_loc1_)
                  {
                     §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(!§§pop());
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 §§pop();
                                 if(_loc1_)
                                 {
                                    addr68:
                                    §§push(Singleton.dynamicData);
                                    if(_loc1_ || Boolean(this))
                                    {
                                       addr80:
                                       if(§§pop().m_currKeysOnFloor == 3)
                                       {
                                          if(!_loc2_)
                                          {
                                             TweenLite.to(this,2.8,{
                                                "onComplete":Singleton.utility.m_tutorialHandler.BringIn_BossRoomTut,
                                                "onCompleteParams":[null]
                                             });
                                             §§goto(addr111);
                                          }
                                          §§goto(addr105);
                                       }
                                       §§goto(addr111);
                                    }
                                    addr109:
                                    §§pop().SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_BOSS_ROOM,true);
                                 }
                                 addr111:
                                 if(!_loc2_)
                                 {
                                    addr105:
                                    §§push(Singleton.dynamicData);
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr109);
               }
               §§goto(addr80);
            }
            §§goto(addr105);
         }
         §§goto(addr68);
      }
      
      public function TryAndActivateTheMovementTutorial() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(Singleton.dynamicData);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT));
               if(_loc2_)
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                        }
                     }
                     §§goto(addr66);
                  }
                  §§pop();
                  if(!_loc1_)
                  {
                     addr52:
                     §§push(Singleton.dynamicData);
                     if(!_loc1_)
                     {
                        addr56:
                        addr66:
                        if(§§pop())
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              addr76:
                              Singleton.dynamicData.m_isMovementTutorialActive = true;
                              if(_loc2_ || Boolean(this))
                              {
                                 this.TurnOnTheMovementTutorial();
                              }
                           }
                        }
                        return;
                        §§push(§§pop().m_movementTutorialStepCounter < 8);
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr56);
         }
         §§goto(addr52);
      }
      
      public function OnMenuButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.OpenMenus();
         }
      }
      
      public function BringInTheNewRoom() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.LOADING;
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_transitionBackground.visible = true;
               if(!_loc2_)
               {
                  addr36:
                  this.m_transitionBackground.alpha = 0;
               }
            }
            var _loc1_:TimelineLite = new TimelineLite();
            if(_loc3_)
            {
               _loc1_.append(new TweenLite(this.m_transitionBackground,0.5,{
                  "alpha":1,
                  "onComplete":this.RemoveOldRoomCreateNewRooom
               }));
               if(_loc3_)
               {
                  §§goto(addr68);
               }
               §§goto(addr110);
            }
            addr68:
            _loc1_.append(new TweenLite(this.m_transitionBackground,0.1,{}));
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.append(new TweenLite(this.m_transitionBackground,0.5,{
                  "alpha":0,
                  "onComplete":this.FinishBringingInTheNewRooom
               }));
               if(_loc3_ || _loc3_)
               {
                  addr110:
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_miniMap.EnteredNewRoom();
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      private function RemoveOldRoomCreateNewRooom() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Point = null;
         §§push(this.m_prevLevel);
         if(_loc3_ || _loc3_)
         {
            if(§§pop() != null)
            {
               addr30:
               this.m_prevLevel.CleanUpSprites();
            }
            this.m_currLevel = Singleton.staticData.GetCurrentLevelForNextLevel();
            §§push(this.m_currLevel);
            if(_loc3_ || _loc2_)
            {
               §§pop().LoadSprites();
               this.m_prevLevel = this.m_currLevel;
               if(Singleton.dynamicData.m_topDownCharPositionX == -99)
               {
                  addr64:
                  _loc1_ = this.m_currLevel.GetTheGotoPositionForTheRoom();
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(Singleton.dynamicData);
                     if(!_loc2_)
                     {
                        §§pop().m_topDownCharPositionX = _loc1_.x;
                        addr95:
                        if(!_loc2_)
                        {
                           §§push(Singleton.dynamicData);
                        }
                        this.SetInitialCameraPosition(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           this.SetCameraToMainCharPosition();
                           if(_loc3_)
                           {
                              addr114:
                              this.m_actionIcon.m_currButtonZone = -99;
                           }
                           return;
                        }
                        §§goto(addr114);
                     }
                     §§pop().m_topDownCharPositionY = _loc1_.y;
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr64);
         }
         §§goto(addr30);
      }
      
      private function FinishBringingInTheNewRooom() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_transitionBackground.visible = false;
            if(!(_loc2_ && Boolean(this)))
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
               if(_loc1_)
               {
                  addr42:
                  this.m_mainChar.UpdateAnimationState();
                  if(_loc1_)
                  {
                     addr47:
                     this.CheckForTutorials();
                  }
               }
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr42);
      }
      
      public function UpdateFullFrames() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(Singleton.dynamicData);
         if(!(_loc3_ && _loc3_))
         {
            if(§§pop().m_isMovementTutorialActive)
            {
               §§push(Singleton.dynamicData);
               if(_loc4_)
               {
                  §§push(§§pop().m_movementTutorialStepCounter);
                  if(_loc4_)
                  {
                     §§push(7);
                     if(!_loc3_)
                     {
                        if(§§pop() > §§pop())
                        {
                           addr38:
                           Singleton.dynamicData.m_isMovementTutorialActive = false;
                           §§push(Singleton.dynamicData);
                           if(_loc4_)
                           {
                              §§push(TutorialTypes.TUTORIAL_MOVEMENT);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§pop().SetHasTutorialBeenSeen(§§pop(),true);
                                 this.TurnOffTheMovementTutorial();
                                 addr57:
                                 §§push(Singleton.utility);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§push(§§pop().m_screenControllers);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(§§pop().m_topDownScreen);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§§pop().m_currState);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(TopDownStates.MOVEMENT);
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr99:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(Input.kd("a","LEFT"));
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop());
                                                         §§push(§§pop());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(Input.kd("d","RIGHT"));
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     addr148:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.m_muteMusicButton);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop().Update();
                                                                              §§push(this.m_muteSoundButton);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 §§pop().Update();
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(this.m_mainChar);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§pop().UpdateFullFrames();
                                                                                       return;
                                                                                    }
                                                                                    addr672:
                                                                                    §§pop().UpdateFullFrames();
                                                                                    this.m_currLevel.UpdateAnimationObjects();
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr555:
                                                                                    if(Input.kd("s","DOWN"))
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr570:
                                                                                          Singleton.dynamicData.m_topDownCharPositionY += this.m_charMovementSpeed;
                                                                                          this.SetCameraToMainCharPosition();
                                                                                          addr564:
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             addr580:
                                                                                             §§push(this.m_currLevel);
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                addr595:
                                                                                                §§pop().UpdateSoundDistanceObjects(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   addr607:
                                                                                                   if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT))
                                                                                                   {
                                                                                                      var _loc1_:*;
                                                                                                      §§push((_loc1_ = Singleton.dynamicData).m_movementTutorialStepCounter);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                      }
                                                                                                      var _loc2_:* = §§pop();
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         _loc1_.m_movementTutorialStepCounter = _loc2_;
                                                                                                      }
                                                                                                      addr630:
                                                                                                      if(Input.kp("M"))
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            this.OnMenuButtonClick(null);
                                                                                                            addr641:
                                                                                                            this.m_currLevel.CheckForLevelCollisionsWithObject(this.m_mainCharCollBox);
                                                                                                            addr644:
                                                                                                            this.m_menuButton.m_isActive = true;
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr652:
                                                                                                               this.m_muteMusicButton.Update();
                                                                                                            }
                                                                                                            return;
                                                                                                            addr639:
                                                                                                         }
                                                                                                         addr655:
                                                                                                         this.m_muteSoundButton.Update();
                                                                                                         §§push(this.m_mainChar);
                                                                                                         if(_loc3_ && Boolean(_loc1_))
                                                                                                         {
                                                                                                            addr687:
                                                                                                            §§pop().UpdateChatBox();
                                                                                                         }
                                                                                                         §§goto(addr672);
                                                                                                      }
                                                                                                      §§goto(addr639);
                                                                                                   }
                                                                                                   §§goto(addr630);
                                                                                                }
                                                                                                §§goto(addr672);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr684:
                                                                                                §§pop().UpdateChatBoxes();
                                                                                                §§goto(addr687);
                                                                                                §§push(this.m_mainChar);
                                                                                             }
                                                                                             §§goto(addr687);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr644);
                                                                                    }
                                                                                    §§goto(addr630);
                                                                                 }
                                                                                 §§goto(addr644);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr209:
                                                                                 §§pop().Update();
                                                                                 §§push(this.m_mainChar);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop().UpdateFullFrames();
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              §§goto(addr687);
                                                                           }
                                                                           §§goto(addr652);
                                                                        }
                                                                        §§goto(addr580);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr185:
                                                                        if(Input.kd("w","UP") && Input.kd("s","DOWN"))
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(this.m_muteMusicButton);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§pop().Update();
                                                                                 §§push(this.m_muteSoundButton);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr209);
                                                                                 }
                                                                                 §§goto(addr687);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr652);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr276:
                                                                              this.SetCameraToMainCharPosition();
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(this.m_currLevel);
                                                                                 §§push(Singleton.dynamicData);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().m_topDownCharPositionX);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop().m_topDownCharPositionY);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§pop().UpdateSoundDistanceObjects(§§pop(),§§pop());
                                                                                             §§push(Singleton.dynamicData);
                                                                                             §§push(TutorialTypes.TUTORIAL_MOVEMENT);
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                if(!§§pop().HasTutorialBeenSeen(§§pop()))
                                                                                                {
                                                                                                   §§push((_loc1_ = Singleton.dynamicData).m_movementTutorialStepCounter);
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      _loc1_.m_movementTutorialStepCounter = _loc2_;
                                                                                                   }
                                                                                                   addr343:
                                                                                                   if(Input.kd("d","RIGHT"))
                                                                                                   {
                                                                                                      §§push(Singleton.dynamicData);
                                                                                                      §§push(Singleton.dynamicData);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().m_topDownCharPositionX);
                                                                                                         §§push(this.m_charMovementSpeed);
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            §§pop().m_topDownCharPositionX = §§pop() + §§pop();
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               this.SetCameraToMainCharPosition();
                                                                                                               §§push(this.m_currLevel);
                                                                                                               §§push(Singleton.dynamicData);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr376:
                                                                                                                  §§push(§§pop().m_topDownCharPositionX);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(Singleton.dynamicData);
                                                                                                                     if(_loc4_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        §§push(§§pop().m_topDownCharPositionY);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr391:
                                                                                                                           §§pop().UpdateSoundDistanceObjects(§§pop(),§§pop());
                                                                                                                           §§push(Singleton.dynamicData);
                                                                                                                           §§push(TutorialTypes.TUTORIAL_MOVEMENT);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              addr398:
                                                                                                                              §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr407:
                                                                                                                                    §§push(Singleton.dynamicData);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push((_loc1_ = §§pop()).m_movementTutorialStepCounter);
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                       }
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          _loc1_.m_movementTutorialStepCounter = _loc2_;
                                                                                                                                       }
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr437:
                                                                                                                                          if(Input.kd("w","UP"))
                                                                                                                                          {
                                                                                                                                             if(!(_loc3_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr449:
                                                                                                                                                §§push(Singleton.dynamicData);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr453:
                                                                                                                                                   §§push(Singleton.dynamicData);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr457:
                                                                                                                                                      §§push(§§pop().m_topDownCharPositionY);
                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_charMovementSpeed);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().m_topDownCharPositionY = §§pop() - §§pop();
                                                                                                                                                            this.SetCameraToMainCharPosition();
                                                                                                                                                            §§push(this.m_currLevel);
                                                                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                                                                            {
                                                                                                                                                               §§push(Singleton.dynamicData);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr486:
                                                                                                                                                                  §§push(§§pop().m_topDownCharPositionX);
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr489:
                                                                                                                                                                     §§push(Singleton.dynamicData);
                                                                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().m_topDownCharPositionY);
                                                                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().UpdateSoundDistanceObjects(§§pop(),§§pop());
                                                                                                                                                                           §§push(Singleton.dynamicData);
                                                                                                                                                                           if(_loc4_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr516:
                                                                                                                                                                              §§push(TutorialTypes.TUTORIAL_MOVEMENT);
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr521:
                                                                                                                                                                                 if(!§§pop().HasTutorialBeenSeen(§§pop()))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push((_loc1_ = Singleton.dynamicData).m_movementTutorialStepCounter);
                                                                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc1_.m_movementTutorialStepCounter = _loc2_;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr555);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr580);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr555);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr607);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr564);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr595);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr641);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr564);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr570);
                                                                                                                                                }
                                                                                                                                                §§goto(addr516);
                                                                                                                                             }
                                                                                                                                             §§goto(addr641);
                                                                                                                                          }
                                                                                                                                          §§goto(addr555);
                                                                                                                                       }
                                                                                                                                       §§goto(addr641);
                                                                                                                                    }
                                                                                                                                    §§goto(addr453);
                                                                                                                                 }
                                                                                                                                 §§goto(addr437);
                                                                                                                              }
                                                                                                                              §§goto(addr630);
                                                                                                                           }
                                                                                                                           §§goto(addr607);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr595);
                                                                                                                  }
                                                                                                                  §§goto(addr489);
                                                                                                               }
                                                                                                               §§goto(addr486);
                                                                                                            }
                                                                                                            §§goto(addr641);
                                                                                                         }
                                                                                                         §§goto(addr570);
                                                                                                      }
                                                                                                      §§goto(addr457);
                                                                                                   }
                                                                                                   §§goto(addr437);
                                                                                                }
                                                                                                §§goto(addr343);
                                                                                             }
                                                                                             §§goto(addr607);
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr595);
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr580);
                                                                           }
                                                                           §§goto(addr687);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.m_defaultMovementSpeed);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() * (1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_MOVESPEED) * 0.1));
                                                                           }
                                                                           §§pop().m_charMovementSpeed = §§pop();
                                                                           if(Input.kd("a","LEFT"))
                                                                           {
                                                                              if(_loc4_ || Boolean(_loc1_))
                                                                              {
                                                                                 §§push(Singleton.dynamicData);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(Singleton.dynamicData);
                                                                                    if(_loc4_ || Boolean(_loc1_))
                                                                                    {
                                                                                       §§push(§§pop().m_topDownCharPositionX);
                                                                                       §§push(this.m_charMovementSpeed);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§pop().m_topDownCharPositionX = §§pop() - §§pop();
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          §§goto(addr672);
                                                                                       }
                                                                                       §§goto(addr570);
                                                                                    }
                                                                                    §§goto(addr457);
                                                                                 }
                                                                                 §§goto(addr607);
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                           §§goto(addr343);
                                                                        }
                                                                     }
                                                                     §§goto(addr555);
                                                                  }
                                                                  §§goto(addr521);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                else
                                                {
                                                   addr681:
                                                   if(Singleton.utility.m_screenControllers.m_topDownScreen.m_currState == TopDownStates.IN_CHAT)
                                                   {
                                                      §§goto(addr684);
                                                      §§push(this.m_currLevel);
                                                   }
                                                }
                                                §§goto(addr672);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr681);
                              }
                              §§goto(addr398);
                           }
                           §§goto(addr570);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr681);
               }
               §§goto(addr38);
            }
            §§goto(addr57);
         }
         §§goto(addr570);
      }
      
      public function SetInitialCameraPosition(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            Singleton.dynamicData.m_topDownCharPositionY = 0;
            if(!(_loc6_ && Boolean(this)))
            {
               this.m_bottomVisualLayer.y = 0;
            }
         }
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc7_ || Boolean(param2))
            {
               §§push(param2);
               if(!_loc6_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc7_ || Boolean(this))
                     {
                        §§push(Singleton.dynamicData);
                        if(!_loc6_)
                        {
                           §§goto(addr106);
                        }
                        while(true)
                        {
                           var _loc4_:*;
                           §§push((_loc4_ = §§pop()).m_topDownCharPositionX);
                           if(_loc7_ || Boolean(param2))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc6_ && Boolean(param2)))
                           {
                              _loc4_.m_topDownCharPositionX = _loc5_;
                           }
                           §§goto(addr160);
                        }
                        addr129:
                     }
                     §§goto(addr165);
                  }
                  else
                  {
                     §§push(Singleton.dynamicData);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§push((_loc4_ = §§pop()).m_topDownCharPositionY);
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc5_ = §§pop();
                        if(_loc7_)
                        {
                           _loc4_.m_topDownCharPositionY = _loc5_;
                        }
                        if(!(_loc7_ || Boolean(param1)))
                        {
                           continue;
                        }
                        this.SetCameraToMainCharPosition(false);
                        if(!_loc6_)
                        {
                           _loc3_++;
                           continue;
                        }
                        §§goto(addr160);
                     }
                     else
                     {
                        addr106:
                        §§pop().m_topDownCharPositionX = 0;
                        if(_loc7_ || Boolean(param2))
                        {
                           this.m_bottomVisualLayer.x = 0;
                           addr160:
                           if(!_loc6_)
                           {
                              §§push(0);
                              if(_loc7_)
                              {
                                 _loc3_ = §§pop();
                                 addr168:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    break loop0;
                                 }
                                 addr168:
                              }
                              break;
                           }
                           while(true)
                           {
                              this.SetCameraToMainCharPosition(false);
                              if(_loc7_)
                              {
                                 while(true)
                                 {
                                    _loc3_++;
                                    if(_loc6_)
                                    {
                                    }
                                    §§goto(addr171);
                                 }
                                 addr165:
                              }
                              §§goto(addr168);
                           }
                           addr160:
                        }
                        §§goto(addr171);
                     }
                  }
                  §§goto(addr106);
               }
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§goto(addr129);
                     §§push(Singleton.dynamicData);
                  }
                  §§goto(addr171);
               }
               addr170:
            }
            break;
         }
         while(true)
         {
            §§goto(addr170);
            §§goto(addr168);
         }
         addr171:
      }
      
      public function SetCameraToMainCharPosition(param1:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Rectangle = null;
         var _loc6_:int = 0;
         var _loc2_:Number = this.m_bottomVisualLayer.x;
         var _loc3_:Number = this.m_bottomVisualLayer.y;
         if(_loc8_)
         {
            this.m_bottomVisualLayer.y = -Singleton.dynamicData.m_topDownCharPositionY;
         }
         var _loc4_:Point;
         if((_loc4_ = this.m_currLevel.m_roomBounds.localToGlobal(new Point(this.m_currLevel.m_roomBounds.x,this.m_currLevel.m_roomBounds.y))).y + this.m_mainCharCenterPointY >= this.m_cameraCollRect.y)
         {
            if(!_loc7_)
            {
               §§push(this.m_mainChar);
               if(_loc8_ || Boolean(_loc2_))
               {
                  §§push(Singleton.dynamicData);
                  if(_loc8_)
                  {
                     §§push(§§pop().m_topDownCharPositionY);
                     if(_loc8_)
                     {
                        §§pop().y = §§pop();
                        addr82:
                        this.m_bottomVisualLayer.y = _loc3_;
                        if(!_loc8_)
                        {
                           addr112:
                           §§push(this.m_mainChar);
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              addr123:
                              §§push(Singleton.dynamicData.m_topDownCharPositionY);
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 addr131:
                                 §§push(§§pop() + _loc3_);
                              }
                              §§pop().y = §§pop();
                              this.m_bottomVisualLayer.y = _loc3_;
                           }
                           else
                           {
                              addr151:
                              §§pop().y = this.m_mainCharCenterPointY;
                           }
                        }
                        if(param1)
                        {
                           §§push(this.m_currLevel);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              if((_loc5_ = §§pop().CheckForWallCollisionsWithObject(this.m_mainCharCollBox)) != null)
                              {
                                 if(!_loc7_)
                                 {
                                    _loc6_ = _loc5_.height;
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       Singleton.dynamicData.m_topDownCharPositionY = this.m_prevGlobalCharYPos;
                                       if(!_loc7_)
                                       {
                                          this.m_mainChar.y = this.m_prevLocalCharYPos;
                                          if(_loc7_)
                                          {
                                          }
                                          addr205:
                                          this.m_bottomVisualLayer.x = -Singleton.dynamicData.m_topDownCharPositionX;
                                          if((_loc4_ = this.m_currLevel.m_roomBounds.localToGlobal(new Point(this.m_currLevel.m_roomBounds.x,this.m_currLevel.m_roomBounds.y))).x + this.m_mainCharCenterPointX >= this.m_cameraCollRect.x)
                                          {
                                             §§push(this.m_mainChar);
                                             if(_loc8_ || Boolean(_loc2_))
                                             {
                                                §§push(Singleton.dynamicData);
                                                if(_loc8_ || param1)
                                                {
                                                   §§push(§§pop().m_topDownCharPositionX);
                                                   if(!_loc7_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      this.m_bottomVisualLayer.x = _loc2_;
                                                      addr325:
                                                      if(param1)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr329:
                                                            §§push(this.m_currLevel);
                                                            if(_loc8_)
                                                            {
                                                               if((_loc5_ = §§pop().CheckForWallCollisionsWithObject(this.m_mainCharCollBox)) != null)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc6_ = _loc5_.width;
                                                                     if(_loc8_)
                                                                     {
                                                                        Singleton.dynamicData.m_topDownCharPositionX = this.m_prevGlobalCharXPos;
                                                                        if(!(_loc7_ && Boolean(this)))
                                                                        {
                                                                           addr361:
                                                                           this.m_mainChar.x = this.m_prevLocalCharXPos;
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                           }
                                                                           addr378:
                                                                           this.m_topVisualLayer.x = this.m_bottomVisualLayer.x;
                                                                           if(!(_loc7_ && Boolean(this)))
                                                                           {
                                                                              this.m_topVisualLayer.y = this.m_bottomVisualLayer.y;
                                                                              if(_loc8_ || Boolean(this))
                                                                              {
                                                                                 addr404:
                                                                                 §§push(this.m_currLevel);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§pop().CheckForHeightCollisionsWithObject(this.m_mainCharCollBox);
                                                                                    addr413:
                                                                                    this.m_currLevel.UpdateSoundDistanceObjects(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
                                                                                    this.m_prevLocalCharXPos = this.m_mainChar.x;
                                                                                    this.m_prevLocalCharYPos = this.m_mainChar.y;
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr432:
                                                                                       this.m_prevGlobalCharXPos = Singleton.dynamicData.m_topDownCharPositionX;
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          this.m_prevGlobalCharYPos = Singleton.dynamicData.m_topDownCharPositionY;
                                                                                          addr439:
                                                                                          if(!(_loc7_ && Boolean(this)))
                                                                                          {
                                                                                             this.m_prevVisualLayerXPos = this.m_bottomVisualLayer.x;
                                                                                             if(_loc8_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr470);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    this.m_prevVisualLayerYPos = this.m_bottomVisualLayer.y;
                                                                                 }
                                                                                 §§goto(addr413);
                                                                              }
                                                                              addr470:
                                                                              return;
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        §§goto(addr378);
                                                                     }
                                                                     this.m_bottomVisualLayer.x = this.m_prevVisualLayerXPos;
                                                                     §§goto(addr378);
                                                                  }
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr413);
                                                         }
                                                         §§goto(addr439);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   else
                                                   {
                                                      addr305:
                                                      §§pop().x = §§pop() + _loc2_;
                                                      this.m_bottomVisualLayer.x = _loc2_;
                                                      addr303:
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr325);
                                                      }
                                                   }
                                                   §§goto(addr329);
                                                }
                                                else
                                                {
                                                   addr300:
                                                   §§push(§§pop().m_topDownCharPositionX);
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr303);
                                                   }
                                                }
                                                §§goto(addr305);
                                             }
                                             else
                                             {
                                                addr298:
                                                §§push(Singleton.dynamicData);
                                             }
                                             §§goto(addr300);
                                          }
                                          else
                                          {
                                             §§push(_loc4_.x + this.m_currLevel.m_roomBounds.width - this.m_mainCharCenterPointX);
                                             if(_loc8_ || param1)
                                             {
                                                §§push(§§pop() - this.m_mainChar.width);
                                             }
                                             if(§§pop() <= this.m_cameraCollRect.x)
                                             {
                                                §§goto(addr298);
                                                §§push(this.m_mainChar);
                                             }
                                             else
                                             {
                                                this.m_bottomVisualLayer.x = -Singleton.dynamicData.m_topDownCharPositionX + this.m_mainCharCenterPointX;
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr325);
                                                }
                                             }
                                          }
                                          §§goto(addr432);
                                       }
                                    }
                                 }
                                 this.m_bottomVisualLayer.y = this.m_prevVisualLayerYPos;
                              }
                           }
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr123);
            }
            §§goto(addr82);
         }
         else
         {
            §§push(_loc4_.y + this.m_currLevel.m_roomBounds.height - this.m_mainCharCenterPointY);
            if(_loc8_ || param1)
            {
               §§push(§§pop() - 98);
            }
            if(§§pop() <= this.m_cameraCollRect.y)
            {
               §§goto(addr112);
            }
            else
            {
               this.m_bottomVisualLayer.y = -Singleton.dynamicData.m_topDownCharPositionY + this.m_mainCharCenterPointY;
               §§push(this.m_mainChar);
            }
            §§goto(addr151);
         }
      }
      
      public function TurnOffTheActionIcon() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            TweenLite.to(this.m_actionIcon,1.5,{"y":600});
         }
      }
      
      public function TurnOnTheActionIcon() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            this.m_actionIcon.TryAndReStartAnimation(-999);
            if(!(_loc2_ && _loc1_))
            {
               addr38:
               TweenLite.to(this.m_actionIcon,0.5,{"y":465});
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function TurnOffTheMiniMap() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            TweenLite.to(this.m_miniMap,0.5,{"alpha":0});
            if(_loc2_ || Boolean(this))
            {
               §§push(this.m_actionIcon);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(465);
                  if(_loc2_)
                  {
                     §§pop().y = §§pop();
                     if(!(_loc1_ && _loc2_))
                     {
                        addr63:
                        §§push(this.m_actionIcon);
                        if(!(_loc1_ && _loc1_))
                        {
                           addr79:
                           §§push(1);
                           if(!(_loc1_ && _loc1_))
                           {
                              addr87:
                              §§pop().scaleX = §§pop();
                              §§goto(addr99);
                           }
                           §§pop().scaleY = §§pop();
                           §§goto(addr99);
                        }
                        §§goto(addr97);
                     }
                     addr99:
                     if(!(_loc1_ && _loc1_))
                     {
                        addr97:
                        §§push(this.m_actionIcon);
                        §§push(1);
                     }
                     return;
                  }
                  §§goto(addr87);
               }
               §§goto(addr79);
            }
            §§goto(addr63);
         }
         §§goto(addr87);
      }
      
      public function TurnOnTheMiniMap() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            TweenLite.to(this.m_miniMap,0.5,{"alpha":1});
            if(_loc1_)
            {
               addr30:
               §§push(this.m_actionIcon);
               if(!(_loc2_ && _loc1_))
               {
                  §§pop().y = 375;
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.m_actionIcon);
                     if(_loc1_ || _loc2_)
                     {
                        addr71:
                        §§push(0.7);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop().scaleX = §§pop();
                           §§goto(addr86);
                        }
                        §§pop().scaleY = §§pop();
                        §§goto(addr86);
                     }
                     §§goto(addr84);
                  }
                  addr86:
                  if(!_loc2_)
                  {
                     addr84:
                     §§push(this.m_actionIcon);
                     §§push(0.7);
                  }
                  return;
               }
               §§goto(addr71);
            }
            §§goto(addr84);
         }
         §§goto(addr30);
      }
      
      public function TurnOffTheMovementTutorial() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            TweenLite.to(this.m_movementTutorial,1.5,{
               "y":600,
               "onComplete":this.FinishTurningOffTheMovementTutorial
            });
         }
      }
      
      private function PlayFuseSageSealsTogether() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || Boolean(this))
         {
            this.m_playSageSealAnimation = false;
            if(_loc9_)
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_PLAYING_SAGE_SEAL_ANIMATION;
               if(!_loc8_)
               {
                  addr35:
                  this.TurnOffTheActionIcon();
               }
               var _loc1_:* = 0;
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc9_ || _loc3_)
                  {
                     if(§§pop() >= this.m_sagePiecesForFusion.length)
                     {
                        if(_loc9_ || _loc2_)
                        {
                           addr95:
                           §§push(Singleton.utility);
                           if(_loc9_)
                           {
                              addr99:
                              §§push(§§pop().m_screenControllers);
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(§§pop().m_topDownScreen);
                                 if(_loc9_ || _loc2_)
                                 {
                                    addr115:
                                    §§pop().removeChild(this.m_sageSealFused);
                                    if(_loc9_)
                                    {
                                       addr124:
                                       Singleton.utility.m_screenControllers.m_topDownScreen.removeChild(this.m_flash);
                                    }
                                    §§push(Singleton.dynamicData.m_currFloorOfTower);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       break;
                                    }
                                    var _loc2_:* = §§pop();
                                    if(!_loc8_)
                                    {
                                       Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_flash);
                                       if(!(_loc8_ && Boolean(_loc1_)))
                                       {
                                          this.m_flash.visible = true;
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             this.m_flash.alpha = 0;
                                             if(!_loc8_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc9_)
                                                {
                                                   §§push(4);
                                                   if(!_loc8_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         this.m_sagePiecesForFusion = new Vector.<Sprite>(3);
                                                         addr196:
                                                         §§push(287);
                                                         §§push(301);
                                                         addr188:
                                                      }
                                                      else
                                                      {
                                                         this.m_sagePiecesForFusion = new Vector.<Sprite>(4);
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   var _loc3_:Array = null;
                                                   var _loc4_:Array = [141,201,148,207];
                                                   §§push(0);
                                                   if(!_loc8_)
                                                   {
                                                      _loc1_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                      }
                                                      addr282:
                                                   }
                                                   while(§§pop() < this.m_sagePiecesForFusion.length)
                                                   {
                                                      this.m_sagePiecesForFusion[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_" + (_loc2_ + 1) + "_" + (_loc1_ + 1));
                                                      if(_loc9_ || Boolean(_loc1_))
                                                      {
                                                         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sagePiecesForFusion[_loc1_]);
                                                         if(!_loc8_)
                                                         {
                                                            this.m_sagePiecesForFusion[_loc1_].alpha = 0;
                                                            if(_loc9_)
                                                            {
                                                               addr261:
                                                               this.m_sagePiecesForFusion[_loc1_].x = _loc3_[_loc1_];
                                                               if(!_loc8_)
                                                               {
                                                                  addr271:
                                                                  this.m_sagePiecesForFusion[_loc1_].y = _loc4_[_loc1_];
                                                                  if(_loc8_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            _loc1_++;
                                                            continue;
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr261);
                                                      §§goto(addr282);
                                                   }
                                                   var _loc5_:Array = ["menus_plantMedallion","menus_fireMedallion","menus_electricMedallion","menus_undeadMedallion","menus_plantWizardMedallion","menus_undeadWizardMedallion","menus_undeadWizardMedallion"];
                                                   if(_loc9_ || Boolean(_loc3_))
                                                   {
                                                      this.m_sageSealFused = Singleton.utility.m_spriteHandler.CreateSprite(_loc5_[_loc2_]);
                                                      if(!_loc8_)
                                                      {
                                                         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sageSealFused);
                                                         if(!_loc8_)
                                                         {
                                                            this.m_sageSealFused.alpha = 0;
                                                            if(_loc9_)
                                                            {
                                                            }
                                                            addr352:
                                                            var _loc6_:int = 1.3;
                                                            var _loc7_:TimelineLite;
                                                            (_loc7_ = new TimelineLite()).append(new TweenLite(this.m_flash,_loc6_,{}));
                                                            _loc7_.append(new TweenLite(this.m_flash,0.5,{"alpha":0.5}));
                                                            _loc7_.append(new TweenLite(this.m_flash,0.9,{}));
                                                            _loc7_.append(new TweenLite(this.m_flash,0.15,{"alpha":1}));
                                                            _loc7_.append(new TweenLite(this.m_flash,0.15,{"alpha":0.3}));
                                                            _loc7_.append(new TweenLite(this.m_flash,1.5,{"alpha":0}));
                                                            §§push(0);
                                                            if(_loc9_)
                                                            {
                                                               _loc1_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                               }
                                                               addr500:
                                                            }
                                                            while(§§pop() < this.m_sagePiecesForFusion.length)
                                                            {
                                                               (_loc7_ = new TimelineLite()).append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],_loc6_,{}));
                                                               _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.5,{}));
                                                               _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.5,{"alpha":1}));
                                                               _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.4,{}));
                                                               _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.15,{
                                                                  "x":this.m_sageSealFused.x,
                                                                  "y":this.m_sageSealFused.y
                                                               }));
                                                               _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.05,{"alpha":0}));
                                                               if(_loc9_)
                                                               {
                                                                  _loc1_++;
                                                               }
                                                               §§goto(addr500);
                                                            }
                                                            (_loc7_ = new TimelineLite()).append(new TweenLite(this.m_sageSealFused,_loc6_,{}));
                                                            if(_loc9_)
                                                            {
                                                               _loc7_.append(new TweenLite(this.m_sageSealFused,1.4,{
                                                                  "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                                  "onCompleteParams":["battle_levelUp",0.25]
                                                               }));
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  addr543:
                                                                  _loc7_.append(new TweenLite(this.m_sageSealFused,0.15,{"alpha":1}));
                                                                  if(!(_loc8_ && Boolean(_loc1_)))
                                                                  {
                                                                     _loc7_.append(new TweenLite(this.m_sageSealFused,1.8,{
                                                                        "y":"-10",
                                                                        "alpha":0
                                                                     }));
                                                                     if(!(_loc8_ && Boolean(_loc3_)))
                                                                     {
                                                                        addr586:
                                                                        _loc7_.append(new TweenLite(this.m_sageSealFused,0.3,{"onComplete":this.FinishSageSealAnimation}));
                                                                     }
                                                                     return;
                                                                  }
                                                               }
                                                               §§goto(addr586);
                                                            }
                                                            §§goto(addr543);
                                                         }
                                                         this.m_sageSealFused.x = 323;
                                                         if(_loc9_ || Boolean(this))
                                                         {
                                                         }
                                                         §§goto(addr352);
                                                      }
                                                      this.m_sageSealFused.y = 167;
                                                   }
                                                   §§goto(addr352);
                                                }
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr188);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                              }
                           }
                        }
                        §§goto(addr124);
                     }
                     else
                     {
                        §§push(Singleton.utility);
                        if(_loc9_ || Boolean(this))
                        {
                           §§push(§§pop().m_screenControllers);
                           if(!_loc8_)
                           {
                              §§push(§§pop().m_topDownScreen);
                              if(_loc9_)
                              {
                                 §§pop().removeChild(this.m_sagePiecesForFusion[_loc1_]);
                                 if(!(_loc9_ || Boolean(_loc3_)))
                                 {
                                    continue;
                                 }
                                 _loc1_++;
                                 if(_loc9_ || Boolean(_loc1_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr124);
                        }
                     }
                     §§goto(addr99);
                  }
                  break;
               }
               §§goto(addr115);
               §§push(int(§§pop() / 5));
            }
         }
         §§goto(addr35);
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:URLRequest = null;
         var _loc2_:StaticData = Singleton.staticData;
         §§push(_loc2_.m_sponsorURL_part1);
         if(!_loc7_)
         {
            §§push(§§pop() + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5);
         }
         var _loc3_:* = §§pop();
         §§push(this.m_sponsorURL_part1);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_sponsorURL_part2 + this.m_sponsorURL_part2 + this.m_sponsorURL_part3 + this.m_sponsorURL_part4 + this.m_sponsorURL_part5 + this.m_sponsorURL_part5 + this.m_sponsorURL_part6 + this.m_sponsorURL_part7 + this.m_sponsorURL_part8 + this.m_sponsorURL_part9 + this.m_sponsorURL_part10 + this.m_sponsorURL_part11 + this.m_sponsorURL_part8 + this.m_sponsorURL_part12 + this.m_sponsorURL_part5);
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            if(_loc3_ != _loc4_)
            {
               _loc5_ = new URLRequest(_loc4_);
               addr134:
               if(_loc6_)
               {
                  navigateToURL(_loc5_,"_self");
                  if(_loc6_)
                  {
                  }
                  §§goto(addr166);
               }
               Singleton.utility.m_screenControllers.SetSceneTo(GameState.SITE_LOCKED_SCREEN,false);
               if(!_loc7_)
               {
                  this.m_sponsorTimer.stop();
               }
            }
            addr166:
            return;
         }
         §§goto(addr134);
      }
      
      private function FinishSageSealAnimation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.TurnOnTheActionIcon();
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.m_returnChatBox);
               if(!_loc2_)
               {
                  §§pop().SetFunctions(this.AfterChatBox);
                  §§goto(addr86);
               }
               §§pop().BringInWithText(this.m_returnTrianerForChatBox.m_whatTrainerSaysAtLose,this.m_returnTrianerForChatBox.m_trainerName);
               if(_loc2_ && Boolean(this))
               {
               }
               §§goto(addr86);
            }
            this.m_returnChatBox = null;
            if(_loc1_ || Boolean(this))
            {
               this.m_returnTrianerForChatBox = null;
            }
         }
         addr86:
         if(_loc1_ || Boolean(this))
         {
            §§push(this.m_returnChatBox);
         }
      }
      
      private function FinishTurningOffTheMovementTutorial() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_movementTutorial.visible = false;
         }
      }
      
      public function TurnOnTheMovementTutorial() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.m_movementTutorial);
            if(_loc2_ || _loc2_)
            {
               §§pop().visible = true;
               if(!_loc1_)
               {
                  addr50:
                  this.m_movementTutorial.TryAndReStartAnimation(-999,1.5);
                  if(!_loc1_)
                  {
                     TweenLite.to(this.m_movementTutorial,0.5,{"y":427});
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
   }
}
