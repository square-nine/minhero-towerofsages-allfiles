package TopDown.Menus.MinionDetails
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import SharedObjects.TutorialPopup;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import TopDown.Menus.MinionOverviewObject;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionDetailsScreen extends GameObject
   {
       
      
      protected var m_currMinion:OwnedMinion;
      
      protected var m_currMinionOverviewObject:MinionOverviewObject;
      
      protected var m_expbarBackground:Sprite;
      
      protected var m_expbar:InterfaceBar;
      
      protected var m_returnButton:TCButton;
      
      protected var m_upArrowButton:TCButton;
      
      protected var m_downArrowButton:TCButton;
      
      protected var m_minionStats:MinionDetailsMinionStatsObject;
      
      protected var m_minionMoves:MinionDetailsMinionMovesObject;
      
      protected var m_minionGems:MinionDetailsMinionGemsObject;
      
      protected var m_statsButton:TCButton;
      
      protected var m_movesButton:TCButton;
      
      protected var m_gemsButton:TCButton;
      
      protected var m_gemPopup:TutorialPopup;
      
      public function MinionDetailsScreen()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_expbarBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionXP_background");
         this.m_expbarBackground.x = 18;
         this.m_expbarBackground.y = 92;
         addChild(this.m_expbarBackground);
         this.m_expbar = new InterfaceBar("menus_minionXP_fill");
         if(_loc2_ || Boolean(this))
         {
            §§push(this.m_expbar);
            if(!_loc3_)
            {
               §§push(54);
               if(!(_loc3_ && _loc2_))
               {
                  §§pop().x = §§pop();
                  addr59:
                  §§push(this.m_expbar);
                  §§push(99);
               }
               §§pop().y = §§pop();
               addChild(this.m_expbar);
               this.m_minionStats = new MinionDetailsMinionStatsObject();
               if(_loc2_ || _loc2_)
               {
                  §§push(this.m_minionStats);
                  if(_loc2_ || _loc2_)
                  {
                     §§pop().LoadSprites();
                     if(!_loc3_)
                     {
                        §§push(this.m_minionStats);
                        if(!_loc3_)
                        {
                           addr92:
                           §§push(15);
                           if(!_loc3_)
                           {
                              §§pop().x = §§pop();
                              if(!_loc3_)
                              {
                                 addr101:
                                 this.m_minionStats.y = 113;
                                 if(_loc2_)
                                 {
                                    addChild(this.m_minionStats);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       this.m_minionMoves = new MinionDetailsMinionMovesObject();
                                       addr119:
                                       §§push(this.m_minionMoves);
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§pop().LoadSprites();
                                          §§push(this.m_minionMoves);
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr138:
                                             §§push(15);
                                             if(_loc2_)
                                             {
                                                §§pop().x = §§pop();
                                                addr144:
                                                §§push(this.m_minionMoves);
                                                §§push(113);
                                             }
                                             §§pop().y = §§pop();
                                             addChild(this.m_minionMoves);
                                             if(_loc2_ || _loc1_)
                                             {
                                                this.m_minionGems = new MinionDetailsMinionGemsObject();
                                                §§push(this.m_minionGems);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§pop().LoadSprites();
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.m_minionGems);
                                                      if(!_loc3_)
                                                      {
                                                         addr177:
                                                         §§push(15);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr188:
                                                            §§push(this.m_minionGems);
                                                            §§push(113);
                                                         }
                                                         §§pop().y = §§pop();
                                                         addChild(this.m_minionGems);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            addr201:
                                                            this.m_returnButton = new TCButton(this.ReturnButtonPress,"menus_returnButton");
                                                            addr208:
                                                            §§push(this.m_returnButton);
                                                            if(_loc2_)
                                                            {
                                                               §§push(2);
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     addr231:
                                                                     this.m_returnButton.y = 356;
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        addChild(this.m_returnButton);
                                                                     }
                                                                  }
                                                                  var _loc1_:Sprite = new Sprite();
                                                                  if(!_loc3_)
                                                                  {
                                                                     _loc1_.graphics.beginFill(16711680);
                                                                     _loc1_.graphics.drawRect(0,0,106,32);
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        _loc1_.graphics.endFill();
                                                                        if(_loc2_ || Boolean(_loc1_))
                                                                        {
                                                                           this.m_statsButton = new TCButton(this.StatsButtonPress);
                                                                           if(_loc2_ || Boolean(_loc1_))
                                                                           {
                                                                              §§push(this.m_statsButton);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§pop().CreateButton(_loc1_);
                                                                                 §§push(this.m_statsButton);
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    addr317:
                                                                                    §§push(23);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr321:
                                                                                       §§push(this.m_statsButton);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr326:
                                                                                          §§pop().y = 120;
                                                                                          §§push(this.m_statsButton);
                                                                                          addr325:
                                                                                       }
                                                                                       §§pop().visible = false;
                                                                                       addr331:
                                                                                       addChild(this.m_statsButton);
                                                                                       _loc1_ = new Sprite();
                                                                                       _loc1_.graphics.beginFill(16776960);
                                                                                       _loc1_.graphics.drawRect(0,0,105,32);
                                                                                       _loc1_.graphics.endFill();
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          this.m_movesButton = new TCButton(this.MovesButtonPress);
                                                                                          §§push(this.m_movesButton);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§pop().CreateButton(_loc1_);
                                                                                             if(_loc2_ || Boolean(_loc1_))
                                                                                             {
                                                                                                §§push(this.m_movesButton);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(130);
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(this.m_movesButton);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr404:
                                                                                                            §§pop().y = 120;
                                                                                                            addr407:
                                                                                                            this.m_movesButton.visible = false;
                                                                                                            addr405:
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                            }
                                                                                                            _loc1_ = new Sprite();
                                                                                                            _loc1_.graphics.beginFill(65280);
                                                                                                            _loc1_.graphics.drawRect(0,0,104,32);
                                                                                                            _loc1_.graphics.endFill();
                                                                                                            this.m_gemsButton = new TCButton(this.GemsButtonPress);
                                                                                                            §§push(this.m_gemsButton);
                                                                                                            if(_loc2_ || Boolean(this))
                                                                                                            {
                                                                                                               §§pop().CreateButton(_loc1_);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(this.m_gemsButton);
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(236);
                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.m_gemsButton);
                                                                                                                           if(!(_loc3_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§goto(addr482);
                                                                                                                           }
                                                                                                                           §§goto(addr492);
                                                                                                                        }
                                                                                                                        §§goto(addr605);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr482);
                                                                                                               }
                                                                                                               §§goto(addr527);
                                                                                                            }
                                                                                                            addr482:
                                                                                                            §§pop().y = 120;
                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr492:
                                                                                                               this.m_gemsButton.visible = false;
                                                                                                               addChild(this.m_gemsButton);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  this.m_upArrowButton = new TCButton(this.UpArrowPress);
                                                                                                                  §§push(this.m_upArrowButton);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§pop().CreateButtonWithStrings("menus_compare_arrow");
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§push(this.m_upArrowButton);
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(171);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr527:
                                                                                                                                 this.m_upArrowButton.y = -15 - 7;
                                                                                                                                 addChild(this.m_upArrowButton);
                                                                                                                                 this.m_downArrowButton = new TCButton(this.DownArrowPress);
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    addr542:
                                                                                                                                    §§push(this.m_downArrowButton);
                                                                                                                                    if(_loc2_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       §§pop().CreateButtonWithStrings("menus_compare_arrow");
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.m_downArrowButton);
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(171);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop() + this.m_downArrowButton.width;
                                                                                                                                                addr567:
                                                                                                                                                §§push(this.m_downArrowButton);
                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr576:
                                                                                                                                                   §§push(432);
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop() + 7;
                                                                                                                                                      addr589:
                                                                                                                                                      §§push(this.m_downArrowButton);
                                                                                                                                                      §§push(180);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr589);
                                                                                                                                             }
                                                                                                                                             §§pop().rotation = §§pop();
                                                                                                                                             addChild(this.m_downArrowButton);
                                                                                                                                             addr595:
                                                                                                                                             this.m_gemPopup = new TutorialPopup();
                                                                                                                                             §§push(this.m_gemPopup);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().Create("tutorial_firstGemMenuPopup");
                                                                                                                                                addr605:
                                                                                                                                                §§push(this.m_gemPopup);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(256);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      §§goto(addr640);
                                                                                                                                                   }
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addChild(this.m_gemPopup);
                                                                                                                                                   }
                                                                                                                                                   this.visible = false;
                                                                                                                                                   §§goto(addr640);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr624);
                                                                                                                                          }
                                                                                                                                          §§goto(addr576);
                                                                                                                                       }
                                                                                                                                       §§goto(addr595);
                                                                                                                                    }
                                                                                                                                    §§goto(addr589);
                                                                                                                                 }
                                                                                                                                 §§goto(addr595);
                                                                                                                                 addr526:
                                                                                                                              }
                                                                                                                              §§goto(addr542);
                                                                                                                           }
                                                                                                                           §§goto(addr527);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr640);
                                                                                                                  }
                                                                                                                  §§goto(addr526);
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            addr640:
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr624:
                                                                                                               §§push(this.m_gemPopup);
                                                                                                               §§push(62);
                                                                                                            }
                                                                                                            return;
                                                                                                            addr403:
                                                                                                         }
                                                                                                         §§goto(addr407);
                                                                                                      }
                                                                                                      addChild(this.m_movesButton);
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   §§goto(addr404);
                                                                                                }
                                                                                                §§goto(addr403);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                       §§goto(addr405);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 §§goto(addr325);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr144);
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr92);
               }
               §§goto(addr101);
            }
            §§goto(addr59);
         }
         §§goto(addr188);
      }
      
      public function SnapIn(param1:OwnedMinion) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.m_currMinion = param1;
         if(!(_loc3_ && Boolean(param1)))
         {
            this.m_expbar.SetBarSize(param1.m_currExpPercentageToNextLevel);
            this.SetArrowVisiblity();
            if(_loc4_ || Boolean(param1))
            {
               addr38:
               §§push(this.m_minionGems);
               if(!_loc3_)
               {
                  §§pop().BringOut();
                  if(!_loc3_)
                  {
                     §§push(this.m_minionMoves);
                     if(!_loc3_)
                     {
                        §§pop().BringOut();
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(this.m_minionStats);
                           if(_loc4_ || _loc2_)
                           {
                              §§pop().BringOut();
                              addr83:
                              if(_loc4_)
                              {
                                 addr69:
                                 §§push(this.m_minionStats);
                              }
                              §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState);
                              if(_loc4_)
                              {
                                 var _loc2_:* = §§pop();
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES);
                                    if(_loc4_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(0);
                                                if(_loc3_ && Boolean(param1))
                                                {
                                                   addr152:
                                                   if(§§pop() === _loc2_)
                                                   {
                                                      addr154:
                                                      §§push(1);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(2);
                                                   }
                                                }
                                             }
                                             §§goto(addr154);
                                          }
                                          else
                                          {
                                             §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§goto(addr152);
                                             }
                                          }
                                          addr163:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.m_minionMoves.BringIn();
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                addr102:
                                                break;
                                             case 1:
                                                this.m_minionGems.BringIn();
                                                §§goto(addr102);
                                             default:
                                                this.m_minionStats.BringIn();
                                          }
                                          this.m_currMinionOverviewObject = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.GetMinionOverviewObjectForMinion(param1);
                                          if(_loc4_)
                                          {
                                             §§push(this.m_currMinionOverviewObject);
                                             if(_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr197:
                                                   this.m_currMinionOverviewObject.SnapRenameButtonOn();
                                                }
                                                return;
                                             }
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr163);
                           }
                           §§pop().SetNewMinion(param1);
                           if(_loc4_)
                           {
                              addr77:
                              this.m_minionMoves.SetNewMinion(param1);
                              this.m_minionGems.SetNewMinion(param1);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr69);
                     }
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr83);
         }
         §§goto(addr38);
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.SnapIn(param1);
         if(_loc2_)
         {
            §§push(Singleton.dynamicData);
            if(_loc2_)
            {
               §§push(TutorialTypes.TUTORIAL_GEMS);
               if(_loc2_)
               {
                  §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§pop();
                              addr45:
                              addr44:
                              §§push(Singleton.dynamicData.GetOwnedGemAt(0) == null);
                              if(_loc3_ && _loc3_)
                              {
                              }
                              addr63:
                              if(§§pop())
                              {
                                 §§push(this.m_gemPopup);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(true);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§pop().visible = §§pop();
                                    }
                                    else
                                    {
                                       addr86:
                                       §§pop().visible = §§pop();
                                    }
                                    Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
                                    §§goto(addr101);
                                 }
                                 else
                                 {
                                    addr85:
                                    §§push(false);
                                 }
                                 §§goto(addr86);
                              }
                              else
                              {
                                 §§push(this.m_gemPopup);
                              }
                              §§goto(addr85);
                           }
                        }
                        §§goto(addr63);
                     }
                     §§push(!§§pop());
                  }
                  §§goto(addr63);
               }
               §§goto(addr45);
            }
            §§goto(addr44);
         }
         addr101:
         this.m_currMinionOverviewObject = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.GetMinionOverviewObjectForMinion(param1);
         if(!_loc3_)
         {
            §§push(this.m_currMinionOverviewObject);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr123);
            }
            §§pop().TurnRenameButtonOn();
         }
         addr123:
         if(_loc2_)
         {
            §§push(this.m_currMinionOverviewObject);
         }
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            §§push(Singleton.utility);
            if(_loc1_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop().ApplyMenuExitOutAnimationJustFade(this);
                        if(!_loc2_)
                        {
                           addr71:
                           Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.TurnAllRenameButtonsOff();
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      protected function ClosePreviousTab() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState);
         if(_loc2_ || _loc1_)
         {
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_STATS);
               if(_loc2_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(_loc2_ || Boolean(this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                              addr124:
                           }
                           addr136:
                           switch(§§pop())
                           {
                              case 0:
                                 this.m_minionStats.BringOut();
                                 if(_loc2_ || _loc1_)
                                 {
                                    break;
                                 }
                                 addr37:
                                 break;
                              case 1:
                                 this.m_minionMoves.BringOut();
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§goto(addr37);
                                 }
                                 break;
                              case 2:
                                 this.m_minionGems.BringOut();
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                           }
                           return;
                           addr135:
                        }
                        else
                        {
                           addr116:
                           §§push(1);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§goto(addr124);
                           }
                           else
                           {
                              addr130:
                           }
                           §§goto(addr135);
                        }
                     }
                     else
                     {
                        §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES);
                        if(_loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              addr101:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr116);
                                 }
                                 §§goto(addr130);
                              }
                              else
                              {
                                 addr128:
                                 if(TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS === _loc1_)
                                 {
                                    addr129:
                                    §§goto(addr130);
                                    §§push(2);
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                                 §§goto(addr135);
                              }
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr101);
               }
               §§goto(addr130);
            }
            §§goto(addr116);
         }
         §§goto(addr136);
      }
      
      protected function StatsButtonPress(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.ClosePreviousTab();
            if(!(_loc2_ && Boolean(param1)))
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_STATS;
               if(!_loc2_)
               {
                  this.m_minionStats.BringIn();
               }
            }
         }
      }
      
      protected function MovesButtonPress(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.ClosePreviousTab();
            if(!(_loc3_ && Boolean(param1)))
            {
               addr36:
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES;
               if(_loc2_)
               {
                  this.m_minionMoves.BringIn();
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      protected function GemsButtonPress(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            this.ClosePreviousTab();
            if(_loc3_ || Boolean(param1))
            {
               §§goto(addr44);
            }
            §§goto(addr59);
         }
         addr44:
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS;
         if(!(_loc2_ && _loc3_))
         {
            addr59:
            this.m_minionGems.BringIn();
         }
      }
      
      protected function ReturnButtonPress(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.ExitOut();
            if(_loc3_)
            {
               §§push(Singleton.utility);
               if(_loc3_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(_loc3_)
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr70);
                           }
                           §§goto(addr83);
                        }
                        addr70:
                        §§goto(addr69);
                     }
                     addr69:
                     §§goto(addr68);
                  }
                  addr68:
                  §§goto(addr67);
               }
               addr67:
               §§goto(addr65);
            }
         }
         addr65:
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected == 0)
         {
            if(_loc3_)
            {
               addr83:
               this.FinishPressingReturnButton();
               if(_loc2_ && Boolean(this))
               {
               }
            }
         }
         else
         {
            TweenLite.to(this,0.5,{"onComplete":this.FinishPressingReturnButton});
         }
      }
      
      protected function UpArrowPress(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(Singleton.utility);
            if(!_loc5_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(!_loc5_)
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(_loc4_)
                     {
                        §§push(§§pop().m_minionSelectMenu);
                        if(_loc4_)
                        {
                           if(§§pop().m_minionCurrentlySelected == 0)
                           {
                              if(_loc4_)
                              {
                                 addr46:
                                 §§push(Singleton.utility);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().m_screenControllers);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       §§push(§§pop().m_topDownScreen);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop().m_topDownMenuScreen);
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             §§push(§§pop().m_minionSelectMenu);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§pop().m_minionCurrentlySelected = 4;
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr158);
                                             }
                                             else
                                             {
                                                addr130:
                                                var _loc2_:*;
                                                §§push((_loc2_ = §§pop()).m_minionCurrentlySelected);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc4_)
                                                {
                                                   _loc2_.m_minionCurrentlySelected = _loc3_;
                                                }
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   addr158:
                                                   this.SnapIn(Singleton.dynamicData.GetOwnedMinionAt(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected));
                                                   if(!_loc5_)
                                                   {
                                                      addr178:
                                                      Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.SnapNewMinionIconForQuickOptionsChange();
                                                      addr172:
                                                   }
                                                   return;
                                                }
                                                §§goto(addr172);
                                             }
                                          }
                                          else
                                          {
                                             addr122:
                                             §§push(§§pop().m_minionSelectMenu);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                §§goto(addr130);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr114:
                                          §§push(§§pop().m_topDownMenuScreen);
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             §§goto(addr122);
                                          }
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 else
                                 {
                                    addr103:
                                    §§push(§§pop().m_screenControllers);
                                    if(_loc4_)
                                    {
                                       addr106:
                                       §§push(§§pop().m_topDownScreen);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§goto(addr114);
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(Singleton.utility);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr130);
                     }
                  }
                  §§goto(addr178);
               }
               §§goto(addr106);
            }
            §§goto(addr178);
         }
         §§goto(addr46);
      }
      
      protected function DownArrowPress(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(Singleton.utility);
         if(_loc5_)
         {
            §§push(§§pop().m_screenControllers);
            if(_loc5_)
            {
               §§push(§§pop().m_topDownScreen);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop().m_topDownMenuScreen);
                  if(_loc5_)
                  {
                     §§push(§§pop().m_minionSelectMenu);
                     if(!_loc4_)
                     {
                        §§pop().GetMinionOverviewObjectForMinion(this.m_currMinion).TurnRenameButtonOff();
                        §§push(Singleton.utility);
                        if(_loc5_)
                        {
                           §§push(§§pop().m_screenControllers);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop().m_topDownScreen);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop().m_topDownMenuScreen);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().m_minionSelectMenu);
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       addr70:
                                       if(§§pop().m_minionCurrentlySelected == 4)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(Singleton.utility);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr91:
                                                §§push(§§pop().m_screenControllers);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop().m_topDownScreen);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().m_topDownMenuScreen);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         addr105:
                                                         §§push(§§pop().m_minionSelectMenu);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            addr113:
                                                            §§pop().m_minionCurrentlySelected = 0;
                                                         }
                                                         else
                                                         {
                                                            addr142:
                                                            var _loc2_:*;
                                                            §§push((_loc2_ = §§pop()).m_minionCurrentlySelected);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            var _loc3_:* = §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               _loc2_.m_minionCurrentlySelected = _loc3_;
                                                            }
                                                         }
                                                         this.SnapIn(Singleton.dynamicData.GetOwnedMinionAt(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected));
                                                         addr180:
                                                         §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu);
                                                      }
                                                      else
                                                      {
                                                         addr139:
                                                         §§push(§§pop().m_minionSelectMenu);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr142);
                                                         }
                                                      }
                                                      §§pop().SnapNewMinionIconForQuickOptionsChange();
                                                   }
                                                   else
                                                   {
                                                      addr136:
                                                      §§push(§§pop().m_topDownMenuScreen);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr139);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                }
                                                else
                                                {
                                                   addr133:
                                                   §§push(§§pop().m_topDownScreen);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr136);
                                                   }
                                                }
                                             }
                                             §§goto(addr180);
                                          }
                                          return;
                                       }
                                       §§push(Singleton.utility);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr125:
                                          §§push(§§pop().m_screenControllers);
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             §§goto(addr133);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr105);
               }
               §§goto(addr136);
            }
            §§goto(addr133);
         }
         §§goto(addr125);
      }
      
      protected function SetArrowVisiblity() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected);
         if(_loc2_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(4);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(Singleton.dynamicData);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(_loc1_);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop().GetOwnedMinionAt(§§pop()));
                              if(_loc2_)
                              {
                                 §§push(null);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(this.m_upArrowButton);
                                       if(!_loc3_)
                                       {
                                          §§push(false);
                                          if(_loc2_)
                                          {
                                             §§pop().visible = §§pop();
                                             if(_loc2_)
                                             {
                                                addr94:
                                                §§push(Singleton.dynamicData);
                                                if(!_loc3_)
                                                {
                                                   §§push(0);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(null);
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§push(this.m_downArrowButton);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§pop().visible = §§pop();
                                                                     if(!(_loc2_ || _loc2_))
                                                                     {
                                                                        addr389:
                                                                        return;
                                                                        addr384:
                                                                     }
                                                                     §§goto(addr389);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr151:
                                                                     §§pop().visible = §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr285:
                                                                  §§push(true);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§pop().visible = §§pop();
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr291:
                                                                        §§goto(addr389);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr351:
                                                                        if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_ + 1) == null)
                                                                        {
                                                                           addr352:
                                                                           §§push(this.m_downArrowButton);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              addr368:
                                                                              §§push(false);
                                                                              if(_loc2_ || Boolean(this))
                                                                              {
                                                                                 addr376:
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr384);
                                                                                 }
                                                                              }
                                                                              §§goto(addr389);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr387:
                                                                              §§push(true);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr387);
                                                                           §§push(this.m_downArrowButton);
                                                                        }
                                                                        §§goto(addr387);
                                                                        addr339:
                                                                     }
                                                                     §§goto(addr389);
                                                                  }
                                                                  addr388:
                                                                  §§pop().visible = §§pop();
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.m_downArrowButton);
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  §§push(true);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr151);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr388);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr388);
                                                            }
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      else
                                                      {
                                                         addr178:
                                                         §§push(null);
                                                         if(_loc2_)
                                                         {
                                                            addr181:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§push(this.m_upArrowButton);
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        §§pop().visible = §§pop();
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr237:
                                                                           §§push(Singleton.dynamicData);
                                                                           if(_loc2_)
                                                                           {
                                                                              addr241:
                                                                              §§push(_loc1_);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr244:
                                                                                 §§push(1);
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc2_ || _loc1_)
                                                                                    {
                                                                                       addr260:
                                                                                       §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                §§push(this.m_downArrowButton);
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   §§push(false);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§pop().visible = §§pop();
                                                                                                      §§goto(addr291);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr376);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr285);
                                                                                                }
                                                                                                §§goto(addr389);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.m_downArrowButton);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§goto(addr285);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr307:
                                                                                       §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          addr315:
                                                                                          §§push(null);
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             addr323:
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(this.m_upArrowButton);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr330:
                                                                                                      §§push(false);
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         addr338:
                                                                                                         §§pop().visible = §§pop();
                                                                                                         §§goto(addr339);
                                                                                                      }
                                                                                                      §§goto(addr351);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr342:
                                                                                                      §§push(true);
                                                                                                   }
                                                                                                   addr343:
                                                                                                   §§pop().visible = §§pop();
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr342);
                                                                                                §§push(this.m_upArrowButton);
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr296:
                                                                              §§push(_loc1_);
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr307);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr389);
                                                                     }
                                                                     §§goto(addr338);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.m_upArrowButton);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr221:
                                                                  §§push(true);
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     addr229:
                                                                     §§pop().visible = §§pop();
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                            }
                                                            §§goto(addr342);
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr175:
                                                      §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr315);
                                                }
                                                §§goto(addr351);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr330);
                                    }
                                    else
                                    {
                                       §§push(this.m_upArrowButton);
                                       if(!_loc3_)
                                       {
                                          §§push(true);
                                          if(!_loc3_)
                                          {
                                             §§pop().visible = §§pop();
                                             §§goto(addr94);
                                          }
                                          §§goto(addr343);
                                       }
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr315);
                           }
                           §§goto(addr260);
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr241);
                  }
                  else
                  {
                     addr155:
                     if(_loc1_ == 0)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr163:
                           §§push(Singleton.dynamicData);
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(4);
                              if(!_loc3_)
                              {
                                 §§goto(addr175);
                              }
                              §§goto(addr244);
                           }
                           §§goto(addr296);
                        }
                        §§goto(addr237);
                     }
                     else
                     {
                        §§push(Singleton.dynamicData);
                        if(_loc2_)
                        {
                           §§goto(addr296);
                        }
                     }
                  }
                  §§goto(addr351);
               }
            }
            §§goto(addr155);
         }
         §§goto(addr163);
      }
      
      protected function FinishPressingReturnButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.AnimateFromMinionDetials();
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.m_gemPopup);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop().visible)
               {
                  if(!_loc2_)
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc3_)
                     {
                        §§push(TutorialTypes.TUTORIAL_GEMS);
                        if(_loc3_)
                        {
                           §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                              §§push(!§§pop());
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       addr65:
                                       if(Singleton.dynamicData.GetOwnedGemAt(0) != null)
                                       {
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§push(this.m_gemPopup);
                                             if(!_loc2_)
                                             {
                                                addr77:
                                                §§push(true);
                                                if(!_loc2_)
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr100:
                                                      this.m_returnButton.m_isActive = true;
                                                      §§push(this.m_currMinionOverviewObject);
                                                      if(_loc3_)
                                                      {
                                                         addr112:
                                                         if(§§pop())
                                                         {
                                                            §§push(this.m_currMinionOverviewObject);
                                                         }
                                                         §§push(this.m_upArrowButton);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(§§pop().visible)
                                                            {
                                                               §§push(this.m_upArrowButton);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr132:
                                                                  §§pop().m_isActive = true;
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr136:
                                                                     §§push(this.m_downArrowButton);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        if(§§pop().visible)
                                                                        {
                                                                           §§push(this.m_downArrowButton);
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              addr156:
                                                                              §§pop().m_isActive = true;
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr160:
                                                                                 §§push(this.m_upArrowButton.visible);
                                                                                 §§push(this.m_upArrowButton.visible);
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr172:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          §§push(Input.kp("UP"));
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr194:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   this.UpArrowPress(null);
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      addr212:
                                                                                                      §§push(this.m_downArrowButton.visible);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr219:
                                                                                                         if(§§pop() && Input.kp("DOWN"))
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr228:
                                                                                                               this.DownArrowPress(null);
                                                                                                               addr231:
                                                                                                               §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  var _loc1_:* = §§pop();
                                                                                                                  if(!(_loc2_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_STATS);
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(!(_loc2_ && _loc1_))
                                                                                                                     {
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc2_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§goto(addr350);
                                                                                                                           }
                                                                                                                           §§goto(addr375);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES);
                                                                                                                        }
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     §§goto(addr366);
                                                                                                                  }
                                                                                                                  addr350:
                                                                                                                  §§push(0);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr363:
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr366:
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              addr375:
                                                                                                                              §§push(2);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr383);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS);
                                                                                                                           §§push(_loc1_);
                                                                                                                        }
                                                                                                                        §§goto(addr375);
                                                                                                                     }
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr375);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(3);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr383:
                                                                                                                  §§goto(addr384);
                                                                                                               }
                                                                                                               addr384:
                                                                                                               switch(1)
                                                                                                               {
                                                                                                                  case 0:
                                                                                                                     §§push(this.m_movesButton);
                                                                                                                     if(!(_loc2_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push(true);
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§pop().m_isActive = §§pop();
                                                                                                                           §§push(this.m_gemsButton);
                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(!(_loc2_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§pop().m_isActive = §§pop();
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr288:
                                                                                                                              §§push(true);
                                                                                                                           }
                                                                                                                           §§pop().m_isActive = §§pop();
                                                                                                                           this.m_minionMoves.UpdateFullFrames();
                                                                                                                           if(!(_loc2_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr300:
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr305:
                                                                                                                           §§pop().m_isActive = §§pop();
                                                                                                                        }
                                                                                                                        addr309:
                                                                                                                        this.m_statsButton.m_isActive = true;
                                                                                                                        this.m_minionGems.UpdateFullFrames();
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr304:
                                                                                                                     §§push(true);
                                                                                                                     §§goto(addr305);
                                                                                                                  case 1:
                                                                                                                     §§push(this.m_statsButton);
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(true);
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§pop().m_isActive = §§pop();
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr288);
                                                                                                                              §§push(this.m_gemsButton);
                                                                                                                           }
                                                                                                                           §§goto(addr300);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr309);
                                                                                                                  case 2:
                                                                                                                     §§goto(addr304);
                                                                                                                     §§push(this.m_movesButton);
                                                                                                               }
                                                                                                               return;
                                                                                                               addr231:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr231);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr224);
                                                                                                }
                                                                                                §§goto(addr231);
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr220);
                                                                                    }
                                                                                    §§goto(addr194);
                                                                                 }
                                                                                 §§goto(addr219);
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        §§goto(addr160);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                               }
                                                               §§goto(addr160);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr132);
                                                      }
                                                      §§pop().UpdateRenameButton();
                                                      §§goto(addr112);
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr112);
                                             }
                                             else
                                             {
                                                addr91:
                                                §§push(false);
                                             }
                                             §§pop().visible = §§pop();
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr100);
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr160);
                                       }
                                       else
                                       {
                                          §§push(this.m_gemPopup);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr65);
                              }
                              §§goto(addr172);
                           }
                        }
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr112);
               }
               §§goto(addr100);
            }
            §§goto(addr77);
         }
         §§goto(addr228);
      }
   }
}
