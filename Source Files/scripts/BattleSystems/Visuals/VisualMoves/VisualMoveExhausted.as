package BattleSystems.Visuals.VisualMoves
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class VisualMoveExhausted extends BaseVisualMove
   {
       
      
      private var m_statBackground:Sprite;
      
      public function VisualMoveExhausted()
      {
         super();
         m_moveTime = 0.9;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
         this.m_statBackground = Singleton.utility.m_spriteHandler.CreateSprite("visualMove_exhausted");
         m_addedToSprite.addChild(this.m_statBackground);
         this.m_statBackground.alpha = 0;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat()).color = 15066856;
         _loc5_.size = 20;
         _loc5_.font = "BurbinCasual";
         _loc5_.align = TextFormatAlign.LEFT;
         this.m_statBackground.visible = false;
      }
      
      override public function PlayMove() : void
      {
         super.PlayMove();
         this.m_statBackground.visible = true;
         Singleton.utility.m_soundController.PlaySound("battle_exhausted",0.9);
         this.m_statBackground.x = m_minionAttackedVisual.x - this.m_statBackground.width / 2;
         this.m_statBackground.y = m_minionAttackedVisual.y - m_minionAttackedVisual.m_minionSprite.height - 50;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_statBackground,0.2,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_statBackground,0.4,{}));
         _loc1_.append(new TweenLite(this.m_statBackground,0.2,{
            "alpha":0,
            "onComplete":this.CleanupMove
         }));
         TweenLite.to(this.m_statBackground,0.8,{"y":"-50"});
      }
      
      override protected function CleanupMove() : void
      {
         super.CleanupMove();
         m_addedToSprite.removeChild(this.m_statBackground);
      }
   }
}
