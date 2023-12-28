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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_numberOfObjects = 3;
         this.m_delayBetweenObjects = 0.07;
         if(!_loc3_)
         {
            this.m_finalHangTime = 0.1;
            this.m_extraThroughDistance = 0;
            this.m_moveThroughSpeed = 0.8;
            this.m_riseDistance = 100;
         }
         this.m_isAttackingOppponetsMinion = false;
         this.m_extraXSpacingBetweenObjects = 0;
         if(_loc2_)
         {
            this.m_startingXPositionOffset = 0;
         }
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super.CreateMove(param1,param2,param3,param4);
            if(_loc7_ || Boolean(param2))
            {
               this.m_isAttackingOppponetsMinion = Singleton.dynamicData.IsMinionOpponents(param4);
               if(_loc7_ || Boolean(this))
               {
                  this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
                  if(_loc7_)
                  {
                     addr52:
                     this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
                  }
               }
            }
            var _loc5_:int = int(this.m_moveVisual.length - 1);
            loop0:
            while(true)
            {
               §§push(_loc5_);
               while(§§pop() > -1)
               {
                  this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
                  this.m_moveVisual[_loc5_].visible = false;
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     param1.addChild(this.m_moveVisual[_loc5_]);
                  }
                  this.m_moveVisual[_loc5_].alpha = 0;
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     this.m_impactVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_impactSpriteName);
                     param1.addChild(this.m_impactVisual[_loc5_]);
                  }
                  this.m_impactVisual[_loc5_].alpha = 0;
                  if(_loc7_ || Boolean(this))
                  {
                     this.m_impactVisual[_loc5_].scaleX = 0.7;
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        addr167:
                        this.m_impactVisual[_loc5_].scaleY = 0.7;
                        if(_loc6_ && Boolean(param1))
                        {
                           break;
                        }
                     }
                     §§push(_loc5_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() - 1);
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                     }
                     continue;
                  }
                  §§goto(addr167);
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      override public function PlayMove() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:* = NaN;
         var _loc2_:TimelineLite = null;
         var _loc6_:* = NaN;
         if(!_loc7_)
         {
            super.PlayMove();
            if(_loc8_)
            {
               addr27:
               PlayMainSound();
            }
            §§push(0.2);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            §§push(this._moveThroughSpeed);
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(§§pop() - _loc3_);
               if(!_loc7_)
               {
                  addr52:
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               var _loc5_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc5_);
                  while(true)
                  {
                     if(§§pop() < this.m_moveVisual.length)
                     {
                        this.m_moveVisual[_loc5_].visible = true;
                        if(_loc8_)
                        {
                           §§push(this.m_isAttackingOppponetsMinion);
                           if(!(_loc7_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc5_].width - this.m_startingXPositionOffset;
                                 §§push(m_minionAttackedVisual.x);
                                 if(_loc8_)
                                 {
                                    _loc1_ = §§pop();
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       addr135:
                                       this.m_moveVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_moveVisual[0].height + this.m_extraThroughDistance;
                                       if(_loc7_ && Boolean(_loc2_))
                                       {
                                       }
                                       addr161:
                                       this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
                                       if(_loc8_)
                                       {
                                          addr180:
                                          this.m_moveVisual[_loc5_].scaleY = this.m_masterScale;
                                          this.m_impactVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc5_].width / 2;
                                          if(!_loc7_)
                                          {
                                             this.m_impactVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc5_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
                                             addr232:
                                             §§push(_loc5_);
                                             if(_loc8_ || Boolean(this))
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr376);
                                          }
                                          continue;
                                       }
                                       §§goto(addr232);
                                    }
                                    addr160:
                                    if(this.m_isAttackingOppponetsMinion)
                                    {
                                       §§goto(addr161);
                                    }
                                    else
                                    {
                                       this.m_moveVisual[_loc5_].scaleX = this.m_masterScale * -1;
                                    }
                                    §§goto(addr180);
                                 }
                                 else
                                 {
                                    addr132:
                                    _loc1_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       §§goto(addr135);
                                    }
                                 }
                                 §§goto(addr232);
                              }
                              else
                              {
                                 this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x + this.m_moveVisual[_loc5_].width + this.m_startingXPositionOffset;
                                 §§push(m_minionAttackedVisual.x);
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr132);
                                 }
                                 addr246:
                                 _loc6_ = §§pop();
                                 _loc2_ = new TimelineLite();
                                 if(_loc8_ || Boolean(this))
                                 {
                                    _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc6_,{}));
                                    if(_loc8_)
                                    {
                                       _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this._moveThroughSpeed,{"x":_loc1_}));
                                    }
                                 }
                                 _loc2_ = new TimelineLite();
                                 if(_loc8_ || _loc3_)
                                 {
                                    _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc3_,{
                                       "delay":_loc6_,
                                       "alpha":1 - _loc5_ * 0.3
                                    }));
                                    if(_loc8_)
                                    {
                                       _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc4_,{}));
                                       if(!_loc7_)
                                       {
                                          addr326:
                                          _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this.m_finalHangTime,{}));
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr344:
                                             _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc3_,{"alpha":0}));
                                             if(_loc7_ && _loc3_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          _loc5_++;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr344);
                                 }
                                 §§goto(addr326);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr135);
                     }
                     addr376:
                     TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
                     if(!_loc7_)
                     {
                        Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,0);
                     }
                     return;
                  }
                  §§push(§§pop() * this.m_delayBetweenObjects);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr246);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr27);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.CleanupMove();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            if(!_loc3_)
            {
               break;
            }
            _loc1_++;
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function set m_moveThroughSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this._moveThroughSpeed = param1;
            if(_loc3_)
            {
               §§push(§§findproperty(m_moveTime));
               §§push(this.m_finalHangTime);
               if(_loc3_ || _loc3_)
               {
                  §§push(this._moveThroughSpeed);
                  if(_loc3_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc3_)
                     {
                        §§push(this.m_numberOfObjects * this.m_delayBetweenObjects);
                        if(_loc3_)
                        {
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr69);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr69);
            }
         }
         addr69:
         §§push(§§pop() + §§pop());
         if(!_loc2_)
         {
            §§push(0.15);
         }
         §§pop().m_moveTime = §§pop();
      }
   }
}
