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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(_loc2_ || _loc3_)
         {
            this.m_spriteName = param1;
            this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
            this.m_scaleDownEachObjectAmount = 0.2;
            if(_loc2_)
            {
               this.m_shakesGroundOnImpact = false;
               this.m_numberOfObjects = 1;
            }
            this.m_delayBetweenObjects = 0.06;
            if(_loc2_)
            {
               this.m_extraThroughDistance = 0;
               if(_loc2_ || Boolean(param1))
               {
               }
               §§goto(addr74);
            }
            this.m_impactSpeed = 0.4;
            this.m_isImpactVisible = true;
         }
         addr74:
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && Boolean(param3)))
         {
            super.CreateMove(param1,param2,param3,param4);
            if(_loc7_)
            {
               this.m_isAttackingOppponetsMinion = Singleton.dynamicData.IsMinionOpponents(param4);
               if(!(_loc6_ && Boolean(param2)))
               {
                  addr42:
                  this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
                  if(_loc7_)
                  {
                     addr52:
                     this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
                  }
               }
               var _loc5_:int = 0;
               while(_loc5_ < this.m_moveVisual.length)
               {
                  this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
                  if(_loc7_ || Boolean(param1))
                  {
                     this.m_moveVisual[_loc5_].visible = false;
                     param1.addChild(this.m_moveVisual[_loc5_]);
                     if(!(_loc7_ || Boolean(param3)))
                     {
                        break;
                     }
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
                     if(_loc7_)
                     {
                        this.m_impactVisual[_loc5_].alpha = 0;
                        this.m_impactVisual[_loc5_].scaleX = 0.7;
                        if(_loc6_)
                        {
                           break;
                        }
                        this.m_impactVisual[_loc5_].scaleY = 0.7;
                     }
                  }
                  _loc5_++;
                  if(!(_loc7_ || Boolean(param1)))
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr52);
      }
      
      override public function PlayMove() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:TimelineLite = null;
         var _loc5_:* = NaN;
         if(!(_loc7_ && Boolean(_loc1_)))
         {
            super.PlayMove();
         }
         §§push(0.2);
         if(_loc6_ || Boolean(_loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(this._impactSpeed);
         if(!_loc7_)
         {
            §§push(§§pop() - _loc2_);
            if(_loc6_ || Boolean(_loc1_))
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(true)
            {
               if(§§pop() >= this.m_moveVisual.length)
               {
                  addr515:
                  if(!(_loc7_ && _loc3_))
                  {
                     addr512:
                     §§push(this.m_shakesGroundOnImpact);
                     break;
                  }
                  TweenLite.to(this,_loc3_,{"onComplete":Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.ShakeScreen});
                  if(_loc6_ || Boolean(this))
                  {
                     addr541:
                     Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,3);
                  }
                  §§goto(addr549);
               }
               this.m_moveVisual[_loc4_].visible = true;
               §§push(this.m_isAttackingOppponetsMinion);
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        this.m_moveVisual[_loc4_].rotation = -90;
                        if(!_loc7_)
                        {
                           this.m_moveVisual[_loc4_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc4_].width / 1.5 - this.m_extraThroughDistance;
                           addr122:
                           this.m_moveVisual[_loc4_].y = m_minionAttackedVisual.y - this.m_moveVisual[_loc4_].height - 50;
                           if(!(_loc7_ && Boolean(this)))
                           {
                              this.m_moveVisual[_loc4_].alpha = 1 - 0.25 * _loc4_;
                              if(_loc6_ || Boolean(_loc1_))
                              {
                                 this.m_impactVisual[_loc4_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc4_].width / 2;
                                 this.m_impactVisual[_loc4_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc4_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    this.m_impactVisual[_loc4_].scaleX = 1 - _loc4_ * this.m_scaleDownEachObjectAmount;
                                    this.m_impactVisual[_loc4_].scaleY = 1 - _loc4_ * this.m_scaleDownEachObjectAmount;
                                    this.m_impactVisual[_loc4_].visible = this.m_isImpactVisible;
                                    addr233:
                                    §§push(_loc4_);
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() % 2);
                                    if(_loc6_)
                                    {
                                       if(§§pop() == 1)
                                       {
                                          addr247:
                                          this.m_impactVisual[_loc4_].x += this.m_impactVisual[_loc4_].width / 4;
                                          if(_loc6_ || Boolean(this))
                                          {
                                          }
                                          addr300:
                                          TweenLite.to(this.m_moveVisual[_loc4_],this._impactSpeed + _loc5_,{"y":"50"});
                                          TweenLite.to(this.m_moveVisual[_loc4_],this._impactSpeed + _loc5_,{
                                             "delay":_loc5_,
                                             "rotation":0
                                          });
                                          if(_loc6_ || _loc3_)
                                          {
                                             _loc1_ = new TimelineLite();
                                             if(_loc6_)
                                             {
                                                _loc1_.append(new TweenLite(this.m_moveVisual[_loc4_],this._impactSpeed + 0.1 + _loc5_,{}));
                                                if(_loc6_ || _loc2_)
                                                {
                                                   _loc1_.append(new TweenLite(this.m_moveVisual[_loc4_],0.2,{"alpha":0}));
                                                }
                                             }
                                             _loc1_ = new TimelineLite();
                                             if(_loc6_ || Boolean(this))
                                             {
                                                _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],_loc3_,{"delay":_loc5_}));
                                                if(!(_loc7_ && Boolean(this)))
                                                {
                                                   addr405:
                                                   _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.1,{
                                                      "alpha":0.7,
                                                      "onComplete":PlayHitSound
                                                   }));
                                                   if(_loc6_ || Boolean(_loc1_))
                                                   {
                                                      _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.2,{}));
                                                      if(!(_loc7_ && Boolean(_loc1_)))
                                                      {
                                                         addr443:
                                                         _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.3,{"alpha":0}));
                                                      }
                                                      _loc1_ = new TimelineLite();
                                                      if(!_loc7_)
                                                      {
                                                         _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],_loc3_,{"delay":_loc5_}));
                                                         if(_loc7_ && Boolean(_loc1_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         _loc1_.append(new TweenLite(this.m_impactVisual[_loc4_],0.6,{"y":"-5"}));
                                                         if(_loc7_ && Boolean(this))
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      _loc4_++;
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr443);
                                             }
                                             §§goto(addr405);
                                          }
                                          else
                                          {
                                             addr549:
                                             TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
                                             return;
                                          }
                                       }
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() * this.m_delayBetweenObjects);
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       addr296:
                                       PlayMainSound();
                                       if(!_loc6_)
                                       {
                                          §§goto(addr512);
                                       }
                                    }
                                    §§goto(addr512);
                                 }
                                 §§goto(addr300);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr541);
                     }
                     §§goto(addr247);
                  }
                  else
                  {
                     this.m_moveVisual[_loc4_].rotation = 90;
                     if(!_loc7_)
                     {
                        this.m_moveVisual[_loc4_].x = m_minionAttackedVisual.x + this.m_moveVisual[_loc4_].width / 1.5 + this.m_extraThroughDistance;
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr296);
               }
               break;
               §§goto(addr512);
            }
            if(§§pop())
            {
               §§goto(addr515);
            }
            §§goto(addr541);
         }
      }
      
      override protected function CleanupMove() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            super.CleanupMove();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            if(!_loc2_)
            {
               this.m_impactVisual[_loc1_].parent.removeChild(this.m_impactVisual[_loc1_]);
               if(!_loc2_)
               {
                  _loc1_++;
                  if(_loc2_ && Boolean(this))
                  {
                     break;
                  }
               }
            }
         }
      }
      
      public function set m_impactSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this._impactSpeed = param1;
            if(_loc3_)
            {
               §§push(§§findproperty(m_moveTime));
               §§push(this._impactSpeed);
               if(_loc3_)
               {
                  §§push(this.m_numberOfObjects * this.m_delayBetweenObjects);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr62);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr62);
            }
         }
         addr62:
         §§push(§§pop() + §§pop());
         if(_loc3_)
         {
            §§push(0.15);
         }
         §§pop().m_moveTime = §§pop();
      }
   }
}
