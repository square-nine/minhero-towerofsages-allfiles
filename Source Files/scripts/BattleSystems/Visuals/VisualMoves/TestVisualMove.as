package BattleSystems.Visuals.VisualMoves
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class TestVisualMove extends BaseVisualMove
   {
       
      
      private var m_whiteFlash:Sprite;
      
      public function TestVisualMove()
      {
         super();
         m_moveTime = 0.4;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
         this.m_whiteFlash = new Sprite();
         this.m_whiteFlash.graphics.beginFill(16777215);
         this.m_whiteFlash.graphics.drawRect(0,0,700,525);
         this.m_whiteFlash.graphics.endFill();
         param1.addChild(this.m_whiteFlash);
         this.m_whiteFlash.alpha = 0;
         this.m_whiteFlash.visible = false;
      }
      
      override public function PlayMove() : void
      {
         super.PlayMove();
         Singleton.utility.m_soundController.PlaySound("battle_hit_thump_splat");
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_whiteFlash,0.2,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_whiteFlash,0.2,{
            "alpha":0,
            "onComplete":this.CleanupMove
         }));
      }
      
      override protected function CleanupMove() : void
      {
         super.CleanupMove();
         m_addedToSprite.removeChild(this.m_whiteFlash);
      }
   }
}
