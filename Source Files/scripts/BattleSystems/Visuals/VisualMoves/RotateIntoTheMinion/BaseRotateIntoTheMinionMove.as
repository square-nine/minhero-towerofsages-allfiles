package BattleSystems.Visuals.VisualMoves.RotateIntoTheMinion
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseRotateIntoTheMinionMove extends BaseVisualMove
   {
       
      
      protected var m_moveVisual:Vector.<Sprite>;
      
      protected var m_impactVisual:Vector.<Sprite>;
      
      public var m_spriteName:String;
      
      public var m_impactSpriteName:String;
      
      private var _impactSpeed:Number;
      
      public var m_scaleDownEachObjectAmount:Number;
      
      public var m_shakesGroundOnImpact:Boolean;
      
      public var m_numberOfObjects:int;
      
      public var m_delayBetweenObjects:Number;
      
      public var m_extraThroughDistance:Number;
      
      public var m_masterScale:Number = 1;
      
      public var m_isImpactVisible:Boolean;
      
      private var m_isAttackingOppponetsMinion:Boolean;
      
      public function BaseRotateIntoTheMinionMove(param1:String)
      {
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_scaleDownEachObjectAmount = 0.2;
         this.m_shakesGroundOnImpact = false;
         this.m_numberOfObjects = 1;
         this.m_delayBetweenObjects = 0.06;
         this.m_extraThroughDistance = 0;
         this.m_impactSpeed = 0.4;
         this.m_isImpactVisible = true;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
         this.m_isAttackingOppponetsMinion = Singleton.dynamicData.IsMinionOpponents(param4);
         this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
         this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
         var _loc5_:int = 0;
         while(_loc5_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
            this.m_moveVisual[_loc5_].visible = false;
            param1.addChild(this.m_moveVisual[_loc5_]);
            if(this.m_isAttackingOppponetsMinion)
            {
               this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
            }
            else
            {
               this.m_moveVisual[_loc5_].scaleX = this.m_masterScale * -1;
            }
            this.m_moveVisual[_loc5_].scaleY = this.m_masterScale;
            this.m_impactVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_impactSpriteName);
            param1.addChild(this.m_impactVisual[_loc5_]);
            this.m_impactVisual[_loc5_].alpha = 0;
            this.m_impactVisual[_loc5_].scaleX = 0.7;
            this.m_impactVisual[_loc5_].scaleY = 0.7;
            _loc5_++;
         }
      }
      
      override public function PlayMove() : void
      {
         var _loc1_:TimelineLite = null;
         var _loc5_:Number = NaN;
         super.PlayMove();
         var _loc3_:Number = this._impactSpeed - 0.2;
         var _loc4_:int = 0;
         while(_loc4_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc4_].visible = true;
            if(this.m_isAttackingOppponetsMinion)
            {
               this.m_moveVisual[_loc4_].rotation = -90;
               this.m_moveVisual[_loc4_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc4_].width / 1.5 - this.m_extraThroughDistance;
            }
            else
            {
               this.m_moveVisual[_loc4_].rotation = 90;
               this.m_moveVisual[_loc4_].x = m_minionAttackedVisual.x + this.m_moveVisual[_loc4_].width / 1.5 + this.m_extraThroughDistance;
            }
            this.m_moveVisual[_loc4_].y = m_minionAttackedVisual.y - this.m_moveVisual[_loc4_].height - 50;
            this.m_moveVisual[_loc4_].alpha = 1 - 0.25 * _loc4_;
            this.m_impactVisual[_loc4_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc4_].width / 2;
            this.m_impactVisual[_loc4_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc4_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
            this.m_impactVisual[_loc4_].scaleX = 1 - _loc4_ * this.m_scaleDownEachObjectAmount;
            this.m_impactVisual[_loc4_].scaleY = 1 - _loc4_ * this.m_scaleDownEachObjectAmount;
            this.m_impactVisual[_loc4_].visible = this.m_isImpactVisible;
            if(_loc4_ % 2 == 1)
            {
               this.m_impactVisual[_loc4_].x += this.m_impactVisual[_loc4_].width / 4;
            }
            _loc5_ = _loc4_ * this.m_delayBetweenObjects;
            PlayMainSound();
            TweenLite.to(this.m_moveVisual[_loc4_],this._impactSpeed + _loc5_,{"y":"50"});
            TweenLite.to(this.m_moveVisual[_loc4_],this._impactSpeed + _loc5_,{
               "delay":_loc5_,
               "rotation":0
            });
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc4_],this._impactSpeed + 0.1 + _loc5_,{}));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc4_],0.2,{"alpha":0}));
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],_loc3_,{"delay":_loc5_}));
            _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.1,{
               "alpha":0.7,
               "onComplete":PlayHitSound
            }));
            _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.2,{}));
            _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.3,{"alpha":0}));
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],_loc3_,{"delay":_loc5_}));
            _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.6,{"y":"-5"}));
            _loc4_++;
         }
         if(this.m_shakesGroundOnImpact)
         {
            TweenLite.to(this,_loc3_,{"onComplete":Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.ShakeScreen});
         }
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,3);
         TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
      }
      
      override protected function CleanupMove() : void
      {
         super.CleanupMove();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            this.m_impactVisual[_loc1_].parent.removeChild(this.m_impactVisual[_loc1_]);
            _loc1_++;
         }
      }
      
      public function set m_impactSpeed(param1:Number) : void
      {
         this._impactSpeed = param1;
         m_moveTime = this._impactSpeed + this.m_numberOfObjects * this.m_delayBetweenObjects + 0.15;
      }
   }
}
