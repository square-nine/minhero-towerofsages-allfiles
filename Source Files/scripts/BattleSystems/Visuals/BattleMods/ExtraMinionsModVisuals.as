package BattleSystems.Visuals.BattleMods
{
   import Minions.BaseMinion;
   import States.ModStoneTypes;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class ExtraMinionsModVisuals extends Sprite
   {
       
      
      private var m_playersStone:Sprite;
      
      private var m_opponentsStone:Sprite;
      
      private var m_numberOfOpponentMinionsText:TextField;
      
      private var m_opponentMinionIcon:Sprite;
      
      private var m_opponentMinionGlass:Sprite;
      
      private var m_numberOfPlayerMinionsText:TextField;
      
      private var m_playerMinionIcon:Sprite;
      
      private var m_playerMinionGlass:Sprite;
      
      public function ExtraMinionsModVisuals()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_playersStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionOnDeathStone");
         this.m_playersStone.x = 61;
         this.m_playersStone.y = -62;
         addChild(this.m_playersStone);
         this.m_playersStone.scaleX = -1;
         this.m_opponentsStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionOnDeathStone");
         this.m_opponentsStone.x = 114;
         this.m_opponentsStone.y = -62;
         addChild(this.m_opponentsStone);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15593717;
         _loc1_.size = 21;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_numberOfPlayerMinionsText = new TextField();
         this.m_numberOfPlayerMinionsText.x = -66;
         this.m_numberOfPlayerMinionsText.y = -61;
         this.m_numberOfPlayerMinionsText.embedFonts = true;
         this.m_numberOfPlayerMinionsText.defaultTextFormat = _loc1_;
         this.m_numberOfPlayerMinionsText.wordWrap = true;
         this.m_numberOfPlayerMinionsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_numberOfPlayerMinionsText.text = "9";
         this.m_numberOfPlayerMinionsText.width = 150;
         this.m_numberOfPlayerMinionsText.selectable = false;
         addChild(this.m_numberOfPlayerMinionsText);
         this.m_playerMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("fireMonkey1");
         this.m_playerMinionIcon.x = 17;
         this.m_playerMinionIcon.y = 63;
         addChild(this.m_playerMinionIcon);
         this.m_playerMinionGlass = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionCrystal");
         this.m_playerMinionGlass.x = -20;
         this.m_playerMinionGlass.y = -3;
         addChild(this.m_playerMinionGlass);
         this.m_numberOfOpponentMinionsText = new TextField();
         this.m_numberOfOpponentMinionsText.x = 93;
         this.m_numberOfOpponentMinionsText.y = -60;
         this.m_numberOfOpponentMinionsText.embedFonts = true;
         this.m_numberOfOpponentMinionsText.defaultTextFormat = _loc1_;
         this.m_numberOfOpponentMinionsText.wordWrap = true;
         this.m_numberOfOpponentMinionsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_numberOfOpponentMinionsText.text = "99";
         this.m_numberOfOpponentMinionsText.width = 150;
         this.m_numberOfOpponentMinionsText.selectable = false;
         addChild(this.m_numberOfOpponentMinionsText);
         this.m_opponentMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("moveIcon_agility");
         this.m_opponentMinionIcon.x = 17;
         this.m_opponentMinionIcon.y = 63;
         addChild(this.m_opponentMinionIcon);
         this.m_opponentMinionGlass = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionCrystal");
         this.m_opponentMinionGlass.x = 139;
         this.m_opponentMinionGlass.y = -3;
         addChild(this.m_opponentMinionGlass);
      }
      
      public function CheckForActivation() : void
      {
         var _loc3_:int = 0;
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
         {
            visible = true;
            var _loc1_:TrainerDataObject = Singleton.dynamicData.m_currTrainerData;
            var _loc2_:BaseMinion = Singleton.staticData.GetBaseMinion(_loc1_.m_extraOpponentMinionID);
            removeChild(this.m_opponentMinionIcon);
            this.m_opponentMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_minionBattleSprite);
            if(this.m_opponentMinionIcon.width > this.m_opponentMinionIcon.height)
            {
               _loc3_ = this.m_opponentMinionIcon.width;
               this.m_opponentMinionIcon.width = 45;
               this.m_opponentMinionIcon.height *= 45 / _loc3_;
            }
            else
            {
               _loc3_ = this.m_opponentMinionIcon.height;
               this.m_opponentMinionIcon.height = 45;
               this.m_opponentMinionIcon.width *= 45 / _loc3_;
            }
            this.m_opponentMinionIcon.x = 167 - this.m_opponentMinionIcon.width / 2;
            this.m_opponentMinionIcon.y = 24 - this.m_opponentMinionIcon.height / 2;
            addChild(this.m_opponentMinionIcon);
            this.m_opponentMinionIcon.alpha = 0.8;
            removeChild(this.m_opponentMinionIcon);
            addChild(this.m_opponentMinionIcon);
            _loc2_ = Singleton.staticData.GetBaseMinion(_loc1_.m_extraPlayerMinionID);
            removeChild(this.m_playerMinionIcon);
            this.m_playerMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_minionBattleSprite);
            if(this.m_playerMinionIcon.width > this.m_playerMinionIcon.height)
            {
               _loc3_ = this.m_playerMinionIcon.width;
               this.m_playerMinionIcon.width = 45;
               this.m_playerMinionIcon.height *= 45 / _loc3_;
            }
            else
            {
               _loc3_ = this.m_playerMinionIcon.height;
               this.m_playerMinionIcon.height = 45;
               this.m_playerMinionIcon.width *= 45 / _loc3_;
            }
            this.m_playerMinionIcon.x = 9 - this.m_playerMinionIcon.width / 2;
            this.m_playerMinionIcon.y = 27 - this.m_playerMinionIcon.height / 2;
            addChild(this.m_playerMinionIcon);
            this.m_playerMinionGlass.alpha = 0.8;
            removeChild(this.m_playerMinionGlass);
            addChild(this.m_playerMinionGlass);
            this.SetMinionsToAddText(_loc1_.m_numOfExtraOpponentMinions,_loc1_.m_numOfExtraPlayerMinions);
            return;
         }
         visible = false;
      }
      
      public function PlayAddMinionAnimation() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this,0.3,{"y":"-10"}));
         _loc1_.append(new TweenLite(this,0.3,{"y":"10"}));
      }
      
      public function SetMinionsToAddText(param1:int, param2:int) : void
      {
         if(param1 == 0)
         {
            this.m_numberOfOpponentMinionsText.visible = false;
            this.m_opponentMinionIcon.visible = false;
         }
         else
         {
            this.m_numberOfOpponentMinionsText.visible = true;
            this.m_opponentMinionIcon.visible = true;
         }
         if(param2 == 0)
         {
            this.m_numberOfPlayerMinionsText.visible = false;
            this.m_playerMinionIcon.visible = false;
         }
         else
         {
            this.m_numberOfPlayerMinionsText.visible = true;
            this.m_playerMinionIcon.visible = true;
         }
         this.m_numberOfOpponentMinionsText.text = "" + param1;
         this.m_numberOfPlayerMinionsText.text = "" + param2;
      }
   }
}
