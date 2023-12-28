package BattleSystems.Visuals.VisualMoves.FadeDownAndHitMinion
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseFadeDownAndHitMinion extends BaseVisualMove
   {
       
      
      protected var m_moveVisual:Vector.<Sprite>;
      
      protected var m_impactVisual:Vector.<Sprite>;
      
      public var m_spriteName:String;
      
      public var m_impactSpriteName:String;
      
      private var _impactSpeed:Number = 0.1;
      
      public var m_shakesGroundOnImpact:Boolean;
      
      public var m_numberOfObjects:int;
      
      public var m_delayBetweenObjects:Number;
      
      public var m_extraThroughDistance:Number;
      
      private var _numberUpDownsBeforeImpact:int = 3;
      
      public var m_upDownSpeed:Number;
      
      public var m_hangTime:Number;
      
      private var m_isAttackingOppponetsMinion:Boolean;
      
      public var m_displayImpactOnHit:Boolean;
      
      public var m_masterScale:Number = 1;
      
      public function BaseFadeDownAndHitMinion(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super();
         this.m_spriteName = param1;
         if(_loc3_)
         {
            this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
            if(_loc3_)
            {
               addr26:
               this.m_shakesGroundOnImpact = false;
               this.m_numberOfObjects = 1;
               if(!(_loc2_ && Boolean(param1)))
               {
                  this.m_delayBetweenObjects = 0.1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr63);
                  }
                  §§goto(addr71);
               }
               addr63:
               this.m_extraThroughDistance = 0;
               §§goto(addr66);
            }
            addr66:
            this.m_numberUpDownsBeforeImpact = 0;
            if(!_loc2_)
            {
               addr71:
               this.m_upDownSpeed = 0.3;
               this.m_impactSpeed = 0.35;
               if(_loc3_)
               {
                  this.m_displayImpactOnHit = true;
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super.CreateMove(param1,param2,param3,param4);
            if(_loc7_)
            {
               this.m_isAttackingOppponetsMinion = Singleton.dynamicData.IsMinionOpponents(param4);
               if(_loc7_ || Boolean(this))
               {
                  this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
                  if(_loc7_ || Boolean(this))
                  {
                     addr52:
                     this.m_impactVisual = new Vector.<Sprite>(this.m_moveVisual.length);
                  }
               }
               var _loc5_:int = 0;
               while(_loc5_ < this.m_moveVisual.length)
               {
                  this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
                  this.m_moveVisual[_loc5_].visible = false;
                  param1.addChild(this.m_moveVisual[_loc5_]);
                  if(!(_loc6_ && Boolean(param3)))
                  {
                     if(this.m_isAttackingOppponetsMinion)
                     {
                        this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
                     }
                     else
                     {
                        this.m_moveVisual[_loc5_].scaleX = this.m_masterScale * -1;
                     }
                     this.m_moveVisual[_loc5_].scaleY = this.m_masterScale;
                  }
                  this.m_moveVisual[_loc5_].alpha = 0;
                  this.m_impactVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_impactSpriteName);
                  param1.addChild(this.m_impactVisual[_loc5_]);
                  this.m_impactVisual[_loc5_].alpha = 0;
                  if(_loc6_)
                  {
                     break;
                  }
                  this.m_impactVisual[_loc5_].scaleX = 0.7;
                  this.m_impactVisual[_loc5_].scaleY = 0.7;
                  _loc5_++;
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      override public function PlayMove() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:TimelineLite = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = 0;
         if(!_loc8_)
         {
            super.PlayMove();
         }
         §§push(m_minionAttackedVisual.y - this.m_moveVisual[0].height);
         if(!_loc8_)
         {
            §§push(§§pop() + this.m_extraThroughDistance);
            if(_loc9_ || _loc3_)
            {
               §§push(§§pop());
            }
         }
         var _loc1_:* = §§pop();
         §§push(0.2);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(this._impactSpeed);
         if(_loc9_)
         {
            §§push(§§pop() - _loc3_);
            if(_loc9_ || _loc3_)
            {
               addr65:
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(_loc9_)
            {
               PlayMainSound2();
            }
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
                  §§push(this.m_isAttackingOppponetsMinion);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc5_].width / 2;
                           if(_loc9_ || Boolean(_loc2_))
                           {
                              addr133:
                              this.m_moveVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_moveVisual[_loc5_].height - 100;
                              if(!_loc8_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(2);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() % §§pop());
                                       if(!_loc8_)
                                       {
                                          §§push(1);
                                          if(_loc9_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                addr168:
                                                this.m_moveVisual[_loc5_].x += this.m_moveVisual[_loc5_].width / 2;
                                             }
                                             this.m_impactVisual[_loc5_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc5_].width / 2;
                                             if(_loc9_)
                                             {
                                                this.m_impactVisual[_loc5_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc5_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
                                                if(!_loc8_)
                                                {
                                                   this.m_impactVisual[_loc5_].visible = this.m_displayImpactOnHit;
                                                   addr233:
                                                   §§push(_loc5_);
                                                   if(_loc9_)
                                                   {
                                                      addr237:
                                                      §§push(§§pop() % 2);
                                                      if(!_loc8_)
                                                      {
                                                         addr241:
                                                         if(§§pop() == 1)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               this.m_impactVisual[_loc5_].x += this.m_impactVisual[_loc5_].width / 4;
                                                               addr262:
                                                               §§push(_loc5_);
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr576:
                                                               TweenLite.to(this,_loc4_,{"onComplete":Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.ShakeScreen});
                                                               §§goto(addr595);
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      _loc6_ = §§pop();
                                                      if(_loc9_ || Boolean(this))
                                                      {
                                                         addr284:
                                                         _loc2_ = new TimelineLite();
                                                         _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc3_,{
                                                            "alpha":1,
                                                            "onComplete":PlayMainSound
                                                         }));
                                                         if(!_loc8_)
                                                         {
                                                            §§push(0);
                                                            if(_loc9_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               addr348:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                               }
                                                               addr348:
                                                            }
                                                            while(§§pop() < this._numberUpDownsBeforeImpact)
                                                            {
                                                               _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this.m_upDownSpeed,{"y":"-10"}));
                                                               _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this.m_upDownSpeed,{
                                                                  "y":"10",
                                                                  "onComplete":PlayMainSound
                                                               }));
                                                               _loc7_++;
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this._impactSpeed,{
                                                               "delay":_loc6_,
                                                               "y":_loc1_
                                                            }));
                                                            _loc2_ = new TimelineLite();
                                                            if(!_loc8_)
                                                            {
                                                               _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this.m_hangTime,{}));
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc4_,{"delay":_loc6_}));
                                                                  if(_loc9_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],_loc3_,{"alpha":0}));
                                                                  }
                                                               }
                                                            }
                                                            _loc2_ = new TimelineLite();
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this.m_hangTime,{}));
                                                               if(_loc9_)
                                                               {
                                                                  _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],_loc4_,{"delay":_loc6_}));
                                                                  if(_loc9_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.1,{
                                                                        "alpha":0.7,
                                                                        "onComplete":PlayHitSound
                                                                     }));
                                                                     if(_loc9_)
                                                                     {
                                                                     }
                                                                     addr493:
                                                                     _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.3,{"alpha":0}));
                                                                     addr505:
                                                                     _loc2_ = new TimelineLite();
                                                                     if(_loc9_)
                                                                     {
                                                                        _loc2_.append(new TweenLite(this.m_moveVisual[_loc5_],this.m_hangTime,{}));
                                                                        if(!(_loc9_ || _loc3_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],_loc4_,{"delay":_loc6_}));
                                                                     if(_loc9_ || Boolean(_loc2_))
                                                                     {
                                                                        _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.6,{"y":"-5"}));
                                                                        if(!(_loc9_ || Boolean(this)))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     _loc5_++;
                                                                     continue loop0;
                                                                  }
                                                                  _loc2_.append(new TweenLite(this.m_impactVisual[_loc5_],0.2,{}));
                                                                  if(_loc9_)
                                                                  {
                                                                  }
                                                                  §§goto(addr505);
                                                               }
                                                            }
                                                            §§goto(addr493);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr610);
                                                      }
                                                   }
                                                   break;
                                                }
                                                addr595:
                                                TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
                                                if(_loc9_ || Boolean(_loc2_))
                                                {
                                                   addr610:
                                                   Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,2);
                                                }
                                                return;
                                             }
                                             §§goto(addr576);
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr237);
                                 }
                                 break;
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr262);
                        }
                        §§goto(addr284);
                     }
                     else
                     {
                        this.m_moveVisual[_loc5_].x = m_minionAttackedVisual.x + this.m_moveVisual[_loc5_].width / 2;
                        if(!(_loc8_ && Boolean(_loc2_)))
                        {
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr233);
                  }
                  else
                  {
                     addr575:
                     if(§§pop())
                     {
                        §§goto(addr576);
                     }
                  }
                  §§goto(addr576);
               }
               §§push(§§pop() * this.m_delayBetweenObjects);
               if(_loc8_ && _loc1_)
               {
               }
               §§goto(addr237);
            }
            §§goto(addr575);
            §§push(this.m_shakesGroundOnImpact);
         }
         §§goto(addr65);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.CleanupMove();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            if(_loc3_)
            {
               break;
            }
            this.m_impactVisual[_loc1_].parent.removeChild(this.m_impactVisual[_loc1_]);
            if(_loc3_ && _loc2_)
            {
               break;
            }
            _loc1_++;
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function set m_impactSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this._impactSpeed = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               addr26:
               this.SetMoveTimeAndHangTime();
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function set m_numberUpDownsBeforeImpact(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._numberUpDownsBeforeImpact = param1;
            if(_loc3_ || Boolean(this))
            {
               addr38:
               this.SetMoveTimeAndHangTime();
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function SetMoveTimeAndHangTime() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this._numberUpDownsBeforeImpact * this.m_upDownSpeed);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() * 2);
               if(_loc2_)
               {
                  §§push(§§pop() + 0.2);
               }
            }
            §§pop().m_hangTime = §§pop();
            if(!_loc1_)
            {
               addr45:
               §§push(§§findproperty(m_moveTime));
               §§push(this.m_hangTime);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(this._impactSpeed);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr79:
                        §§push(this.m_numberOfObjects * this.m_delayBetweenObjects);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              addr90:
                              §§push(§§pop() + 0.15);
                           }
                        }
                        §§goto(addr90);
                     }
                     §§pop().m_moveTime = §§pop();
                     §§goto(addr92);
                  }
                  §§goto(addr90);
               }
               §§goto(addr79);
            }
            addr92:
            return;
         }
         §§goto(addr45);
      }
   }
}
