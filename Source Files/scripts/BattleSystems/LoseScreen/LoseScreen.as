package BattleSystems.LoseScreen
{
   import BattleSystems.Other.BaseBattleFinishScreen;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class LoseScreen extends BaseBattleFinishScreen
   {
       
      
      private var m_blackBackground:Sprite;
      
      private var m_loseText:TextField;
      
      public function LoseScreen()
      {
         super();
      }
      
      override public function LoadSprites(param1:Sprite) : void
      {
         super.LoadSprites(param1);
         this.m_blackBackground = new Sprite();
         this.m_blackBackground.graphics.beginFill(0);
         this.m_blackBackground.graphics.drawRect(0,0,700,525);
         this.m_blackBackground.graphics.endFill();
         param1.addChild(this.m_blackBackground);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 15066856;
         _loc2_.size = 18;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         this.m_loseText = new TextField();
         this.m_loseText.embedFonts = true;
         this.m_loseText.defaultTextFormat = _loc2_;
         this.m_loseText.text = "Your minions have collapsed,  you rush to heal them";
         this.m_loseText.width = 700;
         this.m_loseText.y = 234;
         this.m_loseText.selectable = false;
         param1.addChild(this.m_loseText);
         this.m_loseText.visible = false;
         this.m_blackBackground.visible = false;
      }
      
      override public function BringInScreen(param1:Boolean) : void
      {
         super.BringInScreen(param1);
         Singleton.utility.m_analyticsController.LogCounterMetric("Death","" + Singleton.dynamicData.m_currFloorOfTower + "_" + Singleton.dynamicData.m_currRoomOfTower);
      }
      
      override protected function GotoTopDownScreen() : void
      {
         this.m_loseText.visible = true;
         this.m_blackBackground.visible = true;
         this.m_loseText.alpha = 0;
         this.m_blackBackground.alpha = 0;
         Singleton.utility.m_soundController.PlaySound("battle_lose",0.5);
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_blackBackground,0.5,{}));
         _loc1_.append(new TweenLite(this.m_blackBackground,1,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_blackBackground,1.5,{"onComplete":this.GotoTopDownScreen_part2}));
         _loc1_.append(new TweenLite(this.m_blackBackground,0.5,{"onComplete":this.TurnOffLoseScreen}));
         _loc1_ = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_loseText,0.5,{}));
         _loc1_.append(new TweenLite(this.m_loseText,1,{"alpha":1}));
      }
      
      public function GotoTopDownScreen_part2() : void
      {
         Singleton.dynamicData.SetToReturnToOnDeathPoint();
         Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
      }
      
      private function TurnOffLoseScreen() : void
      {
         this.m_loseText.visible = false;
         this.m_blackBackground.visible = false;
      }
      
      override public function Update() : void
      {
         if(this.m_blackBackground.visible)
         {
            return;
         }
         super.Update();
      }
   }
}
