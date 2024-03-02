package BattleSystems.Visuals.VisualMoves.FadeInAndGoThroughMinion
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseFadeInAndGoThroughMinion extends BaseVisualMove
   {
       
      
      protected var m_moveVisual:Vector.<Sprite>;
      
      protected var m_impactVisual:Vector.<Sprite>;
      
      public var m_spriteName:String;
      
      public var m_impactSpriteName:String;
      
      private var _moveThroughSpeed:Number = 0.1;
      
      public var m_numberOfObjects:int;
      
      public var m_delayBetweenObjects:Number;
      
      public var m_extraThroughDistance:Number;
      
      public var m_riseDistance:Number;
      
      private var m_isAttackingOppponetsMinion:Boolean;
      
      public var m_startingXPositionOffset:int;
      
      public var m_masterScale:Number = 1;
      
      public var m_extraXSpacingBetweenObjects:Number;
      
      public var m_finalHangTime:Number;
      
      public function BaseFadeInAndGoThroughMinion(param1:String)
      {
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_numberOfObjects = 3;
         this.m_delayBetweenObjects = 0.07;
         this.m_finalHangTime = 0.1;
         this.m_extraThroughDistance = 0;
         this.m_moveThroughSpeed = 0.8;
         this.m_riseDistance = 100;
         this.m_isAttackingOppponetsMinion = false;
         this.m_extraXSpacingBetweenObjects = 0;
         this.m_startingXPositionOffset = 0;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
         this.m_isAttackingOppponetsMinion = Singleton.dynamicData.IsMinionOpponents(param4);
         this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
         this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
         var _loc5_:int = int(this.m_moveVisual.length - 1);
         while(_loc5_ > -1)
         {
            this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
            this.m_moveVisual[_loc5_].visible = false;
            param1.addChild(this.m_moveVisual[_loc5_]);
            this.m_moveVisual[_loc5_].alpha = 0;
            this.m_impactVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_impactSpriteName);
            param1.addChild(this.m_impactVisual[_loc5_]);
            this.m_impactVisual[_loc5_].alpha = 0;
            this.m_impactVisual[_loc5_].scaleX = 0.7;
            this.m_impactVisual[_loc5_].scaleY = 0.7;
            _loc5_--;
         }
      }
      
      override public function PlayMove() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:TimelineLite = null;
         var _loc6_:Number = NaN;
         super.PlayMove();
         PlayMainSound();
         var _loc4_:Number = this._moveThroughSpeed - 0.2;
         var _loc5_:int = 0;
         while(_loc5_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc5_].visible = true;
            if(this.m_isAttackingOppponetsMinion)
            {
               this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc5_].width - this.m_startingXPositionOffset;
               _loc1_ = m_minionAttackedVisual.x;
            }
            else
            {
               this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x + this.m_moveVisual[_loc5_].width + this.m_startingXPositionOffset;
               _loc1_ = m_minionAttackedVisual.x;
            }
            this.m_moveVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_moveVisual[0].height + this.m_extraThroughDistance;
            if(this.m_isAttackingOppponetsMinion)
            {
               this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
            }
            else
            {
               this.m_moveVisual[_loc5_].scaleX = this.m_masterScale * -1;
            }
            this.m_moveVisual[_loc5_].scaleY = this.m_masterScale;
            this.m_impactVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc5_].width / 2;
            this.m_impactVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc5_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
            _loc6_ = _loc5_ * this.m_delayBetweenObjects;
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc6_,{}));
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this._moveThroughSpeed,{"x":_loc1_}));
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],0.2,{
               "delay":_loc6_,
               "alpha":1 - _loc5_ * 0.3
            }));
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc4_,{}));
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this.m_finalHangTime,{}));
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],0.2,{"alpha":0}));
            _loc5_++;
         }
         TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,0);
      }
      
      override protected function CleanupMove() : void
      {
         super.CleanupMove();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            _loc1_++;
         }
      }
      
      public function set m_moveThroughSpeed(param1:Number) : void
      {
         this._moveThroughSpeed = param1;
         m_moveTime = this.m_finalHangTime + this._moveThroughSpeed + this.m_numberOfObjects * this.m_delayBetweenObjects + 0.15;
      }
   }
}
