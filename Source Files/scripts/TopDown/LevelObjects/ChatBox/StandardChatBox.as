package TopDown.LevelObjects.ChatBox
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownStates;
   import TopDown.LevelObjects.VisualLevelObject;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class StandardChatBox extends VisualLevelObject
   {
       
      
      public var m_chatBoxID:int;
      
      public var m_isOpen:Boolean;
      
      private var m_nameText:TextField;
      
      private var m_chatText:TextField;
      
      private var m_textMask:Sprite;
      
      private var m_yesButton:TCButton;
      
      private var m_noButton:TCButton;
      
      private var m_moveTextArrow:Sprite;
      
      private var m_isAnimating:Boolean;
      
      private var m_onTextFinishFunction:Function;
      
      private var m_onYesFunction:Function;
      
      private var m_onNoFunction:Function;
      
      private var m_isYesNoButtonsActive:Boolean;
      
      public var m_isArrowOnYes:Boolean;
      
      private var m_numOfStarsText:TextField;
      
      public function StandardChatBox(param1:int = 0)
      {
         super();
         this.m_chatBoxID = param1;
         this.SetFunctions();
         this.m_yesButton = new TCButton(this.YesHasBeenPressed,"menus_speechBubble_yesButton");
         this.m_noButton = new TCButton(this.NoHasBeenPressed,"menus_speechBubble_noButton");
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
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
         this.m_chatText.text = "temp temp temp temp temp temp temp temp temp temp ";
         this.m_chatText.width = 228;
         this.m_chatText.height = 50;
         this.m_chatText.selectable = false;
         m_currSprite.addChild(this.m_chatText);
         this.m_numOfStarsText = new TextField();
         this.m_numOfStarsText.x = 10;
         this.m_numOfStarsText.y = 46 + 20;
         this.m_numOfStarsText.embedFonts = true;
         _loc1_.size = 10;
         _loc1_.color = 15852362;
         this.m_numOfStarsText.defaultTextFormat = _loc1_;
         this.m_numOfStarsText.wordWrap = true;
         this.m_numOfStarsText.autoSize = TextFieldAutoSize.LEFT;
         this.m_numOfStarsText.text = "Stars: 0";
         this.m_numOfStarsText.width = 228;
         this.m_numOfStarsText.height = 50;
         this.m_numOfStarsText.selectable = false;
         m_currSprite.addChild(this.m_numOfStarsText);
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
         this.m_nameText.text = "Key Keeper";
         this.m_nameText.width = 228;
         this.m_nameText.height = 50;
         this.m_nameText.selectable = false;
         m_currSprite.addChild(this.m_nameText);
         this.m_textMask = new Sprite();
         this.m_textMask.graphics.beginFill(5592405,0.5);
         this.m_textMask.graphics.drawRect(0,0,228,43);
         this.m_textMask.graphics.endFill();
         this.m_textMask.x = 10;
         this.m_textMask.y = 7 + 22;
         m_currSprite.addChild(this.m_textMask);
         this.m_chatText.mask = this.m_textMask;
         this.m_yesButton.x = 202;
         this.m_yesButton.y = 52 + 22;
         m_currSprite.addChild(this.m_yesButton);
         this.m_noButton.x = 202;
         this.m_noButton.y = 79 + 22;
         m_currSprite.addChild(this.m_noButton);
         this.m_isArrowOnYes = false;
         this.m_moveTextArrow = Singleton.utility.m_spriteHandler.CreateSprite("menus_speechBubble_arrow");
         this.m_moveTextArrow.x = 230;
         this.m_moveTextArrow.y = 52 + 22;
         m_currSprite.addChild(this.m_moveTextArrow);
         this.m_isOpen = false;
      }
      
      override public function Cleanup() : void
      {
         m_currSprite.removeChild(this.m_numOfStarsText);
         m_currSprite.removeChild(this.m_noButton);
         m_currSprite.removeChild(this.m_yesButton);
         m_currSprite.removeChild(this.m_chatText);
         m_currSprite.removeChild(this.m_nameText);
         m_currSprite.removeChild(this.m_textMask);
         m_currSprite.removeChild(this.m_moveTextArrow);
         super.Cleanup();
      }
      
      public function SetFunctions(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         this.m_onTextFinishFunction = param1;
         this.m_onYesFunction = param2;
         this.m_onNoFunction = param3;
      }
      
      public function BringInWithText(param1:String, param2:String) : void
      {
         Singleton.utility.m_soundController.PlaySound("menu_tickSound");
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_CHAT;
         this.m_isOpen = true;
         m_currSprite.visible = true;
         m_currSprite.alpha = 0;
         this.m_isAnimating = false;
         this.m_chatText.text = param1;
         this.m_chatText.x = 10;
         this.m_chatText.y = 22;
         this.m_nameText.text = param2;
         this.m_moveTextArrow.rotation = 0;
         this.m_moveTextArrow.x = 230;
         this.m_moveTextArrow.y = 71;
         this.m_yesButton.alpha = 0;
         this.m_noButton.alpha = 0;
         this.m_isYesNoButtonsActive = false;
         this.SetTheExtraVisualsForTheChatBoxToWhereTheyNeedToBe();
         this.SetNumOfStars(0);
         TweenLite.to(m_currSprite,0.2,{"alpha":1});
         Singleton.utility.m_stage.addEventListener(MouseEvent.CLICK,this.MouseClicked);
      }
      
      public function SetNumOfStars(param1:int) : void
      {
         if(param1 == 0)
         {
            this.m_numOfStarsText.visible = false;
         }
         else
         {
            this.m_numOfStarsText.visible = true;
            this.m_numOfStarsText.text = "Stars: " + param1 + "/3";
         }
      }
      
      public function Update() : void
      {
         if(!this.m_isOpen)
         {
            return;
         }
         if(!this.m_isAnimating && Input.kp("SPACE","ENTER"))
         {
            if(!this.m_isYesNoButtonsActive)
            {
               this.ActionHasBeenPreformed();
            }
            else if(this.m_isArrowOnYes)
            {
               this.YesHasBeenPressed(null);
            }
            else
            {
               this.NoHasBeenPressed(null);
            }
         }
         if(this.m_isYesNoButtonsActive)
         {
            if(!this.m_isAnimating && Input.kp("UP","W"))
            {
               this.m_isArrowOnYes = true;
               this.m_moveTextArrow.y = 75 + 22;
            }
            if(!this.m_isAnimating && Input.kp("DOWN","S"))
            {
               this.m_isArrowOnYes = false;
               this.m_moveTextArrow.y = 97 + 22;
            }
            if(!this.m_isAnimating && Input.kp("Y"))
            {
               this.YesHasBeenPressed(null);
            }
            if(!this.m_isAnimating && Input.kp("N"))
            {
               this.NoHasBeenPressed(null);
            }
         }
         if(this.m_isYesNoButtonsActive)
         {
            this.m_noButton.m_isActive = true;
            this.m_yesButton.m_isActive = true;
         }
      }
      
      private function ActionHasBeenPreformed() : void
      {
         Singleton.utility.m_soundController.PlaySound("menu_tickSound");
         if(this.m_chatText.y + this.m_chatText.height - 65 - 22 < 0)
         {
            this.ExitOutTextBox();
            if(this.m_onTextFinishFunction != null)
            {
               this.m_onTextFinishFunction.call();
            }
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
            return;
         }
         this.m_isAnimating = true;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_chatText,0.25,{
            "y":"-21.5",
            "onComplete":this.SetTheExtraVisualsForTheChatBoxToWhereTheyNeedToBe
         }));
         _loc1_.append(new TweenLite(this.m_chatText,0.1,{"onComplete":this.CheckForTimeNeededToFinishTheAnimation}));
      }
      
      private function SetTheExtraVisualsForTheChatBoxToWhereTheyNeedToBe() : void
      {
         if(this.m_chatText.y + this.m_chatText.height - 65 - 22 < 0)
         {
            this.m_moveTextArrow.alpha = 0;
            if(!this.m_isYesNoButtonsActive && (this.m_onYesFunction != null || this.m_onNoFunction != null))
            {
               this.m_yesButton.alpha = 1;
               this.m_noButton.alpha = 1;
               this.m_moveTextArrow.alpha = 1;
               this.m_moveTextArrow.rotation = 270;
               this.m_moveTextArrow.x = 204;
               if(this.m_isArrowOnYes)
               {
                  this.m_moveTextArrow.y = 75 + 22;
               }
               else
               {
                  this.m_moveTextArrow.y = 97 + 22;
               }
               this.m_isYesNoButtonsActive = true;
            }
         }
         else
         {
            this.m_moveTextArrow.alpha = 1;
         }
      }
      
      private function MouseClicked(param1:MouseEvent) : void
      {
         if(!this.m_isYesNoButtonsActive)
         {
            this.ActionHasBeenPreformed();
         }
      }
      
      private function CheckForTimeNeededToFinishTheAnimation() : void
      {
         if(!this.m_isYesNoButtonsActive)
         {
            this.FinishAnimation();
         }
         else
         {
            TweenLite.to(this.m_chatText,0.2,{"onComplete":this.FinishAnimation});
         }
      }
      
      private function FinishAnimation() : void
      {
         this.m_isAnimating = false;
      }
      
      private function ExitOutTextBox() : void
      {
         this.m_isOpen = false;
         Singleton.utility.m_stage.removeEventListener(MouseEvent.CLICK,this.MouseClicked);
         TweenLite.to(m_currSprite,0.2,{"alpha":0});
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
      }
      
      private function YesHasBeenPressed(param1:MouseEvent) : void
      {
         this.ExitOutTextBox();
         if(this.m_onYesFunction != null)
         {
            this.m_onYesFunction.call();
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
      }
      
      private function NoHasBeenPressed(param1:MouseEvent) : void
      {
         this.ExitOutTextBox();
         if(this.m_onNoFunction != null)
         {
            this.m_onNoFunction.call();
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
      }
   }
}
