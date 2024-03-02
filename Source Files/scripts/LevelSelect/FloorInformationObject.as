package LevelSelect
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class FloorInformationObject extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_goButton:TCButton;
      
      private var m_currStarsIcon:Sprite;
      
      private var m_currStarsText:TextField;
      
      private var m_currFloor:int;
      
      private var m_newIcon:Sprite;
      
      private var m_currFloorIcon:Sprite;
      
      private var m_femaleIcon:Sprite;
      
      private var m_maleIcon:Sprite;
      
      private var m_hardModeIcon:Sprite;
      
      public function FloorInformationObject()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_roomInformationBackground");
         addChild(this.m_background);
         this.m_goButton = new TCButton(this.GoButtonPressed,"roomSelect_roomInformationGoButton");
         this.m_goButton.x = 124;
         this.m_goButton.y = 11;
         addChild(this.m_goButton);
         this.m_currStarsIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_roomInformationStars");
         this.m_currStarsIcon.x = 24;
         this.m_currStarsIcon.y = 11;
         addChild(this.m_currStarsIcon);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15987699;
         _loc1_.size = 21;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         this.m_currStarsText = new TextField();
         this.m_currStarsText.x = 55;
         this.m_currStarsText.y = 10;
         this.m_currStarsText.embedFonts = true;
         this.m_currStarsText.defaultTextFormat = _loc1_;
         this.m_currStarsText.wordWrap = true;
         this.m_currStarsText.autoSize = TextFieldAutoSize.LEFT;
         this.m_currStarsText.text = "99/99";
         this.m_currStarsText.width = 150;
         this.m_currStarsText.selectable = false;
         addChild(this.m_currStarsText);
         this.m_newIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_roomInformationNewIcon");
         this.m_newIcon.x = 164;
         this.m_newIcon.y = 8;
         addChild(this.m_newIcon);
         this.m_currFloorIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_tempCharIcon");
         this.m_currFloorIcon.x = 176;
         this.m_currFloorIcon.y = 0;
         addChild(this.m_currFloorIcon);
         this.m_femaleIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_femaleIcon");
         this.m_femaleIcon.x = 13;
         this.m_femaleIcon.y = 7;
         this.m_currFloorIcon.addChild(this.m_femaleIcon);
         this.m_maleIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_maleIcon");
         this.m_maleIcon.x = 13;
         this.m_maleIcon.y = 7;
         this.m_currFloorIcon.addChild(this.m_maleIcon);
         this.m_hardModeIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_hardModeTab");
         this.m_hardModeIcon.x = 34;
         this.m_hardModeIcon.y = -13;
         addChild(this.m_hardModeIcon);
      }
      
      private function AnimateNewFloor() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_newIcon,0.8,{"x":"10"}));
         _loc1_.append(new TweenLite(this.m_newIcon,0.8,{
            "x":"-10",
            "onComplete":this.AnimateNewFloor
         }));
      }
      
      public function StopAnimations() : void
      {
         TweenLite.killTweensOf(this.m_newIcon);
      }
      
      public function UpdateFloor(param1:int, param2:Boolean) : void
      {
         var _loc5_:TextFormat = null;
         var _loc6_:TimelineLite = null;
         if(param2)
         {
            this.m_currFloor = param1 + Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
            this.m_hardModeIcon.visible = true;
         }
         else
         {
            this.m_currFloor = param1;
            this.m_hardModeIcon.visible = false;
         }
         var _loc3_:int = 12;
         var _loc4_:int = Singleton.dynamicData.GetHighestStarCount(this.m_currFloor);
         if(param2)
         {
            _loc3_ = 18;
         }
         if(param1 % 5 == 4)
         {
            _loc3_ = 3;
         }
         if(param1 == 30)
         {
            _loc3_ = 3;
         }
         if(_loc3_ == _loc4_)
         {
            (_loc5_ = new TextFormat()).color = 4695355;
            _loc5_.size = 21;
            _loc5_.font = "BurbinCasual";
            _loc5_.align = TextFormatAlign.LEFT;
         }
         else
         {
            (_loc5_ = new TextFormat()).color = 15987699;
            _loc5_.size = 21;
            _loc5_.font = "BurbinCasual";
            _loc5_.align = TextFormatAlign.LEFT;
         }
         this.m_currStarsText.defaultTextFormat = _loc5_;
         this.m_currStarsText.text = "" + _loc4_ + "/" + _loc3_;
         if(Singleton.dynamicData.m_isMale)
         {
            this.m_maleIcon.visible = true;
            this.m_femaleIcon.visible = false;
         }
         else
         {
            this.m_maleIcon.visible = false;
            this.m_femaleIcon.visible = true;
         }
         if(Singleton.dynamicData.GetHighestStarCount(this.m_currFloor) == 0)
         {
            this.m_newIcon.visible = true;
            this.AnimateNewFloor();
            this.x += 50;
            this.alpha = 0;
            this.m_newIcon.alpha = 0;
            (_loc6_ = new TimelineLite()).append(new TweenLite(this,0.9,{}));
            _loc6_.append(new TweenLite(this,1,{
               "x":"-50",
               "alpha":1
            }));
            _loc6_.append(new TweenLite(this,1.4,{}));
            _loc6_.append(new TweenLite(this.m_newIcon,0.5,{"alpha":1}));
         }
         else
         {
            this.m_newIcon.visible = false;
         }
         if(Singleton.dynamicData.m_currFloorOfTower == this.m_currFloor)
         {
            this.m_currFloorIcon.visible = true;
            this.m_newIcon.visible = false;
         }
         else
         {
            this.m_currFloorIcon.visible = false;
         }
         if(!Singleton.dynamicData.GetHasUnlockedFloor(this.m_currFloor))
         {
            visible = false;
         }
         else
         {
            visible = true;
            this.m_currStarsText.visible = true;
         }
      }
      
      private function GoButtonPressed(param1:MouseEvent) : void
      {
         if(Singleton.dynamicData.m_currFloorOfTower == this.m_currFloor)
         {
            Singleton.dynamicData.m_currRoomOfTower = 0;
            Singleton.dynamicData.m_currTransitionID = 0;
            Singleton.dynamicData.m_topDownCharPositionX = -99;
            Singleton.dynamicData.m_topDownCharPositionY = -99;
         }
         else
         {
            Singleton.dynamicData.SetupDataForBringingInANewFloor(this.m_currFloor);
            Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
         }
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
         Singleton.dynamicData.SetNewReturnToOnDeathPoint();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.SetDirectionForStill(Singleton.staticData.GetCurrentLevel().m_initialDirection);
      }
      
      public function Update() : void
      {
         if(visible == true && this.m_goButton.visible)
         {
            this.m_goButton.m_isActive = true;
         }
      }
   }
}
