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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(_loc2_ || _loc2_)
         {
            this.m_spriteName = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
               if(!_loc3_)
               {
                  this.m_numberOfObjects = 8;
                  if(_loc2_)
                  {
                     this.m_delayBetweenObjects = 0.1;
                     if(!_loc3_)
                     {
                        this.m_finalHangTime = 0.3;
                        this.m_yPositionOffset = 0;
                        if(_loc2_)
                        {
                           this.m_extraXSpacingBetweenObjects = 0;
                           this.m_xPositionOffset = 0;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr82:
                              this.m_isNoRiseActive = false;
                              if(_loc2_ || _loc3_)
                              {
                                 this.m_hangTime = 0.5;
                                 addr95:
                                 this.m_allEnterAtTheSameTime = false;
                                 this.m_moveDistance = 80;
                              }
                           }
                           §§goto(addr95);
                        }
                        this.m_movementSpeed = 0.7;
                     }
                  }
                  return;
               }
               §§goto(addr82);
            }
            §§goto(addr95);
         }
         §§goto(addr82);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && Boolean(param1)))
         {
            super.CreateMove(param1,param2,param3,param4);
            if(!_loc6_)
            {
               this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
            if(!_loc6_)
            {
               this.m_moveVisual[_loc5_].visible = false;
               if(_loc6_)
               {
                  §§goto(addr146);
               }
               param1.addChild(this.m_moveVisual[_loc5_]);
               this.m_moveVisual[_loc5_].alpha = 0;
               if(!(_loc7_ || Boolean(this)))
               {
                  break;
               }
               continue;
               §§goto(addr146);
            }
            §§push(this);
            §§push(m_minionAttackedVisual.y - this.m_moveVisual[0].height / 2);
            if(!_loc6_)
            {
               §§push(§§pop() - m_minionAttackedVisual.m_minionSprite.height / 2);
            }
            §§pop().m_centerPointY = §§pop();
            addr146:
            return;
            _loc5_++;
            if(_loc7_ || Boolean(param3))
            {
               continue;
            }
            §§goto(addr146);
         }
         this.m_centerPointX = m_minionAttackedVisual.x - this.m_moveVisual[0].width / 2;
         if(!(_loc6_ && Boolean(param1)))
         {
            §§goto(addr126);
         }
         addr146:
      }
      
      override public function PlayMove() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc1_:TimelineLite = null;
         var _loc7_:Array = null;
         var _loc9_:* = NaN;
         if(!_loc11_)
         {
            super.PlayMove();
         }
         §§push(0.2);
         if(_loc10_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(this._movementSpeed);
         if(!(_loc11_ && Boolean(_loc1_)))
         {
            §§push(§§pop() - _loc2_);
            if(!(_loc11_ && Boolean(_loc1_)))
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_moveDistance);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(0.72);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(0);
         §§push(_loc4_ * _loc5_);
         §§push(_loc4_);
         §§push(_loc4_ * _loc5_);
         §§push(0);
         §§push(-_loc4_);
         if(_loc10_)
         {
            §§push(_loc5_);
            if(!(_loc11_ && Boolean(_loc1_)))
            {
               addr88:
               §§push(§§pop() * §§pop());
               §§push(-_loc4_);
            }
            §§push(-_loc4_);
            if(!_loc11_)
            {
               §§push(§§pop() * _loc5_);
            }
            var _loc6_:Array = null;
            §§push(-_loc4_);
            §§push(-_loc4_);
            if(!_loc11_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§push(0);
            §§push(_loc4_ * _loc5_);
            §§push(_loc4_);
            §§push(_loc4_ * _loc5_);
            §§push(0);
            §§push(-_loc4_);
            if(_loc10_ || _loc2_)
            {
               §§push(§§pop() * _loc5_);
            }
            _loc7_ = null;
            var _loc8_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc8_);
               while(true)
               {
                  if(§§pop() >= this.m_moveVisual.length)
                  {
                     break loop0;
                  }
                  this.m_moveVisual[_loc8_].visible = true;
                  if(!_loc10_)
                  {
                     break;
                  }
                  this.m_moveVisual[_loc8_].x = this.m_centerPointX + _loc6_[_loc8_];
                  if(_loc10_)
                  {
                     this.m_moveVisual[_loc8_].y = this.m_centerPointY + _loc7_[_loc8_];
                     this.m_moveVisual[_loc8_].scaleX = this.m_masterScale;
                     if(_loc10_ || Boolean(_loc1_))
                     {
                        this.m_moveVisual[_loc8_].scaleY = this.m_masterScale;
                        if(_loc10_)
                        {
                        }
                        break;
                     }
                     addr410:
                     return;
                  }
                  §§push(_loc8_);
                  if(_loc10_ || Boolean(this))
                  {
                     §§push(§§pop() * this.m_delayBetweenObjects);
                     if(_loc10_ || _loc2_)
                     {
                        §§push(§§pop());
                     }
                     _loc9_ = §§pop();
                     break;
                  }
               }
               _loc1_ = new TimelineLite();
               if(_loc10_)
               {
                  if(!this.m_allEnterAtTheSameTime)
                  {
                     if(_loc10_ || _loc2_)
                     {
                        _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],_loc9_,{}));
                        if(_loc10_ || _loc3_)
                        {
                           addr249:
                           _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],_loc2_,{
                              "alpha":1,
                              "onComplete":PlayMainSound
                           }));
                           if(!_loc10_)
                           {
                              continue;
                           }
                        }
                        _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],this.m_hangTime,{"onComplete":PlayMainSound2}));
                        if(_loc10_)
                        {
                           addr280:
                           _loc1_.append(new TweenLite(this.m_moveVisual[_loc8_],this._movementSpeed,{
                              "x":this.m_centerPointX,
                              "y":this.m_centerPointY,
                              "onComplete":PlayHitSound
                           }));
                        }
                        continue;
                     }
                  }
                  §§goto(addr249);
               }
               §§goto(addr280);
            }
            if(!(_loc11_ && _loc3_))
            {
               TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
            }
            §§goto(addr410);
         }
         §§goto(addr88);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.CleanupMove();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            if(!_loc3_)
            {
               _loc1_++;
               if(_loc3_ && Boolean(_loc1_))
               {
                  break;
               }
            }
         }
      }
      
      public function set m_movementSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop() * 0.6);
            }
            §§pop()._movementSpeed = §§pop();
            if(!(_loc3_ && Boolean(this)))
            {
               if(!this.m_allEnterAtTheSameTime)
               {
                  if(_loc2_)
                  {
                     §§push(§§findproperty(m_moveTime));
                     §§push(this.m_finalHangTime);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.m_hangTime);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(this._movementSpeed);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(this.m_numberOfObjects * this.m_delayBetweenObjects);
                                    if(_loc2_)
                                    {
                                       addr82:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc3_)
                                       {
                                          addr85:
                                          §§push(0.2);
                                       }
                                       §§pop().m_moveTime = §§pop();
                                       if(_loc2_)
                                       {
                                          addr135:
                                          return;
                                          addr90:
                                       }
                                       §§goto(addr135);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                              }
                           }
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr90);
               }
               else
               {
                  §§push(§§findproperty(m_moveTime));
                  §§push(this.m_finalHangTime);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§push(this.m_hangTime);
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(this._movementSpeed);
                           if(!_loc3_)
                           {
                              addr134:
                              §§push(§§pop() + §§pop());
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(0.2);
                              }
                              §§pop().m_moveTime = §§pop();
                              §§goto(addr135);
                           }
                        }
                        §§goto(addr134);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§goto(addr134);
               }
            }
         }
         §§goto(addr135);
      }
   }
}
