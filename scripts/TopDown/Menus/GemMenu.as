package TopDown.Menus
{
   import Minions.OwnedMinion;
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.Gems.GemSelector;
   import SharedObjects.Gems.GemVisuals;
   import SharedObjects.Gems.OwnedGem;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import TopDown.Menus.MinionDetails.MinionDetailsScreen;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class GemMenu extends GameObject
   {
       
      
      public var m_blackBackground:Sprite;
      
      private var m_ad:Sprite;
      
      private var m_moreGamesButton:TCButton;
      
      private var m_background:Sprite;
      
      private var m_closeButton:TCButton;
      
      private var m_returnButton:TCButton;
      
      private var m_equipButton:TCButton;
      
      private var m_unEquipButton:TCButton;
      
      private var m_currGemVisuals:GemVisuals;
      
      private var m_currGemButton:TCButton;
      
      private var m_gemSelector:GemSelector;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_currGemPosition:int;
      
      private var m_minionDetailsScreen:MinionDetailsScreen;
      
      public function GemMenu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_blackBackground = new Sprite();
            this.m_blackBackground.graphics.beginFill(0);
            if(_loc1_)
            {
               this.m_blackBackground.graphics.drawRect(0,0,700,525);
               this.m_blackBackground.graphics.endFill();
               if(_loc1_ || _loc2_)
               {
                  this.m_blackBackground.visible = false;
                  if(!_loc2_)
                  {
                     Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_blackBackground);
                     this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemMenuBackground");
                     addChild(this.m_background);
                     if(!_loc2_)
                     {
                        this.m_ad = Singleton.utility.m_spriteHandler.CreateSprite("menus_sponsorMoreGames_background");
                        this.m_ad.x = 23;
                     }
                     this.m_ad.y = 23;
                     this.m_background.addChild(this.m_ad);
                     this.m_moreGamesButton = new TCButton(this.MoreGamesButtonHasBeenPressed,"menus_sponsorMoreGames_button");
                     §§push(this.m_moreGamesButton);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(111);
                        if(_loc1_)
                        {
                           §§pop().x = §§pop();
                           if(!_loc2_)
                           {
                              addr116:
                              this.m_moreGamesButton.y = 197;
                              this.m_background.addChild(this.m_moreGamesButton);
                              if(!_loc2_)
                              {
                                 this.m_gemSelector = new GemSelector();
                                 §§push(this.m_gemSelector);
                                 if(_loc1_)
                                 {
                                    §§pop().LoadSprites();
                                    §§push(this.m_gemSelector);
                                    if(!_loc2_)
                                    {
                                       §§push(332);
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§pop().x = §§pop();
                                          if(_loc1_)
                                          {
                                             addr151:
                                             this.m_gemSelector.y = 18;
                                             this.m_background.addChild(this.m_gemSelector);
                                             if(_loc1_)
                                             {
                                                addr159:
                                                this.m_closeButton = new TCButton(this.CloseButtonHasBeenPressed,"menus_exitButton");
                                                §§push(this.m_closeButton);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(624);
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      §§pop().x = §§pop();
                                                      §§goto(addr464);
                                                   }
                                                   §§pop().y = §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      this.m_background.addChild(this.m_closeButton);
                                                      addr197:
                                                      this.m_equipButton = new TCButton(this.EquipHasBeenPressed,"menus_gemMenu_equipButton");
                                                      addr204:
                                                      §§push(this.m_equipButton);
                                                      if(_loc1_)
                                                      {
                                                         §§push(555);
                                                         if(!_loc2_)
                                                         {
                                                            §§pop().x = §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               addr217:
                                                               this.m_equipButton.y = 284;
                                                               this.m_background.addChild(this.m_equipButton);
                                                               if(_loc1_)
                                                               {
                                                                  this.m_unEquipButton = new TCButton(this.UnEquipHasBeenPressed,"menus_gemMenu_unEquipButton");
                                                                  §§push(this.m_unEquipButton);
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     §§push(325);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        addr259:
                                                                        §§push(this.m_unEquipButton);
                                                                        §§push(287);
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        this.m_background.addChild(this.m_unEquipButton);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           this.m_currGemButton = new TCButton(this.NothingFunctionForTooltip,"menus_emptyGemSocket");
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(this.m_currGemButton);
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§push(280);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr302);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   addr297:
                                                   §§push(this.m_currGemButton);
                                                   if(_loc1_)
                                                   {
                                                      addr302:
                                                      §§pop().y = 284;
                                                      addr303:
                                                      §§push(this.m_currGemButton);
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         §§goto(addr312);
                                                      }
                                                      §§pop().visible = false;
                                                      if(_loc1_)
                                                      {
                                                         §§push(this.m_currGemButton);
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            §§goto(addr342);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      §§goto(addr386);
                                                   }
                                                   addr312:
                                                   §§pop().ActivateTooltip();
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      §§push(this.m_currGemButton);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                      }
                                                      addr342:
                                                      §§push(0.7);
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().scaleX = §§pop();
                                                         addr348:
                                                         §§push(this.m_currGemButton);
                                                         §§push(0.7);
                                                      }
                                                      §§pop().scaleY = §§pop();
                                                      this.m_background.addChild(this.m_currGemButton);
                                                      this.m_currGemVisuals = new GemVisuals();
                                                      §§push(this.m_currGemVisuals);
                                                      if(_loc1_)
                                                      {
                                                         §§push(this.m_currGemButton);
                                                         if(_loc1_)
                                                         {
                                                            §§pop().x = §§pop().x;
                                                            addr369:
                                                            §§push(this.m_currGemVisuals);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(this.m_currGemButton);
                                                               if(_loc1_)
                                                               {
                                                                  §§goto(addr382);
                                                               }
                                                            }
                                                            §§goto(addr404);
                                                         }
                                                         addr382:
                                                         §§pop().y = §§pop().y;
                                                         if(!_loc2_)
                                                         {
                                                            addr386:
                                                            §§push(this.m_currGemVisuals);
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               addr395:
                                                               §§push(this.m_currGemButton);
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  addr404:
                                                                  §§pop().scaleX = §§pop().scaleX;
                                                                  addr408:
                                                                  §§push(this.m_currGemVisuals);
                                                                  §§push(this.m_currGemButton);
                                                               }
                                                               §§pop().scaleY = §§pop().scaleY;
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                               }
                                                               §§goto(addr464);
                                                            }
                                                            §§goto(addr408);
                                                         }
                                                         this.m_background.addChild(this.m_currGemVisuals);
                                                         this.m_returnButton = new TCButton(this.ReturnButtonHasBeenPressed,"menus_returnButton");
                                                         §§push(this.m_returnButton);
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            §§push(3);
                                                            if(!_loc2_)
                                                            {
                                                               §§pop().x = §§pop();
                                                            }
                                                         }
                                                         §§goto(addr464);
                                                      }
                                                      §§goto(addr395);
                                                   }
                                                   §§goto(addr464);
                                                }
                                                §§goto(addr188);
                                             }
                                             §§goto(addr259);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr369);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr464);
               }
               §§goto(addr342);
            }
            §§goto(addr197);
         }
         addr464:
         if(!_loc2_)
         {
            addr188:
            §§push(this.m_closeButton);
            §§push(-22);
         }
         this.m_returnButton.y = 291;
         this.m_background.addChild(this.m_returnButton);
         this.m_background.visible = false;
      }
      
      public function BringIn(param1:MinionDetailsScreen, param2:int, param3:OwnedMinion = null, param4:int = -99) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:OwnedGem = null;
         if(!_loc6_)
         {
            §§push(Singleton.utility);
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(§§pop().m_screenControllers);
               if(!(_loc6_ && Boolean(param2)))
               {
                  §§push(§§pop().m_topDownScreen);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(_loc7_ || Boolean(param1))
                     {
                        §§pop().m_menuState = param2;
                        this.m_minionDetailsScreen = param1;
                        if(!_loc6_)
                        {
                           this.m_currMinion = param3;
                           if(!_loc6_)
                           {
                              this.m_currGemPosition = param4;
                              §§push(this.m_currMinion);
                              if(!_loc6_)
                              {
                                 if(§§pop() != null)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(this.m_equipButton);
                                       if(!(_loc6_ && Boolean(param3)))
                                       {
                                          §§push(true);
                                          if(_loc7_ || Boolean(param3))
                                          {
                                             §§pop().visible = §§pop();
                                             this.m_blackBackground.visible = true;
                                             if(!(_loc6_ && Boolean(param3)))
                                             {
                                                this.m_blackBackground.alpha = 0;
                                                addr115:
                                                TweenLite.to(this.m_blackBackground,0.5,{"alpha":0.3});
                                                §§push(this.m_closeButton);
                                                if(_loc7_)
                                                {
                                                   §§push(false);
                                                   if(!(_loc6_ && Boolean(param3)))
                                                   {
                                                      §§pop().visible = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         addr153:
                                                         if(this.m_currGemPosition != -99)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr161:
                                                               _loc5_ = this.m_currMinion.GetGemAt(this.m_currGemPosition);
                                                               addr166:
                                                               if(_loc5_ != null)
                                                               {
                                                                  §§push(this.m_unEquipButton);
                                                                  if(!(_loc6_ && Boolean(param3)))
                                                                  {
                                                                     §§push(true);
                                                                     if(!(_loc6_ && Boolean(param1)))
                                                                     {
                                                                        §§pop().visible = §§pop();
                                                                        §§push(this.m_currGemVisuals);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(true);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().visible = §§pop();
                                                                              §§push(this.m_currGemVisuals);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr199:
                                                                                 §§pop().SetGem(_loc5_);
                                                                                 this.m_currGemButton.SetNewPopupSprite(_loc5_.GetTooltip());
                                                                                 addr222:
                                                                                 this.m_gemSelector.BringIn();
                                                                                 Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
                                                                                 return;
                                                                                 addr201:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr220:
                                                                                 §§push(false);
                                                                              }
                                                                              §§goto(addr222);
                                                                           }
                                                                           §§pop().visible = §§pop();
                                                                           §§goto(addr222);
                                                                        }
                                                                        §§goto(addr199);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr217:
                                                                        §§pop().visible = §§pop();
                                                                        §§push(this.m_currGemVisuals);
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr216:
                                                                     §§push(false);
                                                                  }
                                                                  §§goto(addr217);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.m_unEquipButton);
                                                               }
                                                               §§goto(addr216);
                                                               addr159:
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr166);
                                                         addr138:
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                else
                                                {
                                                   addr149:
                                                   §§push(true);
                                                }
                                                §§pop().visible = §§pop();
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr166);
                                             }
                                             §§goto(addr217);
                                          }
                                          else
                                          {
                                             addr142:
                                             §§pop().visible = §§pop();
                                             this.m_blackBackground.visible = false;
                                             §§push(this.m_closeButton);
                                          }
                                          §§goto(addr149);
                                       }
                                       else
                                       {
                                          addr141:
                                          §§push(false);
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr199);
                                 }
                                 else
                                 {
                                    §§push(this.m_equipButton);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr161);
                     }
                  }
               }
            }
            §§goto(addr199);
         }
         §§goto(addr115);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimation(this.m_background);
            if(!(_loc1_ && _loc1_))
            {
               if(this.m_currMinion != null)
               {
                  if(_loc1_)
                  {
                  }
               }
               §§goto(addr64);
            }
            TweenLite.to(this.m_blackBackground,0.5,{"alpha":0});
         }
         addr64:
      }
      
      private function NothingFunctionForTooltip(param1:MouseEvent) : void
      {
      }
      
      private function UnEquipHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            Singleton.dynamicData.AddToOwnedGems(this.m_currMinion.GetGemAt(this.m_currGemPosition));
            if(!_loc2_)
            {
               this.m_currMinion.SetGemAt(null,this.m_currGemPosition);
               if(_loc2_)
               {
               }
               §§goto(addr77);
            }
            this.ReturnButtonHasBeenPressed(null);
            if(_loc3_ || Boolean(this))
            {
               this.m_minionDetailsScreen.SnapIn(this.m_currMinion);
               if(_loc3_)
               {
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.JustCallMinionUpdates();
               }
            }
         }
         addr77:
      }
      
      private function EquipHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(Singleton.dynamicData.GetGemPosition(this.m_gemSelector.m_selectedGem));
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:OwnedGem = this.m_currMinion.GetGemAt(this.m_currGemPosition);
         this.m_currMinion.SetGemAt(this.m_gemSelector.m_selectedGem,this.m_currGemPosition);
         if(_loc4_ || Boolean(this))
         {
            §§push(Singleton.dynamicData);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               §§pop().SetGemAt(_loc3_,_loc2_);
               this.ReturnButtonHasBeenPressed(null);
               §§goto(addr79);
            }
            §§goto(addr95);
         }
         addr79:
         this.m_minionDetailsScreen.SnapIn(this.m_currMinion);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.JustCallMinionUpdates();
         if(!_loc5_)
         {
            addr95:
            Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS,true);
         }
      }
      
      private function MoreGamesButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:StaticData = Singleton.staticData;
         §§push(_loc2_.m_sponsorURL_part1);
         if(_loc6_)
         {
            §§push(§§pop() + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5);
         }
         var _loc3_:* = §§pop();
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            navigateToURL(_loc4_);
         }
      }
      
      private function CloseButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
      
      private function ReturnButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.ExitOut();
            if(this.m_currMinion == null)
            {
               §§push(Singleton.utility);
               if(!_loc2_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(!_loc2_)
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop().m_rootTopDownMenu.BringIn();
                           §§push(Singleton.utility);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop().m_screenControllers);
                              if(_loc3_)
                              {
                                 §§push(§§pop().m_topDownScreen);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().m_topDownMenuScreen);
                                    if(!_loc2_)
                                    {
                                       addr70:
                                       §§push(TopDownMenuState.TOP_DOWN_MENU_ROOT);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§pop().m_menuState = §§pop();
                                          if(_loc2_ && Boolean(this))
                                          {
                                             addr169:
                                          }
                                       }
                                       else
                                       {
                                          addr177:
                                          §§pop().m_menuState = §§pop();
                                       }
                                       §§goto(addr178);
                                    }
                                    else
                                    {
                                       addr175:
                                       §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS);
                                    }
                                 }
                                 else
                                 {
                                    addr142:
                                    §§push(§§pop().m_topDownMenuScreen);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(TopDownMenuState.TOP_DOWN_MENU_ROOT);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§pop().m_menuState = §§pop();
                                          if(!_loc2_)
                                          {
                                             §§goto(addr169);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr177);
                                       }
                                       addr178:
                                       return;
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr177);
                              }
                              else
                              {
                                 addr134:
                                 §§push(§§pop().m_topDownScreen);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§goto(addr142);
                                 }
                                 else
                                 {
                                    addr174:
                                    §§push(§§pop().m_topDownMenuScreen);
                                 }
                                 §§goto(addr175);
                              }
                           }
                           else
                           {
                              addr104:
                              §§push(§§pop().m_screenControllers);
                              if(_loc3_)
                              {
                                 §§push(§§pop().m_topDownScreen);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§push(§§pop().m_topDownMenuScreen);
                                    if(_loc3_)
                                    {
                                       if(§§pop().m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE)
                                       {
                                          addr122:
                                          §§push(Singleton.utility);
                                          if(_loc3_)
                                          {
                                             addr126:
                                             §§push(§§pop().m_screenControllers);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr134);
                                             }
                                             else
                                             {
                                                addr173:
                                                §§goto(addr174);
                                                §§push(§§pop().m_topDownScreen);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr173);
                                       }
                                       else
                                       {
                                          §§push(Singleton.utility);
                                       }
                                       §§goto(addr173);
                                       §§push(§§pop().m_screenControllers);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr134);
               }
            }
            else
            {
               §§push(Singleton.utility);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr104);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr122);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.UpdateFullFrames();
         §§push(this.m_gemSelector);
         if(_loc1_)
         {
            §§pop().Update();
            this.m_returnButton.m_isActive = true;
            this.m_moreGamesButton.m_isActive = true;
            §§push(this.m_currMinion);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  addr41:
                  if(this.m_gemSelector.m_selectedGem != null)
                  {
                     §§push(this.m_equipButton);
                     if(!_loc2_)
                     {
                        §§pop().m_isActive = true;
                        §§push(this.m_equipButton);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().alpha = 1;
                           if(!_loc2_)
                           {
                              §§goto(addr82);
                           }
                           §§goto(addr91);
                        }
                        else
                        {
                           §§pop().alpha = 0.3;
                           addr73:
                        }
                        §§goto(addr82);
                     }
                  }
                  else
                  {
                     §§push(this.m_equipButton);
                  }
                  §§goto(addr73);
               }
               else
               {
                  this.m_closeButton.m_isActive = true;
               }
               addr82:
               §§goto(addr84);
            }
            addr84:
            if(this.m_currMinion.GetGemAt(this.m_currGemPosition) != null)
            {
               if(_loc1_)
               {
                  addr91:
                  this.m_unEquipButton.m_isActive = true;
                  this.m_currGemButton.m_isActive = true;
               }
            }
            return;
         }
         §§goto(addr41);
      }
   }
}
