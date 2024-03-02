package BattleSystems.Visuals.VisualMoves.Burn
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseBurnMove extends BaseVisualMove
   {
       
      
      protected var m_moveVisual:Vector.<Sprite>;
      
      public var m_spriteName:String;
      
      public var m_impactSpriteName:String;
      
      public var m_scaleDownEachObjectAmount:Number;
      
      public var m_numberOfObjects:int;
      
      public var m_delayBetweenObjects:Number;
      
      public var m_masterScale:Number = 1;
      
      public function BaseBurnMove(param1:String)
      {
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_scaleDownEachObjectAmount = 0.2;
         this.m_numberOfObjects = 3;
         this.m_delayBetweenObjects = 0.1;
         m_moveTime = 1.2;
         m_mainSound = "battle_flamethrower";
         m_mainSoundVolume = 0.4;
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
            this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
            this.m_moveVisual[_loc5_].scaleY = this.m_masterScale;
            this.m_moveVisual[_loc5_].alpha = 0;
            _loc5_++;
         }
      }
      
      override public function PlayMove() : void
      {
         var _loc1_:TimelineLite = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.PlayMove();
         var _loc3_:int = 0;
         while(_loc3_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc3_].visible = true;
            this.m_moveVisual[_loc3_].scaleX = (1 - _loc3_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
            this.m_moveVisual[_loc3_].scaleY = (1 - _loc3_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
            this.m_moveVisual[_loc3_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc3_].width / 2;
            this.m_moveVisual[_loc3_].y = m_minionAttackedVisual.y - this.m_moveVisual[_loc3_].height;
            if(_loc3_ % 2 == 1)
            {
               this.m_moveVisual[_loc3_].x += this.m_moveVisual[_loc3_].width / 4;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.m_moveVisual.length)
         {
            _loc4_ = 5 + _loc3_ * 13;
            _loc5_ = 0.3;
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],0.5,{"alpha":0.7}));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],0.2,{}));
            _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],0.5,{"alpha":0}));
            if(_loc3_ % 2 == 1)
            {
               _loc4_ += this.m_moveVisual[_loc3_].width / 4;
               _loc1_ = new TimelineLite();
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
            }
            else
            {
               _loc1_ = new TimelineLite();
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
            }
            _loc3_++;
         }
         Singleton.utility.m_soundController.PlaySound(m_mainSound,m_mainSoundVolume);
         TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,1);
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
   }
}
