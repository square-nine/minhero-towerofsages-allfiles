package BattleSystems.WinScreen
{
   import BattleSystems.Visuals.BattleScreenMinionVisual;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class LeveledUpBattleScreenPiece extends GameObject
   {
       
      
      private const m_maxStatPerBar:Number = 300;
      
      private var m_background:Sprite;
      
      private var m_minionNameText:TextField;
      
      private var m_minionLevelText:TextField;
      
      private var m_minionStatTexts:Vector.<TextField>;
      
      private var m_newMinionStatTexts:Vector.<TextField>;
      
      private var m_skillPointBackground:Sprite;
      
      private var m_statsForCurrLevel:Vector.<int>;
      
      private var m_statsForNextLevel:Vector.<int>;
      
      private var m_settingLevel:int;
      
      public function LeveledUpBattleScreenPiece()
      {
         super();
         this.m_minionStatTexts = new Vector.<TextField>(5);
         this.m_newMinionStatTexts = new Vector.<TextField>(5);
         this.m_statsForCurrLevel = new Vector.<int>(5);
         this.m_statsForNextLevel = new Vector.<int>(5);
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_levelUp_popUp");
         this.m_background.y = -32;
         addChild(this.m_background);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15461355;
         _loc1_.size = 20;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         this.m_minionNameText = new TextField();
         this.m_minionNameText.embedFonts = true;
         this.m_minionNameText.x = 22;
         this.m_minionNameText.y = 30 - 17;
         this.m_minionNameText.defaultTextFormat = _loc1_;
         this.m_minionNameText.text = "Cactilla";
         this.m_minionNameText.width = 350;
         this.m_minionNameText.selectable = false;
         addChild(this.m_minionNameText);
         this.m_minionLevelText = new TextField();
         this.m_minionLevelText.embedFonts = true;
         this.m_minionLevelText.x = 33;
         this.m_minionLevelText.y = 30 - 17;
         _loc1_.size = 20;
         _loc1_.align = TextFormatAlign.RIGHT;
         this.m_minionLevelText.defaultTextFormat = _loc1_;
         this.m_minionLevelText.text = "lv. 99";
         this.m_minionLevelText.width = 150;
         this.m_minionLevelText.selectable = false;
         addChild(this.m_minionLevelText);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 2961720;
         _loc2_.size = 15;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.LEFT;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            this.m_minionStatTexts[_loc5_] = new TextField();
            this.m_minionStatTexts[_loc5_].embedFonts = true;
            this.m_minionStatTexts[_loc5_].x = 87;
            this.m_minionStatTexts[_loc5_].y = 44 + _loc5_ * 29;
            _loc2_.size = 20;
            _loc2_.align = TextFormatAlign.LEFT;
            this.m_minionStatTexts[_loc5_].defaultTextFormat = _loc2_;
            this.m_minionStatTexts[_loc5_].text = "99";
            this.m_minionStatTexts[_loc5_].width = 50;
            this.m_minionStatTexts[_loc5_].selectable = false;
            addChild(this.m_minionStatTexts[_loc5_]);
            this.m_newMinionStatTexts[_loc5_] = new TextField();
            this.m_newMinionStatTexts[_loc5_].embedFonts = true;
            this.m_newMinionStatTexts[_loc5_].x = 138;
            this.m_newMinionStatTexts[_loc5_].y = 59 - 17 + _loc5_ * 29;
            _loc2_.size = 23;
            _loc2_.align = TextFormatAlign.CENTER;
            this.m_newMinionStatTexts[_loc5_].defaultTextFormat = _loc2_;
            this.m_newMinionStatTexts[_loc5_].text = "+5";
            this.m_newMinionStatTexts[_loc5_].width = 50;
            this.m_newMinionStatTexts[_loc5_].selectable = false;
            addChild(this.m_newMinionStatTexts[_loc5_]);
            _loc5_++;
         }
         this.m_skillPointBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_newSkillPointIndicator");
         this.m_skillPointBackground.x = 186;
         this.m_skillPointBackground.y = 39;
         addChild(this.m_skillPointBackground);
         visible = false;
      }
      
      public function BringInForMinion(param1:OwnedMinion, param2:int) : void
      {
         Singleton.utility.m_soundController.PlaySound("battle_levelUp",0.2);
         var _loc3_:BattleScreenMinionVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(param1);
         this.x = _loc3_.x + 40;
         this.y = _loc3_.y - 244;
         if(param1.IsTalentPointEarnedOnLevel(param2 + 1))
         {
            this.m_skillPointBackground.visible = true;
         }
         else
         {
            this.m_skillPointBackground.visible = false;
         }
         this.m_settingLevel = param2;
         this.m_minionNameText.text = param1.m_minionName;
         this.m_minionLevelText.text = "lv." + param2;
         this.m_statsForCurrLevel[0] = param1.CalculateHealthStat(param2);
         this.m_statsForNextLevel[0] = param1.CalculateHealthStat(param2 + 1);
         this.m_statsForCurrLevel[1] = param1.CalculateEnergyStat(param2);
         this.m_statsForNextLevel[1] = param1.CalculateEnergyStat(param2 + 1);
         this.m_statsForCurrLevel[2] = param1.CalculateAttackStat(param2);
         this.m_statsForNextLevel[2] = param1.CalculateAttackStat(param2 + 1);
         this.m_statsForCurrLevel[3] = param1.CalculateHealingStat(param2);
         this.m_statsForNextLevel[3] = param1.CalculateHealingStat(param2 + 1);
         this.m_statsForCurrLevel[4] = param1.CalculateSpeedStat(param2);
         this.m_statsForNextLevel[4] = param1.CalculateSpeedStat(param2 + 1);
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            this.m_minionStatTexts[_loc4_].text = "" + this.m_statsForCurrLevel[_loc4_];
            this.m_newMinionStatTexts[_loc4_].text = "+" + (this.m_statsForNextLevel[_loc4_] - this.m_statsForCurrLevel[_loc4_]);
            this.m_newMinionStatTexts[_loc4_].alpha = 1;
            _loc4_++;
         }
         visible = false;
         var _loc5_:TimelineLite;
         (_loc5_ = new TimelineLite()).append(new TweenLite(this,0.1,{"onComplete":this.StartAnimation}));
         _loc5_.append(new TweenLite(this,0.5,{"alpha":1}));
         _loc5_.append(new TweenLite(this,1.7,{"onComplete":this.AddTheStatsToTheNextLevel}));
         _loc5_.append(new TweenLite(this,1,{}));
         _loc5_.append(new TweenLite(this,0.5,{"alpha":0}));
         _loc5_.append(new TweenLite(this,0.1,{"onComplete":this.ExitOut}));
      }
      
      public function ExitOutForMinion() : void
      {
         TweenLite.killTweensOf(this);
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this,0.2,{"alpha":0}));
         _loc1_.append(new TweenLite(this,0.1,{"onComplete":this.ExitOut}));
      }
      
      private function StartAnimation() : void
      {
         visible = true;
         alpha = 0;
      }
      
      private function AddTheStatsToTheNextLevel() : void
      {
         this.m_minionLevelText.text = "lv." + (this.m_settingLevel + 1);
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            TweenLite.to(this.m_newMinionStatTexts[_loc1_],0.2,{"alpha":0});
            this.m_minionStatTexts[_loc1_].text = "" + this.m_statsForNextLevel[_loc1_];
            _loc1_++;
         }
      }
      
      public function ExitOut() : void
      {
         visible = false;
      }
   }
}
