package BattleSystems.Other
{
   import BattleSystems.WinScreen.BattleScreenTalentTreeWrapper;
   import BattleSystems.WinScreen.EvolvingPopup;
   import BattleSystems.WinScreen.LeveledUpBattleScreenPiece;
   import Minions.OwnedMinion;
   import States.GameState;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseBattleFinishScreen
   {
       
      
      protected var m_previousMinionLevels:Vector.<int>;
      
      public var m_moveQueue:Vector.<MoveQueueObject>;
      
      public var m_minionForQueue:Vector.<OwnedMinion>;
      
      public var m_minionLevelForQueue:Vector.<int>;
      
      protected var m_currentSpotInQueue:int;
      
      protected var m_leveledUpBattleScreenPiece:LeveledUpBattleScreenPiece;
      
      protected var m_battleScreenTalentTreeWrapper:BattleScreenTalentTreeWrapper;
      
      protected var m_evolvingPopup:EvolvingPopup;
      
      protected var m_isTalentTreeIn:Boolean;
      
      protected var m_isInEvolutionPopup:Boolean;
      
      public function BaseBattleFinishScreen()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               this.m_leveledUpBattleScreenPiece = new LeveledUpBattleScreenPiece();
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr65);
            }
            this.m_battleScreenTalentTreeWrapper = new BattleScreenTalentTreeWrapper();
            if(_loc1_ || Boolean(this))
            {
            }
            §§goto(addr65);
         }
         addr65:
         this.m_evolvingPopup = new EvolvingPopup();
      }
      
      public function LoadSprites(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.m_leveledUpBattleScreenPiece.LoadSprites();
            param1.addChild(this.m_leveledUpBattleScreenPiece);
            §§push(this.m_battleScreenTalentTreeWrapper);
            if(!_loc3_)
            {
               §§pop().LoadSprites();
               addr39:
               §§push(this.m_battleScreenTalentTreeWrapper);
               if(_loc2_)
               {
                  §§push(177);
                  if(_loc2_)
                  {
                     §§pop().x = §§pop();
                     addr56:
                     §§push(this.m_battleScreenTalentTreeWrapper);
                     §§push(30);
                  }
                  §§pop().y = §§pop();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     param1.addChild(this.m_battleScreenTalentTreeWrapper);
                  }
                  this.m_evolvingPopup.LoadSprites();
                  param1.addChild(this.m_evolvingPopup);
                  return;
               }
            }
            §§goto(addr56);
         }
         §§goto(addr39);
      }
      
      public function DeActivate() : void
      {
      }
      
      public function BringInScreen(param1:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:OwnedMinion = null;
         var _loc4_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(!_loc7_)
         {
            this.m_isTalentTreeIn = false;
            if(_loc8_ || Boolean(this))
            {
               this.m_previousMinionLevels = new Vector.<int>(5);
               if(!_loc7_)
               {
                  this.m_moveQueue = new Vector.<MoveQueueObject>();
                  if(_loc8_)
                  {
                     addr52:
                     this.m_minionForQueue = new Vector.<OwnedMinion>();
                     if(_loc8_)
                     {
                        addr60:
                        this.m_minionLevelForQueue = new Vector.<int>();
                     }
                  }
               }
               var _loc2_:* = 0;
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     §§push(5);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(param1)
                           {
                              if(_loc8_ || Boolean(_loc3_))
                              {
                                 this.AddItemToQueue(1.8);
                                 addr139:
                                 Singleton.utility.AddExpToMinions(param1);
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 loop17:
                                 while(true)
                                 {
                                    §§push(5);
                                    addr371:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          §§push(Singleton.dynamicData);
                                          loop1:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr154:
                                             while(true)
                                             {
                                                §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                addr155:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   §§push(_loc3_ != null);
                                                   §§push(_loc3_ != null);
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(_loc8_ || Boolean(this))
                                                         {
                                                            §§push(_loc3_.m_currLevel);
                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(59);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  if(_loc8_ || Boolean(_loc3_))
                                                                  {
                                                                     addr200:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           this.AddItemToQueue(0.3,this.BringInExpBar,_loc3_);
                                                                           if(_loc8_)
                                                                           {
                                                                              addr211:
                                                                              _loc4_ = false;
                                                                              §§push(0);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr216:
                                                                                 _loc5_ = §§pop();
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.m_currLevel);
                                                                                          addr340:
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - this.m_previousMinionLevels[_loc2_]);
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   §§push(this.m_previousMinionLevels[_loc2_] + _loc5_);
                                                                                                   if(!(_loc8_ || Boolean(_loc3_)))
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   addr235:
                                                                                                   _loc6_ = §§pop();
                                                                                                   this.AddItemToQueue(0.6,this.FillExpBarWithAnimation,_loc3_,-99,this.SetExpBarWithAnimation);
                                                                                                   this.AddItemToQueue(3,this.BringInLeveledStatsMenu,_loc3_,_loc6_,this.ExitOutLeveledStatsMenu);
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc3_.IsTalentPointEarnedOnLevel(_loc6_ + 1));
                                                                                                      if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr274:
                                                                                                            this.AddItemToQueue(-99,this.BringInTalentPointScreen,_loc3_,_loc6_);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr283:
                                                                                                            §§push(_loc4_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr294:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              if(!(_loc8_ || Boolean(this)))
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.m_baseMinion.m_evolutionLevel);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                 if(_loc7_ && Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() >= §§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr235);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr293:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              addr346:
                                                                                                                              this.AddItemToQueue(0.7,this.FillExpBarToCurrentExpPercentage,_loc3_,-99,this.SetExpBarToCurrentExpPercentage);
                                                                                                                              break loop5;
                                                                                                                           }
                                                                                                                           this.AddItemToQueue(-99,this.BringInEvolutionScreen,_loc3_,_loc6_);
                                                                                                                           _loc4_ = true;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.AddItemToQueue(0.15,this.ResetExpBar,_loc3_);
                                                                                                                              addr334:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_++;
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    break loop5;
                                                                                                                                 }
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              §§goto(addr274);
                                                                                                                           }
                                                                                                                           addr328:
                                                                                                                        }
                                                                                                                        §§goto(addr328);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr292:
                                                                                                               }
                                                                                                               §§goto(addr293);
                                                                                                            }
                                                                                                            addr283:
                                                                                                         }
                                                                                                         §§goto(addr328);
                                                                                                      }
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                   §§goto(addr294);
                                                                                                }
                                                                                                §§goto(addr346);
                                                                                             }
                                                                                             this.AddItemToQueue(0.5,this.CloseOutExpBar,_loc3_);
                                                                                             addr368:
                                                                                             addr369:
                                                                                             _loc2_++;
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr337:
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§goto(addr211);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                continue loop1;
                                             }
                                          }
                                          addr153:
                                       }
                                       this.AddItemToQueue(1,this.FadeOutMusic);
                                       if(!(_loc7_ && param1))
                                       {
                                          addr384:
                                          this.m_currentSpotInQueue = 0;
                                          addr387:
                                          this.RunQueuedMoves();
                                       }
                                       §§goto(addr389);
                                    }
                                 }
                              }
                              §§goto(addr387);
                           }
                           else
                           {
                              this.AddItemToQueue(0.3);
                           }
                           §§goto(addr139);
                        }
                        else
                        {
                           §§push(Singleton.dynamicData);
                           if(_loc8_ || param1)
                           {
                              §§push(_loc2_);
                              if(_loc8_)
                              {
                                 §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() != null)
                                    {
                                       this.m_previousMinionLevels[_loc2_] = Singleton.dynamicData.GetOwnedMinionAt(_loc2_).m_currLevel;
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_++;
                                    if(_loc8_ || param1)
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr155);
                                 }
                                 addr389:
                                 return;
                              }
                              §§goto(addr154);
                           }
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr371);
                  }
                  break;
               }
               _loc2_ = §§pop();
               if(_loc8_)
               {
                  §§goto(addr369);
               }
               §§goto(addr384);
            }
            §§goto(addr52);
         }
         §§goto(addr60);
      }
      
      protected function AddItemToQueue(param1:Number, param2:Function = null, param3:OwnedMinion = null, param4:int = -99, param5:Function = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:MoveQueueObject;
         (_loc6_ = new MoveQueueObject(param1,param2)).m_skipFunction = param5;
         if(!_loc7_)
         {
            this.m_moveQueue.push(_loc6_);
            if(!_loc7_)
            {
               §§goto(addr38);
            }
            §§goto(addr49);
         }
         addr38:
         this.m_minionForQueue.push(param3);
         if(!(_loc7_ && Boolean(param3)))
         {
            addr49:
            this.m_minionLevelForQueue.push(param4);
         }
      }
      
      protected function FadeOutMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            Singleton.utility.m_soundController.FadeCurrentMusic(0,1.5);
         }
      }
      
      protected function GotoTopDownScreen() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
         }
      }
      
      protected function RunQueuedMoves() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.m_currentSpotInQueue == this.m_moveQueue.length)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr29:
                  this.GotoTopDownScreen();
                  if(!_loc3_)
                  {
                     return;
                  }
                  addr119:
                  var _loc1_:*;
                  §§push((_loc1_ = this).m_currentSpotInQueue);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.m_currentSpotInQueue = _loc2_;
                  }
                  if(this.m_moveQueue[this.m_currentSpotInQueue - 1].m_timeQueueLasts != -99)
                  {
                     addr155:
                     TweenLite.to(this,this.m_moveQueue[this.m_currentSpotInQueue - 1].m_timeQueueLasts,{"onComplete":this.RunQueuedMoves});
                  }
                  addr103:
               }
               return;
            }
            if(this.m_moveQueue[this.m_currentSpotInQueue].m_function != null)
            {
               if(this.m_minionForQueue[this.m_currentSpotInQueue] == null)
               {
                  this.m_moveQueue[this.m_currentSpotInQueue].m_function.call();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr119);
                  }
                  §§goto(addr155);
               }
               else if(this.m_minionLevelForQueue[this.m_currentSpotInQueue] != -99)
               {
                  this.m_moveQueue[this.m_currentSpotInQueue].m_function.call(null,this.m_minionForQueue[this.m_currentSpotInQueue],this.m_minionLevelForQueue[this.m_currentSpotInQueue]);
                  if(_loc4_ || _loc2_)
                  {
                     §§goto(addr103);
                  }
               }
               else
               {
                  this.m_moveQueue[this.m_currentSpotInQueue].m_function.call(null,this.m_minionForQueue[this.m_currentSpotInQueue]);
                  if(_loc4_)
                  {
                     §§goto(addr119);
                  }
               }
               §§goto(addr119);
            }
            §§goto(addr119);
         }
         §§goto(addr29);
      }
      
      protected function BringInExpBar(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.TurnOnExpBarForMinion(param1);
         }
      }
      
      protected function CloseOutExpBar(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.TurnOffExpBarForMinion(param1);
         }
      }
      
      protected function FillExpBarToCurrentExpPercentage(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.AnimateExpBarForMinion(param1,param1.m_currExpPercentageToNextLevel);
         }
      }
      
      protected function FillExpBarWithAnimation(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.AnimateExpBarForMinion(param1,1);
         }
      }
      
      protected function SetExpBarToCurrentExpPercentage(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(param1)))
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetExpBarForMinion(param1,param1.m_currExpPercentageToNextLevel);
         }
      }
      
      protected function SetExpBarWithAnimation(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetExpBarForMinion(param1,1);
         }
      }
      
      protected function ResetExpBar(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetExpBarForMinion(param1,0);
         }
      }
      
      protected function BringInLeveledStatsMenu(param1:OwnedMinion, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param1))
         {
            this.m_leveledUpBattleScreenPiece.BringInForMinion(param1,param2);
         }
      }
      
      protected function ExitOutLeveledStatsMenu(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.m_leveledUpBattleScreenPiece.ExitOutForMinion();
         }
      }
      
      protected function BringInTalentPointScreen(param1:OwnedMinion, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1.m_availableTalentPoints < 1)
            {
               if(_loc3_)
               {
                  TweenLite.to(this,0.1,{"onComplete":this.RunQueuedMoves});
                  if(!(_loc3_ || Boolean(this)))
                  {
                     §§goto(addr58);
                  }
               }
               return;
            }
            addr53:
            this.m_isTalentTreeIn = true;
            if(_loc3_)
            {
               §§goto(addr58);
            }
            addr58:
            this.m_battleScreenTalentTreeWrapper.BringIn(param1);
            return;
         }
         §§goto(addr53);
      }
      
      public function ExitTalentPointScreen() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.m_isTalentTreeIn = false;
            if(_loc2_ || _loc1_)
            {
               this.RunQueuedMoves();
            }
         }
      }
      
      protected function BringInEvolutionScreen(param1:OwnedMinion, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.m_isInEvolutionPopup = true;
            if(_loc3_ || Boolean(this))
            {
               this.m_evolvingPopup.BringInForMinion(param1);
            }
         }
      }
      
      public function ExitEvolutionScreen() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_isInEvolutionPopup = false;
            if(_loc1_ || _loc1_)
            {
               this.RunQueuedMoves();
            }
         }
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.m_isInEvolutionPopup);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  addr26:
                  this.m_evolvingPopup.UpdateFullFrames();
               }
               else
               {
                  §§push(this.m_isTalentTreeIn);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        this.m_battleScreenTalentTreeWrapper.UpdateFullFrames();
                     }
                     else
                     {
                        §§push(Input.kp("ESC"));
                        if(!(_loc1_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 TweenLite.killTweensOf(this);
                                 this.GotoTopDownScreen();
                                 return;
                              }
                              addr70:
                              if(this.m_moveQueue[this.m_currentSpotInQueue - 1].m_skipFunction != null)
                              {
                                 if(this.m_minionForQueue[this.m_currentSpotInQueue - 1] != null)
                                 {
                                    this.m_moveQueue[this.m_currentSpotInQueue - 1].m_skipFunction.call(null,this.m_minionForQueue[this.m_currentSpotInQueue - 1]);
                                 }
                                 else
                                 {
                                    this.m_moveQueue[this.m_currentSpotInQueue - 1].m_skipFunction.call();
                                 }
                              }
                              TweenLite.killTweensOf(this);
                              this.RunQueuedMoves();
                           }
                           else
                           {
                              addr69:
                              if(Input.kp("ENTER","SPACE"))
                              {
                                 §§goto(addr70);
                              }
                           }
                        }
                        §§goto(addr69);
                     }
                  }
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr26);
      }
   }
}
