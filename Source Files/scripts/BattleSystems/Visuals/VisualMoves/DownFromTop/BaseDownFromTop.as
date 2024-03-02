package BattleSystems.Visuals.VisualMoves.DownFromTop
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseDownFromTop extends BaseVisualMove
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
      
      public var m_randomStartTime:Number;
      
      private var m_randomStartTimeInGame:Number;
      
      public var m_masterScale:Number = 1;
      
      public var m_displayImpacts:Boolean;
      
      public function BaseDownFromTop(param1:String)
      {
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_scaleDownEachObjectAmount = 0.2;
         this.m_shakesGroundOnImpact = false;
         this.m_numberOfObjects = 3;
         this.m_delayBetweenObjects = 0.1;
         this.m_extraThroughDistance = 0;
         this.m_impactSpeed = 0.75;
         this.m_randomStartTime = 0;
         this.m_displayImpacts = true;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
         this.m_randomStartTimeInGame = Math.random() * this.m_randomStartTime;
         this.m_impactSpeed = this._impactSpeed;
         this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
         this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
         var _loc5_:int = 0;
         while(_loc5_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
            this.m_moveVisual[_loc5_].visible = false;
            param1.addChild(this.m_moveVisual[_loc5_]);
            this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
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
         var _loc2_:TimelineLite = null;
         var _loc6_:Number = NaN;
         super.PlayMove();
         var _loc1_:Number = m_minionAttackedVisual.y - this.m_moveVisual[0].height + this.m_extraThroughDistance;
         var _loc4_:Number = this._impactSpeed - 0.2;
         var _loc5_:int = 0;
         while(_loc5_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc5_].visible = true;
            this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc5_].width / 2;
            this.m_moveVisual[_loc5_].y = -this.m_moveVisual[_loc5_].height - m_minionAttackedVisual.y;
            this.m_moveVisual[_loc5_].scaleX = (1 - _loc5_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
            this.m_moveVisual[_loc5_].scaleY = (1 - _loc5_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
            if(_loc5_ % 2 == 1)
            {
               this.m_moveVisual[_loc5_].x += this.m_moveVisual[_loc5_].width / 2;
            }
            this.m_impactVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc5_].width / 2;
            this.m_impactVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc5_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
            this.m_impactVisual[_loc5_].scaleX = 1 - _loc5_ * this.m_scaleDownEachObjectAmount;
            this.m_impactVisual[_loc5_].scaleY = 1 - _loc5_ * this.m_scaleDownEachObjectAmount;
            if(!this.m_displayImpacts)
            {
               this.m_impactVisual[_loc5_].visible = false;
            }
            else
            {
               this.m_impactVisual[_loc5_].visible = true;
            }
            if(_loc5_ % 2 == 1)
            {
               this.m_impactVisual[_loc5_].x += this.m_impactVisual[_loc5_].width / 4;
            }
            _loc6_ = _loc5_ * this.m_delayBetweenObjects + this.m_randomStartTimeInGame;
            TweenLite.to(this,0.05 + _loc6_,{"onComplete":PlayMainSound});
            TweenLite.to(this.m_moveVisual[_loc5_],this._impactSpeed,{
               "delay":_loc6_,
               "y":_loc1_
            });
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc4_,{"delay":_loc6_}));
            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],0.2,{"alpha":0}));
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],_loc4_,{"delay":_loc6_}));
            _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.1,{
               "alpha":0.7,
               "onComplete":PlayHitSound
            }));
            _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.2,{}));
            _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.3,{"alpha":0}));
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],_loc4_,{"delay":_loc6_}));
            _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.6,{"y":"-5"}));
            _loc5_++;
         }
         if(this.m_shakesGroundOnImpact)
         {
            TweenLite.to(this,_loc4_,{"onComplete":Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.ShakeScreen});
         }
         TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,2);
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
         m_moveTime = this._impactSpeed + this.m_numberOfObjects * this.m_delayBetweenObjects + 0.15 + this.m_randomStartTimeInGame;
      }
   }
}
