package
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.Gems.OwnedGem;
   import States.*;
   import Utilities.FramerateTracker;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.plugins.*;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class Main extends Sprite
   {
       
      
      private var m_updateLoopCounter:int;
      
      private var m_currMouseMovementEvent:MouseEvent;
      
      private var m_frameRateTracker:FramerateTracker;
      
      public function Main()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               §§goto(addr43);
            }
            §§goto(addr56);
         }
         addr43:
         if(stage)
         {
            if(_loc1_ || _loc2_)
            {
               this.init();
               if(!_loc2_)
               {
                  addr56:
               }
            }
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      private function init(param1:Event = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         Singleton.CreateObjects();
         Singleton.utility.m_stage = stage;
         Singleton.utility.m_globalMouseMovementUpdateFunction = this.CallGlobalMouseMovement;
         §§push(Singleton.utility);
         if(!_loc9_)
         {
            §§pop().m_spriteHandler.LoadSpriteSheets();
            §§push(Singleton.utility.m_screenControllers);
            if(!(_loc9_ && _loc3_))
            {
               §§pop().LoadAllScreens();
               §§push(Singleton.utility);
               if(_loc8_)
               {
                  §§pop().m_mousePointObject = new Sprite();
                  §§push(Singleton.utility);
                  if(_loc8_)
                  {
                     addr58:
                     §§pop().m_mousePointObject.graphics.beginFill(5592405,1);
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        Singleton.utility.m_mousePointObject.graphics.drawRect(0,0,1,1);
                     }
                     §§push(Singleton.utility);
                     if(_loc8_)
                     {
                        §§pop().m_mousePointObject.graphics.endFill();
                        if(_loc8_ || Boolean(this))
                        {
                           addr96:
                           Singleton.utility.m_screenControllers.m_topDownScreen.m_gemShop.CreateNewGems();
                        }
                        TweenPlugin.activate([TransformAroundPointPlugin,ShortRotationPlugin,TransformAroundCenterPlugin,TintPlugin,ColorTransformPlugin,RemoveTintPlugin]);
                        Input.initialize(Singleton.utility.m_stage,false);
                        §§push(Singleton.utility);
                        if(!(_loc9_ && Boolean(this)))
                        {
                           §§push(§§pop().m_analyticsController);
                           if(!_loc9_)
                           {
                              §§pop().StartAnalytics();
                              addr129:
                              §§push(Singleton.utility.m_analyticsController);
                           }
                           §§pop().LogStartPlay();
                           var _loc2_:Array = ["","http://armorgames.com","http://games.armorgames.com","http://preview.armorgames.com","http://cache.armorgames.com","http://cdn.armorgames.com","http://gamemedia.armorgames.com","http://*.armorgames.com"];
                           var _loc3_:* = true;
                           var _loc5_:Array;
                           var _loc4_:String;
                           var _loc6_:Array = (_loc5_ = (_loc4_ = Singleton.utility.m_stage.root.loaderInfo.url).split("://"))[1].split("/");
                           var _loc7_:uint = 0;
                           loop0:
                           while(true)
                           {
                              §§push(_loc7_);
                              while(true)
                              {
                                 if(§§pop() < _loc2_.length)
                                 {
                                    if(_loc2_[_loc7_] == _loc6_[0])
                                    {
                                       if(_loc8_ || Boolean(param1))
                                       {
                                          §§push(false);
                                          if(!_loc9_)
                                          {
                                             _loc3_ = §§pop();
                                          }
                                          else
                                          {
                                             §§goto(addr219);
                                          }
                                       }
                                       §§goto(addr324);
                                    }
                                    §§push(_loc7_);
                                    if(!_loc9_)
                                    {
                                       §§push(uint(§§pop() + 1));
                                       if(_loc8_ || Boolean(_loc2_))
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue;
                                 }
                                 addr219:
                                 if(_loc3_)
                                 {
                                    MochiBot.track(this,"cfa9e6c8");
                                    addr264:
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       addr231:
                                       this.m_updateLoopCounter = 0;
                                       §§push(Singleton.dynamicData);
                                       if(_loc8_)
                                       {
                                          §§push(false);
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             §§pop().m_hasBeatenHardMode = §§pop();
                                             break;
                                          }
                                          §§goto(addr300);
                                       }
                                       addr299:
                                       addr300:
                                       §§pop().m_isAutoSaveOn = §§pop();
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          Singleton.utility.m_screenControllers.SetSceneTo(GameState.SPONSOR_SCREEN,false);
                                          addr324:
                                          Singleton.dynamicData.SetNewReturnToOnDeathPoint();
                                          addEventListener(Event.ENTER_FRAME,this.Update);
                                       }
                                       stage.addEventListener(MouseEvent.CLICK,this.GlobalMouseClicked);
                                       stage.addEventListener(MouseEvent.MOUSE_MOVE,this.GlobalMouseMovement);
                                       return;
                                       §§push(true);
                                    }
                                    §§push(Singleton.dynamicData);
                                    if(!_loc9_)
                                    {
                                       addr268:
                                       §§push(0);
                                       if(!_loc9_)
                                       {
                                          §§push(true);
                                          if(!_loc9_)
                                          {
                                             §§pop().SetHasUnlockedFloor(§§pop(),§§pop());
                                             if(_loc8_)
                                             {
                                                §§push(Singleton.dynamicData);
                                                if(!(_loc9_ && Boolean(this)))
                                                {
                                                   addr289:
                                                   §§pop().SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_FOCUS_TARGETS,true);
                                                   §§push(Singleton.dynamicData);
                                                   if(_loc8_ || Boolean(this))
                                                   {
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr324);
                                                   addr288:
                                                   addr286:
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr300);
                                          }
                                          §§goto(addr289);
                                       }
                                       §§goto(addr288);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr231);
                                 §§goto(addr324);
                              }
                              addr247:
                              §§push(Singleton.dynamicData);
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 §§pop().ResetOpponentsMinions();
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    §§goto(addr264);
                                 }
                                 §§goto(addr289);
                              }
                              §§goto(addr268);
                           }
                        }
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr96);
      }
      
      public function CallGlobalMouseMovement() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.m_currMouseMovementEvent != null)
            {
               if(!_loc1_)
               {
                  this.GlobalMouseMovement(this.m_currMouseMovementEvent);
               }
            }
         }
      }
      
      private function GlobalMouseMovement(param1:MouseEvent) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Point = null;
         var _loc3_:TCButton = null;
         var _loc4_:* = false;
         var _loc5_:* = false;
         if(_loc7_)
         {
            this.m_currMouseMovementEvent = param1;
            if(!(_loc8_ && Boolean(this)))
            {
               addr35:
               §§push(Singleton.utility);
               if(!_loc8_)
               {
                  §§pop().m_mousePointObject.x = this.m_currMouseMovementEvent.stageX;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     addr53:
                     Singleton.utility.m_mousePointObject.y = this.m_currMouseMovementEvent.stageY;
                  }
                  var _loc6_:int = 0;
                  for(; _loc6_ < Singleton.utility.m_allButtons.length; _loc6_++)
                  {
                     _loc3_ = Singleton.utility.m_allButtons[_loc6_];
                     if(!_loc8_)
                     {
                        §§push(false);
                        if(!_loc8_)
                        {
                           _loc4_ = §§pop();
                           if(_loc7_)
                           {
                              §§push(_loc3_.m_isMouseOver);
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 addr93:
                                 §§push(§§pop());
                              }
                              _loc5_ = §§pop();
                              addr95:
                              _loc2_ = Singleton.utility.m_allButtons[_loc6_].m_restingSprite.localToGlobal(new Point(0,0));
                              if(_loc8_)
                              {
                                 continue;
                              }
                              _loc3_.MouseMovementForPopup(param1);
                              if(_loc7_ || Boolean(param1))
                              {
                                 §§push(Singleton.utility.m_collController.RectDisplayObjectCollision(Singleton.utility.m_mousePointObject,_loc3_.m_restingSprite));
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          §§push(true);
                                          if(!_loc8_)
                                          {
                                             _loc4_ = §§pop();
                                             if(!(_loc8_ && Boolean(this)))
                                             {
                                                addr155:
                                                §§push(_loc4_);
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   addr170:
                                                   if(§§pop() == _loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   addr172:
                                                   §§push(_loc4_);
                                                }
                                             }
                                             addr181:
                                             continue;
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc3_.m_onOverFunction);
                                             if(_loc7_)
                                             {
                                                §§pop().call();
                                                §§goto(addr181);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc3_.m_onOutFunction);
                                          }
                                          §§pop().call();
                                          continue;
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr95);
                  }
                  return;
               }
            }
            §§goto(addr53);
         }
         §§goto(addr35);
      }
      
      private function GlobalMouseClicked(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Point = null;
         var _loc3_:TCButton = null;
         if(_loc5_ || Boolean(_loc2_))
         {
            §§push(Singleton.utility);
            if(!_loc6_)
            {
               §§pop().m_mousePointObject.x = param1.stageX;
               if(_loc5_ || Boolean(param1))
               {
                  addr50:
                  Singleton.utility.m_mousePointObject.y = param1.stageY;
               }
               var _loc4_:int = 0;
               while(_loc4_ < Singleton.utility.m_allButtons.length)
               {
                  _loc3_ = Singleton.utility.m_allButtons[_loc4_];
                  _loc2_ = _loc3_.m_restingSprite.localToGlobal(new Point(0,0));
                  if(!_loc6_)
                  {
                     if(Singleton.utility.m_collController.RectDisplayObjectCollision(Singleton.utility.m_mousePointObject,_loc3_.m_restingSprite))
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        _loc3_.Clicked(param1);
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     _loc4_++;
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private function Update(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc5_ || Boolean(this))
         {
            §§push(this.m_updateLoopCounter);
            if(!(_loc6_ && Boolean(param1)))
            {
               if(§§pop() % 3 == 0)
               {
                  if(_loc5_)
                  {
                     addr38:
                     _loc2_ = 0;
                     addr39:
                     loop0:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           if(§§pop() >= Singleton.utility.m_allButtons.length)
                           {
                              §§push(Singleton.dynamicData);
                              if(!_loc6_)
                              {
                                 var _loc3_:* = §§pop().m_gameState;
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    if(GameState.BATTLE_SCREEN === _loc3_)
                                    {
                                       §§goto(addr227);
                                    }
                                    if(GameState.TOP_DOWN_SCREEN === _loc3_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(1);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr227);
                                          }
                                          §§goto(addr405);
                                       }
                                       §§goto(addr487);
                                    }
                                    else if(GameState.LEVEL_SELECT_SCREEN === _loc3_)
                                    {
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                          §§goto(addr227);
                                       }
                                       else
                                       {
                                          addr193:
                                          if(§§pop() === _loc3_)
                                          {
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                §§push(4);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr366);
                                             }
                                             §§goto(addr525);
                                          }
                                          else
                                          {
                                             §§push(GameState.SPONSOR_SCREEN);
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_ || Boolean(param1))
                                                   {
                                                      addr227:
                                                      loop1:
                                                      switch(0)
                                                      {
                                                         case 0:
                                                            §§push(Singleton.utility.m_screenControllers.m_battleScreen);
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               §§pop().UpdateFullFrames();
                                                               addr231:
                                                               §§push(this.m_updateLoopCounter);
                                                               §§push(3);
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(§§pop() % §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           §§push(Singleton.dynamicData);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr352:
                                                                              _loc3_ = §§pop().m_gameState;
                                                                              addr357:
                                                                              if(GameState.BATTLE_SCREEN === _loc3_)
                                                                              {
                                                                                 addr412:
                                                                                 switch(!(_loc6_ && Boolean(param1)) ? 0 : 3)
                                                                                 {
                                                                                    case 0:
                                                                                       §§push(Singleton.utility);
                                                                                       if(_loc5_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§push(§§pop().m_screenControllers);
                                                                                          if(_loc5_ || Boolean(_loc2_))
                                                                                          {
                                                                                             §§push(§§pop().m_battleScreen);
                                                                                             if(_loc5_ || Boolean(param1))
                                                                                             {
                                                                                                §§pop().UpdateMidFrames();
                                                                                                break;
                                                                                             }
                                                                                             addr443:
                                                                                             §§pop().UpdateLowFrames();
                                                                                             addr553:
                                                                                             Input.clear();
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push((_loc3_ = this).m_updateLoopCounter);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                }
                                                                                                var _loc4_:* = §§pop();
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   _loc3_.m_updateLoopCounter = _loc4_;
                                                                                                }
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   addr588:
                                                                                                   if(this.m_updateLoopCounter == 30)
                                                                                                   {
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                break loop1;
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          addr283:
                                                                                          §§push(§§pop().m_topDownScreen);
                                                                                          if(!(_loc6_ && Boolean(this)))
                                                                                          {
                                                                                             addr298:
                                                                                             §§pop().UpdateMidFrames();
                                                                                             if(_loc5_ || Boolean(_loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr462:
                                                                                             §§goto(addr553);
                                                                                          }
                                                                                          addr450:
                                                                                          §§pop().UpdateLowFrames();
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr453:
                                                                                             §§goto(addr553);
                                                                                          }
                                                                                          addr590:
                                                                                          this.m_updateLoopCounter = 0;
                                                                                          break loop1;
                                                                                       }
                                                                                       addr439:
                                                                                       §§push(§§pop().m_screenControllers);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr442:
                                                                                          §§goto(addr443);
                                                                                          §§push(§§pop().m_battleScreen);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr449:
                                                                                          §§goto(addr450);
                                                                                          §§push(§§pop().m_topDownScreen);
                                                                                       }
                                                                                       §§goto(addr590);
                                                                                    case 1:
                                                                                       addr280:
                                                                                       §§push(Singleton.utility.m_screenControllers);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                       §§goto(addr449);
                                                                                    case 2:
                                                                                       §§push(Singleton.utility);
                                                                                       if(!(_loc6_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop().m_screenControllers.m_levelSelectScreen);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr321:
                                                                                             §§pop().UpdateMidFrames();
                                                                                             break;
                                                                                          }
                                                                                          addr459:
                                                                                          §§pop().UpdateLowFrames();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr462);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr328:
                                                                                          §§push(§§pop().m_screenControllers);
                                                                                          if(_loc5_ || Boolean(_loc3_))
                                                                                          {
                                                                                             addr336:
                                                                                             §§push(§§pop().m_mainMenuScreen);
                                                                                             if(!(_loc6_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                addr344:
                                                                                                §§pop().UpdateMidFrames();
                                                                                                break;
                                                                                             }
                                                                                             §§pop().UpdateLowFrames();
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr471:
                                                                                                §§goto(addr443);
                                                                                             }
                                                                                             §§goto(addr590);
                                                                                          }
                                                                                          §§goto(addr442);
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    case 3:
                                                                                       §§push(Singleton.utility);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                       addr457:
                                                                                       §§goto(addr459);
                                                                                       §§push(§§pop().m_screenControllers.m_levelSelectScreen);
                                                                                 }
                                                                                 §§push(this.m_updateLoopCounter);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(10);
                                                                                    if(_loc5_ || Boolean(_loc2_))
                                                                                    {
                                                                                       addr430:
                                                                                       if(§§pop() % §§pop() == 0)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr476:
                                                                                             §§push(Singleton.dynamicData.m_gameState);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr479:
                                                                                                _loc3_ = §§pop();
                                                                                                if(!(_loc6_ && Boolean(param1)))
                                                                                                {
                                                                                                   addr487:
                                                                                                   §§push(GameState.BATTLE_SCREEN);
                                                                                                   if(_loc5_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc5_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            addr505:
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(GameState.TOP_DOWN_SCREEN);
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr546:
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(GameState.LEVEL_SELECT_SCREEN);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr524:
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           addr525:
                                                                                                                           §§push(2);
                                                                                                                           if(_loc6_ && Boolean(param1))
                                                                                                                           {
                                                                                                                              §§goto(addr546);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr533:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr537:
                                                                                                                           if(GameState.MAIN_MENU === _loc3_)
                                                                                                                           {
                                                                                                                              addr538:
                                                                                                                              §§push(3);
                                                                                                                              if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 §§goto(addr546);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(4);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr537);
                                                                                                                  }
                                                                                                                  §§goto(addr546);
                                                                                                               }
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                            §§goto(addr537);
                                                                                                         }
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      §§goto(addr537);
                                                                                                   }
                                                                                                   §§goto(addr533);
                                                                                                }
                                                                                                §§goto(addr538);
                                                                                             }
                                                                                             §§goto(addr588);
                                                                                          }
                                                                                          §§goto(addr453);
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    }
                                                                                    §§goto(addr588);
                                                                                 }
                                                                                 §§goto(addr479);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(GameState.TOP_DOWN_SCREEN);
                                                                                 if(!(_loc6_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          §§goto(addr412);
                                                                                          §§push(1);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(GameState.LEVEL_SELECT_SCREEN);
                                                                                          if(!(_loc6_ && Boolean(param1)))
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc5_ || Boolean(this))
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   §§push(2);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr405:
                                                                                                   if(GameState.MAIN_MENU === _loc3_)
                                                                                                   {
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(4);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr412);
                                                                                             }
                                                                                             §§goto(addr405);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr533);
                                                                                    }
                                                                                    §§goto(addr405);
                                                                                 }
                                                                              }
                                                                              §§goto(addr546);
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                  }
                                                                  §§goto(addr430);
                                                               }
                                                               §§goto(addr588);
                                                            }
                                                            §§goto(addr443);
                                                         case 1:
                                                            §§push(Singleton.utility.m_screenControllers);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop().m_topDownScreen);
                                                               if(_loc5_)
                                                               {
                                                                  §§pop().UpdateFullFrames();
                                                                  §§goto(addr231);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr336);
                                                         case 2:
                                                            §§push(Singleton.utility.m_screenControllers);
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               §§push(§§pop().m_levelSelectScreen);
                                                               if(_loc5_)
                                                               {
                                                                  §§pop().UpdateFullFrames();
                                                                  §§goto(addr231);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr283);
                                                         case 3:
                                                            §§push(Singleton.utility.m_screenControllers.m_mainMenuScreen);
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().UpdateFullFrames();
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr231);
                                                               }
                                                               §§goto(addr471);
                                                            }
                                                            §§goto(addr344);
                                                         case 4:
                                                            §§push(Singleton.utility);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§pop().m_screenControllers.m_siteLockedScreen.UpdateFullFrames();
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr280);
                                                         case 5:
                                                            Singleton.utility.m_screenControllers.m_sponsorScreen.UpdateFullFrames();
                                                            §§goto(addr231);
                                                         default:
                                                            §§goto(addr231);
                                                      }
                                                      return;
                                                      §§push(5);
                                                   }
                                                   §§goto(addr505);
                                                }
                                                else
                                                {
                                                   §§push(6);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr227);
                                                   }
                                                }
                                                §§goto(addr412);
                                             }
                                          }
                                       }
                                       §§goto(addr524);
                                    }
                                    else
                                    {
                                       §§push(GameState.MAIN_MENU);
                                       §§push(_loc3_);
                                       if(!(_loc6_ && Boolean(this)))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             addr182:
                                             §§push(3);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                                §§goto(addr227);
                                             }
                                             §§goto(addr405);
                                          }
                                          else
                                          {
                                             §§goto(addr193);
                                             §§push(GameState.SITE_LOCKED_SCREEN);
                                          }
                                          §§goto(addr524);
                                       }
                                    }
                                    §§goto(addr357);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr352);
                              addr58:
                           }
                           else
                           {
                              §§push(Singleton.utility);
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr328);
                        }
                        break;
                     }
                     switch(§§pop())
                     {
                        case 0:
                           §§push(Singleton.utility);
                           if(_loc5_)
                           {
                              §§goto(addr439);
                           }
                           else
                           {
                              addr448:
                              §§push(§§pop().m_screenControllers);
                           }
                           §§goto(addr449);
                        case 1:
                           §§goto(addr448);
                           §§push(Singleton.utility);
                        case 2:
                           §§goto(addr457);
                           §§push(Singleton.utility);
                        case 3:
                           §§goto(addr336);
                           §§push(Singleton.utility.m_screenControllers.m_mainMenuScreen);
                        default:
                           §§goto(addr443);
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr39);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr38);
      }
      
      private function TestGotoBattleScreen() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.BATTLE_SCREEN);
         }
      }
      
      private function TestGotoTopDownScreen() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
         }
      }
      
      private function CreateFromSnapShot() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:OwnedMinion = null;
         var _loc2_:Vector.<int> = null;
         var _loc3_:OwnedGem = null;
         var _loc4_:int = 0;
         if(_loc5_)
         {
            Singleton.dynamicData.m_currMoney = 9;
         }
         _loc1_ = new OwnedMinion(0);
         if(!_loc6_)
         {
            Singleton.dynamicData.AddToOwnedMinions(_loc1_);
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               _loc1_.m_currentExp = 10980;
            }
         }
         _loc2_ = new Vector.<int>();
         if(_loc5_ || Boolean(_loc1_))
         {
            _loc2_.push(80);
            _loc2_.push(105);
            if(!_loc6_)
            {
               _loc2_.push(201);
               addr75:
               _loc2_.push(176);
            }
            Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
            _loc1_.CalculateCurrStats();
            if(_loc5_)
            {
               _loc1_.ReFillHealthAndEnergy();
            }
            _loc1_ = new OwnedMinion(3);
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               Singleton.dynamicData.AddToOwnedMinions(_loc1_);
               if(_loc5_)
               {
                  _loc1_.m_currentExp = 11129;
               }
            }
            _loc2_ = new Vector.<int>();
            _loc2_.push(80);
            _loc2_.push(5);
            _loc2_.push(350);
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               _loc2_.push(335);
               Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
               _loc1_.CalculateCurrStats();
               _loc1_.ReFillHealthAndEnergy();
            }
            _loc1_ = new OwnedMinion(11);
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               Singleton.dynamicData.AddToOwnedMinions(_loc1_);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  addr167:
                  _loc1_.m_currentExp = 10906;
               }
               _loc2_ = new Vector.<int>();
               if(!_loc6_)
               {
                  _loc2_.push(75);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     _loc2_.push(105);
                     if(_loc5_)
                     {
                        addr200:
                        _loc2_.push(455);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           addr210:
                           _loc2_.push(460);
                           if(_loc5_)
                           {
                              addr215:
                              Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
                           }
                        }
                        _loc3_ = new OwnedGem();
                        _loc3_.m_tier = 1;
                        _loc3_.m_rawStats[0] = 0;
                        if(!(_loc6_ && Boolean(this)))
                        {
                           _loc3_.m_rawStats[1] = 0.9026685781311242;
                           if(_loc5_)
                           {
                              _loc3_.m_rawStats[2] = 0;
                              _loc3_.m_rawStats[3] = 0;
                              _loc3_.m_rawStats[4] = 1.8053371562622484;
                              _loc1_.SetGemAt(_loc3_,0);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 _loc1_.CalculateCurrStats();
                                 if(_loc6_)
                                 {
                                 }
                                 addr278:
                                 _loc1_ = new OwnedMinion(15);
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    Singleton.dynamicData.AddToOwnedMinions(_loc1_);
                                    if(!_loc6_)
                                    {
                                       _loc1_.m_currentExp = 10000;
                                    }
                                 }
                                 _loc2_ = new Vector.<int>();
                                 if(_loc5_)
                                 {
                                    _loc2_.push(75);
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.push(155);
                                       if(!_loc6_)
                                       {
                                          _loc2_.push(150);
                                          if(_loc6_ && Boolean(_loc2_))
                                          {
                                          }
                                          addr342:
                                          Singleton.utility.AutoBuildMovesForMinion(_loc1_,_loc2_);
                                          addr347:
                                          _loc3_ = new OwnedGem();
                                          _loc3_.m_tier = 1;
                                          _loc3_.m_rawStats[0] = 0;
                                          _loc3_.m_rawStats[1] = 0;
                                          _loc3_.m_rawStats[2] = 1.0881441179197282;
                                          _loc3_.m_rawStats[3] = 1.0881441179197282;
                                          if(!_loc6_)
                                          {
                                             _loc3_.m_rawStats[4] = 1.0881441179197282;
                                             _loc1_.SetGemAt(_loc3_,0);
                                             _loc1_.CalculateCurrStats();
                                             if(!_loc6_)
                                             {
                                                addr396:
                                                _loc1_.ReFillHealthAndEnergy();
                                             }
                                             return;
                                          }
                                          §§goto(addr396);
                                       }
                                       _loc2_.push(165);
                                       if(_loc6_ && Boolean(this))
                                       {
                                       }
                                       §§goto(addr347);
                                    }
                                 }
                                 §§goto(addr342);
                              }
                              _loc1_.ReFillHealthAndEnergy();
                           }
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr215);
                  }
                  §§goto(addr200);
               }
               §§goto(addr210);
            }
            §§goto(addr167);
         }
         §§goto(addr75);
      }
   }
}
