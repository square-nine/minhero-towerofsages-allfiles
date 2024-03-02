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
         super();
         this.m_previousHighestFloor = -99;
         this.m_playSageSealAnimation = false;
         this.m_sponsorTimer = new Timer(100000 + Math.random() * 250000,0);
         this.m_sponsorTimer.addEventListener("timer",this.timerHandler);
         this.m_sponsorTimer.start();
      }
      
      public function LoadSprites() : void
      {
         this.m_bottomVisualLayer = new Sprite();
         this.m_topVisualLayer = new Sprite();
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_bottomVisualLayer);
         this.m_cameraCollRect = new Sprite();
         this.m_cameraCollRect.graphics.beginFill(0);
         this.m_cameraCollRect.graphics.drawRect(0,0,700,525);
         this.m_cameraCollRect.graphics.endFill();
         this.m_cameraCollRect.visible = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_cameraCollRect);
         this.m_mainChar = new MainChar();
         this.m_mainChar.LoadSprites();
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_mainChar);
         this.m_mainCharCollBox = new Sprite();
         this.m_mainCharCollBox.graphics.beginFill(16711935);
         this.m_mainCharCollBox.graphics.drawRect(0,0,45,25);
         this.m_mainCharCollBox.graphics.endFill();
         this.m_mainCharCollBox.x = 14;
         this.m_mainCharCollBox.y = 70;
         this.m_mainChar.addChild(this.m_mainCharCollBox);
         this.m_mainCharCollBox.visible = false;
         this.m_charMovementSpeed = this.m_defaultMovementSpeed;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_topVisualLayer);
         this.m_mainCharCenterPointX = 700 / 2 - 32;
         this.m_mainCharCenterPointY = 525 / 2 - 45;
         this.m_menuButton = new TCButton(this.OnMenuButtonClick,"menus_gameplayMenuTab");
         this.m_menuButton.x = 596;
         this.m_menuButton.y = 491;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_menuButton);
         this.m_muteMusicButton = new ToggleButton(this.ToggleMuteMusic,"menu_muteMusicButton_on","menu_muteMusicButton_off");
         this.m_muteMusicButton.x = 4;
         this.m_muteMusicButton.y = 6;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_muteMusicButton);
         this.m_muteSoundButton = new ToggleButton(this.ToggleSoundMusic,"menu_muteSoundButton_on","menu_muteSoundButton_off");
         this.m_muteSoundButton.x = 36;
         this.m_muteSoundButton.y = 5;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_muteSoundButton);
         this.m_autoWinModeOn = Singleton.utility.m_spriteHandler.CreateSprite("entryObject");
         this.m_autoWinModeOn.x = 7;
         this.m_autoWinModeOn.y = 479;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_autoWinModeOn);
         this.m_autoWinModeOn.visible = Singleton.staticData.AUTO_WIN_BATTLES;
         this.m_sageSealPiecesBackground = Singleton.utility.m_spriteHandler.CreateSprite("hud_sealPiecesBackground");
         this.m_sageSealPiecesBackground.x = 391;
         this.m_sageSealPiecesBackground.y = 490;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sageSealPiecesBackground);
         this.m_sageSealPiecesIcon = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_1_1");
         this.m_sageSealPiecesIcon.x = 13;
         this.m_sageSealPiecesIcon.y = 3;
         this.m_sageSealPiecesBackground.addChild(this.m_sageSealPiecesIcon);
         this.m_keysAndStarBackground = Singleton.utility.m_spriteHandler.CreateSprite("hud_starsAndKeysBackground");
         this.m_keysAndStarBackground.x = 388;
         this.m_keysAndStarBackground.y = 488;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_keysAndStarBackground);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15066856;
         _loc1_.size = 25;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_numOfSagePieceText = new TextField();
         this.m_numOfSagePieceText.embedFonts = true;
         this.m_numOfSagePieceText.defaultTextFormat = _loc1_;
         this.m_numOfSagePieceText.wordWrap = true;
         this.m_numOfSagePieceText.autoSize = TextFieldAutoSize.CENTER;
         this.m_numOfSagePieceText.text = "x3";
         this.m_numOfSagePieceText.width = 150;
         this.m_numOfSagePieceText.x = -12;
         this.m_numOfSagePieceText.y = -1;
         this.m_numOfSagePieceText.selectable = false;
         this.m_sageSealPiecesBackground.addChild(this.m_numOfSagePieceText);
         this.m_numOfStarsText = new TextField();
         this.m_numOfStarsText.embedFonts = true;
         this.m_numOfStarsText.defaultTextFormat = _loc1_;
         this.m_numOfStarsText.wordWrap = true;
         this.m_numOfStarsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_numOfStarsText.text = "x3";
         this.m_numOfStarsText.width = 150;
         this.m_numOfStarsText.x = 462;
         this.m_numOfStarsText.y = 489;
         this.m_numOfStarsText.selectable = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_numOfStarsText);
         this.m_sponsorURL_part1 = "h";
         this.m_sponsorURL_part2 = "t";
         this.m_sponsorURL_part3 = "p";
         this.m_sponsorURL_part4 = ":";
         this.m_sponsorURL_part5 = "/";
         this.m_sponsorURL_part6 = "so";
         this.m_sponsorURL_part7 = "go";
         this.m_sponsorURL_part8 = "o";
         this.m_sponsorURL_part9 = "d";
         this.m_sponsorURL_part10 = ".";
         this.m_sponsorURL_part11 = "c";
         this.m_sponsorURL_part12 = "m";
         this.m_numOfKeysText = new TextField();
         this.m_numOfKeysText.embedFonts = true;
         this.m_numOfKeysText.defaultTextFormat = _loc1_;
         this.m_numOfKeysText.wordWrap = true;
         this.m_numOfKeysText.autoSize = TextFieldAutoSize.CENTER;
         this.m_numOfKeysText.text = "x3";
         this.m_numOfKeysText.width = 150;
         this.m_numOfKeysText.x = 382;
         this.m_numOfKeysText.y = 489;
         this.m_numOfKeysText.selectable = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_numOfKeysText);
         this.m_newStarsPopup = new TutorialPopup();
         this.m_newStarsPopup.Create("tutorial_newStars_top");
         this.m_newStarsPopup.x = 606;
         this.m_newStarsPopup.y = 436;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_newStarsPopup);
         this.m_unspentTalentPointsPopup = new TutorialPopup();
         this.m_unspentTalentPointsPopup.Create("tutorial_newTalentPointsPopup");
         this.m_unspentTalentPointsPopup.x = 582;
         this.m_unspentTalentPointsPopup.y = 429;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_unspentTalentPointsPopup);
         this.m_gemsPopup = new TutorialPopup();
         this.m_gemsPopup.Create("tutorial_firstGemMenuPopup");
         this.m_gemsPopup.x = 604;
         this.m_gemsPopup.y = 436;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_gemsPopup);
         this.m_actionIcon = new ActionAvailbleIcon("tutorial_pressSpacekey_up","tutorial_pressSpacekey_down");
         this.m_actionIcon.x = 0;
         this.m_actionIcon.y = 465;
         this.m_actionIcon.visible = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_actionIcon);
         this.m_movementTutorial = new ActionAvailbleIcon("tutorial_movement","tutorial_movement_down");
         this.m_movementTutorial.x = 16;
         this.m_movementTutorial.y = 600;
         this.m_movementTutorial.visible = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_movementTutorial);
         this.m_sagePiecesForFusion = new Vector.<Sprite>(3);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_sagePiecesForFusion.length)
         {
            this.m_sagePiecesForFusion[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_1_1");
            Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sagePiecesForFusion[_loc2_]);
            this.m_sagePiecesForFusion[_loc2_].visible = false;
            _loc2_++;
         }
         this.m_sageSealFused = Singleton.utility.m_spriteHandler.CreateSprite("menus_plantMedallion");
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sageSealFused);
         this.m_sageSealFused.visible = false;
         this.m_flash = new Sprite();
         this.m_flash.graphics.beginFill(16777215);
         this.m_flash.graphics.drawRect(0,0,700,525);
         this.m_flash.graphics.endFill();
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_flash);
         this.m_flash.visible = false;
         this.m_miniMap = new MiniMap();
         this.m_miniMap.LoadSprites();
         this.m_miniMap.x = 9;
         this.m_miniMap.y = 404;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_miniMap);
         this.m_transitionBackground = new Sprite();
         this.m_transitionBackground.graphics.beginFill(0);
         this.m_transitionBackground.graphics.drawRect(0,0,700,525);
         this.m_transitionBackground.graphics.endFill();
         this.m_transitionBackground.visible = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_transitionBackground);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.LOADING;
      }
      
      private function ToggleMuteMusic() : void
      {
         Singleton.dynamicData.m_isMusicOn = this.m_muteMusicButton.m_isToggleOn;
      }
      
      private function ToggleSoundMusic() : void
      {
         Singleton.dynamicData.m_isSoundOn = this.m_muteSoundButton.m_isToggleOn;
      }
      
      public function StartActivate() : void
      {
         Singleton.staticData.PreBuildRoomsForFloor(Singleton.dynamicData.m_currFloorOfTower);
         this.RemoveOldRoomCreateNewRooom();
         this.m_prevLevel = this.m_currLevel;
         Singleton.dynamicData.CalculateTotatNumberOfAvailbleStars();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_miniMap.CreateMap();
         if(Singleton.dynamicData.IsMapUnlocked() && Singleton.dynamicData.m_currFloorOfTower < 30)
         {
            if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_currLevel is Lobby)
            {
               this.TurnOffTheMiniMap();
            }
            else
            {
               this.TurnOnTheMiniMap();
            }
         }
         else
         {
            this.TurnOffTheMiniMap();
         }
         this.UpdateMovementHUD();
         this.m_actionIcon.TryAndReStartAnimation(-999);
      }
      
      public function UpdateMovementHUD() : void
      {
         var _loc3_:int = 0;
         this.m_muteSoundButton.m_isToggleOn = Singleton.dynamicData.m_isSoundOn;
         this.m_muteMusicButton.m_isToggleOn = Singleton.dynamicData.m_isMusicOn;
         this.m_numOfStarsText.text = "x" + Singleton.dynamicData.GetStarsForCurrentFloor();
         if(Singleton.dynamicData.m_currEggeryKeys > 0)
         {
            this.m_numOfKeysText.text = "x" + (Singleton.dynamicData.m_currEggeryKeys + Singleton.dynamicData.m_currKeysOnFloor);
         }
         else
         {
            this.m_numOfKeysText.text = "x" + Singleton.dynamicData.m_currKeysOnFloor;
         }
         var _loc1_:Boolean = false;
         if(!_loc1_ && Singleton.dynamicData.DoAnyOfTheMinionsHaveUnspentTalentPoints() && Singleton.utility.m_screenControllers.m_topDownScreen.m_currState == TopDownStates.MOVEMENT)
         {
            this.m_unspentTalentPointsPopup.visible = true;
            _loc1_ = true;
         }
         else
         {
            this.m_unspentTalentPointsPopup.visible = false;
         }
         if(!_loc1_ && !Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS) && Singleton.dynamicData.GetOwnedGemAt(0) != null && Singleton.utility.m_screenControllers.m_topDownScreen.m_currState == TopDownStates.MOVEMENT)
         {
            this.m_gemsPopup.visible = true;
            _loc1_ = true;
         }
         else
         {
            this.m_gemsPopup.visible = false;
         }
         if(!_loc1_ && Singleton.dynamicData.DoWeHaveAStarPointToSpend() && Singleton.utility.m_screenControllers.m_topDownScreen.m_currState == TopDownStates.MOVEMENT)
         {
            this.m_newStarsPopup.visible = true;
            _loc1_ = true;
         }
         else
         {
            this.m_newStarsPopup.visible = false;
         }
         var _loc2_:int = Singleton.dynamicData.GetHighestFloor();
         if(_loc2_ < 31)
         {
            if(_loc2_ > 20)
            {
               switch(_loc2_ % 5)
               {
                  case 2:
                     this.m_numOfSagePieceText.text = "x1";
                     break;
                  case 3:
                     this.m_numOfSagePieceText.text = "x2";
                     break;
                  case 4:
                     this.m_numOfSagePieceText.text = "x3";
                     break;
                  case 0:
                     this.m_numOfSagePieceText.text = "x4";
                     break;
                  default:
                     this.m_numOfSagePieceText.text = "x0";
               }
            }
            else
            {
               switch(_loc2_ % 5)
               {
                  case 2:
                     this.m_numOfSagePieceText.text = "x1";
                     break;
                  case 3:
                     this.m_numOfSagePieceText.text = "x2";
                     break;
                  case 0:
                     this.m_numOfSagePieceText.text = "x3";
                     break;
                  default:
                     this.m_numOfSagePieceText.text = "x0";
               }
            }
            _loc3_ = Math.ceil(_loc2_ / 5);
            if(_loc3_ < 1)
            {
               _loc3_ = 1;
               this.m_numOfSagePieceText.text = "x0";
            }
            this.m_sageSealPiecesBackground.removeChild(this.m_sageSealPiecesIcon);
            this.m_sageSealPiecesIcon = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_" + _loc3_ + "_1");
            this.m_sageSealPiecesBackground.addChild(this.m_sageSealPiecesIcon);
            switch(_loc3_)
            {
               case 1:
                  this.m_sageSealPiecesIcon.x = 13;
                  this.m_sageSealPiecesIcon.y = 3;
                  break;
               case 2:
                  this.m_sageSealPiecesIcon.x = 21;
                  this.m_sageSealPiecesIcon.y = 1;
                  break;
               case 3:
                  this.m_sageSealPiecesIcon.x = 20;
                  this.m_sageSealPiecesIcon.y = -4;
                  break;
               case 4:
                  this.m_sageSealPiecesIcon.x = 12;
                  this.m_sageSealPiecesIcon.y = -8;
                  break;
               case 5:
                  this.m_sageSealPiecesIcon.x = 18;
                  this.m_sageSealPiecesIcon.y = 6;
                  break;
               case 6:
                  this.m_sageSealPiecesIcon.x = 5;
                  this.m_sageSealPiecesIcon.y = 8;
            }
            if(this.m_previousHighestFloor == -99)
            {
               if(_loc2_ % 5 != 1)
               {
                  this.m_sageSealPiecesBackground.x = 300;
               }
               else
               {
                  this.m_sageSealPiecesBackground.x = 391;
               }
            }
            else if(this.m_previousHighestFloor % 5 == 1 && _loc2_ % 5 > 1)
            {
               TweenLite.to(this.m_sageSealPiecesBackground,0.8,{
                  "delay":0.5,
                  "x":300
               });
            }
            else if(_loc2_ % 5 == 1)
            {
               TweenLite.to(this.m_sageSealPiecesBackground,0.8,{"x":391});
            }
         }
         else
         {
            this.m_sageSealPiecesBackground.x = 391;
         }
         this.m_previousHighestFloor = _loc2_;
      }
      
      public function FinishActivate() : void
      {
         if(this.m_returnChatBox != null)
         {
            if(this.m_playSageSealAnimation)
            {
               this.PlayFuseSageSealsTogether();
            }
            else
            {
               this.m_returnChatBox.SetFunctions(this.AfterChatBox);
               this.m_returnChatBox.BringInWithText(this.m_returnTrianerForChatBox.m_whatTrainerSaysAtLose,this.m_returnTrianerForChatBox.m_trainerName);
               this.m_returnChatBox = null;
               this.m_returnTrianerForChatBox = null;
            }
         }
         else
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
            this.m_mainChar.FinishActivate();
         }
         TweenLite.to(this,0.8,{"onComplete":this.TryAndActivateTheMovementTutorial});
         this.CheckForTutorials();
      }
      
      private function CheckForTutorials() : void
      {
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_KEY_KEEPERS) && Singleton.dynamicData.m_currFloorOfTower == 0 && Singleton.dynamicData.m_currRoomOfTower == 11)
         {
            TweenLite.to(this,0.9,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_KeyKeepersTut,
               "onCompleteParams":[null]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_KEY_KEEPERS,true);
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_TANKS) && Singleton.dynamicData.m_numberOfDeathsSinceVictory > 0 && Singleton.dynamicData.m_currFloorOfTower > 7)
         {
            TweenLite.to(this,1.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_TankTut,
               "onCompleteParams":[null]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_TANKS,true);
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_HEALERS) && Singleton.dynamicData.m_numberOfDeathsSinceVictory > 0 && Singleton.dynamicData.m_currFloorOfTower > 10)
         {
            TweenLite.to(this,1.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_HealerTut,
               "onCompleteParams":[null]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_HEALERS,true);
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH) && Singleton.dynamicData.m_numberOfDeathsSinceVictory == 2)
         {
            TweenLite.to(this,1.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ResetTalentTreesTut,
               "onCompleteParams":[null]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH,true);
            Singleton.dynamicData.m_numberOfDeathsSinceVictory = 0;
         }
         else if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH_2) && Singleton.dynamicData.m_numberOfDeathsSinceVictory == 5)
         {
            TweenLite.to(this,1.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ResetTalentTreesTut,
               "onCompleteParams":[null]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_DEATH_2,true);
         }
      }
      
      private function AfterChatBox() : void
      {
         this.m_mainChar.FinishActivate();
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_BOSS_ROOM) && Singleton.dynamicData.m_currKeysOnFloor == 3)
         {
            TweenLite.to(this,2.8,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_BossRoomTut,
               "onCompleteParams":[null]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_BOSS_ROOM,true);
         }
      }
      
      public function TryAndActivateTheMovementTutorial() : void
      {
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT) && Singleton.dynamicData.m_movementTutorialStepCounter < 8)
         {
            Singleton.dynamicData.m_isMovementTutorialActive = true;
            this.TurnOnTheMovementTutorial();
         }
      }
      
      public function OnMenuButtonClick(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.OpenMenus();
      }
      
      public function BringInTheNewRoom() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.LOADING;
         this.m_transitionBackground.visible = true;
         this.m_transitionBackground.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_transitionBackground,0.5,{
            "alpha":1,
            "onComplete":this.RemoveOldRoomCreateNewRooom
         }));
         _loc1_.append(new TweenLite(this.m_transitionBackground,0.1,{}));
         _loc1_.append(new TweenLite(this.m_transitionBackground,0.5,{
            "alpha":0,
            "onComplete":this.FinishBringingInTheNewRooom
         }));
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_miniMap.EnteredNewRoom();
      }
      
      private function RemoveOldRoomCreateNewRooom() : void
      {
         var _loc1_:Point = null;
         if(this.m_prevLevel != null)
         {
            this.m_prevLevel.CleanUpSprites();
         }
         this.m_currLevel = Singleton.staticData.GetCurrentLevelForNextLevel();
         this.m_currLevel.LoadSprites();
         this.m_prevLevel = this.m_currLevel;
         if(Singleton.dynamicData.m_topDownCharPositionX == -99)
         {
            _loc1_ = this.m_currLevel.GetTheGotoPositionForTheRoom();
            Singleton.dynamicData.m_topDownCharPositionX = _loc1_.x;
            Singleton.dynamicData.m_topDownCharPositionY = _loc1_.y;
         }
         this.SetInitialCameraPosition(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
         this.SetCameraToMainCharPosition();
         this.m_actionIcon.m_currButtonZone = -99;
      }
      
      private function FinishBringingInTheNewRooom() : void
      {
         this.m_transitionBackground.visible = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
         this.m_mainChar.UpdateAnimationState();
         this.CheckForTutorials();
      }
      
      public function UpdateFullFrames() : void
      {
         if(Singleton.dynamicData.m_isMovementTutorialActive)
         {
            if(Singleton.dynamicData.m_movementTutorialStepCounter > 7)
            {
               Singleton.dynamicData.m_isMovementTutorialActive = false;
               Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT,true);
               this.TurnOffTheMovementTutorial();
            }
         }
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_currState == TopDownStates.MOVEMENT)
         {
            if(Input.kd("a","LEFT") && Input.kd("d","RIGHT"))
            {
               this.m_muteMusicButton.Update();
               this.m_muteSoundButton.Update();
               this.m_mainChar.UpdateFullFrames();
               return;
            }
            if(Input.kd("w","UP") && Input.kd("s","DOWN"))
            {
               this.m_muteMusicButton.Update();
               this.m_muteSoundButton.Update();
               this.m_mainChar.UpdateFullFrames();
               return;
            }
            this.m_charMovementSpeed = this.m_defaultMovementSpeed * (1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_MOVESPEED) * 0.1);
            if(Input.kd("a","LEFT"))
            {
               Singleton.dynamicData.m_topDownCharPositionX -= this.m_charMovementSpeed;
               this.SetCameraToMainCharPosition();
               this.m_currLevel.UpdateSoundDistanceObjects(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
               if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT))
               {
                  ++Singleton.dynamicData.m_movementTutorialStepCounter;
               }
            }
            if(Input.kd("d","RIGHT"))
            {
               Singleton.dynamicData.m_topDownCharPositionX += this.m_charMovementSpeed;
               this.SetCameraToMainCharPosition();
               this.m_currLevel.UpdateSoundDistanceObjects(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
               if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT))
               {
                  ++Singleton.dynamicData.m_movementTutorialStepCounter;
               }
            }
            if(Input.kd("w","UP"))
            {
               Singleton.dynamicData.m_topDownCharPositionY -= this.m_charMovementSpeed;
               this.SetCameraToMainCharPosition();
               this.m_currLevel.UpdateSoundDistanceObjects(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
               if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT))
               {
                  ++Singleton.dynamicData.m_movementTutorialStepCounter;
               }
            }
            if(Input.kd("s","DOWN"))
            {
               Singleton.dynamicData.m_topDownCharPositionY += this.m_charMovementSpeed;
               this.SetCameraToMainCharPosition();
               this.m_currLevel.UpdateSoundDistanceObjects(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
               if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVEMENT))
               {
                  ++Singleton.dynamicData.m_movementTutorialStepCounter;
               }
            }
            if(Input.kp("M"))
            {
               this.OnMenuButtonClick(null);
            }
            this.m_currLevel.CheckForLevelCollisionsWithObject(this.m_mainCharCollBox);
            this.m_menuButton.m_isActive = true;
            this.m_muteMusicButton.Update();
            this.m_muteSoundButton.Update();
            this.m_mainChar.UpdateFullFrames();
         }
         else if(Singleton.utility.m_screenControllers.m_topDownScreen.m_currState == TopDownStates.IN_CHAT)
         {
            this.m_currLevel.UpdateChatBoxes();
            this.m_mainChar.UpdateChatBox();
         }
         this.m_currLevel.UpdateAnimationObjects();
      }
      
      public function SetInitialCameraPosition(param1:int, param2:int) : void
      {
         Singleton.dynamicData.m_topDownCharPositionY = 0;
         this.m_bottomVisualLayer.y = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            ++Singleton.dynamicData.m_topDownCharPositionY;
            this.SetCameraToMainCharPosition(false);
            _loc3_++;
         }
         Singleton.dynamicData.m_topDownCharPositionX = 0;
         this.m_bottomVisualLayer.x = 0;
         _loc3_ = 0;
         while(_loc3_ < param1)
         {
            ++Singleton.dynamicData.m_topDownCharPositionX;
            this.SetCameraToMainCharPosition(false);
            _loc3_++;
         }
      }
      
      public function SetCameraToMainCharPosition(param1:Boolean = true) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:int = 0;
         var _loc2_:Number = this.m_bottomVisualLayer.x;
         var _loc3_:Number = this.m_bottomVisualLayer.y;
         this.m_bottomVisualLayer.y = -Singleton.dynamicData.m_topDownCharPositionY;
         var _loc4_:Point;
         if((_loc4_ = this.m_currLevel.m_roomBounds.localToGlobal(new Point(this.m_currLevel.m_roomBounds.x,this.m_currLevel.m_roomBounds.y))).y + this.m_mainCharCenterPointY >= this.m_cameraCollRect.y)
         {
            this.m_mainChar.y = Singleton.dynamicData.m_topDownCharPositionY;
            this.m_bottomVisualLayer.y = _loc3_;
         }
         else if(_loc4_.y + this.m_currLevel.m_roomBounds.height - this.m_mainCharCenterPointY - 98 <= this.m_cameraCollRect.y)
         {
            this.m_mainChar.y = Singleton.dynamicData.m_topDownCharPositionY + _loc3_;
            this.m_bottomVisualLayer.y = _loc3_;
         }
         else
         {
            this.m_bottomVisualLayer.y = -Singleton.dynamicData.m_topDownCharPositionY + this.m_mainCharCenterPointY;
            this.m_mainChar.y = this.m_mainCharCenterPointY;
         }
         if(param1)
         {
            if((_loc5_ = this.m_currLevel.CheckForWallCollisionsWithObject(this.m_mainCharCollBox)) != null)
            {
               _loc6_ = _loc5_.height;
               Singleton.dynamicData.m_topDownCharPositionY = this.m_prevGlobalCharYPos;
               this.m_mainChar.y = this.m_prevLocalCharYPos;
               this.m_bottomVisualLayer.y = this.m_prevVisualLayerYPos;
            }
         }
         this.m_bottomVisualLayer.x = -Singleton.dynamicData.m_topDownCharPositionX;
         if((_loc4_ = this.m_currLevel.m_roomBounds.localToGlobal(new Point(this.m_currLevel.m_roomBounds.x,this.m_currLevel.m_roomBounds.y))).x + this.m_mainCharCenterPointX >= this.m_cameraCollRect.x)
         {
            this.m_mainChar.x = Singleton.dynamicData.m_topDownCharPositionX;
            this.m_bottomVisualLayer.x = _loc2_;
         }
         else if(_loc4_.x + this.m_currLevel.m_roomBounds.width - this.m_mainCharCenterPointX - this.m_mainChar.width <= this.m_cameraCollRect.x)
         {
            this.m_mainChar.x = Singleton.dynamicData.m_topDownCharPositionX + _loc2_;
            this.m_bottomVisualLayer.x = _loc2_;
         }
         else
         {
            this.m_bottomVisualLayer.x = -Singleton.dynamicData.m_topDownCharPositionX + this.m_mainCharCenterPointX;
         }
         if(param1)
         {
            if((_loc5_ = this.m_currLevel.CheckForWallCollisionsWithObject(this.m_mainCharCollBox)) != null)
            {
               _loc6_ = _loc5_.width;
               Singleton.dynamicData.m_topDownCharPositionX = this.m_prevGlobalCharXPos;
               this.m_mainChar.x = this.m_prevLocalCharXPos;
               this.m_bottomVisualLayer.x = this.m_prevVisualLayerXPos;
            }
         }
         this.m_topVisualLayer.x = this.m_bottomVisualLayer.x;
         this.m_topVisualLayer.y = this.m_bottomVisualLayer.y;
         this.m_currLevel.CheckForHeightCollisionsWithObject(this.m_mainCharCollBox);
         this.m_currLevel.UpdateSoundDistanceObjects(Singleton.dynamicData.m_topDownCharPositionX,Singleton.dynamicData.m_topDownCharPositionY);
         this.m_prevLocalCharXPos = this.m_mainChar.x;
         this.m_prevLocalCharYPos = this.m_mainChar.y;
         this.m_prevGlobalCharXPos = Singleton.dynamicData.m_topDownCharPositionX;
         this.m_prevGlobalCharYPos = Singleton.dynamicData.m_topDownCharPositionY;
         this.m_prevVisualLayerXPos = this.m_bottomVisualLayer.x;
         this.m_prevVisualLayerYPos = this.m_bottomVisualLayer.y;
      }
      
      public function TurnOffTheActionIcon() : void
      {
         TweenLite.to(this.m_actionIcon,1.5,{"y":600});
      }
      
      public function TurnOnTheActionIcon() : void
      {
         this.m_actionIcon.TryAndReStartAnimation(-999);
         TweenLite.to(this.m_actionIcon,0.5,{"y":465});
      }
      
      public function TurnOffTheMiniMap() : void
      {
         TweenLite.to(this.m_miniMap,0.5,{"alpha":0});
         this.m_actionIcon.y = 465;
         this.m_actionIcon.scaleX = 1;
         this.m_actionIcon.scaleY = 1;
      }
      
      public function TurnOnTheMiniMap() : void
      {
         TweenLite.to(this.m_miniMap,0.5,{"alpha":1});
         this.m_actionIcon.y = 375;
         this.m_actionIcon.scaleX = 0.7;
         this.m_actionIcon.scaleY = 0.7;
      }
      
      public function TurnOffTheMovementTutorial() : void
      {
         TweenLite.to(this.m_movementTutorial,1.5,{
            "y":600,
            "onComplete":this.FinishTurningOffTheMovementTutorial
         });
      }
      
      private function PlayFuseSageSealsTogether() : void
      {
         this.m_playSageSealAnimation = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_PLAYING_SAGE_SEAL_ANIMATION;
         this.TurnOffTheActionIcon();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_sagePiecesForFusion.length)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.removeChild(this.m_sagePiecesForFusion[_loc1_]);
            _loc1_++;
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.removeChild(this.m_sageSealFused);
         Singleton.utility.m_screenControllers.m_topDownScreen.removeChild(this.m_flash);
         var _loc2_:int = Singleton.dynamicData.m_currFloorOfTower / 5;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_flash);
         this.m_flash.visible = true;
         this.m_flash.alpha = 0;
         if(_loc2_ < 4)
         {
            this.m_sagePiecesForFusion = new Vector.<Sprite>(3);
         }
         else
         {
            this.m_sagePiecesForFusion = new Vector.<Sprite>(4);
         }
         var _loc3_:Array = [287,301,367,367];
         var _loc4_:Array = [141,201,148,207];
         _loc1_ = 0;
         while(_loc1_ < this.m_sagePiecesForFusion.length)
         {
            this.m_sagePiecesForFusion[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_" + (_loc2_ + 1) + "_" + (_loc1_ + 1));
            Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sagePiecesForFusion[_loc1_]);
            this.m_sagePiecesForFusion[_loc1_].alpha = 0;
            this.m_sagePiecesForFusion[_loc1_].x = _loc3_[_loc1_];
            this.m_sagePiecesForFusion[_loc1_].y = _loc4_[_loc1_];
            _loc1_++;
         }
         var _loc5_:Array = ["menus_plantMedallion","menus_fireMedallion","menus_electricMedallion","menus_undeadMedallion","menus_plantWizardMedallion","menus_undeadWizardMedallion","menus_undeadWizardMedallion"];
         this.m_sageSealFused = Singleton.utility.m_spriteHandler.CreateSprite(_loc5_[_loc2_]);
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_sageSealFused);
         this.m_sageSealFused.alpha = 0;
         this.m_sageSealFused.x = 323;
         this.m_sageSealFused.y = 167;
         var _loc7_:TimelineLite;
         (_loc7_ = new TimelineLite()).append(new TweenLite(this.m_flash,1.3,{}));
         _loc7_.append(new TweenLite(this.m_flash,0.5,{"alpha":0.5}));
         _loc7_.append(new TweenLite(this.m_flash,0.9,{}));
         _loc7_.append(new TweenLite(this.m_flash,0.15,{"alpha":1}));
         _loc7_.append(new TweenLite(this.m_flash,0.15,{"alpha":0.3}));
         _loc7_.append(new TweenLite(this.m_flash,1.5,{"alpha":0}));
         _loc1_ = 0;
         while(_loc1_ < this.m_sagePiecesForFusion.length)
         {
            (_loc7_ = new TimelineLite()).append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],1.3,{}));
            _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.5,{}));
            _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.5,{"alpha":1}));
            _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.4,{}));
            _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.15,{
               "x":this.m_sageSealFused.x,
               "y":this.m_sageSealFused.y
            }));
            _loc7_.append(new TweenLite(this.m_sagePiecesForFusion[_loc1_],0.05,{"alpha":0}));
            _loc1_++;
         }
         (_loc7_ = new TimelineLite()).append(new TweenLite(this.m_sageSealFused,1.3,{}));
         _loc7_.append(new TweenLite(this.m_sageSealFused,1.4,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_levelUp",0.25]
         }));
         _loc7_.append(new TweenLite(this.m_sageSealFused,0.15,{"alpha":1}));
         _loc7_.append(new TweenLite(this.m_sageSealFused,1.8,{
            "y":"-10",
            "alpha":0
         }));
         _loc7_.append(new TweenLite(this.m_sageSealFused,0.3,{"onComplete":this.FinishSageSealAnimation}));
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         var _loc5_:URLRequest = null;
         var _loc2_:StaticData = Singleton.staticData;
         var _loc3_:String = _loc2_.m_sponsorURL_part1 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5;
         var _loc4_:String = this.m_sponsorURL_part1 + this.m_sponsorURL_part2 + this.m_sponsorURL_part2 + this.m_sponsorURL_part3 + this.m_sponsorURL_part4 + this.m_sponsorURL_part5 + this.m_sponsorURL_part5 + this.m_sponsorURL_part6 + this.m_sponsorURL_part7 + this.m_sponsorURL_part8 + this.m_sponsorURL_part9 + this.m_sponsorURL_part10 + this.m_sponsorURL_part11 + this.m_sponsorURL_part8 + this.m_sponsorURL_part12 + this.m_sponsorURL_part5;
         if(_loc3_ != _loc4_)
         {
            _loc5_ = new URLRequest(_loc4_);
            navigateToURL(_loc5_,"_self");
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.SITE_LOCKED_SCREEN,false);
            this.m_sponsorTimer.stop();
         }
      }
      
      private function FinishSageSealAnimation() : void
      {
         this.TurnOnTheActionIcon();
         this.m_returnChatBox.SetFunctions(this.AfterChatBox);
         this.m_returnChatBox.BringInWithText(this.m_returnTrianerForChatBox.m_whatTrainerSaysAtLose,this.m_returnTrianerForChatBox.m_trainerName);
         this.m_returnChatBox = null;
         this.m_returnTrianerForChatBox = null;
      }
      
      private function FinishTurningOffTheMovementTutorial() : void
      {
         this.m_movementTutorial.visible = false;
      }
      
      public function TurnOnTheMovementTutorial() : void
      {
         this.m_movementTutorial.visible = true;
         this.m_movementTutorial.TryAndReStartAnimation(-999,1.5);
         TweenLite.to(this.m_movementTutorial,0.5,{"y":427});
      }
   }
}
