package BattleSystems.Visuals.BattleMods
{
   import Minions.MinionMove.BaseMinionMove;
   import States.ModStoneTypes;
   import States.StatType;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MoveTimerModVisuals extends Sprite
   {
       
      
      private var m_opponetsStone:Sprite;
      
      private var m_playerStone:Sprite;
      
      private var m_timerText:TextField;
      
      private var m_moveIcon:Sprite;
      
      private var m_yourbuffPopupBackground:Sprite;
      
      private var m_yourbuffIcon:Sprite;
      
      private var m_yourbuffText:TextField;
      
      public function MoveTimerModVisuals()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15593717;
         _loc1_.size = 28;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_opponetsStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveStone");
         this.m_opponetsStone.x = 225;
         this.m_opponetsStone.y = -44;
         addChild(this.m_opponetsStone);
         this.m_playerStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveStone");
         this.m_playerStone.x = -87;
         this.m_playerStone.y = -40;
         addChild(this.m_playerStone);
         this.m_playerStone.scaleX = -1;
         this.m_yourbuffPopupBackground = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveYourBuffBackground");
         this.m_yourbuffPopupBackground.x = -229;
         this.m_yourbuffPopupBackground.y = 39;
         addChild(this.m_yourbuffPopupBackground);
         this.m_yourbuffIcon = Singleton.utility.m_spriteHandler.CreateSprite("moveIcon_agileInspiration");
         this.m_yourbuffIcon.x = 17;
         this.m_yourbuffIcon.y = -47;
         this.m_yourbuffPopupBackground.addChild(this.m_yourbuffIcon);
         this.m_yourbuffText = new TextField();
         this.m_yourbuffText.x = -21;
         this.m_yourbuffText.y = 7;
         this.m_yourbuffText.embedFonts = true;
         _loc1_.size = 13;
         this.m_yourbuffText.defaultTextFormat = _loc1_;
         this.m_yourbuffText.wordWrap = true;
         this.m_yourbuffText.autoSize = TextFieldAutoSize.CENTER;
         this.m_yourbuffText.text = "+20% speed";
         this.m_yourbuffText.width = 150;
         this.m_yourbuffText.selectable = false;
         this.m_yourbuffPopupBackground.addChild(this.m_yourbuffText);
         this.m_timerText = new TextField();
         this.m_timerText.x = 256;
         this.m_timerText.y = 40;
         this.m_timerText.embedFonts = true;
         _loc1_.size = 28;
         this.m_timerText.defaultTextFormat = _loc1_;
         this.m_timerText.wordWrap = true;
         this.m_timerText.autoSize = TextFieldAutoSize.CENTER;
         this.m_timerText.text = "99";
         this.m_timerText.width = 150;
         this.m_timerText.selectable = false;
         addChild(this.m_timerText);
         this.m_moveIcon = Singleton.utility.m_spriteHandler.CreateSprite("moveIcon_agility");
         this.m_moveIcon.x = 308;
         this.m_moveIcon.y = -12;
         addChild(this.m_moveIcon);
      }
      
      public function CheckForActivation() : void
      {
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_MOVE_TIMER))
         {
            visible = true;
            var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
            removeChild(this.m_moveIcon);
            this.m_moveIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc1_.m_moveOnTimer.m_moveIcon);
            this.m_moveIcon.x = 308;
            this.m_moveIcon.y = -12;
            this.m_moveIcon.alpha = 0;
            this.m_moveIcon.scaleX = 0.8;
            this.m_moveIcon.scaleY = this.m_moveIcon.scaleX;
            addChild(this.m_moveIcon);
            var _loc2_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(_loc1_.m_passiveMoveForMoveOnTimer);
            this.m_yourbuffPopupBackground.removeChild(this.m_yourbuffIcon);
            this.m_yourbuffIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_moveIcon);
            this.m_yourbuffIcon.x = 17;
            this.m_yourbuffIcon.y = -47;
            this.m_yourbuffIcon.alpha = 0;
            this.m_yourbuffIcon.scaleX = 0.8;
            this.m_yourbuffIcon.scaleY = this.m_moveIcon.scaleX;
            this.m_yourbuffPopupBackground.addChild(this.m_yourbuffIcon);
            TweenLite.to(this.m_moveIcon,1.5,{
               "delay":1.9,
               "alpha":1
            });
            TweenLite.to(this.m_yourbuffIcon,1.5,{
               "delay":1.9,
               "alpha":1
            });
            var _loc3_:* = "test test";
            var _loc4_:Object = 1842204;
            if(_loc2_.m_isPassive || _loc2_.m_isGlobalPassive)
            {
               if(_loc2_.m_statTypesToBuff.length > 0)
               {
                  _loc3_ = "+" + _loc2_.m_amountOfStatTypeToBuffPercentage + "% " + this.GetStatTypeNameAsString(_loc2_.m_statTypesToBuff[0]);
               }
               else if(_loc2_.m_armor > 0)
               {
                  _loc3_ = "+" + _loc2_.m_armor + "% armor";
               }
               else if(_loc2_.m_increasedExtraCritChance > 0)
               {
                  _loc3_ = "+" + _loc2_.m_increasedExtraCritChance + "% crit";
               }
               else if(_loc2_.m_setReflectDamageAmount > 0)
               {
                  _loc3_ = "+" + _loc2_.m_setReflectDamageAmount + "% reflect";
               }
               _loc4_ = 16774504;
            }
            else if(_loc2_.m_armor != 0)
            {
               if(_loc2_.m_armor > 0)
               {
                  _loc3_ = "+" + _loc2_.m_armor + "% armor";
                  _loc4_ = 16774504;
               }
               else
               {
                  _loc3_ = "" + _loc2_.m_armor + "% armor";
                  _loc4_ = 15039999;
               }
            }
            else if(_loc2_.m_setReflectDamageAmount != 0)
            {
               _loc3_ = "+" + _loc2_.m_setReflectDamageAmount + "% reflect";
               _loc4_ = 16774504;
            }
            this.m_yourbuffText.text = _loc3_;
            this.SetTimerText(_loc1_.m_moveTimeCounter);
            return;
         }
         visible = false;
      }
      
      public function PlayUseMoveAnimation() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_moveIcon,0.5,{"transformAroundCenter":{
            "scaleX":2,
            "scaleY":2
         }}));
         _loc1_.append(new TweenLite(this.m_moveIcon,2.3,{"transformAroundCenter":{"rotation":"720"}}));
         _loc1_.append(new TweenLite(this.m_moveIcon,0.5,{"transformAroundCenter":{
            "scaleX":0.8,
            "scaleY":0.8
         }}));
      }
      
      public function SetTimerText(param1:int) : void
      {
         this.m_timerText.text = "" + param1;
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
