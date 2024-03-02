package BattleSystems.Visuals.VisualMoves.ShootIntoMinion
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseShootIntoMinionMoveVisual extends BaseVisualMove
   {
       
      
      protected var m_moveVisual:Vector.<Sprite>;
      
      public var m_spriteName:String;
      
      public var m_impactSpriteName:String;
      
      private var _movementSpeed:Number = 0.1;
      
      public var m_numberOfObjects:int;
      
      public var m_delayBetweenObjects:Number;
      
      public var m_yPositionOffset:Number;
      
      public var m_xPositionOffset:int;
      
      public var m_isNoRiseActive:Boolean;
      
      public var m_masterScale:Number = 1;
      
      public var m_extraXSpacingBetweenObjects:Number;
      
      public var m_finalHangTime:Number;
      
      public var m_hangTime:Number;
      
      private var m_centerPointX:int;
      
      private var m_centerPointY:int;
      
      public var m_moveDistance:int;
      
      public var m_allEnterAtTheSameTime:Boolean;
      
      public function BaseShootIntoMinionMoveVisual(param1:String)
      {
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_numberOfObjects = 8;
         this.m_delayBetweenObjects = 0.1;
         this.m_finalHangTime = 0.3;
         this.m_yPositionOffset = 0;
         this.m_extraXSpacingBetweenObjects = 0;
         this.m_xPositionOffset = 0;
         this.m_isNoRiseActive = false;
         this.m_hangTime = 0.5;
         this.m_allEnterAtTheSameTime = false;
         this.m_moveDistance = 80;
         this.m_movementSpeed = 0.7;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
         this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
         var _loc5_:int = 0;
         while(_loc5_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
            this.m_moveVisual[_loc5_].visible = false;
            param1.addChild(this.m_moveVisual[_loc5_]);
            this.m_moveVisual[_loc5_].alpha = 0;
            _loc5_++;
         }
         this.m_centerPointX = m_minionAttackedVisual.x - this.m_moveVisual[0].width / 2;
         this.m_centerPointY = m_minionAttackedVisual.y - this.m_moveVisual[0].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
      }
      
      override public function PlayMove() : void
      {
         var _loc1_:TimelineLite = null;
         var _loc7_:Array = null;
         var _loc9_:Number = NaN;
         super.PlayMove();
         var _loc3_:Number = this._movementSpeed - 0.2;
         var _loc4_:int = this.m_moveDistance;
         var _loc6_:Array = [0,_loc4_ * 0.72,_loc4_,_loc4_ * 0.72,0,-_loc4_ * 0.72,-_loc4_,-_loc4_ * 0.72];
         _loc7_ = [-_loc4_,-_loc4_ * 0.72,0,_loc4_ * 0.72,_loc4_,_loc4_ * 0.72,0,-_loc4_ * 0.72];
         var _loc8_:int = 0;
         while(_loc8_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc8_].visible = true;
            this.m_moveVisual[_loc8_].x = this.m_centerPointX + _loc6_[_loc8_];
            this.m_moveVisual[_loc8_].y = this.m_centerPointY + _loc7_[_loc8_];
            this.m_moveVisual[_loc8_].scaleX = this.m_masterScale;
            this.m_moveVisual[_loc8_].scaleY = this.m_masterScale;
            _loc9_ = _loc8_ * this.m_delayBetweenObjects;
            _loc1_ = new TimelineLite();
            if(!this.m_allEnterAtTheSameTime)
            {
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],_loc9_,{}));
            }
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],0.2,{
               "alpha":1,
               "onComplete":PlayMainSound
            }));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],this.m_hangTime,{"onComplete":PlayMainSound2}));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],this._movementSpeed,{
               "x":this.m_centerPointX,
               "y":this.m_centerPointY,
               "onComplete":PlayHitSound
            }));
            _loc1_ = new TimelineLite();
            if(!this.m_allEnterAtTheSameTime)
            {
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],_loc9_,{}));
            }
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],_loc3_,{}));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],this.m_finalHangTime,{}));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],this.m_hangTime,{}));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],0.2,{"alpha":0}));
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,3);
            _loc8_++;
         }
         TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
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
      
      public function set m_movementSpeed(param1:Number) : void
      {
         this._movementSpeed = param1 * 0.6;
         if(!this.m_allEnterAtTheSameTime)
         {
            m_moveTime = this.m_finalHangTime + this.m_hangTime + this._movementSpeed + this.m_numberOfObjects * this.m_delayBetweenObjects - 0.2;
         }
         else
         {
            m_moveTime = this.m_finalHangTime + this.m_hangTime + this._movementSpeed - 0.2;
         }
      }
   }
}
