package BattleSystems.WinScreen
{
   import BattleSystems.Visuals.BattleScreenMinionVisual;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class LeveledUpBattleScreenPiece extends GameObject
   {
       
      
      private const m_maxStatPerBar:Number = 300;
      
      private var m_background:Sprite;
      
      private var m_minionNameText:TextField;
      
      private var m_minionLevelText:TextField;
      
      private var m_minionStatTexts:Vector.<TextField>;
      
      private var m_newMinionStatTexts:Vector.<TextField>;
      
      private var m_skillPointBackground:Sprite;
      
      private var m_statsForCurrLevel:Vector.<int>;
      
      private var m_statsForNextLevel:Vector.<int>;
      
      private var m_settingLevel:int;
      
      public function LeveledUpBattleScreenPiece()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               this.m_minionStatTexts = new Vector.<TextField>(5);
               if(!_loc1_)
               {
                  this.m_newMinionStatTexts = new Vector.<TextField>(5);
                  if(!_loc1_)
                  {
                     this.m_statsForCurrLevel = new Vector.<int>(5);
                     if(!_loc1_)
                     {
                        addr71:
                        this.m_statsForNextLevel = new Vector.<int>(5);
                     }
                  }
                  §§goto(addr71);
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function LoadSprites() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_levelUp_popUp");
            if(_loc6_ || _loc2_)
            {
               addr29:
               this.m_background.y = -32;
               if(_loc6_ || Boolean(this))
               {
                  addr40:
                  addChild(this.m_background);
               }
               var _loc1_:TextFormat = new TextFormat();
               _loc1_.color = 15461355;
               if(_loc6_ || _loc3_)
               {
                  _loc1_.size = 20;
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc1_.font = "BurbinCasual";
                     if(!_loc7_)
                     {
                        _loc1_.align = TextFormatAlign.LEFT;
                        this.m_minionNameText = new TextField();
                        this.m_minionNameText.embedFonts = true;
                        this.m_minionNameText.x = 22;
                        this.m_minionNameText.y = 30 - 17;
                        if(_loc6_)
                        {
                           this.m_minionNameText.defaultTextFormat = _loc1_;
                           if(_loc6_)
                           {
                              this.m_minionNameText.text = "Cactilla";
                              this.m_minionNameText.width = 350;
                              if(_loc6_ || Boolean(this))
                              {
                                 this.m_minionNameText.selectable = false;
                                 if(_loc6_)
                                 {
                                    addChild(this.m_minionNameText);
                                    if(_loc6_)
                                    {
                                       this.m_minionLevelText = new TextField();
                                       addr134:
                                       this.m_minionLevelText.embedFonts = true;
                                       this.m_minionLevelText.x = 33;
                                       if(_loc6_)
                                       {
                                          this.m_minionLevelText.y = 30 - 17;
                                          _loc1_.size = 20;
                                          addr153:
                                          _loc1_.align = TextFormatAlign.RIGHT;
                                       }
                                    }
                                 }
                                 this.m_minionLevelText.defaultTextFormat = _loc1_;
                                 if(!_loc7_)
                                 {
                                    addr163:
                                    this.m_minionLevelText.text = "lv. 99";
                                    addr167:
                                    this.m_minionLevelText.width = 150;
                                    addr171:
                                    this.m_minionLevelText.selectable = false;
                                    addChild(this.m_minionLevelText);
                                 }
                                 var _loc2_:TextFormat = new TextFormat();
                                 if(!_loc7_)
                                 {
                                    _loc2_.color = 2961720;
                                    if(!_loc7_)
                                    {
                                       _loc2_.size = 15;
                                       if(!_loc7_)
                                       {
                                          _loc2_.font = "BurbinCasual";
                                          if(!(_loc7_ && Boolean(_loc1_)))
                                          {
                                             addr205:
                                             _loc2_.align = TextFormatAlign.LEFT;
                                          }
                                       }
                                       var _loc3_:Array = ["menus_statsBars_full_health","menus_statsBars_full_armor","menus_statsBars_full_attack","menus_statsBars_full_armorPenetration","menus_statsBars_full_speed"];
                                       var _loc4_:Array = ["menus_statsBars_cap_health","menus_statsBars_cap_armor","menus_statsBars_cap_attack","menus_statsBars_cap_armorPenetration","menus_statsBars_cap_speed"];
                                       var _loc5_:int = 0;
                                       while(true)
                                       {
                                          if(_loc5_ >= 5)
                                          {
                                             this.m_skillPointBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_newSkillPointIndicator");
                                             this.m_skillPointBackground.x = 186;
                                             if(_loc6_)
                                             {
                                                this.m_skillPointBackground.y = 39;
                                                if(!_loc7_)
                                                {
                                                   addr439:
                                                   addChild(this.m_skillPointBackground);
                                                }
                                                addr443:
                                                visible = false;
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             this.m_minionStatTexts[_loc5_] = new TextField();
                                             this.m_minionStatTexts[_loc5_].embedFonts = true;
                                             this.m_minionStatTexts[_loc5_].x = 87;
                                             this.m_minionStatTexts[_loc5_].y = 44 + _loc5_ * 29;
                                             if(_loc6_)
                                             {
                                                _loc2_.size = 20;
                                                _loc2_.align = TextFormatAlign.LEFT;
                                                this.m_minionStatTexts[_loc5_].defaultTextFormat = _loc2_;
                                                this.m_minionStatTexts[_loc5_].text = "99";
                                                this.m_minionStatTexts[_loc5_].width = 50;
                                                this.m_minionStatTexts[_loc5_].selectable = false;
                                                addChild(this.m_minionStatTexts[_loc5_]);
                                                if(!(_loc6_ || Boolean(_loc1_)))
                                                {
                                                   continue;
                                                }
                                                this.m_newMinionStatTexts[_loc5_] = new TextField();
                                                this.m_newMinionStatTexts[_loc5_].embedFonts = true;
                                                if(!(_loc7_ && Boolean(this)))
                                                {
                                                   this.m_newMinionStatTexts[_loc5_].x = 138;
                                                   if(!_loc7_)
                                                   {
                                                      addr337:
                                                      this.m_newMinionStatTexts[_loc5_].y = 59 - 17 + _loc5_ * 29;
                                                      _loc2_.size = 23;
                                                      _loc2_.align = TextFormatAlign.CENTER;
                                                      if(_loc6_ || Boolean(_loc1_))
                                                      {
                                                         addr363:
                                                         this.m_newMinionStatTexts[_loc5_].defaultTextFormat = _loc2_;
                                                         if(!(_loc7_ && Boolean(_loc2_)))
                                                         {
                                                            addr376:
                                                            this.m_newMinionStatTexts[_loc5_].text = "+5";
                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                            {
                                                               this.m_newMinionStatTexts[_loc5_].width = 50;
                                                               this.m_newMinionStatTexts[_loc5_].selectable = false;
                                                               addChild(this.m_newMinionStatTexts[_loc5_]);
                                                               _loc5_++;
                                                               if(_loc6_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr443);
                                                }
                                                §§goto(addr337);
                                             }
                                             §§goto(addr363);
                                          }
                                          §§goto(addr439);
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr153);
               }
               §§goto(addr167);
            }
            §§goto(addr40);
         }
         §§goto(addr29);
      }
      
      public function BringInForMinion(param1:OwnedMinion, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc3_)
         {
            §§push(Singleton.utility);
            if(!(_loc7_ && Boolean(param1)))
            {
               §§pop().m_soundController.PlaySound("battle_levelUp",0.2);
               addr33:
               §§push(Singleton.utility);
            }
            var _loc3_:BattleScreenMinionVisual = §§pop().m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(param1);
            this.x = _loc3_.x + 40;
            if(_loc6_ || Boolean(param2))
            {
               this.y = _loc3_.y - 244;
               if(!_loc7_)
               {
                  if(param1.IsTalentPointEarnedOnLevel(param2 + 1))
                  {
                     this.m_skillPointBackground.visible = true;
                     if(_loc7_ && Boolean(_loc3_))
                     {
                     }
                     addr87:
                     this.m_settingLevel = param2;
                     if(_loc6_)
                     {
                     }
                     addr218:
                     var _loc4_:int = 0;
                     while(true)
                     {
                        if(_loc4_ >= 5)
                        {
                           if(_loc6_ || Boolean(param2))
                           {
                              visible = false;
                              break;
                           }
                           break;
                        }
                        this.m_minionStatTexts[_loc4_].text = "" + this.m_statsForCurrLevel[_loc4_];
                        if(!(_loc7_ && Boolean(this)))
                        {
                           this.m_newMinionStatTexts[_loc4_].text = "+" + (this.m_statsForNextLevel[_loc4_] - this.m_statsForCurrLevel[_loc4_]);
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr258:
                           this.m_newMinionStatTexts[_loc4_].alpha = 1;
                           if(!_loc7_)
                           {
                              _loc4_++;
                              if(!(_loc6_ || Boolean(param2)))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                        §§goto(addr258);
                     }
                     var _loc5_:TimelineLite;
                     (_loc5_ = new TimelineLite()).append(new TweenLite(this,0.1,{"onComplete":this.StartAnimation}));
                     if(!_loc7_)
                     {
                        _loc5_.append(new TweenLite(this,0.5,{"alpha":1}));
                        if(!_loc7_)
                        {
                           _loc5_.append(new TweenLite(this,1.7,{"onComplete":this.AddTheStatsToTheNextLevel}));
                           if(!_loc7_)
                           {
                              _loc5_.append(new TweenLite(this,1,{}));
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 addr347:
                                 _loc5_.append(new TweenLite(this,0.5,{"alpha":0}));
                                 if(!_loc7_)
                                 {
                                    _loc5_.append(new TweenLite(this,0.1,{"onComplete":this.ExitOut}));
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr347);
                  }
                  else
                  {
                     this.m_skillPointBackground.visible = false;
                     if(_loc6_)
                     {
                        §§goto(addr87);
                     }
                  }
                  this.m_minionNameText.text = param1.m_minionName;
                  this.m_minionLevelText.text = "lv." + param2;
                  this.m_statsForCurrLevel[0] = param1.CalculateHealthStat(param2);
                  if(_loc6_ || Boolean(this))
                  {
                     this.m_statsForNextLevel[0] = param1.CalculateHealthStat(param2 + 1);
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        this.m_statsForCurrLevel[1] = param1.CalculateEnergyStat(param2);
                     }
                     this.m_statsForNextLevel[1] = param1.CalculateEnergyStat(param2 + 1);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        this.m_statsForCurrLevel[2] = param1.CalculateAttackStat(param2);
                        this.m_statsForNextLevel[2] = param1.CalculateAttackStat(param2 + 1);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           this.m_statsForCurrLevel[3] = param1.CalculateHealingStat(param2);
                        }
                        §§goto(addr218);
                     }
                     this.m_statsForNextLevel[3] = param1.CalculateHealingStat(param2 + 1);
                  }
                  §§goto(addr87);
               }
               this.m_statsForCurrLevel[4] = param1.CalculateSpeedStat(param2);
               this.m_statsForNextLevel[4] = param1.CalculateSpeedStat(param2 + 1);
            }
            §§goto(addr87);
         }
         §§goto(addr33);
      }
      
      public function ExitOutForMinion() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            TweenLite.killTweensOf(this);
         }
         var _loc1_:TimelineLite = new TimelineLite();
         if(_loc3_)
         {
            _loc1_.append(new TweenLite(this,0.2,{"alpha":0}));
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.append(new TweenLite(this,0.1,{"onComplete":this.ExitOut}));
            }
         }
      }
      
      private function StartAnimation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            visible = true;
            if(!(_loc1_ && _loc2_))
            {
               addr38:
               alpha = 0;
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function AddTheStatsToTheNextLevel() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_minionLevelText.text = "lv." + (this.m_settingLevel + 1);
         }
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            TweenLite.to(this.m_newMinionStatTexts[_loc1_],0.2,{"alpha":0});
            if(_loc3_)
            {
               this.m_minionStatTexts[_loc1_].text = "" + this.m_statsForNextLevel[_loc1_];
               if(_loc2_)
               {
                  continue;
               }
            }
            _loc1_++;
            if(!(_loc3_ || _loc3_))
            {
               break;
            }
         }
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            visible = false;
         }
      }
   }
}
