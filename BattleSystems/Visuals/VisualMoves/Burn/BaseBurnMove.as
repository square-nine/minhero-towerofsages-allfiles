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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            this.m_spriteName = param1;
            this.m_impactSpriteName = "mv_yellowAndOrangeImpact";
            if(!_loc2_)
            {
               this.m_scaleDownEachObjectAmount = 0.2;
               if(_loc3_)
               {
                  addr50:
                  this.m_numberOfObjects = 3;
               }
               this.m_delayBetweenObjects = 0.1;
               m_moveTime = 1.2;
               m_mainSound = "battle_flamethrower";
               §§goto(addr62);
            }
            §§goto(addr50);
         }
         addr62:
         m_mainSoundVolume = 0.4;
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
               addr24:
               this.m_moveVisual = new Vector.<Sprite>(this.m_numberOfObjects);
            }
            var _loc5_:int = 0;
            while(_loc5_ < this.m_moveVisual.length)
            {
               this.m_moveVisual[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
               if(_loc6_ && Boolean(this))
               {
                  break;
               }
               this.m_moveVisual[_loc5_].visible = false;
               if(!_loc6_)
               {
                  param1.addChild(this.m_moveVisual[_loc5_]);
                  this.m_moveVisual[_loc5_].scaleX = this.m_masterScale;
                  if(_loc6_)
                  {
                     continue;
                  }
                  this.m_moveVisual[_loc5_].scaleY = this.m_masterScale;
                  this.m_moveVisual[_loc5_].alpha = 0;
               }
               _loc5_++;
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function PlayMove() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:TimelineLite = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && _loc3_))
         {
            super.PlayMove();
         }
         var _loc2_:Number = 4;
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || Boolean(_loc1_))
            {
               if(§§pop() < this.m_moveVisual.length)
               {
                  this.m_moveVisual[_loc3_].visible = true;
                  this.m_moveVisual[_loc3_].scaleX = (1 - _loc3_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
                  if(_loc7_ && Boolean(_loc2_))
                  {
                     continue;
                  }
                  this.m_moveVisual[_loc3_].scaleY = (1 - _loc3_ * this.m_scaleDownEachObjectAmount) * this.m_masterScale;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     this.m_moveVisual[_loc3_].x = m_minionAttackedVisual.x - this.m_moveVisual[_loc3_].width / 2;
                     this.m_moveVisual[_loc3_].y = m_minionAttackedVisual.y - this.m_moveVisual[_loc3_].height;
                     if(!(_loc6_ || Boolean(_loc1_)))
                     {
                        addr173:
                        §§push(0);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                        }
                        break;
                     }
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(2);
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop() % §§pop());
                           if(!(_loc7_ && Boolean(_loc1_)))
                           {
                              if(§§pop() != 1)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 addr142:
                                 this.m_moveVisual[_loc3_].x += this.m_moveVisual[_loc3_].width / _loc2_;
                                 continue;
                              }
                              addr496:
                              addr496:
                              §§push(Singleton.utility);
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 §§pop().m_soundController.PlaySound(m_mainSound,m_mainSoundVolume);
                                 §§goto(addr516);
                              }
                              §§goto(addr533);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    §§push(0.3);
                                    if(_loc6_ || Boolean(this))
                                    {
                                       addr217:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                       }
                                       addr217:
                                    }
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       _loc1_ = new TimelineLite();
                                       if(_loc6_ || Boolean(_loc1_))
                                       {
                                          _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],0.5,{"alpha":0.7}));
                                          if(_loc6_ || Boolean(_loc1_))
                                          {
                                             _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],0.2,{}));
                                             if(!(_loc7_ && Boolean(_loc2_)))
                                             {
                                                _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],0.5,{"alpha":0}));
                                                if(!_loc7_)
                                                {
                                                   addr287:
                                                   §§push(_loc3_ % 2);
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop() == 1)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr296:
                                                            §§push(_loc4_);
                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                            {
                                                               addr304:
                                                               §§push(this.m_moveVisual[_loc3_].width / _loc2_);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc7_ && Boolean(_loc3_)))
                                                               {
                                                                  addr322:
                                                                  §§push(§§pop());
                                                               }
                                                               _loc4_ = §§pop();
                                                               addr324:
                                                               _loc1_ = new TimelineLite();
                                                               if(!(_loc7_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
                                                                  if(!(_loc7_ && Boolean(_loc1_)))
                                                                  {
                                                                     _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
                                                                     if(_loc6_ || Boolean(_loc3_))
                                                                     {
                                                                        _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
                                                                        if(!_loc7_)
                                                                        {
                                                                           _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
                                                                           addr484:
                                                                           if(_loc7_)
                                                                           {
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              break loop0;
                                                                           }
                                                                           addr484:
                                                                        }
                                                                        §§goto(addr484);
                                                                     }
                                                                     addr483:
                                                                     _loc3_++;
                                                                  }
                                                               }
                                                               §§goto(addr484);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      else
                                                      {
                                                         _loc1_ = new TimelineLite();
                                                         if(!_loc7_)
                                                         {
                                                            _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
                                                            if(_loc6_)
                                                            {
                                                               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
                                                               if(_loc6_ || Boolean(_loc2_))
                                                               {
                                                                  addr453:
                                                                  _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"" + _loc4_}));
                                                                  if(_loc6_)
                                                                  {
                                                                  }
                                                                  §§goto(addr483);
                                                               }
                                                               _loc1_.append(new TweenLite(this.m_moveVisual[_loc3_],_loc5_,{"x":"-" + _loc4_}));
                                                               §§goto(addr483);
                                                            }
                                                         }
                                                         §§goto(addr453);
                                                      }
                                                   }
                                                }
                                                §§goto(addr304);
                                             }
                                             §§goto(addr296);
                                          }
                                       }
                                       §§goto(addr287);
                                       §§goto(addr217);
                                    }
                                    continue;
                                 }
                                 §§goto(addr217);
                              }
                              addr205:
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop() * 13);
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              §§goto(addr205);
                           }
                           §§goto(addr217);
                        }
                        addr195:
                     }
                     else
                     {
                        addr181:
                        _loc3_ = §§pop();
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§goto(addr484);
                        }
                     }
                     §§goto(addr496);
                     §§goto(addr181);
                  }
                  §§goto(addr142);
               }
               §§goto(addr173);
            }
            break;
         }
         while(§§pop() < this.m_moveVisual.length)
         {
            §§push(5);
            if(_loc7_)
            {
               continue;
            }
            §§goto(addr195);
            §§push(_loc3_);
         }
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            §§goto(addr496);
         }
         addr516:
         TweenLite.to(this,m_moveTime,{"onComplete":this.CleanupMove});
         if(_loc6_ || Boolean(_loc1_))
         {
            addr533:
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.BringInGroundDamageForMinion(m_minionAttacked,1);
         }
      }
      
      override protected function CleanupMove() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.CleanupMove();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_moveVisual.length)
         {
            this.m_moveVisual[_loc1_].parent.removeChild(this.m_moveVisual[_loc1_]);
            if(_loc3_)
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
}
