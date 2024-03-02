package TopDown.Menus
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownStates;
   import TopDown.Levels.Grass.CourtyardLevel;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionTypeSelectMenu extends Sprite
   {
       
      
      private var m_blackBackground:Sprite;
      
      private var m_textBackground:Sprite;
      
      private var m_nameText:TextField;
      
      private var m_chatText:TextField;
      
      private var m_buttonPressID:int;
      
      private var m_regularButtons:Vector.<TCButton>;
      
      private var m_buttonIcons:Vector.<TCButton>;
      
      public function MinionTypeSelectMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_blackBackground = new Sprite();
         this.m_blackBackground.graphics.beginFill(0,0.65);
         this.m_blackBackground.graphics.drawRect(0,0,700,525);
         this.m_blackBackground.graphics.endFill();
         addChild(this.m_blackBackground);
         this.m_textBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_speechBubble");
         this.m_textBackground.x = 186;
         this.m_textBackground.y = 77;
         addChild(this.m_textBackground);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 11188429;
         _loc1_.size = 17;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         _loc1_.leading = -2;
         this.m_chatText = new TextField();
         this.m_chatText.x = 10;
         this.m_chatText.y = 22;
         this.m_chatText.embedFonts = true;
         _loc1_.color = 14082288;
         this.m_chatText.defaultTextFormat = _loc1_;
         this.m_chatText.wordWrap = true;
         this.m_chatText.autoSize = TextFieldAutoSize.LEFT;
         this.m_chatText.text = "Now first things first.  How did you get your minions?";
         this.m_chatText.width = 228;
         this.m_chatText.height = 50;
         this.m_chatText.selectable = false;
         this.m_textBackground.addChild(this.m_chatText);
         this.m_nameText = new TextField();
         this.m_nameText.x = -55;
         this.m_nameText.y = 4;
         this.m_nameText.embedFonts = true;
         _loc1_.size = 11;
         _loc1_.color = 8494017;
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_nameText.defaultTextFormat = _loc1_;
         this.m_nameText.wordWrap = true;
         this.m_nameText.autoSize = TextFieldAutoSize.CENTER;
         this.m_nameText.text = "Grand Sage";
         this.m_nameText.width = 228;
         this.m_nameText.height = 50;
         this.m_nameText.selectable = false;
         this.m_textBackground.addChild(this.m_nameText);
         this.m_regularButtons = new Vector.<TCButton>(3);
         this.m_buttonIcons = new Vector.<TCButton>(3);
         var _loc2_:Array = [this.Button1Pressed,this.Button2Pressed,this.Button3Pressed];
         var _loc3_:Array = ["topDown_rescueButton","topDown_giftButton","topDown_notTellingButton"];
         var _loc4_:Array = ["topDown_pictureRescueButton","topDown_pictureGiftButton","topDown_pictureNotTellingButton"];
         var _loc5_:int = 0;
         while(_loc5_ < this.m_regularButtons.length)
         {
            this.m_regularButtons[_loc5_] = new TCButton(_loc2_[_loc5_],_loc3_[_loc5_]);
            this.m_regularButtons[_loc5_].x = 100 + _loc5_ * 180;
            this.m_regularButtons[_loc5_].y = 200;
            addChild(this.m_regularButtons[_loc5_]);
            this.m_buttonIcons[_loc5_] = new TCButton(_loc2_[_loc5_],_loc4_[_loc5_]);
            this.m_buttonIcons[_loc5_].x = 100 + _loc5_ * 180;
            this.m_buttonIcons[_loc5_].y = 263;
            addChild(this.m_buttonIcons[_loc5_]);
            _loc5_++;
         }
         this.visible = false;
      }
      
      public function BringInChatBoxWithPosition(param1:int, param2:int) : void
      {
         this.m_textBackground.x = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.x + param1;
         this.m_textBackground.y = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.y + param2;
         if(this.m_textBackground.y > 150)
         {
            this.m_textBackground.y = 150;
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_MINION_STAT_SELECTION;
         this.visible = true;
         this.m_blackBackground.alpha = 0;
         TweenLite.to(this.m_blackBackground,0.5,{
            "delay":1.5,
            "alpha":1
         });
         this.m_textBackground.alpha = 0;
         TweenLite.to(this.m_textBackground,0.5,{
            "delay":0.5,
            "alpha":1
         });
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            this.m_regularButtons[_loc3_].alpha = 0;
            this.m_buttonIcons[_loc3_].alpha = 0;
            this.m_regularButtons[_loc3_].y = this.m_textBackground.y + 105;
            this.m_buttonIcons[_loc3_].y = this.m_textBackground.y + 105 + 63;
            TweenLite.to(this.m_regularButtons[_loc3_],0.5,{
               "delay":2.1,
               "alpha":1
            });
            TweenLite.to(this.m_buttonIcons[_loc3_],0.5,{
               "delay":2.1,
               "alpha":1
            });
            _loc3_++;
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheActionIcon();
      }
      
      public function Update() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this.m_regularButtons[_loc1_].m_isActive = true;
            this.m_buttonIcons[_loc1_].m_isActive = true;
            _loc1_++;
         }
      }
      
      public function ButtonPressed(param1:int) : void
      {
         Singleton.dynamicData.SetNewReturnToOnDeathPoint();
         this.m_buttonPressID = param1;
         TweenLite.to(this.m_blackBackground,0.5,{
            "delay":0.8,
            "alpha":0
         });
         TweenLite.to(this.m_textBackground,0.5,{
            "delay":1.2,
            "alpha":0,
            "onComplete":this.FinsishExitingAnimation
         });
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            TweenLite.to(this.m_regularButtons[_loc2_],0.5,{"alpha":0});
            TweenLite.to(this.m_buttonIcons[_loc2_],0.5,{"alpha":0});
            _loc2_++;
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheActionIcon();
      }
      
      private function FinsishExitingAnimation() : void
      {
         this.visible = false;
         var _loc1_:CourtyardLevel = Singleton.staticData.GetCurrentLevel() as CourtyardLevel;
         _loc1_.SetTheMinionsStats(this.m_buttonPressID);
      }
      
      public function Button1Pressed(param1:MouseEvent) : void
      {
         this.ButtonPressed(0);
      }
      
      public function Button2Pressed(param1:MouseEvent) : void
      {
         this.ButtonPressed(1);
      }
      
      public function Button3Pressed(param1:MouseEvent) : void
      {
         this.ButtonPressed(2);
      }
   }
}
