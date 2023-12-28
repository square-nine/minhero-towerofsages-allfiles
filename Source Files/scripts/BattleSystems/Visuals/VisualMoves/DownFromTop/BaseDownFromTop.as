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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super();
         this.m_spriteName = param1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
            if(_loc3_ || Boolean(this))
            {
               this.m_scaleDownEachObjectAmount = 0.2;
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr53);
               }
               §§goto(addr73);
            }
            addr53:
            this.m_shakesGroundOnImpact = false;
            this.m_numberOfObjects = 3;
            if(!(_loc2_ && _loc3_))
            {
               addr73:
               this.m_delayBetweenObjects = 0.1;
            }
            this.m_extraThroughDistance = 0;
            this.m_impactSpeed = 0.75;
            if(_loc3_)
            {
               this.m_randomStartTime = 0;
               addr87:
               this.m_displayImpacts = true;
            }
            return;
         }
         §§goto(addr87);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || Boolean(param1))
         {
            super.CreateMove(param1,param2,param3,param4);
            if(_loc7_ || Boolean(param2))
            {
               this.m_randomStartTimeInGame = Math.random() * this.m_randomStartTime;
               if(!_loc6_)
               {
                  addr43:
                  this.m_impactSpeed = this._impactSpeed;
                  if(_loc7_ || Boolean(param1))
                  {
                     addr54:
                     this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
                     if(!_loc6_)
                     {
                        this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
                     }
                  }
               }
               var _loc5_:int = 0;
               while(_loc5_ < this.m_moveVisual.length)
               {
                  this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
                  this.m_moveVisual[_loc5_].visible = false;
                  param1.addChild(this.m_moveVisual[_loc5_]);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
                     if(!(_loc6_ && Boolean(this)))
                     {
                        this.m_moveVisual[_loc5_].scaleY = this.m_masterScale;
                        if(_loc7_)
                        {
                           this.m_impactVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_impactSpriteName);
                           param1.addChild(this.m_impactVisual[_loc5_]);
                           if(_loc6_ && Boolean(this))
                           {
                           }
                           addr185:
                           this.m_impactVisual[_loc5_].scaleY = 0.7;
                           _loc5_++;
                           if(!(_loc7_ || Boolean(this)))
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     this.m_impactVisual[_loc5_].alpha = 0;
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        this.m_impactVisual[_loc5_].scaleX = 0.7;
                     }
                  }
                  §§goto(addr185);
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr54);
      }
      
      override public function PlayMove() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:TimelineLite = null;
         var _loc6_:* = NaN;
         if(!(_loc7_ && Boolean(this)))
         {
            super.PlayMove();
         }
         §§push(m_minionAttackedVisual.y - this.m_moveVisual[0].height);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_extraThroughDistance);
            if(!_loc7_)
            {
               §§push(§§pop());
            }
         }
         var _loc1_:* = §§pop();
         §§push(0.2);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(this._impactSpeed);
         if(_loc8_ || Boolean(this))
         {
            §§push(§§pop() - _loc3_);
            if(_loc8_)
            {
               addr63:
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
                  if(§§pop() >= this.m_moveVisual.length)
                  {
                     break loop0;
                  }
                  this.m_moveVisual[_loc5_].visible = true;
                  this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc5_].width / 2;
                  if(_loc8_ || _loc1_)
                  {
                     this.m_moveVisual[_loc5_].y = -this.m_moveVisual[_loc5_].height - m_minionAttackedVisual.y;
                     if(_loc8_ || _loc3_)
                     {
                        this.m_moveVisual[_loc5_].scaleX = (1 - _loc5_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
                        this.m_moveVisual[_loc5_].scaleY = (1 - _loc5_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              continue;
                           }
                           §§push(2);
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              §§push(§§pop() % §§pop());
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(1);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          this.m_moveVisual[_loc5_].x += this.m_moveVisual[_loc5_].width / 2;
                                          addr196:
                                          this.m_impactVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc5_].width / 2;
                                          if(!(_loc7_ && Boolean(this)))
                                          {
                                             addr218:
                                             this.m_impactVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc5_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
                                             addr239:
                                             this.m_impactVisual[_loc5_].scaleX = 1 - _loc5_ * this.m_scaleDownEachObjectAmount;
                                             this.m_impactVisual[_loc5_].scaleY = 1 - _loc5_ * this.m_scaleDownEachObjectAmount;
                                             if(_loc8_)
                                             {
                                                §§push(this.m_displayImpacts);
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr275:
                                                         this.m_impactVisual[_loc5_].visible = false;
                                                         addr295:
                                                         §§push(_loc5_);
                                                         if(!(_loc7_ && _loc1_))
                                                         {
                                                            addr304:
                                                            §§push(§§pop() % 2);
                                                            if(_loc8_ || Boolean(this))
                                                            {
                                                               addr313:
                                                               if(§§pop() == 1)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     addr316:
                                                                     this.m_impactVisual[_loc5_].x += this.m_impactVisual[_loc5_].width / 4;
                                                                     addr334:
                                                                     §§push(_loc5_);
                                                                     if(!(_loc7_ && Boolean(_loc2_)))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr537:
                                                                  addr539:
                                                                  if(this.m_shakesGroundOnImpact)
                                                                  {
                                                                     §§goto(addr540);
                                                                  }
                                                                  §§goto(addr566);
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            addr352:
                                                            §§push(§§pop() + this.m_randomStartTimeInGame);
                                                            if(!_loc7_)
                                                            {
                                                               addr357:
                                                               §§push(§§pop());
                                                            }
                                                            _loc6_ = §§pop();
                                                            §§push(TweenLite);
                                                            §§push(this);
                                                            §§push(0.05);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() + _loc6_);
                                                            }
                                                            §§pop().to(§§pop(),§§pop(),{"onComplete":PlayMainSound});
                                                            TweenLite.to(this.m_moveVisual[_loc5_],this._impactSpeed,{
                                                               "delay":_loc6_,
                                                               "y":_loc1_
                                                            });
                                                            _loc2_ = new TimelineLite();
                                                            if(_loc8_)
                                                            {
                                                               _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc4_,{"delay":_loc6_}));
                                                               if(_loc8_)
                                                               {
                                                                  addr403:
                                                                  _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc3_,{"alpha":0}));
                                                               }
                                                               _loc2_ = new TimelineLite();
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],_loc4_,{"delay":_loc6_}));
                                                                  if(_loc8_)
                                                                  {
                                                                     addr440:
                                                                     _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.1,{
                                                                        "alpha":0.7,
                                                                        "onComplete":PlayHitSound
                                                                     }));
                                                                     if(!_loc7_)
                                                                     {
                                                                        _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.2,{}));
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           addr473:
                                                                           _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.3,{"alpha":0}));
                                                                        }
                                                                     }
                                                                     _loc2_ = new TimelineLite();
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],_loc4_,{"delay":_loc6_}));
                                                                        if(!(_loc8_ || Boolean(_loc2_)))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.6,{"y":"-5"}));
                                                                     if(_loc8_ || Boolean(_loc2_))
                                                                     {
                                                                        _loc5_++;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr473);
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                            §§goto(addr403);
                                                         }
                                                         break;
                                                         addr288:
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   else
                                                   {
                                                      this.m_impactVisual[_loc5_].visible = true;
                                                   }
                                                   §§goto(addr295);
                                                }
                                                §§goto(addr539);
                                             }
                                             §§goto(addr566);
                                          }
                                          §§goto(addr316);
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr313);
                              }
                              §§goto(addr352);
                           }
                           §§goto(addr304);
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr288);
                  }
                  §§goto(addr218);
               }
               §§push(§§pop() * this.m_delayBetweenObjects);
               if(!(_loc7_ && Boolean(this)))
               {
                  §§goto(addr304);
               }
               §§goto(addr357);
            }
            if(!_loc7_)
            {
               §§goto(addr537);
            }
            addr540:
            TweenLite.to(this,_loc4_,{"onComplete":Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.ShakeScreen});
            if(_loc8_ || Boolean(this))
            {
               addr566:
               TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
            }
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,2);
            return;
         }
         §§goto(addr63);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.CleanupMove();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            if(!(_loc3_ && Boolean(this)))
            {
               this.m_impactVisual[_loc1_].parent.removeChild(this.m_impactVisual[_loc1_]);
               if(_loc3_ && _loc3_)
               {
                  break;
               }
            }
            _loc1_++;
            if(_loc3_ && _loc2_)
            {
               break;
            }
         }
      }
      
      public function set m_impactSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._impactSpeed = param1;
            if(!_loc3_)
            {
               addr20:
               §§push(§§findproperty(m_moveTime));
               §§push(this._impactSpeed);
               if(_loc2_ || _loc3_)
               {
                  §§push(this.m_numberOfObjects * this.m_delayBetweenObjects);
                  if(_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc2_ || Boolean(param1))
                     {
                        §§push(0.15);
                        if(!_loc3_)
                        {
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr62);
               }
               §§goto(addr72);
            }
            addr62:
            §§push(§§pop() + §§pop());
            if(_loc2_ || Boolean(param1))
            {
               addr72:
               §§push(§§pop() + this.m_randomStartTimeInGame);
            }
            §§pop().m_moveTime = §§pop();
            return;
         }
         §§goto(addr20);
      }
   }
}
