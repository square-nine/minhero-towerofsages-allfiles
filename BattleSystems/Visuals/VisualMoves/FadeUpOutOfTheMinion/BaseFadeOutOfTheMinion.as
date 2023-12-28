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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         this.m_spriteName = param1;
         this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
         this.m_numberOfObjects = 1;
         this.m_delayBetweenObjects = 0.1;
         this.m_finalHangTime = 0.5;
         this.m_yPositionOffset = 0;
         if(!(_loc3_ && _loc2_))
         {
            this.m_riseSpeed = 1.6;
            this.m_riseDistance = 100;
            if(!(_loc3_ && _loc3_))
            {
               this.m_finishingScale = 1.3;
               if(!(_loc3_ && _loc3_))
               {
                  this.m_doesARotation = false;
                  this.m_extraXSpacingBetweenObjects = 0;
               }
               this.m_xPositionOffset = 0;
               if(!(_loc3_ && _loc3_))
               {
                  this.m_numOfShakes = 0;
                  addr96:
                  this.m_isNoRiseActive = false;
                  this.m_flashesOnFinish = false;
               }
            }
            this.m_doesImpactMinion = false;
            return;
         }
         §§goto(addr96);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && Boolean(param3)))
         {
            super.CreateMove(param1,param2,param3,param4);
            if(_loc6_)
            {
               this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
               if(_loc6_)
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
            this.m_moveVisual[_loc5_].alpha = 0;
            this.m_impactVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_impactSpriteName);
            if(!(_loc7_ && Boolean(this)))
            {
               param1.addChild(this.m_impactVisual[_loc5_]);
               this.m_impactVisual[_loc5_].alpha = 0;
               if(!(_loc6_ || Boolean(param1)))
               {
                  break;
               }
               this.m_impactVisual[_loc5_].scaleX = 0.7;
               this.m_impactVisual[_loc5_].scaleY = 0.7;
               if(_loc6_ || Boolean(param3))
               {
                  _loc5_++;
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
         }
      }
      
      override public function PlayMove() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:TimelineLite = null;
         var _loc6_:int = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         if(_loc10_)
         {
            super.PlayMove();
         }
         §§push(m_minionAttackedVisual.y - this.m_moveVisual[0].height);
         if(_loc10_)
         {
            §§push(this.m_yPositionOffset);
            if(!_loc11_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc11_)
               {
                  addr50:
                  §§push(§§pop() - m_minionAttackedVisual.m_minionSprite.height / 2);
                  if(_loc10_ || Boolean(_loc3_))
                  {
                  }
                  addr59:
                  var _loc1_:* = §§pop();
                  §§push(m_minionAttackedVisual.y - this.m_moveVisual[_loc6_].height);
                  if(!(_loc11_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop() - this.m_riseDistance);
                     if(!(_loc11_ && _loc1_))
                     {
                        addr85:
                        §§push(§§pop());
                     }
                     var _loc2_:* = §§pop();
                     if(_loc10_)
                     {
                        PlayMainSound();
                     }
                     §§push(0.2);
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     §§push(this._riseSpeed);
                     if(_loc10_ || _loc1_)
                     {
                        §§push(§§pop() - _loc4_);
                        if(_loc10_)
                        {
                           addr109:
                           §§push(§§pop());
                        }
                        var _loc5_:* = §§pop();
                        if(_loc10_)
                        {
                           _loc6_ = 0;
                        }
                        loop0:
                        while(true)
                        {
                           §§push(_loc6_);
                           while(true)
                           {
                              if(§§pop() >= this.m_moveVisual.length)
                              {
                                 if(_loc10_)
                                 {
                                    addr812:
                                    if(this.m_flashesOnFinish)
                                    {
                                       if(_loc10_ || Boolean(this))
                                       {
                                          break;
                                       }
                                       §§goto(addr845);
                                    }
                                 }
                                 addr837:
                                 TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
                              }
                              else
                              {
                                 this.m_moveVisual[_loc6_].visible = true;
                                 §§push(this.m_doesARotation);
                                 if(_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       this.m_moveVisual[_loc6_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc6_].width / 2 - this.m_xPositionOffset;
                                       if(!(_loc11_ && _loc1_))
                                       {
                                          §§goto(addr172);
                                       }
                                       §§goto(addr237);
                                    }
                                    else
                                    {
                                       this.m_moveVisual[_loc6_].x = m_minionAttackedVisual.x + this.m_moveVisual[_loc6_].width / 2 + this.m_xPositionOffset;
                                    }
                                    addr172:
                                    this.m_moveVisual[_loc6_].y = _loc1_;
                                    §§push(this.m_doesARotation);
                                    if(_loc10_ || _loc2_)
                                    {
                                       addr187:
                                       if(!§§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             this.m_moveVisual[_loc6_].scaleX = this.m_masterScale * this.m_startingScale;
                                          }
                                          addr237:
                                          this.m_moveVisual[_loc6_].x += this.m_moveVisual[_loc6_].width / 2 + this.m_extraXSpacingBetweenObjects;
                                          this.m_impactVisual[_loc6_].visible = this.m_doesImpactMinion;
                                          this.m_impactVisual[_loc6_].x = m_minionAttackedVisual.x - this.m_impactVisual[_loc6_].width / 2;
                                          if(_loc11_ && _loc1_)
                                          {
                                             break;
                                          }
                                          this.m_impactVisual[_loc6_].y = m_minionAttackedVisual.y - this.m_impactVisual[_loc6_].height / 2 - m_minionAttackedVisual.m_minionSprite.height / 2;
                                          if(_loc10_ || Boolean(this))
                                          {
                                             §§push(_loc6_);
                                             if(_loc11_)
                                             {
                                                continue;
                                             }
                                             addr329:
                                             §§push(§§pop() * this.m_delayBetweenObjects);
                                             if(_loc10_ || _loc2_)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc7_ = §§pop();
                                             _loc3_ = new TimelineLite();
                                             if(!_loc11_)
                                             {
                                                _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc7_,{}));
                                                if(!(_loc11_ && _loc2_))
                                                {
                                                   _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc4_,{"alpha":1}));
                                                   if(_loc11_)
                                                   {
                                                   }
                                                   addr439:
                                                   _loc3_ = new TimelineLite();
                                                   addr404:
                                                   if(!_loc11_)
                                                   {
                                                      _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc5_,{"delay":_loc7_}));
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],this.m_finalHangTime,{}));
                                                         if(!_loc11_)
                                                         {
                                                            addr477:
                                                            _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc4_,{"alpha":0}));
                                                            if(!_loc11_)
                                                            {
                                                               addr491:
                                                               if(this.m_numOfShakes > 0)
                                                               {
                                                                  if(_loc10_ || Boolean(this))
                                                                  {
                                                                     addr502:
                                                                     §§push(0.2);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc8_ = §§pop();
                                                                     addr507:
                                                                     _loc3_ = new TimelineLite();
                                                                     if(!(_loc11_ && Boolean(_loc3_)))
                                                                     {
                                                                        _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],_loc7_,{}));
                                                                        _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_ / 2,{"transformAroundCenter":{"rotation":"-5"}}));
                                                                        §§push(0);
                                                                        if(_loc10_ || _loc1_)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           addr555:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                           }
                                                                           addr592:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() < this.m_numOfShakes)
                                                                           {
                                                                              _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_,{"transformAroundCenter":{"rotation":"10"}}));
                                                                              _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_,{"transformAroundCenter":{"rotation":"-10"}}));
                                                                              if(!_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc9_++;
                                                                              continue;
                                                                           }
                                                                           if(!_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc3_ = new TimelineLite();
                                                                           if(!_loc11_)
                                                                           {
                                                                              _loc3_.append(new TweenLite(this,0.05,{"onComplete":PlayMainSound2}));
                                                                              if(_loc10_ || _loc1_)
                                                                              {
                                                                                 addr638:
                                                                                 §§push(0);
                                                                                 if(!(_loc11_ && _loc2_))
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr649:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       addr650:
                                                                                       §§push(_loc3_);
                                                                                       §§push(§§findproperty(TweenLite));
                                                                                       §§push(this);
                                                                                       §§push(_loc8_);
                                                                                       if(_loc10_ || Boolean(this))
                                                                                       {
                                                                                          §§push(§§pop() * 2);
                                                                                       }
                                                                                       §§pop().append(new §§pop().TweenLite(§§pop(),§§pop(),{"onComplete":PlayMainSound2}));
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc9_++;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    addr679:
                                                                                    _loc3_ = new TimelineLite();
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],m_moveTime - 0.5,{"delay":_loc7_}));
                                                                                       if(!(_loc11_ && _loc2_))
                                                                                       {
                                                                                          addr706:
                                                                                          _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.1,{
                                                                                             "alpha":0.7,
                                                                                             "onComplete":PlayHitSound
                                                                                          }));
                                                                                          if(!(_loc11_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.1,{}));
                                                                                             if(!(_loc11_ && Boolean(this)))
                                                                                             {
                                                                                                addr744:
                                                                                                _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.2,{"alpha":0}));
                                                                                             }
                                                                                             _loc3_ = new TimelineLite();
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],m_moveTime - 0.5,{"delay":_loc7_}));
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             _loc3_.append(new TweenLite(this.m_impactVisual[_loc6_],0.6,{"y":"-5"}));
                                                                                             if(_loc10_ || _loc1_)
                                                                                             {
                                                                                                _loc6_++;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr744);
                                                                                    }
                                                                                    §§goto(addr706);
                                                                                    addr674:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < this.m_numOfShakes - 1)
                                                                                    {
                                                                                       §§goto(addr650);
                                                                                    }
                                                                                    §§goto(addr679);
                                                                                    §§goto(addr674);
                                                                                 }
                                                                              }
                                                                              §§goto(addr649);
                                                                           }
                                                                           §§goto(addr638);
                                                                        }
                                                                        _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_].getChildAt(0),_loc8_ / 2,{"transformAroundCenter":{"rotation":"5"}}));
                                                                        §§goto(addr616);
                                                                     }
                                                                     §§goto(addr555);
                                                                  }
                                                                  §§goto(addr507);
                                                               }
                                                               §§goto(addr679);
                                                            }
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                      §§goto(addr491);
                                                   }
                                                   §§goto(addr477);
                                                   addr404:
                                                }
                                                if(this.m_isNoRiseActive)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],this._riseSpeed,{"transformAroundCenter":{
                                                         "scaleX":this.m_masterScale * this.m_finishingScale,
                                                         "scaleY":this.m_masterScale * this.m_finishingScale
                                                      }}));
                                                      if(_loc10_ || _loc1_)
                                                      {
                                                         §§goto(addr404);
                                                      }
                                                   }
                                                   §§goto(addr404);
                                                }
                                                else
                                                {
                                                   _loc3_.append(new TweenLite(this.m_moveVisual[_loc6_],this._riseSpeed,{"transformAroundCenter":{
                                                      "y":_loc2_,
                                                      "scaleX":this.m_masterScale * this.m_finishingScale,
                                                      "scaleY":this.m_masterScale * this.m_finishingScale
                                                   }}));
                                                }
                                             }
                                             §§goto(addr439);
                                          }
                                          else
                                          {
                                             §§goto(addr845);
                                          }
                                       }
                                       else
                                       {
                                          this.m_moveVisual[_loc6_].scaleX = this.m_masterScale * -1 * this.m_startingScale;
                                       }
                                       this.m_moveVisual[_loc6_].scaleY = this.m_masterScale * this.m_startingScale;
                                       §§push(_loc6_);
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() % 2);
                                       if(_loc10_ || Boolean(_loc3_))
                                       {
                                          if(§§pop() == 1)
                                          {
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr329);
                                    }
                                    else
                                    {
                                       §§goto(addr812);
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              addr845:
                              return;
                           }
                           TweenLite.to(this,m_moveTime - 0.3,{"onComplete":this.ActivateFlash});
                           §§goto(addr837);
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr85);
               }
               §§goto(addr59);
               §§push(§§pop());
            }
         }
         §§goto(addr50);
      }
      
      private function ActivateFlash() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.FlashScreen();
         }
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
            if(_loc3_)
            {
               this.m_impactVisual[_loc1_].parent.removeChild(this.m_impactVisual[_loc1_]);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_++;
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
         }
      }
      
      public function set m_riseSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this._riseSpeed = param1;
            if(_loc2_ || _loc3_)
            {
               §§push(§§findproperty(m_moveTime));
               §§push(this.m_finalHangTime);
               if(_loc2_)
               {
                  §§push(this._riseSpeed);
                  if(_loc2_ || Boolean(param1))
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr66:
                        §§push(this.m_numberOfObjects * this.m_delayBetweenObjects);
                        if(_loc2_ || Boolean(param1))
                        {
                           §§goto(addr83);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     addr83:
                     §§goto(addr78);
                  }
                  addr78:
                  §§push(§§pop() + §§pop());
                  if(!_loc3_)
                  {
                     §§push(0.15);
                  }
                  §§pop().m_moveTime = §§pop();
                  return;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr83);
      }
   }
}
