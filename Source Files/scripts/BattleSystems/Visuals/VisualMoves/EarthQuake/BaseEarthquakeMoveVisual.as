package BattleSystems.Visuals.VisualMoves.EarthQuake
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseEarthquakeMoveVisual extends BaseVisualMove
   {
       
      
      private var _intensity:Number;
      
      private var _numberOfShakes:int;
      
      private var _shakeDistance:Number;
      
      public function BaseEarthquakeMoveVisual(param1:Number = 0.05, param2:int = 5, param3:Number = 10)
      {
         super();
         this._intensity = param1;
         this._numberOfShakes = param2;
         this._shakeDistance = param3;
         m_moveTime = (0.05 + this._intensity * (this._numberOfShakes * 0.5)) * this._numberOfShakes + 0.15;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
      }
      
      override public function PlayMove() : void
      {
         super.PlayMove();
         PlayMainSound();
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.ShakeScreen(this._intensity,this._numberOfShakes,this._shakeDistance);
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this,m_moveTime - 0.15,{"onComplete":this.CleanupMove}));
      }
      
      override protected function CleanupMove() : void
      {
         super.CleanupMove();
      }
   }
}
