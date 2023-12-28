package BattleSystems.Visuals
{
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import States.MinionDexID;
   import States.MinionMoveID;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class MoveSelectorForPlayer extends GameObject
   {
       
      
      private var m_selectorBackground:Sprite;
      
      private var m_visualMoveObjects:Vector.<VisualMoveButtonObject>;
      
      private var m_energyBar:InterfaceBar;
      
      private var m_energyText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_desparationMove:VisualMoveButtonObject;
      
      private var m_outOfEnergyPopup:Sprite;
      
      private var m_isOutOfEnergy:Boolean;
      
      private var _collisionBackground:Sprite;
      
      public function MoveSelectorForPlayer()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super();
            if(_loc3_)
            {
               addr25:
               this.m_visualMoveObjects = new Vector.<VisualMoveButtonObject>();
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ < 12)
               {
                  continue;
               }
               this.m_desparationMove = new VisualMoveButtonObject();
               if(_loc3_ || Boolean(_loc1_))
               {
                  this.m_energyBar = new InterfaceBar("battleScreenMenus_fillBar_energyFill","battleScreenMenus_fillBar_energyCap");
                  this._collisionBackground = new Sprite();
                  if(!_loc2_)
                  {
                     addr76:
                     addChild(this._collisionBackground);
                     if(_loc3_)
                     {
                        this._collisionBackground.graphics.beginFill(5592405);
                        §§goto(addr94);
                     }
                     break;
                  }
                  §§goto(addr94);
               }
               §§goto(addr76);
            }
            this._collisionBackground.visible = false;
            addr94:
            this._collisionBackground.graphics.drawRect(-60,-70,240,220);
            if(_loc3_)
            {
               this._collisionBackground.graphics.endFill();
               break loop0;
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function CreateMoveSelectorForMinion(param1:OwnedMinion) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.m_currMinion = param1;
            this.m_selectorBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_movesModuleBackground");
         }
         this.m_selectorBackground.x = -63;
         if(!(_loc4_ && Boolean(this)))
         {
            this.m_selectorBackground.y = -50;
            addChild(this.m_selectorBackground);
            if(_loc3_)
            {
               addChild(this.m_energyBar);
               addr55:
               §§push(this.m_energyBar);
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(31);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().x = §§pop();
                     addr75:
                     §§push(this.m_energyBar);
                     §§push(31);
                  }
                  §§pop().y = §§pop();
                  if(_loc3_ || Boolean(this))
                  {
                     this.m_energyText = new TextField();
                     if(!_loc4_)
                     {
                        this.m_energyText.embedFonts = true;
                        this.m_energyText.defaultTextFormat = Singleton.staticData.m_onInterfaceBarTextFormat;
                        this.m_energyText.width = 70;
                        if(!_loc4_)
                        {
                           addr106:
                           this.m_energyText.text = "10/10";
                        }
                     }
                     this.m_energyText.x = 33;
                     this.m_energyText.y = 29;
                     addr114:
                     if(_loc3_)
                     {
                        this.m_energyText.selectable = false;
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addChild(this.m_energyText);
                        }
                     }
                     var _loc2_:int = 0;
                     while(_loc2_ < param1.m_activeMoves.length)
                     {
                        this.m_visualMoveObjects[_loc2_].CreateObject(this.m_currMinion,param1.m_activeMoves[_loc2_],_loc2_);
                        if(_loc3_ || Boolean(this))
                        {
                           continue;
                        }
                        addr194:
                        §§push(this.m_desparationMove);
                        if(!_loc4_)
                        {
                           addr198:
                           §§push(-135);
                           if(_loc3_ || Boolean(param1))
                           {
                              §§pop().x = §§pop();
                              addr209:
                              §§push(this.m_desparationMove);
                              §§push(-60);
                           }
                           §§pop().y = §§pop();
                           if(!_loc4_)
                           {
                              addChild(this.m_desparationMove);
                              if(_loc3_ || Boolean(param1))
                              {
                                 this.m_outOfEnergyPopup = Singleton.utility.m_spriteHandler.CreateSprite("outOfEnergyTip");
                                 this.m_outOfEnergyPopup.x = -147;
                                 this.m_outOfEnergyPopup.y = -124;
                                 addChild(this.m_outOfEnergyPopup);
                                 addr250:
                                 visible = false;
                                 this.UpdateEnergyBar();
                              }
                              return;
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr209);
                        addChild(this.m_visualMoveObjects[_loc2_]);
                        _loc2_++;
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(this.m_desparationMove);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().CreateObject(this.m_currMinion,MinionMoveID.desperation_t1,-99);
                        §§goto(addr194);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr106);
               }
               §§goto(addr75);
            }
            §§goto(addr114);
         }
         §§goto(addr55);
      }
      
      public function UpdateEnergyBar() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.m_currMinion == null)
            {
               if(_loc2_)
               {
                  return;
               }
               addr55:
               this.m_energyBar.SetBarSize(this.m_currMinion.m_currEnergy / this.m_currMinion.m_currEnergyStat);
            }
            else
            {
               this.m_energyText.text = "" + this.m_currMinion.m_currEnergy + "/" + this.m_currMinion.m_currEnergyStat;
               if(_loc2_)
               {
                  §§goto(addr55);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function CleanUp() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            removeChild(this.m_selectorBackground);
            if(!(_loc3_ && Boolean(this)))
            {
               removeChild(this.m_energyBar);
               if(_loc2_ || _loc1_)
               {
                  addr37:
                  removeChild(this.m_energyText);
               }
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= this.m_visualMoveObjects.length)
               {
                  this.m_desparationMove.Cleanup();
                  if(!(_loc3_ && _loc2_))
                  {
                     removeChild(this.m_desparationMove);
                     removeChild(this.m_outOfEnergyPopup);
                     break;
                  }
                  break;
               }
               if(this.m_visualMoveObjects[_loc1_].parent != null)
               {
                  this.m_visualMoveObjects[_loc1_].Cleanup();
                  removeChild(this.m_visualMoveObjects[_loc1_]);
                  if(_loc3_ && Boolean(this))
                  {
                     break;
                  }
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function BringIn(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         visible = true;
         this.alpha = 1;
         if(!_loc6_)
         {
            this.m_isOutOfEnergy = true;
            TweenMax.killTweensOf(this);
            if(param1)
            {
               TweenMax.to(this,0.1,{"colorMatrixFilter":{"saturation":1}});
            }
            else
            {
               TweenMax.to(this,0.1,{"colorMatrixFilter":{"saturation":0.1}});
            }
         }
         var _loc2_:* = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(this.m_currMinion);
               if(_loc5_ || param1)
               {
                  if(§§pop() >= §§pop().m_activeMoves.length)
                  {
                     if(!_loc6_)
                     {
                        if(this.m_isOutOfEnergy)
                        {
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§push(this.m_desparationMove);
                              if(_loc5_)
                              {
                                 §§pop().SetIsTheMoveActive();
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§push(this.m_desparationMove);
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       §§push(true);
                                       if(!_loc6_)
                                       {
                                          §§pop().visible = §§pop();
                                          this.m_outOfEnergyPopup.visible = true;
                                          addr148:
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.m_currMinion);
                                             addr174:
                                             loop5:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop().m_activeMoves.length)
                                                {
                                                   this.m_visualMoveObjects[_loc2_].x = -142;
                                                   this.m_visualMoveObjects[_loc2_].y = 69;
                                                   if(!_loc6_)
                                                   {
                                                      addr168:
                                                      while(true)
                                                      {
                                                         _loc2_++;
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr168:
                                                   }
                                                }
                                                var _loc3_:Array = new Array(-37,41,117,-37,41,117,-37,41,117,-37,41,117);
                                                var _loc4_:Array = new Array(-21,-45,-21,-21 + 70,-45 + 118,-21 + 70,-21 - 70 * 1,-45 - 70 * 1,-21 - 70 * 1,-21 - 70 * 2,-45 - 70 * 2,-21 - 70 * 2);
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   §§push(0);
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      _loc2_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc6_ && Boolean(_loc3_)))
                                                         {
                                                            if(§§pop() >= this.m_currMinion.m_activeMoves.length)
                                                            {
                                                               §§push(param1);
                                                               if(!(_loc6_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc5_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc5_ || Boolean(_loc2_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop();
                                                                              §§push(Singleton.dynamicData);
                                                                              §§push(TutorialTypes.TUTORIAL_MOVE_SELECT);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr362:
                                                                                 if(!§§pop().HasTutorialBeenSeen(§§pop()))
                                                                                 {
                                                                                    §§push(Singleton.utility);
                                                                                    if(_loc5_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§push(§§pop().m_screenControllers);
                                                                                       if(!(_loc6_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop().m_battleScreen);
                                                                                          if(_loc5_ || Boolean(this))
                                                                                          {
                                                                                             §§push(§§pop().m_battleScreenVisualController);
                                                                                             if(!(_loc6_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§pop().m_moveSelectTutorial.visible = true;
                                                                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   addr411:
                                                                                                   Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial.alpha = 0;
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr416:
                                                                                                      TweenMax.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial,0.5,{
                                                                                                         "delay":0.5,
                                                                                                         "alpha":1
                                                                                                      });
                                                                                                      if(_loc5_ || Boolean(this))
                                                                                                      {
                                                                                                         addr437:
                                                                                                         §§push(Singleton.dynamicData);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop().m_currKeysOnFloor);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr444:
                                                                                                               §§push(1);
                                                                                                               if(_loc5_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr456:
                                                                                                                        §§push(param1);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr570:
                                                                                                                                 §§push(Singleton.dynamicData);
                                                                                                                                 §§push(TutorialTypes.TUTORIAL_ENERGY);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop().HasTutorialBeenSeen(§§pop()));
                                                                                                                                 }
                                                                                                                                 if(!§§pop().HasTutorialBeenSeen(§§pop()))
                                                                                                                                 {
                                                                                                                                    addr577:
                                                                                                                                    Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_TYPE_EFFECTIVENESS,true);
                                                                                                                                    addr578:
                                                                                                                                    TweenLite.to(this,0.8,{
                                                                                                                                       "onComplete":Singleton.utility.m_tutorialHandler.BringIn_TypeEffectiveness,
                                                                                                                                       "onCompleteParams":[null]
                                                                                                                                    });
                                                                                                                                    addr591:
                                                                                                                                    return;
                                                                                                                                    addr576:
                                                                                                                                    addr574:
                                                                                                                                 }
                                                                                                                                 §§goto(addr591);
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr473:
                                                                                                                                 §§push(Singleton.dynamicData);
                                                                                                                                 §§push(TutorialTypes.TUTORIAL_ENERGY);
                                                                                                                                 if(_loc5_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(true);
                                                                                                                                    if(_loc5_ || Boolean(_loc2_))
                                                                                                                                    {
                                                                                                                                       §§pop().SetHasTutorialBeenSeen(§§pop(),§§pop());
                                                                                                                                       if(_loc5_ || Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          TweenLite.to(this,0.8,{
                                                                                                                                             "onComplete":Singleton.utility.m_tutorialHandler.BringIn_EnergyTut,
                                                                                                                                             "onCompleteParams":[null]
                                                                                                                                          });
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr515:
                                                                                                                                          }
                                                                                                                                          §§goto(addr591);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr550:
                                                                                                                                          §§push(Singleton.dynamicData);
                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(TutorialTypes.TUTORIAL_TYPE_EFFECTIVENESS);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr570);
                                                                                                                                             }
                                                                                                                                             §§goto(addr576);
                                                                                                                                          }
                                                                                                                                          §§goto(addr574);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr577);
                                                                                                                              }
                                                                                                                              §§goto(addr515);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr531:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr532:
                                                                                                                                 §§pop();
                                                                                                                                 addr537:
                                                                                                                                 §§push(this.m_currMinion.m_baseMinion.m_minionDexID == MinionDexID.DEX_ID_fire_pig_1);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr570);
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr550);
                                                                                                                                 }
                                                                                                                                 §§goto(addr578);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr577);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr570);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(Singleton.dynamicData.m_currKeysOnFloor);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr537);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr570);
                                                                                                   }
                                                                                                   §§goto(addr473);
                                                                                                }
                                                                                                §§goto(addr550);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr411);
                                                                                 }
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr570);
                                                                           }
                                                                           §§goto(addr532);
                                                                        }
                                                                        §§goto(addr362);
                                                                     }
                                                                     §§goto(addr531);
                                                                  }
                                                               }
                                                               §§goto(addr456);
                                                            }
                                                            else
                                                            {
                                                               TweenMax.to(this.m_visualMoveObjects[_loc2_],0.3 + _loc2_ * 0.1,{
                                                                  "delay":_loc2_ * 0.1,
                                                                  "x":_loc3_[_loc2_],
                                                                  "y":_loc4_[_loc2_]
                                                               });
                                                               this.m_visualMoveObjects[_loc2_].AnimateIn(0.3 + _loc2_ * 0.2);
                                                               if(_loc6_ && Boolean(_loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               _loc2_++;
                                                               if(_loc5_ || Boolean(this))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§push(2);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr531);
                                                         §§push(§§pop() == §§pop());
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      §§goto(addr532);
                                                   }
                                                   §§goto(addr444);
                                                }
                                                §§goto(addr416);
                                             }
                                          }
                                          addr172:
                                       }
                                       §§goto(addr168);
                                    }
                                    else
                                    {
                                       addr135:
                                       §§push(false);
                                    }
                                    §§pop().visible = §§pop();
                                    this.m_outOfEnergyPopup.visible = false;
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr148);
                                    }
                                 }
                                 §§goto(addr168);
                              }
                           }
                           addr152:
                           §§goto(addr171);
                        }
                        else
                        {
                           §§push(this.m_desparationMove);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr152);
                  }
                  else
                  {
                     if(!this.m_visualMoveObjects[_loc2_].SetIsTheMoveActive())
                     {
                        continue;
                     }
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        this.m_isOutOfEnergy = false;
                        if(!(_loc6_ && Boolean(this)))
                        {
                           continue;
                        }
                        §§goto(addr168);
                     }
                     else
                     {
                        §§goto(addr148);
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr174);
            }
            break;
         }
         _loc2_ = §§pop();
         §§goto(addr152);
      }
      
      public function ExitOut() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_currMinion.m_activeMoves.length)
         {
            TweenMax.to(this.m_visualMoveObjects[_loc1_],0.3 + _loc1_ * 0.1,{
               "delay":_loc1_ * 0.1,
               "x":-142,
               "y":69
            });
            this.m_visualMoveObjects[_loc1_].AnimateOut(0.3 + _loc1_ * 0.2);
            _loc1_++;
         }
         if(!_loc2_)
         {
            if(this.m_currMinion.m_activeMoves.length > 5)
            {
               if(!_loc2_)
               {
                  TweenMax.to(this,0.3,{
                     "delay":5 * 0.2,
                     "onComplete":this.FinishExitOut,
                     "alpha":0
                  });
                  if(!_loc2_)
                  {
                     addr116:
                     TweenMax.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial,0.5,{"alpha":0});
                     addr88:
                  }
                  §§goto(addr116);
               }
               return;
            }
            §§push(TweenMax);
            §§push(this);
            §§push(0.3);
            §§push("delay");
            §§push(this.m_currMinion.m_activeMoves.length - 1);
            if(_loc3_)
            {
               §§push(§§pop() * 0.2);
            }
            §§pop().to(§§pop(),§§pop(),null);
            §§goto(addr116);
         }
         §§goto(addr88);
      }
      
      public function FinishExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.visible = false;
            if(!(_loc2_ && _loc2_))
            {
               addr32:
               this.alpha = 1;
               if(_loc1_)
               {
                  Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial.visible = false;
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            super.UpdateFullFrames();
         }
         var _loc1_:int = 0;
         do
         {
            if(_loc1_ >= this.m_visualMoveObjects.length)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  if(this.m_isOutOfEnergy)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            else
            {
               if(!this.m_visualMoveObjects[_loc1_].m_isInUse)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  this.m_visualMoveObjects[_loc1_].UpdateFullFrames();
                  if(_loc3_)
                  {
                     continue;
                  }
               }
            }
            §§goto(addr84);
         }
         while(_loc1_++, !(_loc2_ && _loc2_));
         
         this.m_desparationMove.UpdateFullFrames();
         addr84:
      }
      
      public function get m_collisionBackground() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 6;
         do
         {
            if(_loc1_ >= this.m_visualMoveObjects.length)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  if(this.m_isOutOfEnergy)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr79);
                     }
                     break;
                  }
                  break;
               }
               break;
            }
            if(this.m_visualMoveObjects[_loc1_].m_isInUse)
            {
               if(_loc3_ || _loc3_)
               {
                  return this;
               }
               addr79:
            }
            continue;
            return this;
         }
         while(_loc1_++, _loc3_ || Boolean(this));
         
         return this._collisionBackground;
      }
      
      public function set m_collisionBackground(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this._collisionBackground = param1;
         }
      }
   }
}
