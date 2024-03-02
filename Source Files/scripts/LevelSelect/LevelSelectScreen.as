package LevelSelect
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseScreen;
   import States.GameState;
   import States.SpecialRoom;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class LevelSelectScreen extends BaseScreen
   {
       
      
      private var m_backgroundBlueBase:Sprite;
      
      private var m_stars:Sprite;
      
      private var m_clouds:Vector.<Sprite>;
      
      private var m_backgroundFar:Sprite;
      
      private var m_backgroundBase:Sprite;
      
      private var m_floorDisplayObjects:Vector.<FloorDisplayObject>;
      
      private var m_floorInformationObjects:Vector.<FloorInformationObject>;
      
      private var m_returnButton:TCButton;
      
      private var m_upButton:TCButton;
      
      private var m_downButton:TCButton;
      
      private var m_currPage:int;
      
      private const m_numberOfPiecesPerScroll:int = 3;
      
      private const m_totalPages:int = 9;
      
      private var m_isAnimating:Boolean;
      
      public var m_isOnHardMode:Boolean;
      
      private var m_switchToHardModeButton:TCButton;
      
      private var m_switchToNormalModeButton:TCButton;
      
      private var m_hardModeIconOff:Sprite;
      
      private var m_normalModeIconOff:Sprite;
      
      public function LevelSelectScreen()
      {
         super();
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_backgroundBlueBase = new Sprite();
         this.m_backgroundBlueBase.graphics.beginFill(407651);
         this.m_backgroundBlueBase.graphics.drawRect(0,0,700,525);
         this.m_backgroundBlueBase.graphics.endFill();
         this.m_backgroundBlueBase.x = 0;
         this.m_backgroundBlueBase.y = 0;
         addChild(this.m_backgroundBlueBase);
         this.m_stars = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_background_stars");
         this.m_stars.x = 0;
         this.m_stars.y = 0;
         addChild(this.m_stars);
         this.m_backgroundFar = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_sky");
         this.m_backgroundFar.x = 0;
         this.m_backgroundFar.y = 0;
         addChild(this.m_backgroundFar);
         this.m_clouds = new Vector.<Sprite>(4);
         var _loc1_:Array = [20,380,-90,300];
         var _loc2_:int = 0;
         while(_loc2_ < this.m_clouds.length)
         {
            this.m_clouds[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_clouds");
            this.m_clouds[_loc2_].scaleX = 0.7 - _loc2_ * 0.07;
            this.m_clouds[_loc2_].scaleY = this.m_clouds[_loc2_].scaleX;
            this.m_clouds[_loc2_].x = _loc1_[_loc2_];
            this.m_clouds[_loc2_].y = this.GetCloudsBackgroundY(_loc2_);
            addChild(this.m_clouds[_loc2_]);
            _loc2_++;
         }
         this.m_backgroundBase = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_background_frontMountains");
         this.m_backgroundBase.x = 0;
         this.m_backgroundBase.y = 119;
         addChild(this.m_backgroundBase);
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"roomSelect_returnButton");
         this.m_returnButton.x = 592;
         this.m_returnButton.y = -2;
         addChild(this.m_returnButton);
         this.m_normalModeIconOff = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_normalModeButton");
         this.m_normalModeIconOff.x = 610;
         this.m_normalModeIconOff.y = 378 - 20;
         addChild(this.m_normalModeIconOff);
         this.m_switchToNormalModeButton = new TCButton(this.NormalModeButtonPressed,"roomSelect_normalModeButton_off","roomSelect_normalModeButton");
         this.m_switchToNormalModeButton.x = this.m_normalModeIconOff.x;
         this.m_switchToNormalModeButton.y = this.m_normalModeIconOff.y;
         addChild(this.m_switchToNormalModeButton);
         this.m_hardModeIconOff = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_hardModeButton");
         this.m_hardModeIconOff.x = 610;
         this.m_hardModeIconOff.y = 444 - 20;
         addChild(this.m_hardModeIconOff);
         this.m_switchToHardModeButton = new TCButton(this.HardModeButtonPressed,"roomSelect_hardModeButton_off","roomSelect_hardModeButton");
         this.m_switchToHardModeButton.x = this.m_hardModeIconOff.x;
         this.m_switchToHardModeButton.y = this.m_hardModeIconOff.y;
         addChild(this.m_switchToHardModeButton);
         this.m_upButton = new TCButton(this.UpButtonPressed,"roomSelect_upArrow");
         this.m_upButton.x = 543;
         this.m_upButton.y = 4;
         addChild(this.m_upButton);
         this.m_downButton = new TCButton(this.DownButtonPressed,"roomSelect_upArrow");
         this.m_downButton.x = 543;
         this.m_downButton.y = 504;
         this.m_downButton.scaleY = -1;
         addChild(this.m_downButton);
         this.m_floorDisplayObjects = new Vector.<FloorDisplayObject>(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
         this.m_floorInformationObjects = new Vector.<FloorInformationObject>(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
         var _loc3_:int = int(this.m_floorDisplayObjects.length - 1);
         while(_loc3_ > -1)
         {
            this.m_floorDisplayObjects[_loc3_] = new FloorDisplayObject(_loc3_);
            this.m_floorDisplayObjects[_loc3_].x = 114;
            this.m_floorDisplayObjects[_loc3_].y = 329 - _loc3_ * 94;
            this.m_floorDisplayObjects[_loc3_].LoadSprites();
            addChild(this.m_floorDisplayObjects[_loc3_]);
            this.m_floorDisplayObjects[_loc3_].SetFloor(_loc3_);
            this.m_floorInformationObjects[_loc3_] = new FloorInformationObject();
            this.m_floorInformationObjects[_loc3_].x = 312;
            this.m_floorInformationObjects[_loc3_].y = 354 - _loc3_ * 94;
            this.m_floorInformationObjects[_loc3_].LoadSprites();
            addChild(this.m_floorInformationObjects[_loc3_]);
            _loc3_--;
         }
      }
      
      override public function DeActivate() : void
      {
         super.DeActivate();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_floorInformationObjects.length)
         {
            this.m_floorInformationObjects[_loc1_].StopAnimations();
            _loc1_++;
         }
      }
      
      private function GetHeightPositionBaseOnHiddenFloors(param1:int) : int
      {
         var _loc2_:int = param1;
         if(param1 >= 3 && (!Singleton.dynamicData.GetHasUnlockedFloor(3) || Singleton.dynamicData.GetAnimateNewFloorIn(0)))
         {
            _loc2_--;
         }
         if(param1 >= 8 && (!Singleton.dynamicData.GetHasUnlockedFloor(8) || Singleton.dynamicData.GetAnimateNewFloorIn(1)))
         {
            _loc2_--;
         }
         if(param1 >= 13 && (!Singleton.dynamicData.GetHasUnlockedFloor(13) || Singleton.dynamicData.GetAnimateNewFloorIn(2)))
         {
            _loc2_--;
         }
         if(param1 >= 18 && (!Singleton.dynamicData.GetHasUnlockedFloor(18) || Singleton.dynamicData.GetAnimateNewFloorIn(3)))
         {
            _loc2_--;
         }
         return _loc2_;
      }
      
      private function GetTotalNumberOfUnlockedFloors() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
         {
            if(Singleton.dynamicData.GetHasUnlockedFloor(_loc2_))
            {
               _loc1_++;
            }
            _loc2_++;
         }
         if(this.m_isOnHardMode)
         {
            return _loc1_ - Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
         }
         return _loc1_;
      }
      
      override public function StartActivate() : void
      {
         var _loc2_:int = 0;
         super.StartActivate();
         Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
         this.m_isAnimating = false;
         if(Singleton.dynamicData.GetHasUnlockedFloor(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER))
         {
            if(Singleton.dynamicData.m_currFloorOfTower < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
            {
               this.m_switchToHardModeButton.visible = true;
               this.m_switchToNormalModeButton.visible = false;
               this.m_isOnHardMode = false;
               this.m_hardModeIconOff.visible = false;
               this.m_normalModeIconOff.visible = true;
            }
            else
            {
               this.m_switchToHardModeButton.visible = false;
               this.m_switchToNormalModeButton.visible = true;
               this.m_isOnHardMode = true;
               this.m_hardModeIconOff.visible = true;
               this.m_normalModeIconOff.visible = false;
            }
         }
         else
         {
            this.m_switchToHardModeButton.visible = false;
            this.m_switchToNormalModeButton.visible = false;
            this.m_isOnHardMode = false;
            this.m_hardModeIconOff.visible = false;
            this.m_normalModeIconOff.visible = false;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_floorInformationObjects.length)
         {
            this.m_floorInformationObjects[_loc1_].UpdateFloor(_loc1_,this.m_isOnHardMode);
            this.m_floorDisplayObjects[_loc1_].UpdateFloor(_loc1_,this.m_isOnHardMode);
            _loc1_++;
         }
         this.m_currPage = int((this.GetTotalNumberOfUnlockedFloors() - 1) / this.m_numberOfPiecesPerScroll);
         if(this.m_currPage > this.m_totalPages)
         {
            this.m_currPage = this.m_totalPages;
         }
         if(Singleton.dynamicData.GetAnimateNewFloorIn(0))
         {
            this.m_currPage = 0;
         }
         else if(Singleton.dynamicData.GetAnimateNewFloorIn(1))
         {
            this.m_currPage = 2;
         }
         else if(Singleton.dynamicData.GetAnimateNewFloorIn(2))
         {
            this.m_currPage = 4;
         }
         else if(Singleton.dynamicData.GetAnimateNewFloorIn(3))
         {
            this.m_currPage = 5;
         }
         this.m_backgroundBase.y = this.GetBaseBackgroundPosition();
         this.m_backgroundFar.alpha = this.GetCloundsBackground();
         this.m_stars.alpha = this.GetStarsBackground();
         _loc1_ = 0;
         while(_loc1_ < this.m_floorDisplayObjects.length)
         {
            _loc2_ = this.GetHeightPositionBaseOnHiddenFloors(_loc1_);
            this.m_floorDisplayObjects[_loc1_].y = 329 - _loc2_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage;
            this.m_floorInformationObjects[_loc1_].y = 354 - _loc2_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage;
            _loc1_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_clouds.length)
         {
            this.m_clouds[_loc3_].y = this.GetCloudsBackgroundY(_loc3_);
            _loc3_++;
         }
         this.SetArrowVisiblity();
         if(Singleton.dynamicData.GetAnimateNewFloorIn(0))
         {
            Singleton.dynamicData.SetAnimateNewFloor(0,false);
            this.PlayNewEnterFloor(3);
         }
         else if(Singleton.dynamicData.GetAnimateNewFloorIn(1))
         {
            Singleton.dynamicData.SetAnimateNewFloor(1,false);
            this.PlayNewEnterFloor(8);
         }
         else if(Singleton.dynamicData.GetAnimateNewFloorIn(2))
         {
            Singleton.dynamicData.SetAnimateNewFloor(2,false);
            this.PlayNewEnterFloor(13);
         }
         else if(Singleton.dynamicData.GetAnimateNewFloorIn(3))
         {
            Singleton.dynamicData.SetAnimateNewFloor(3,false);
            this.PlayNewEnterFloor(18);
         }
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_REPLAY_FLOORS) && Singleton.dynamicData.GetHighestFloor() >= 15)
         {
            TweenLite.to(this,0.8,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ReplayFloor,
               "onCompleteParams":[null]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_REPLAY_FLOORS,true);
         }
      }
      
      private function PlayShakeAnimation(param1:Sprite) : void
      {
         var _loc3_:TimelineLite = new TimelineLite();
         _loc3_.append(new TweenLite(param1,1,{}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + 4}));
         _loc3_.append(new TweenLite(param1,0.125,{"x":"" + 4}));
      }
      
      private function PlayNewEnterFloor(param1:int) : void
      {
         var _loc2_:TimelineLite = null;
         var _loc4_:int = 0;
         this.m_isAnimating = true;
         TweenLite.to(this,0.4,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_earthquake2"]
         });
         this.m_floorInformationObjects[param1].visible = false;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_floorDisplayObjects.length)
         {
            this.PlayShakeAnimation(this.m_floorDisplayObjects[_loc3_]);
            _loc3_++;
         }
         this.PlayShakeAnimation(this.m_backgroundBase);
         var _loc5_:int = param1;
         while(_loc5_ < this.m_floorDisplayObjects.length)
         {
            _loc4_ = this.GetHeightPositionBaseOnHiddenFloors(_loc5_);
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_floorDisplayObjects[_loc5_],1.2,{}));
            _loc2_.append(new TweenLite(this.m_floorDisplayObjects[_loc5_],1.8,{"y":329 - _loc4_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage}));
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_floorInformationObjects[_loc5_],1.2,{}));
            _loc2_.append(new TweenLite(this.m_floorInformationObjects[_loc5_],1.8,{"y":354 - _loc4_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage}));
            _loc5_++;
         }
         TweenLite.to(this,3.2,{
            "onComplete":this.FinishPlayingEnterFloor,
            "onCompleteParams":[param1]
         });
      }
      
      private function FinishPlayingEnterFloor(param1:int) : void
      {
         this.m_floorInformationObjects[param1].visible = true;
         this.m_floorInformationObjects[param1].alpha = 0;
         TweenLite.to(this.m_floorInformationObjects[param1],0.5,{"alpha":1});
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_BONUS_LEVEL))
         {
            TweenLite.to(this,1.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_BonusLevelTut,
               "onCompleteParams":[this.ReActivateLevelSelect]
            });
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_BONUS_LEVEL,true);
         }
         else
         {
            this.ReActivateLevelSelect();
         }
      }
      
      private function ReActivateLevelSelect() : void
      {
         this.m_isAnimating = false;
      }
      
      private function AnimateToPosition() : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = this.GetBaseBackgroundPosition();
         TweenLite.to(this.m_backgroundBase,1,{"y":_loc2_});
         TweenLite.to(this.m_backgroundFar,1,{"alpha":this.GetCloundsBackground()});
         TweenLite.to(this.m_stars,1,{"alpha":this.GetStarsBackground()});
         var _loc4_:int = 0;
         while(_loc4_ < this.m_floorDisplayObjects.length)
         {
            _loc3_ = this.GetHeightPositionBaseOnHiddenFloors(_loc4_);
            TweenLite.to(this.m_floorDisplayObjects[_loc4_],1,{"y":329 - _loc3_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage});
            TweenLite.to(this.m_floorInformationObjects[_loc4_],1,{"y":354 - _loc3_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage});
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc5_ < this.m_clouds.length)
         {
            TweenLite.to(this.m_clouds[_loc5_],1,{"y":this.GetCloudsBackgroundY(_loc5_)});
            _loc5_++;
         }
      }
      
      private function UpButtonPressed(param1:MouseEvent) : void
      {
         ++this.m_currPage;
         this.SetArrowVisiblity();
         this.AnimateToPosition();
      }
      
      private function DownButtonPressed(param1:MouseEvent) : void
      {
         --this.m_currPage;
         this.SetArrowVisiblity();
         this.AnimateToPosition();
      }
      
      private function GetBaseBackgroundPosition() : Number
      {
         return 119 + this.m_currPage * 0.75 * 93;
      }
      
      private function GetMountainsBackground() : Number
      {
         return 195 + this.m_currPage * 0.7 * 93;
      }
      
      private function GetCloundsBackground() : Number
      {
         var _loc1_:Number = 1 - (this.m_currPage - 3) / (this.m_totalPages - 3);
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      private function GetStarsBackground() : Number
      {
         var _loc1_:Number = (this.m_currPage - 6) / (this.m_totalPages - 6);
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      private function GetCloudsBackgroundY(param1:int) : Number
      {
         return 110 - param1 * 50 + this.m_currPage * 0.75 * 93;
      }
      
      private function SetArrowVisiblity() : void
      {
         if(this.m_currPage == 0)
         {
            this.m_downButton.visible = false;
         }
         else
         {
            this.m_downButton.visible = true;
         }
         if(this.m_currPage == this.m_totalPages || this.m_currPage == int(Singleton.dynamicData.GetHighestFloor() / this.m_numberOfPiecesPerScroll))
         {
            this.m_upButton.visible = false;
         }
         else
         {
            this.m_upButton.visible = true;
         }
      }
      
      private function HardModeButtonPressed(param1:MouseEvent) : void
      {
         this.m_switchToHardModeButton.visible = false;
         this.m_switchToNormalModeButton.visible = true;
         this.m_isOnHardMode = true;
         this.m_hardModeIconOff.visible = true;
         this.m_normalModeIconOff.visible = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_floorInformationObjects.length)
         {
            this.m_floorInformationObjects[_loc2_].UpdateFloor(_loc2_,this.m_isOnHardMode);
            _loc2_++;
         }
         this.m_currPage = int((this.GetTotalNumberOfUnlockedFloors() - 1) / this.m_numberOfPiecesPerScroll);
         this.AnimateToPosition();
         this.SetArrowVisiblity();
      }
      
      private function NormalModeButtonPressed(param1:MouseEvent) : void
      {
         this.m_switchToHardModeButton.visible = true;
         this.m_switchToNormalModeButton.visible = false;
         this.m_isOnHardMode = false;
         this.m_hardModeIconOff.visible = false;
         this.m_normalModeIconOff.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_floorInformationObjects.length)
         {
            this.m_floorInformationObjects[_loc2_].UpdateFloor(_loc2_,this.m_isOnHardMode);
            _loc2_++;
         }
      }
      
      private function ReturnButtonPressed(param1:MouseEvent) : void
      {
         Singleton.dynamicData.m_topDownCharPositionX = -99;
         Singleton.dynamicData.m_topDownCharPositionY = -99;
         Singleton.dynamicData.m_currTransitionID = SpecialRoom.LOBBY_ELEVATOR;
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_clouds.length)
         {
            this.m_clouds[_loc1_].x += 0.4 * this.m_clouds[_loc1_].scaleX;
            if(this.m_clouds[_loc1_].x > 700)
            {
               this.m_clouds[_loc1_].x = -this.m_clouds[_loc1_].width;
            }
            _loc1_++;
         }
         if(this.m_isAnimating || Singleton.utility.m_tutorialHandler.m_isActive)
         {
            if(Singleton.utility.m_tutorialHandler.m_isActive)
            {
               Singleton.utility.m_tutorialHandler.Update();
            }
            return;
         }
         if(this.m_switchToHardModeButton.visible)
         {
            this.m_switchToHardModeButton.m_isActive = true;
         }
         if(this.m_switchToNormalModeButton.visible)
         {
            this.m_switchToNormalModeButton.m_isActive = true;
         }
         this.m_returnButton.m_isActive = true;
         if(this.m_upButton.visible)
         {
            this.m_upButton.m_isActive = true;
         }
         if(this.m_downButton.visible)
         {
            this.m_downButton.m_isActive = true;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_floorInformationObjects.length)
         {
            this.m_floorInformationObjects[_loc2_].Update();
            _loc2_++;
         }
      }
   }
}
