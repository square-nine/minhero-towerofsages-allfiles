package BattleSystems.WinScreen
{
   import BattleSystems.Other.BaseBattleFinishScreen;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class WinScreen extends BaseBattleFinishScreen
   {
       
      
      public var m_victoryPopup:VictoryPopup;
      
      public function WinScreen()
      {
         super();
         this.m_victoryPopup = new VictoryPopup();
      }
      
      override public function LoadSprites(param1:Sprite) : void
      {
         this.m_victoryPopup.LoadSprite();
         this.m_victoryPopup.x = 504;
         this.m_victoryPopup.y = 105;
         param1.addChild(this.m_victoryPopup);
         super.LoadSprites(param1);
      }
      
      override public function DeActivate() : void
      {
         this.m_victoryPopup.DeActivate();
      }
      
      override public function BringInScreen(param1:Boolean) : void
      {
         TweenLite.to(Singleton.utility.m_stage,0.4,{"onComplete":this.PlayVictory});
         super.BringInScreen(param1);
      }
      
      private function PlayVictory() : void
      {
         Singleton.utility.m_soundController.PlaySound("battle_victory",0.35);
         TweenLite.to(Singleton.utility.m_stage,6,{"onComplete":this.BringBackInBackgroundMusic});
      }
      
      private function BringBackInBackgroundMusic() : void
      {
         Singleton.utility.m_soundController.FadeCurrentMusic(0.2,0.5);
      }
   }
}
