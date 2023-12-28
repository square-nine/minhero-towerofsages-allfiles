package Utilities
{
   import BattleSystems.BattleScreen;
   import LevelSelect.LevelSelectScreen;
   import MainMenu.MainMenuScreen;
   import States.GameState;
   import TopDown.TopdownScreen;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class ScreenController
   {
       
      
      public var m_topDownScreen:TopdownScreen;
      
      public var m_battleScreen:BattleScreen;
      
      public var m_levelSelectScreen:LevelSelectScreen;
      
      public var m_mainMenuScreen:MainMenuScreen;
      
      public var m_siteLockedScreen:SiteLockedScreen;
      
      public var m_sponsorScreen:SponsorIntroScreen;
      
      public var m_topMostLayer:Sprite;
      
      private var m_previousGameState:int;
      
      private var m_gameStateToGoto:int;
      
      private var m_blackForFade:Sprite;
      
      public function ScreenController()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super();
         if(_loc2_ || Boolean(this))
         {
            this.m_topMostLayer = new Sprite();
         }
         this.m_topDownScreen = new TopdownScreen();
         if(_loc2_ || _loc1_)
         {
            this.m_battleScreen = new BattleScreen();
            if(_loc2_ || _loc1_)
            {
               this.m_levelSelectScreen = new LevelSelectScreen();
               this.m_mainMenuScreen = new MainMenuScreen();
               if(_loc2_)
               {
                  addr73:
                  this.m_siteLockedScreen = new SiteLockedScreen();
               }
               this.m_sponsorScreen = new SponsorIntroScreen();
               this.m_previousGameState = GameState.NONE;
               this.m_gameStateToGoto = GameState.NONE;
               §§goto(addr89);
            }
            §§goto(addr73);
         }
         addr89:
      }
      
      public function LoadAllScreens() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_topDownScreen.LoadSprites();
            if(_loc2_)
            {
               this.m_battleScreen.LoadSprites();
               this.m_levelSelectScreen.LoadSprites();
               if(!(_loc1_ && _loc1_))
               {
                  this.m_mainMenuScreen.LoadSprites();
                  if(!_loc1_)
                  {
                     this.m_siteLockedScreen.LoadSprites();
                     addr42:
                     this.m_sponsorScreen.LoadSprites();
                     this.m_blackForFade = new Sprite();
                     if(!(_loc1_ && _loc2_))
                     {
                        this.m_blackForFade.graphics.beginFill(0);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr75:
                           this.m_blackForFade.graphics.drawRect(0,0,700,525);
                           if(!_loc1_)
                           {
                              addr85:
                              this.m_blackForFade.graphics.endFill();
                           }
                        }
                        §§push(Singleton.utility);
                        if(!_loc1_)
                        {
                           §§pop().m_stage.addChild(this.m_topMostLayer);
                           §§push(Singleton.utility);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop().m_tutorialHandler.LoadSprites();
                              if(_loc2_)
                              {
                                 addr119:
                                 Singleton.utility.m_bonusItemPopup.LoadSprites();
                              }
                              return;
                           }
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr119);
               }
               §§goto(addr85);
            }
            §§goto(addr42);
         }
         §§goto(addr75);
      }
      
      public function SetSceneTo(param1:int, param2:Boolean = true, param3:Number = 0.5, param4:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:TimelineLite = null;
         if(_loc7_ || param2)
         {
            Singleton.dynamicData.m_gameState = GameState.TRANSITIONING;
            if(!_loc8_)
            {
               this.m_previousGameState = this.m_gameStateToGoto;
               if(_loc7_ || Boolean(param1))
               {
                  addr41:
                  this.m_gameStateToGoto = param1;
                  if(!_loc8_)
                  {
                     addr46:
                     Singleton.utility.m_stage.focus = null;
                  }
                  §§push(this.m_gameStateToGoto);
                  if(!_loc8_)
                  {
                     var _loc6_:* = §§pop();
                     if(_loc7_)
                     {
                        §§push(GameState.MAIN_MENU);
                        if(_loc7_ || param2)
                        {
                           §§push(_loc6_);
                           if(!_loc8_)
                           {
                              if(§§pop() !== §§pop())
                              {
                                 §§push(GameState.BATTLE_SCREEN);
                                 if(_loc7_ || Boolean(param3))
                                 {
                                    §§push(_loc6_);
                                    if(_loc7_)
                                    {
                                       addr241:
                                       if(§§pop() === §§pop())
                                       {
                                          §§push(1);
                                          if(_loc8_)
                                          {
                                          }
                                          §§goto(addr313);
                                       }
                                       else
                                       {
                                          §§push(GameState.TOP_DOWN_SCREEN);
                                          §§push(_loc6_);
                                          if(!(_loc8_ && Boolean(param3)))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                addr257:
                                                addr313:
                                                addr314:
                                                switch(0)
                                                {
                                                   case 0:
                                                      Singleton.utility.m_stage.addChild(this.m_mainMenuScreen);
                                                      §§push(this.m_mainMenuScreen);
                                                      if(_loc7_)
                                                      {
                                                         §§pop().visible = false;
                                                         §§push(this.m_mainMenuScreen);
                                                      }
                                                      §§pop().StartActivate();
                                                      if(!_loc8_)
                                                      {
                                                         addr319:
                                                         Singleton.utility.m_stage.removeChild(this.m_topMostLayer);
                                                         addr317:
                                                      }
                                                      addr323:
                                                      §§push(Singleton.utility);
                                                      if(_loc7_ || Boolean(param1))
                                                      {
                                                         §§pop().m_stage.addChild(this.m_topMostLayer);
                                                         if(!_loc8_)
                                                         {
                                                            addr340:
                                                            Singleton.utility.m_stage.addChild(this.m_blackForFade);
                                                            this.m_blackForFade.graphics.clear();
                                                            if(_loc7_)
                                                            {
                                                               addr350:
                                                               §§push(param4);
                                                               if(_loc7_ || Boolean(param3))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     this.m_blackForFade.graphics.beginFill(0);
                                                                     addr372:
                                                                     this.m_blackForFade.graphics.drawRect(0,0,700,525);
                                                                     this.m_blackForFade.graphics.endFill();
                                                                     §§push(param2);
                                                                     addr364:
                                                                  }
                                                                  else
                                                                  {
                                                                     this.m_blackForFade.graphics.beginFill(16777215);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr372);
                                                                     }
                                                                     addr397:
                                                                     (_loc5_ = new TimelineLite()).append(new TweenLite(this.m_blackForFade,param3,{
                                                                        "alpha":1,
                                                                        "onComplete":this.TurnOnNewScreen
                                                                     }));
                                                                     if(!(_loc8_ && Boolean(this)))
                                                                     {
                                                                        _loc5_.append(new TweenLite(this.m_blackForFade,0.2,{}));
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           _loc5_.append(new TweenLite(this.m_blackForFade,param3,{
                                                                              "alpha":0,
                                                                              "onComplete":this.FinishTransitioningToAScreen
                                                                           }));
                                                                           addr436:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  this.m_blackForFade.alpha = 0;
                                                                  if(_loc7_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr397);
                                                                  }
                                                                  break;
                                                               }
                                                               this.TurnOnNewScreen();
                                                               if(_loc7_ || Boolean(this))
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            this.FinishTransitioningToAScreen();
                                                            break;
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                      §§goto(addr340);
                                                   case 1:
                                                      Singleton.utility.m_stage.addChild(this.m_battleScreen);
                                                      §§push(this.m_battleScreen);
                                                      if(!_loc8_)
                                                      {
                                                         §§pop().visible = false;
                                                         if(_loc7_ || Boolean(param1))
                                                         {
                                                            addr93:
                                                            this.m_battleScreen.StartActivate();
                                                            §§goto(addr317);
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      §§goto(addr93);
                                                   case 2:
                                                      Singleton.utility.m_stage.addChild(this.m_topDownScreen);
                                                      §§push(this.m_topDownScreen);
                                                      if(!(_loc8_ && Boolean(param3)))
                                                      {
                                                         §§pop().visible = false;
                                                         §§push(this.m_topDownScreen);
                                                      }
                                                      §§pop().StartActivate();
                                                      if(_loc8_)
                                                      {
                                                         addr196:
                                                         this.m_sponsorScreen.StartActivate();
                                                         addr194:
                                                      }
                                                      §§goto(addr317);
                                                   case 3:
                                                      §§push(Singleton.utility);
                                                      if(_loc7_ || Boolean(param3))
                                                      {
                                                         §§pop().m_stage.addChild(this.m_levelSelectScreen);
                                                         if(_loc7_ || Boolean(param3))
                                                         {
                                                            §§push(this.m_levelSelectScreen);
                                                            if(_loc7_)
                                                            {
                                                               §§pop().visible = false;
                                                               §§push(this.m_levelSelectScreen);
                                                            }
                                                            §§pop().StartActivate();
                                                            if(!(_loc8_ && Boolean(param1)))
                                                            {
                                                               §§goto(addr317);
                                                            }
                                                            §§goto(addr364);
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                      else
                                                      {
                                                         addr160:
                                                         §§pop().m_stage.addChild(this.m_siteLockedScreen);
                                                         §§push(this.m_siteLockedScreen);
                                                         if(!_loc8_)
                                                         {
                                                            §§pop().visible = false;
                                                            §§push(this.m_siteLockedScreen);
                                                         }
                                                         §§pop().StartActivate();
                                                      }
                                                      §§goto(addr317);
                                                   case 4:
                                                      §§goto(addr160);
                                                      §§push(Singleton.utility);
                                                   case 5:
                                                      §§push(Singleton.utility);
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         §§pop().m_stage.addChild(this.m_sponsorScreen);
                                                         §§push(this.m_sponsorScreen);
                                                         if(!_loc8_)
                                                         {
                                                            §§pop().visible = false;
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr319);
                                                   default:
                                                      §§goto(addr319);
                                                }
                                                return;
                                                §§push(2);
                                             }
                                             else
                                             {
                                                §§push(GameState.LEVEL_SELECT_SCREEN);
                                                §§push(_loc6_);
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   addr269:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                         §§push(3);
                                                         if(_loc8_ && Boolean(param3))
                                                         {
                                                            addr298:
                                                         }
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   else
                                                   {
                                                      §§push(GameState.SITE_LOCKED_SCREEN);
                                                      §§push(_loc6_);
                                                      if(_loc7_ || Boolean(param1))
                                                      {
                                                         addr296:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            §§goto(addr298);
                                                            §§push(4);
                                                         }
                                                         else
                                                         {
                                                            §§push(GameState.SPONSOR_SCREEN);
                                                            if(_loc7_)
                                                            {
                                                               addr304:
                                                               if(§§pop() !== _loc6_)
                                                               {
                                                                  §§goto(addr313);
                                                                  §§push(6);
                                                               }
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr313);
                                          }
                                          §§goto(addr269);
                                       }
                                    }
                                    §§goto(addr304);
                                 }
                              }
                              §§goto(addr313);
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr313);
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr314);
               }
               §§goto(addr46);
            }
         }
         §§goto(addr41);
      }
      
      private function TurnOnNewScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.m_gameStateToGoto);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            §§push(GameState.MAIN_MENU);
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() === §§pop())
               {
                  §§push(0);
                  if(_loc2_ && _loc1_)
                  {
                     addr202:
                  }
               }
               else
               {
                  §§push(GameState.BATTLE_SCREEN);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr381);
                        }
                        else
                        {
                           if(GameState.TOP_DOWN_SCREEN === _loc1_)
                           {
                              addr247:
                              §§push(2);
                              if(_loc3_)
                              {
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(this.m_mainMenuScreen);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().visible = true;
                                          §§push(this.m_mainMenuScreen);
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr36:
                                             §§pop().FinishActivate();
                                             §§push(this.m_previousGameState);
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr367:
                                                _loc1_ = §§pop();
                                                if(!_loc2_)
                                                {
                                                   if(GameState.MAIN_MENU === _loc1_)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr381:
                                                         §§goto(addr459);
                                                      }
                                                      else
                                                      {
                                                         addr426:
                                                         §§push(3);
                                                         if(_loc2_)
                                                         {
                                                            addr444:
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(GameState.BATTLE_SCREEN);
                                                      if(_loc3_)
                                                      {
                                                         if(§§pop() === _loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               addr459:
                                                               addr460:
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§goto(addr202);
                                                                  §§push(1);
                                                               }
                                                               switch(0)
                                                               {
                                                                  case 0:
                                                                     §§push(Singleton.utility);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().m_stage.removeChild(this.m_mainMenuScreen);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr265:
                                                                           this.m_mainMenuScreen.DeActivate();
                                                                           break;
                                                                        }
                                                                        addr312:
                                                                        break;
                                                                     }
                                                                     addr348:
                                                                     §§pop().m_stage.removeChild(this.m_sponsorScreen);
                                                                     addr354:
                                                                     this.m_sponsorScreen.DeActivate();
                                                                     break;
                                                                     addr352:
                                                                     break;
                                                                  case 1:
                                                                     §§push(Singleton.utility);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§pop().m_stage.removeChild(this.m_battleScreen);
                                                                        addr278:
                                                                        this.m_battleScreen.DeActivate();
                                                                        break;
                                                                     }
                                                                     addr305:
                                                                     §§pop().m_stage.removeChild(this.m_levelSelectScreen);
                                                                     this.m_levelSelectScreen.DeActivate();
                                                                     §§goto(addr312);
                                                                     break;
                                                                  case 2:
                                                                     §§push(Singleton.utility);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        §§pop().m_stage.removeChild(this.m_topDownScreen);
                                                                        addr296:
                                                                        this.m_topDownScreen.DeActivate();
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr348);
                                                                     break;
                                                                  case 3:
                                                                     §§push(Singleton.utility);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr305);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr348);
                                                                     }
                                                                  case 4:
                                                                     §§push(Singleton.utility);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        §§pop().m_stage.removeChild(this.m_siteLockedScreen);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           addr336:
                                                                           this.m_siteLockedScreen.DeActivate();
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              addr344:
                                                                              break;
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                     }
                                                                     §§goto(addr348);
                                                                  case 5:
                                                                     §§goto(addr348);
                                                                     §§push(Singleton.utility);
                                                               }
                                                               return;
                                                               §§push(1);
                                                            }
                                                            else
                                                            {
                                                               addr451:
                                                               §§push(5);
                                                               if(_loc3_)
                                                               {
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(GameState.TOP_DOWN_SCREEN);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(§§pop() === _loc1_)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr414:
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr426);
                                                                  }
                                                               }
                                                               else if(GameState.LEVEL_SELECT_SCREEN === _loc1_)
                                                               {
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     §§goto(addr426);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr443:
                                                                     §§push(4);
                                                                  }
                                                                  §§goto(addr444);
                                                               }
                                                               else
                                                               {
                                                                  if(GameState.SITE_LOCKED_SCREEN === _loc1_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§goto(addr443);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr451);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(GameState.SPONSOR_SCREEN);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(§§pop() === _loc1_)
                                                                        {
                                                                           §§goto(addr451);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr381);
                                                                           §§push(6);
                                                                        }
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr381);
                                                      }
                                                      §§goto(addr414);
                                                   }
                                                }
                                                §§goto(addr381);
                                             }
                                             §§goto(addr460);
                                             addr251:
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr36);
                                    case 1:
                                       §§push(this.m_battleScreen);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().visible = true;
                                          §§push(this.m_battleScreen);
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr59:
                                             §§pop().FinishActivate();
                                             §§goto(addr251);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr59);
                                    case 2:
                                       §§push(this.m_topDownScreen);
                                       if(!_loc2_)
                                       {
                                          §§pop().visible = true;
                                          §§push(this.m_topDownScreen);
                                          if(_loc3_ || _loc1_)
                                          {
                                             §§pop().FinishActivate();
                                             §§goto(addr36);
                                          }
                                       }
                                       §§goto(addr296);
                                    case 3:
                                       §§push(this.m_levelSelectScreen);
                                       if(!_loc2_)
                                       {
                                          §§pop().visible = true;
                                          §§push(this.m_levelSelectScreen);
                                          if(_loc3_)
                                          {
                                             addr90:
                                             §§pop().FinishActivate();
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§goto(addr36);
                                             }
                                             §§goto(addr344);
                                          }
                                          §§goto(addr305);
                                       }
                                       §§goto(addr90);
                                    case 4:
                                       §§push(this.m_siteLockedScreen);
                                       if(!_loc2_)
                                       {
                                          §§pop().visible = true;
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(this.m_siteLockedScreen);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr122:
                                                §§pop().FinishActivate();
                                                §§goto(addr36);
                                             }
                                             §§goto(addr336);
                                          }
                                          break;
                                       }
                                       §§goto(addr122);
                                    case 5:
                                       §§push(this.m_sponsorScreen);
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§pop().visible = true;
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(this.m_sponsorScreen);
                                             if(!_loc2_)
                                             {
                                                §§pop().FinishActivate();
                                                §§goto(addr36);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr354);
                                    default:
                                       §§goto(addr36);
                                 }
                                 §§goto(addr381);
                              }
                              §§goto(addr367);
                           }
                           else
                           {
                              §§push(GameState.LEVEL_SELECT_SCREEN);
                              §§push(_loc1_);
                           }
                           §§goto(addr247);
                        }
                     }
                     if(§§pop() === §§pop())
                     {
                        §§push(3);
                        if(_loc2_)
                        {
                        }
                        §§goto(addr247);
                     }
                     else if(GameState.SITE_LOCKED_SCREEN === _loc1_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr247);
                           §§push(4);
                        }
                        §§goto(addr451);
                     }
                     else
                     {
                        addr240:
                        if(GameState.SPONSOR_SCREEN === _loc1_)
                        {
                           §§goto(addr247);
                           §§push(5);
                        }
                        else
                        {
                           §§goto(addr247);
                           §§push(6);
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr247);
                  }
               }
               §§goto(addr247);
            }
            §§goto(addr240);
         }
         §§goto(addr381);
      }
      
      private function FinishTransitioningToAScreen() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            Singleton.dynamicData.m_gameState = this.m_gameStateToGoto;
            if(!(_loc2_ && Boolean(this)))
            {
               addr39:
               Singleton.utility.m_stage.removeChild(this.m_blackForFade);
            }
            return;
         }
         §§goto(addr39);
      }
   }
}
