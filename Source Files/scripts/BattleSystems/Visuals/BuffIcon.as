package BattleSystems.Visuals
{
   import Minions.MinionMove.BaseMinionMove;
   import States.StatType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BuffIcon extends Sprite
   {
       
      
      private var m_currMove:BaseMinionMove;
      
      private var m_buffIcon:Sprite;
      
      private var m_mousePoint:Sprite;
      
      private var m_popup:Sprite;
      
      private var m_popupText:TextField;
      
      public function BuffIcon(param1:BaseMinionMove)
      {
         super();
         this.m_currMove = param1;
         this.m_buffIcon = Singleton.utility.m_spriteHandler.CreateSprite(param1.m_buffIcon);
         this.m_buffIcon.scaleX = 0.5;
         this.m_buffIcon.scaleY = 0.5;
         addChild(this.m_buffIcon);
         this.m_mousePoint = new Sprite();
         this.m_mousePoint.graphics.beginFill(5592405);
         this.m_mousePoint.graphics.drawRect(0,0,1,1);
         this.m_mousePoint.graphics.endFill();
         Singleton.utility.m_stage.addChild(this.m_mousePoint);
         this.m_mousePoint.visible = false;
         this.CreatePopup();
         Singleton.utility.m_stage.addEventListener(MouseEvent.MOUSE_MOVE,this.MouseMovement);
      }
      
      public function CleanUp() : void
      {
         removeChild(this.m_buffIcon);
         Singleton.utility.m_stage.removeChild(this.m_mousePoint);
         this.m_popup.removeChild(this.m_popupText);
         Singleton.utility.m_stage.removeChild(this.m_popup);
         Singleton.utility.m_stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.MouseMovement);
      }
      
      private function MouseMovement(param1:MouseEvent) : void
      {
         this.m_mousePoint.x = param1.stageX;
         this.m_mousePoint.y = param1.stageY;
         if(Singleton.utility.m_collController.RectDisplayObjectCollision(this.m_mousePoint,this.m_buffIcon))
         {
            this.m_popup.x = this.m_mousePoint.x - this.m_popup.width / 2 + 5;
            this.m_popup.y = this.m_mousePoint.y - 18;
            this.m_popup.visible = true;
         }
         else
         {
            this.m_popup.x = -200;
            this.m_popup.y = -200;
            this.m_popup.visible = false;
         }
      }
      
      private function CreatePopup() : void
      {
         this.m_popup = new Sprite();
         Singleton.utility.m_stage.addChild(this.m_popup);
         var _loc1_:* = "test test";
         var _loc2_:Object = 1842204;
         if(this.m_currMove.m_DOTDamage > 0 || this.m_currMove.m_additionalDOTDamage > 0)
         {
            if(this.m_currMove.m_additionalDOTDamage > 0)
            {
               _loc1_ = "" + this.m_currMove.m_DOTDamage + "-" + (this.m_currMove.m_DOTDamage + this.m_currMove.m_additionalDOTDamage) + " damage";
            }
            else
            {
               _loc1_ = "" + this.m_currMove.m_DOTDamage + " damage";
            }
            _loc2_ = 16740659;
         }
         else if(this.m_currMove.m_HOTHealing > 0 || this.m_currMove.m_additionalHOTHealing > 0)
         {
            if(this.m_currMove.m_additionalHOTHealing > 0)
            {
               _loc1_ = "" + this.m_currMove.m_HOTHealing + "-" + (this.m_currMove.m_HOTHealing + this.m_currMove.m_additionalHOTHealing) + " healing";
            }
            else
            {
               _loc1_ = "" + this.m_currMove.m_HOTHealing + " healing";
            }
            _loc2_ = 8576630;
         }
         else if(this.m_currMove.m_isPassive || this.m_currMove.m_isGlobalPassive)
         {
            if(this.m_currMove.m_statTypesToBuff.length > 0)
            {
               _loc1_ = "+" + this.m_currMove.m_amountOfStatTypeToBuffPercentage + "% " + this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[0]);
            }
            else if(this.m_currMove.m_armor > 0)
            {
               _loc1_ = "+" + this.m_currMove.m_armor + "% armor";
            }
            else if(this.m_currMove.m_increasedExtraCritChance > 0)
            {
               _loc1_ = "+" + this.m_currMove.m_increasedExtraCritChance + "% crit";
            }
            else if(this.m_currMove.m_setReflectDamageAmount > 0)
            {
               _loc1_ = "+" + this.m_currMove.m_setReflectDamageAmount + "% reflect";
            }
            _loc2_ = 16774504;
         }
         else if(this.m_currMove.m_armor != 0)
         {
            if(this.m_currMove.m_armor > 0)
            {
               _loc1_ = "+" + this.m_currMove.m_armor + "% armor";
               _loc2_ = 16774504;
            }
            else
            {
               _loc1_ = "" + this.m_currMove.m_armor + "% armor";
               _loc2_ = 15039999;
            }
         }
         else if(this.m_currMove.m_setReflectDamageAmount != 0)
         {
            _loc1_ = "+" + this.m_currMove.m_setReflectDamageAmount + "% reflect";
            _loc2_ = 16774504;
         }
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.color = _loc2_;
         _loc3_.size = 12;
         _loc3_.font = "BurbinCasual";
         _loc3_.align = TextFormatAlign.CENTER;
         this.m_popupText = new TextField();
         this.m_popupText.embedFonts = true;
         this.m_popupText.wordWrap = false;
         this.m_popupText.defaultTextFormat = _loc3_;
         this.m_popupText.autoSize = TextFieldAutoSize.CENTER;
         this.m_popupText.text = _loc1_;
         this.m_popupText.selectable = false;
         this.m_popupText.x = -5;
         this.m_popupText.y = -6;
         var _loc8_:int = this.m_popupText.textWidth;
         this.m_popup.graphics.beginFill(15066856,0.85);
         this.m_popup.graphics.drawRoundRect(-5 - 1,-5 - 1,_loc8_ + 5 * 2 + 1 * 2,-15 + 20 + 5 * 3 + 1 * 2,6);
         this.m_popup.graphics.drawRoundRect(-5,-5,_loc8_ + 5 * 2,-15 + 20 + 5 * 3,6);
         this.m_popup.graphics.beginFill(6186100,0.95);
         this.m_popup.graphics.drawRoundRect(-5,-5,_loc8_ + 5 * 2,-15 + 20 + 5 * 3,6);
         this.m_popup.graphics.endFill();
         this.m_popup.graphics.endFill();
         this.m_popupText.wordWrap = true;
         this.m_popupText.width = this.m_popup.width;
         this.m_popup.addChild(this.m_popupText);
         this.m_popup.x = -200;
         this.m_popup.y = -200;
         this.m_popup.visible = false;
      }
      
      private function GetStatTypeNameAsString(param1:int) : String
      {
         switch(param1)
         {
            case StatType.STAT_ENERGY:
               return "energy";
            case StatType.STAT_ATTACK:
               return "attack";
            case StatType.STAT_HEALING:
               return "healing";
            case StatType.STAT_SPEED:
               return "speed";
            default:
               return "health";
         }
      }
   }
}
