package SharedObjects.BaseInterfacePieces
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   
   public class TCButton extends Sprite
   {
       
      
      public var m_isActive:Boolean;
      
      private var m_prevIsActive:Boolean;
      
      public var m_alwaysActive:Boolean;
      
      public var m_isOn:Boolean;
      
      public var m_restingSprite:Sprite;
      
      public var m_onOverSprite:Sprite;
      
      public var m_isMouseOver:Boolean;
      
      private var m_toolTipPopupSprite:Sprite;
      
      private var m_toolTipPopupText:TextField;
      
      private var m_toolTipSetX:int;
      
      private var m_toolTipSetY:int;
      
      public var m_isToolTipPopupActive:Boolean;
      
      private var m_onClickFunction:Function;
      
      public var m_onOverFunction:Function;
      
      public var m_onOutFunction:Function;
      
      public var m_onOverSpriteName:String;
      
      public var m_onClickSpriteName:String;
      
      public function TCButton(param1:Function, param2:String = "", param3:String = "")
      {
         super();
         this.m_onClickFunction = param1;
         if(param2 != "")
         {
            this.CreateButtonWithStrings(param2,param3);
         }
      }
      
      public function CreateButtonWithStrings(param1:String, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.CreateButton(Singleton.utility.m_spriteHandler.CreateSprite(param1));
         }
         else
         {
            this.CreateButton(Singleton.utility.m_spriteHandler.CreateSprite(param1),Singleton.utility.m_spriteHandler.CreateSprite(param2));
         }
      }
      
      public function CreateButton(param1:Sprite, param2:Sprite = null) : void
      {
         this.m_isActive = false;
         this.m_prevIsActive = false;
         this.m_alwaysActive = false;
         this.m_isOn = true;
         this.m_isMouseOver = false;
         this.mouseChildren = false;
         this.m_onOverSpriteName = "menu_tickSound";
         this.m_onClickSpriteName = "menu_onPress";
         Singleton.utility.m_allButtons.push(this);
         this.m_restingSprite = param1;
         addChild(this.m_restingSprite);
         this.m_onOverSprite = param2;
         if(this.m_onOverSprite != null)
         {
            addChild(this.m_onOverSprite);
            this.m_onOverSprite.visible = false;
         }
         if(this.m_isToolTipPopupActive)
         {
            Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this.m_toolTipPopupSprite);
         }
         this.m_onOverFunction = this.OnOver;
         this.m_onOutFunction = this.OnOut;
      }
      
      public function Cleanup() : void
      {
         if(this.m_isMouseOver)
         {
            this.ResetButton();
         }
         Singleton.utility.m_allButtons.splice(Singleton.utility.m_allButtons.indexOf(this),1);
         if(this.m_restingSprite != null)
         {
            removeChild(this.m_restingSprite);
         }
         if(this.m_onOverSprite != null)
         {
            removeChild(this.m_onOverSprite);
         }
         if(this.m_isToolTipPopupActive)
         {
            Singleton.utility.m_screenControllers.m_topMostLayer.removeChild(this.m_toolTipPopupSprite);
         }
      }
      
      private function SetButtonModeTo(param1:Boolean) : void
      {
      }
      
      public function ActivateTooltip(param1:String = "Temp Text") : void
      {
         this.m_isToolTipPopupActive = true;
         this.m_toolTipPopupSprite = new Sprite();
         Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this.m_toolTipPopupSprite);
         this.m_toolTipPopupSprite.visible = false;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 16382457;
         _loc2_.size = 14;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         this.m_toolTipPopupText = new TextField();
         this.m_toolTipPopupText.embedFonts = true;
         this.m_toolTipPopupText.defaultTextFormat = _loc2_;
         this.m_toolTipPopupText.wordWrap = true;
         this.m_toolTipPopupText.autoSize = TextFieldAutoSize.CENTER;
         this.m_toolTipPopupText.text = "temp";
         this.m_toolTipPopupText.width = 150;
         this.m_toolTipPopupText.selectable = false;
         this.m_toolTipPopupSprite.addChild(this.m_toolTipPopupText);
         this.SetPopupText(param1);
      }
      
      public function SetPopupText(param1:String) : void
      {
         this.m_toolTipPopupText.text = param1;
         this.m_toolTipPopupSprite.graphics.clear();
         this.m_toolTipPopupSprite.graphics.beginFill(15066856,0.85);
         this.m_toolTipPopupSprite.graphics.drawRoundRect(-5 - 2,-5 - 2,this.m_toolTipPopupText.width + 5 * 2 + 2 * 2,this.m_toolTipPopupText.textHeight + 5 * 3 + 2 * 2,6);
         this.m_toolTipPopupSprite.graphics.drawRoundRect(-5,-5,this.m_toolTipPopupText.width + 5 * 2,this.m_toolTipPopupText.textHeight + 5 * 3,6);
         this.m_toolTipPopupSprite.graphics.endFill();
         this.m_toolTipPopupSprite.graphics.beginFill(6186100,0.95);
         this.m_toolTipPopupSprite.graphics.drawRoundRect(-5,-5,this.m_toolTipPopupText.width + 5 * 2,this.m_toolTipPopupText.textHeight + 5 * 3,6);
         this.m_toolTipPopupSprite.graphics.endFill();
      }
      
      public function SetNewPopupSprite(param1:Sprite) : void
      {
         Singleton.utility.m_screenControllers.m_topMostLayer.removeChild(this.m_toolTipPopupSprite);
         this.m_toolTipPopupSprite = param1;
         Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this.m_toolTipPopupSprite);
         this.m_toolTipPopupSprite.visible = false;
      }
      
      public function Clicked(param1:MouseEvent) : void
      {
         if(!this.m_isActive || !this.m_isOn)
         {
            return;
         }
         Singleton.utility.m_soundController.PlaySound(this.m_onClickSpriteName,0.65);
         this.m_onClickFunction.call(null,param1);
      }
      
      public function OnOver() : void
      {
         if(!this.m_isActive || !this.m_isOn)
         {
            return;
         }
         this.m_isMouseOver = true;
         Singleton.utility.m_soundController.PlaySound(this.m_onOverSpriteName,0.5);
         if(this.m_onOverSprite != null)
         {
            this.m_onOverSprite.visible = true;
            this.m_restingSprite.visible = false;
         }
      }
      
      public function OnOut() : void
      {
         if(!this.m_isActive || !this.m_isOn)
         {
            return;
         }
         Mouse.cursor = "auto";
         this.m_isMouseOver = false;
         if(this.m_onOverSprite != null)
         {
            this.m_onOverSprite.visible = false;
            this.m_restingSprite.visible = true;
         }
      }
      
      public function MouseMovementForPopup(param1:MouseEvent) : void
      {
         if(!this.m_isActive || !this.m_isOn)
         {
            if(this.m_toolTipPopupSprite != null)
            {
               this.m_toolTipPopupSprite.visible = false;
            }
            return;
         }
         if(Singleton.utility.m_collController.RectDisplayObjectCollision(Singleton.utility.m_mousePointObject,this.m_restingSprite))
         {
            Mouse.cursor = "button";
            if(this.m_toolTipPopupSprite != null)
            {
               this.m_toolTipPopupSprite.visible = true;
               this.m_toolTipPopupSprite.x = Singleton.utility.m_stage.mouseX - this.m_toolTipPopupSprite.width / 2 + 5;
               this.m_toolTipPopupSprite.y = Singleton.utility.m_stage.mouseY - this.m_toolTipPopupSprite.height;
               if(this.m_toolTipPopupSprite.y < 10)
               {
                  this.m_toolTipPopupSprite.y = 10;
               }
            }
         }
         else if(this.m_toolTipPopupSprite != null)
         {
            this.m_toolTipPopupSprite.visible = false;
            this.m_toolTipPopupSprite.x = -1000;
            this.m_toolTipPopupSprite.y = -1000;
         }
      }
      
      protected function ResetButton() : void
      {
         Mouse.cursor = "auto";
         this.m_isMouseOver = false;
         if(this.m_onOverSprite != null)
         {
            this.m_onOverSprite.visible = false;
            this.m_restingSprite.visible = true;
         }
         if(this.m_toolTipPopupSprite != null)
         {
            this.m_toolTipPopupSprite.visible = false;
            this.m_toolTipPopupSprite.x = -1000;
            this.m_toolTipPopupSprite.y = -1000;
         }
      }
      
      public function Update() : void
      {
         if(this.m_prevIsActive != this.m_isActive)
         {
            if(!this.m_isActive)
            {
               this.ResetButton();
            }
         }
         this.m_prevIsActive = this.m_isActive;
         if(!this.m_isOn)
         {
            this.m_isActive = false;
            return;
         }
         if(this.m_alwaysActive)
         {
            this.m_isActive = true;
         }
         else
         {
            this.m_isActive = false;
         }
      }
   }
}
