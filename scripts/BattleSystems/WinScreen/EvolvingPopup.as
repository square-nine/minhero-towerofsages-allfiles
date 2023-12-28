package BattleSystems.WinScreen
{
   import BattleSystems.Visuals.BattleScreenMinionVisual;
   import Minions.BaseMinion;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.BattleScreenStates;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class EvolvingPopup extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_closeButton:TCButton;
      
      private var m_minionOldIcon:Sprite;
      
      private var m_minionNewIcon:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_oldBaseMinion:BaseMinion;
      
      private var m_newBaseMinion:BaseMinion;
      
      private var m_newMinionCoverBackground:Sprite;
      
      private var m_oldMinionMaskBackground:Sprite;
      
      private var m_whatsHappeningText:TextField;
      
      public function EvolvingPopup()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_evolution_popUp");
         this.m_background.x = 9;
         if(_loc2_ || _loc3_)
         {
            this.m_background.y = 5;
            addChild(this.m_background);
         }
         this.m_closeButton = new TCButton(this.CloseButtonPressed,"battleScreenMenus_evolution_closeButton");
         if(!_loc3_)
         {
            §§push(this.m_closeButton);
            if(!_loc3_)
            {
               §§push(323);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§pop().x = §§pop();
                  addr80:
                  if(!_loc3_)
                  {
                     addr65:
                     §§push(this.m_closeButton);
                     §§push(7);
                  }
                  var _loc1_:TextFormat = new TextFormat();
                  if(!_loc3_)
                  {
                     _loc1_.color = 16382457;
                     _loc1_.size = 17;
                     _loc1_.font = "BurbinCasual";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.align = TextFormatAlign.LEFT;
                        if(_loc2_ || Boolean(this))
                        {
                           addr113:
                           this.m_whatsHappeningText = new TextField();
                           this.m_whatsHappeningText.embedFonts = true;
                           this.m_whatsHappeningText.x = 31;
                           this.m_whatsHappeningText.y = 244;
                           this.m_whatsHappeningText.defaultTextFormat = _loc1_;
                           this.m_whatsHappeningText.text = "Cactilla is growing...";
                           this.m_whatsHappeningText.width = 350;
                           this.m_whatsHappeningText.selectable = false;
                           if(_loc2_)
                           {
                              addChild(this.m_whatsHappeningText);
                              this.visible = false;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr113);
               }
               §§pop().y = §§pop();
               if(_loc2_)
               {
                  addChild(this.m_closeButton);
               }
               §§goto(addr80);
            }
            §§goto(addr65);
         }
         §§goto(addr80);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.UpdateFullFrames();
            if(_loc2_)
            {
               this.m_closeButton.m_isActive = true;
            }
         }
      }
      
      private function CloseButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            TweenLite.killTweensOf(this);
            if(_loc3_)
            {
               TweenLite.killTweensOf(this.m_minionOldIcon);
               if(_loc3_ || Boolean(param1))
               {
               }
               §§goto(addr47);
            }
            TweenLite.killTweensOf(this.m_minionNewIcon);
            if(!_loc2_)
            {
               this.ExitOut();
            }
         }
         addr47:
      }
      
      public function BringInForMinion(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.m_currMinion = param1;
         this.visible = true;
         this.alpha = 0;
         if(_loc3_)
         {
            TweenLite.to(this,0.5,{"alpha":1});
            if(!(_loc2_ && _loc3_))
            {
               this.m_newBaseMinion = Singleton.staticData.GetBaseMinion(param1.m_minionDexID + 1);
               if(_loc3_)
               {
                  this.m_minionNewIcon = Singleton.utility.m_spriteHandler.CreateSprite(this.m_newBaseMinion.m_minionBattleSprite);
                  if(!_loc2_)
                  {
                     addChild(this.m_minionNewIcon);
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        this.m_minionNewIcon.x = 96 - this.m_minionNewIcon.width / 2;
                        if(!_loc2_)
                        {
                           this.m_minionNewIcon.y = 169 - this.m_minionNewIcon.height;
                           this.m_newMinionCoverBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_evolution_mask");
                           this.m_newMinionCoverBackground.x = 13;
                           this.m_newMinionCoverBackground.y = 7;
                           addChild(this.m_newMinionCoverBackground);
                           addr111:
                           this.m_oldBaseMinion = param1.m_baseMinion;
                           if(!_loc2_)
                           {
                              this.m_minionOldIcon = Singleton.utility.m_spriteHandler.CreateSprite(param1.m_baseMinion.m_minionBattleSprite);
                              if(!_loc2_)
                              {
                                 addChild(this.m_minionOldIcon);
                                 if(_loc3_)
                                 {
                                    this.m_minionOldIcon.cacheAsBitmap = true;
                                    this.m_minionOldIcon.x = 96 - this.m_minionOldIcon.width / 2;
                                    if(_loc3_)
                                    {
                                       this.m_minionOldIcon.y = 169 - this.m_minionOldIcon.height;
                                       if(!_loc2_)
                                       {
                                          this.m_oldMinionMaskBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_evolution_mask");
                                          addr174:
                                          this.m_oldMinionMaskBackground.x = 13;
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             addr185:
                                             this.m_oldMinionMaskBackground.y = 7;
                                             addChild(this.m_oldMinionMaskBackground);
                                             if(_loc3_)
                                             {
                                                addr195:
                                                this.m_oldMinionMaskBackground.cacheAsBitmap = true;
                                                addr199:
                                                this.m_minionOldIcon.mask = this.m_oldMinionMaskBackground;
                                                addr204:
                                                this.m_whatsHappeningText.text = param1.m_baseMinion.m_baseMinionName + " is growing...";
                                                this.m_closeButton.visible = true;
                                                if(_loc3_)
                                                {
                                                }
                                                TweenLite.to(this,2,{
                                                   "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                   "onCompleteParams":["battle_whoosh_magic2"]
                                                });
                                                addr268:
                                                TweenLite.to(this,3.7,{
                                                   "onComplete":Singleton.utility.m_soundController.PlaySound,
                                                   "onCompleteParams":["battle_levelUp",0.2]
                                                });
                                                addr282:
                                                return;
                                                addr248:
                                             }
                                             TweenLite.to(this.m_minionOldIcon,2.5,{
                                                "delay":2,
                                                "x":"173"
                                             });
                                             TweenLite.to(this.m_minionNewIcon,2.5,{
                                                "delay":2,
                                                "x":"173",
                                                "onComplete":this.FinishEvolution
                                             });
                                             if(_loc2_ && Boolean(param1))
                                             {
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr248);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr268);
                     }
                  }
                  §§goto(addr185);
               }
               §§goto(addr204);
            }
            §§goto(addr111);
         }
         §§goto(addr174);
      }
      
      private function FinishEvolution() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:BattleScreenMinionVisual = null;
         var _loc3_:BattleScreenMinionVisual = null;
         var _loc1_:* = this.m_currMinion.m_minionName == this.m_currMinion.m_baseMinion.m_baseMinionName;
         if(_loc6_)
         {
            §§push(this.m_currMinion);
            if(_loc6_)
            {
               var _loc4_:*;
               §§push((_loc4_ = §§pop()).m_minionDexID);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  §§push(§§pop() + 1);
               }
               var _loc5_:* = §§pop();
               if(!_loc7_)
               {
                  _loc4_.m_minionDexID = _loc5_;
               }
               if(_loc6_)
               {
                  addr55:
                  if(_loc1_)
                  {
                     if(_loc6_)
                     {
                        addr61:
                        this.m_currMinion.m_minionName = this.m_currMinion.m_baseMinion.m_baseMinionName;
                     }
                  }
               }
               _loc2_ = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_currMinion);
               if(!_loc7_)
               {
                  _loc2_.Cleanup();
                  if(_loc6_)
                  {
                     _loc2_.SetNewMinion(this.m_currMinion,true);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        addr94:
                        _loc2_.alpha = 1;
                        if(!_loc7_)
                        {
                           _loc2_.visible = true;
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              addr116:
                              _loc2_.TurnOffInterface();
                           }
                           _loc3_ = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(this.m_currMinion);
                           if(_loc6_ || _loc1_)
                           {
                              _loc3_.Cleanup();
                              _loc2_.alpha = 1;
                              _loc2_.visible = true;
                              if(!_loc7_)
                              {
                                 _loc3_.SetNewMinion(this.m_currMinion,true);
                                 this.m_whatsHappeningText.text = this.m_oldBaseMinion.m_baseMinionName + " has grown into a " + this.m_newBaseMinion.m_baseMinionName + "!";
                              }
                              this.m_closeButton.visible = false;
                              if(!_loc7_)
                              {
                                 §§push(Singleton.dynamicData);
                                 if(!_loc7_)
                                 {
                                    §§push(this.m_newBaseMinion);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().m_minionDexID);
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§push(true);
                                          if(_loc6_)
                                          {
                                             §§pop().SetHasMinionBeenSeen(§§pop(),§§pop());
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                §§goto(addr210);
                                             }
                                             §§goto(addr213);
                                          }
                                          addr210:
                                          Singleton.dynamicData.SetIsMinionOwned(this.m_newBaseMinion.m_minionDexID,true);
                                          §§goto(addr209);
                                       }
                                       addr209:
                                       §§goto(addr208);
                                    }
                                    addr208:
                                    §§goto(addr206);
                                 }
                                 addr206:
                                 §§goto(addr204);
                              }
                           }
                           addr204:
                           if(_loc6_)
                           {
                              addr213:
                              TweenLite.to(this,1.5,{"onComplete":this.ExitOut});
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr94);
            }
            §§goto(addr61);
         }
         §§goto(addr55);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            TweenLite.to(this,0.5,{
               "alpha":0,
               "onComplete":this.FinishExitOut
            });
         }
      }
      
      private function FinishExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         visible = false;
         this.m_minionOldIcon.mask = null;
         if(_loc2_)
         {
            this.m_minionOldIcon.parent.removeChild(this.m_minionOldIcon);
         }
         this.m_minionNewIcon.parent.removeChild(this.m_minionNewIcon);
         §§push(Singleton.utility);
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§pop().m_screenControllers);
            if(!_loc1_)
            {
               §§push(§§pop().m_battleScreen);
               if(!(_loc1_ && Boolean(this)))
               {
                  if(§§pop().m_currState == BattleScreenStates.BSS_VICTORY_MENUS)
                  {
                     §§push(Singleton.utility);
                     if(!_loc1_)
                     {
                        §§push(§§pop().m_screenControllers);
                        if(!_loc1_)
                        {
                           §§push(§§pop().m_battleScreen);
                           if(_loc2_)
                           {
                              §§pop().m_winScreen.ExitEvolutionScreen();
                              if(_loc2_ || _loc1_)
                              {
                              }
                           }
                           else
                           {
                              addr97:
                              §§pop().m_loseScreen.ExitEvolutionScreen();
                           }
                           return;
                        }
                        addr96:
                        §§push(§§pop().m_battleScreen);
                     }
                     else
                     {
                        addr95:
                        §§goto(addr96);
                        §§push(§§pop().m_screenControllers);
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     §§goto(addr95);
                     §§push(Singleton.utility);
                  }
                  §§goto(addr95);
               }
               §§goto(addr97);
            }
            §§goto(addr96);
         }
         §§goto(addr95);
      }
   }
}
