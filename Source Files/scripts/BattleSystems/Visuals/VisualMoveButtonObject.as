package BattleSystems.Visuals
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class VisualMoveButtonObject extends GameObject
   {
       
      
      private var m_moveButton:TCButton;
      
      private var m_textBackground:Sprite;
      
      private var m_moveNameText:TextField;
      
      private var m_cooldownBackground:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      public var m_currMove:BaseMinionMove;
      
      public var m_isInUse:Boolean;
      
      public var m_textBubble:Sprite;
      
      public var m_textArrow:Sprite;
      
      public function VisualMoveButtonObject()
      {
         super();
         this.m_isInUse = false;
         this.m_moveButton = new TCButton(this.MoveButtonHasBeenPressed);
         this.m_moveButton.ActivateTooltip();
      }
      
      public function CreateObject(param1:OwnedMinion, param2:int, param3:int) : void
      {
         this.m_isInUse = true;
         this.m_currMove = Singleton.staticData.GetBaseMinionMove(param2);
         this.m_currMinion = param1;
         var _loc4_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param2);
         this.m_moveButton.CreateButtonWithStrings(_loc4_.m_moveIcon);
         this.m_moveButton.scaleX = 0.9;
         this.m_moveButton.scaleY = 0.9;
         addChild(this.m_moveButton);
         var _loc5_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param2);
         this.m_moveButton.SetNewPopupSprite(_loc5_.GetToolTipForMoveDescription());
         this.m_textArrow = new Sprite();
         this.m_textArrow.graphics.beginFill(0);
         this.m_textArrow.graphics.drawRect(0,0,7,7);
         this.m_textArrow.graphics.endFill();
         addChild(this.m_textArrow);
         this.m_textArrow.x = 25;
         this.m_textArrow.y = -8;
         this.m_textArrow.rotation = 45;
         var _loc6_:TextFormat;
         (_loc6_ = new TextFormat()).color = 15461355;
         _loc6_.size = 10;
         _loc6_.font = "BurbinCasual";
         _loc6_.align = TextFormatAlign.LEFT;
         this.m_moveNameText = new TextField();
         this.m_moveNameText.embedFonts = true;
         this.m_moveNameText.defaultTextFormat = _loc6_;
         this.m_moveNameText.autoSize = TextFieldAutoSize.CENTER;
         this.m_moveNameText.text = _loc4_.m_moveName;
         this.m_moveNameText.y = 0;
         this.m_moveNameText.selectable = false;
         this.m_textBubble = new Sprite();
         this.m_textBubble.graphics.beginFill(0);
         if(this.m_moveNameText.width > 60)
         {
            this.m_textBubble.graphics.drawRoundRect(0,0,this.m_moveNameText.width + 10,17,20);
         }
         else
         {
            this.m_textBubble.graphics.drawRoundRect(0,0,70,17,20);
         }
         this.m_textBubble.graphics.endFill();
         addChild(this.m_textBubble);
         this.m_textBubble.x = -11;
         this.m_textBubble.y = -19;
         this.m_moveNameText.x = 1 + this.m_textBubble.width / 2 - this.m_moveNameText.width / 2;
         this.m_textBubble.addChild(this.m_moveNameText);
         if(param3 == 0 || param3 == 3 || param3 == 6 || param3 == 9)
         {
            this.m_textBubble.x -= 10;
            this.m_textBubble.x -= this.m_textBubble.width - 70;
         }
         else if(param3 == 1 || param3 == 4 || param3 == 7 || param3 == 10)
         {
            this.m_textBubble.x -= (this.m_textBubble.width - 70) / 2;
         }
         else if(param3 == 2 || param3 == 5 || param3 == 8 || param3 == 11)
         {
            this.m_textBubble.x += 10;
         }
         if(param3 == 3 || param3 == 4 || param3 == 5)
         {
            this.m_textArrow.y += 52;
            this.m_textBubble.y += 68;
         }
         this.m_cooldownBackground = new Sprite();
         this.m_cooldownBackground.graphics.beginFill(16777215);
         this.m_cooldownBackground.graphics.drawRoundRect(0,0,this.m_moveButton.width,this.m_moveButton.height,6);
         this.m_cooldownBackground.graphics.endFill();
         this.m_cooldownBackground.x = this.m_moveButton.x;
         this.m_cooldownBackground.y = this.m_moveButton.y;
         addChild(this.m_cooldownBackground);
      }
      
      public function AnimateIn(param1:Number) : void
      {
         this.m_textBubble.alpha = 0;
         this.m_textArrow.alpha = 0;
         TweenLite.to(this.m_textBubble,0.2,{
            "delay":param1,
            "alpha":1
         });
         TweenLite.to(this.m_textArrow,0.2,{
            "delay":param1,
            "alpha":1
         });
      }
      
      public function AnimateOut(param1:Number) : void
      {
         TweenLite.to(this.m_textBubble,0.2,{"alpha":0});
         TweenLite.to(this.m_textArrow,0.2,{"alpha":0});
      }
      
      public function SetIsTheMoveActive() : Boolean
      {
         var _loc1_:Boolean = true;
         this.m_cooldownBackground.visible = false;
         if(this.m_currMinion.m_currEnergy < this.m_currMove.m_energyUsed)
         {
            alpha = 0.3;
            _loc1_ = false;
         }
         if(this.m_currMinion.GetRatioOfTurnsLeftOnCoolDown(this.m_currMove.m_moveID) > 0)
         {
            alpha = 0.3;
            _loc1_ = false;
            this.m_cooldownBackground.visible = true;
            this.m_cooldownBackground.scaleY = this.m_currMinion.GetRatioOfTurnsLeftOnCoolDown(this.m_currMove.m_moveID);
         }
         if(_loc1_)
         {
            alpha = 1;
         }
         return _loc1_;
      }
      
      private function MoveButtonHasBeenPressed(param1:MouseEvent) : void
      {
         if(this.m_currMinion.m_currEnergy >= this.m_currMove.m_energyUsed && this.m_currMinion.GetRatioOfTurnsLeftOnCoolDown(this.m_currMove.m_moveID) == 0)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.MoveChosen(this.m_currMove.m_moveID);
         }
         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVE_SELECT,true);
      }
      
      public function TurnOffButtons() : void
      {
      }
      
      public function Cleanup() : void
      {
         this.m_isInUse = false;
         this.m_textBubble.removeChild(this.m_moveNameText);
         removeChild(this.m_textArrow);
         removeChild(this.m_textBubble);
         removeChild(this.m_cooldownBackground);
         removeChild(this.m_moveButton);
         this.m_moveButton.Cleanup();
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_moveButton.m_isActive = true;
      }
   }
}
