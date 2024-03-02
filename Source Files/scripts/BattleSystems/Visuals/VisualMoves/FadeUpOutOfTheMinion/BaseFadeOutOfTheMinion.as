package BattleSystems.Visuals.VisualMoves.FadeUpOutOfTheMinion
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseFadeOutOfTheMinion extends BaseVisualMove
   {
       
      
      protected var m_moveVisual:Vector.<Sprite>;
      
      protected var m_impactVisual:Vector.<Sprite>;
      
      public var m_spriteName:String;
      
      public var m_impactSpriteName:String;
      
      private var _riseSpeed:Number = 0.1;
      
      public var m_numberOfObjects:int;
      
      public var m_delayBetweenObjects:Number;
      
      public var m_yPositionOffset:Number;
      
      public var m_riseDistance:Number;
      
      private var m_doesARotation:Boolean;
      
      public var m_xPositionOffset:int;
      
      public var m_isNoRiseActive:Boolean;
      
      public var m_masterScale:Number = 1;
      
      public var m_startingScale:Number = 1;
      
      public var m_finishingScale:Number = 1;
      
      public var m_extraXSpacingBetweenObjects:Number;
      
      public var m_numOfShakes:int;
      
      public var m_finalHangTime:Number;
      
      public var m_soundVolume:Number;
      
      public var m_flashesOnFinish:Boolean;
      
      public var m_doesImpactMinion:Boolean;
      
      public function BaseFadeOutOfTheMinion(param1:String)
      {
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_numberOfObjects = 1;
         this.m_delayBetweenObjects = 0.1;
         this.m_finalHangTime = 0.5;
         this.m_yPositionOffset = 0;
         this.m_riseSpeed = 1.6;
         this.m_riseDistance = 100;
         this.m_finishingScale = 1.3;
         this.m_doesARotation = false;
         this.m_extraXSpacingBetweenObjects = 0;
         this.m_xPositionOffset = 0;
         this.m_numOfShakes = 0;
         this.m_isNoRiseActive = false;
         this.m_flashesOnFinish = false;
         this.m_doesImpactMinion = false;
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         super.CreateMove(param1,param2,param3,param4);
         this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
         this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
         var _loc5_:int = 0;
         while(_loc5_ < this.m_moveVisual.length)
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
            _loc5_++;
         }
      }
      
      override public function PlayMove() : void
      {
         var _loc3_:TimelineLite = null;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         super.PlayMove();
         var _loc1_:Number = m_minionAttackedVisual.y - this.m_moveVisual[0].height + this.m_yPositionOffset - m_minionAttackedVisual.m_minionSprite.height / 2;
         var _loc2_:Number = m_minionAttackedVisual.y - this.m_moveVisual[_loc6_].height - this.m_riseDistance;
         PlayMainSound();
         var _loc5_:Number = this._riseSpeed - 0.2;
         _loc6_ = 0;
         while(_loc6_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc6_].visible = true;
            if(!this.m_doesARotation)
            {
               this.m_moveVisual[_loc6_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc6_].width / 2 - this.m_xPositionOffset;
            }
            else
            {
               this.m_moveVisual[_loc6_].x = m_minionAttackedVisual.x + this.m_moveVisual[_loc6_].width / 2 + this.m_xPositionOffset;
            }
            this.m_moveVisual[_loc6_].y = _loc1_;
            if(!this.m_doesARotation)
            {
               this.m_moveVisual[_loc6_].scaleX = this.m_masterScale * this.m_startingScale;
            }
            else
            {
               this.m_moveVisual[_loc6_].scaleX = this.m_masterScale * -1 * this.m_startingScale;
            }
            this.m_moveVisual[_loc6_].scaleY = this.m_masterScale * this.m_startingScale;
            if(_loc6_ % 2 == 1)
            {
               this.m_moveVisual[_loc6_].x += this.m_moveVisual[_loc6_].width / 2 + this.m_extraXSpacingBetweenObjects;
            }
            this.m_impactVisual[_loc6_].visible = this.m_doesImpactMinion;
            this.m_impactVisual[_loc6_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc6_].width / 2;
            this.m_impactVisual[_loc6_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc6_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
            _loc7_ = _loc6_ * this.m_delayBetweenObjects;
            _loc3_ = new TimelineLite();
            _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc7_,{}));
            _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],0.2,{"alpha":1}));
            if(this.m_isNoRiseActive)
            {
               _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],this._riseSpeed,{"transformAroundCenter":{
                  "scaleX":this.m_masterScale * this.m_finishingScale,
                  "scaleY":this.m_masterScale * this.m_finishingScale
               }}));
            }
            else
            {
               _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],this._riseSpeed,{"transformAroundCenter":{
                  "y":_loc2_,
                  "scaleX":this.m_masterScale * this.m_finishingScale,
                  "scaleY":this.m_masterScale * this.m_finishingScale
               }}));
            }
            _loc3_ = new TimelineLite();
            _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc5_,{"delay":_loc7_}));
            _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],this.m_finalHangTime,{}));
            _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],0.2,{"alpha":0}));
            if(this.m_numOfShakes > 0)
            {
               _loc8_ = 0.2;
               _loc3_ = new TimelineLite();
               _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc7_,{}));
               _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_ / 2,{"transformAroundCenter":{"rotation":"-5"}}));
               _loc9_ = 0;
               while(_loc9_ < this.m_numOfShakes)
               {
                  _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_,{"transformAroundCenter":{"rotation":"10"}}));
                  _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_,{"transformAroundCenter":{"rotation":"-10"}}));
                  _loc9_++;
               }
               _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_ / 2,{"transformAroundCenter":{"rotation":"5"}}));
               _loc3_ = new TimelineLite();
               _loc3_.append(new TweenLite(this,0.05,{"onComplete":PlayMainSound2}));
               _loc9_ = 0;
               while(_loc9_ < this.m_numOfShakes - 1)
               {
                  _loc3_.append(new TweenLite(this,_loc8_ * 2,{"onComplete":PlayMainSound2}));
                  _loc9_++;
               }
            }
            _loc3_ = new TimelineLite();
            _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],m_moveTime - 0.5,{"delay":_loc7_}));
            _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.1,{
               "alpha":0.7,
               "onComplete":PlayHitSound
            }));
            _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.1,{}));
            _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.2,{"alpha":0}));
            _loc3_ = new TimelineLite();
            _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],m_moveTime - 0.5,{"delay":_loc7_}));
            _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.6,{"y":"-5"}));
            _loc6_++;
         }
         if(this.m_flashesOnFinish)
         {
            TweenLite.to(this,m_moveTime - 0.3,{"onComplete":this.ActivateFlash});
         }
         TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
      }
      
      private function ActivateFlash() : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.FlashScreen();
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
      
      public function set m_riseSpeed(param1:Number) : void
      {
         this._riseSpeed = param1;
         m_moveTime = this.m_finalHangTime + this._riseSpeed + this.m_numberOfObjects * this.m_delayBetweenObjects + 0.15;
      }
   }
}
