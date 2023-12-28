package BattleSystems.Visuals.BattleMods
{
   import Minions.BaseMinion;
   import States.ModStoneTypes;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class ExtraMinionsModVisuals extends Sprite
   {
       
      
      private var m_playersStone:Sprite;
      
      private var m_opponentsStone:Sprite;
      
      private var m_numberOfOpponentMinionsText:TextField;
      
      private var m_opponentMinionIcon:Sprite;
      
      private var m_opponentMinionGlass:Sprite;
      
      private var m_numberOfPlayerMinionsText:TextField;
      
      private var m_playerMinionIcon:Sprite;
      
      private var m_playerMinionGlass:Sprite;
      
      public function ExtraMinionsModVisuals()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_playersStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionOnDeathStone");
         this.m_playersStone.x = 61;
         this.m_playersStone.y = -62;
         if(!(_loc3_ && _loc1_))
         {
            addChild(this.m_playersStone);
            this.m_playersStone.scaleX = -1;
            this.m_opponentsStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionOnDeathStone");
            if(_loc2_ || _loc2_)
            {
               this.m_opponentsStone.x = 114;
            }
         }
         this.m_opponentsStone.y = -62;
         addChild(this.m_opponentsStone);
         var _loc1_:TextFormat = new TextFormat();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.color = 15593717;
            _loc1_.size = 21;
            if(_loc2_)
            {
               _loc1_.font = "BurbinCasual";
               _loc1_.align = TextFormatAlign.CENTER;
               if(_loc2_ || _loc3_)
               {
                  this.m_numberOfPlayerMinionsText = new TextField();
                  this.m_numberOfPlayerMinionsText.x = -66;
                  this.m_numberOfPlayerMinionsText.y = -61;
                  this.m_numberOfPlayerMinionsText.embedFonts = true;
                  this.m_numberOfPlayerMinionsText.defaultTextFormat = _loc1_;
                  this.m_numberOfPlayerMinionsText.wordWrap = true;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     this.m_numberOfPlayerMinionsText.autoSize = TextFieldAutoSize.CENTER;
                     this.m_numberOfPlayerMinionsText.text = "9";
                     this.m_numberOfPlayerMinionsText.width = 150;
                     this.m_numberOfPlayerMinionsText.selectable = false;
                     addChild(this.m_numberOfPlayerMinionsText);
                     this.m_playerMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("fireMonkey1");
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.m_playerMinionIcon.x = 17;
                        this.m_playerMinionIcon.y = 63;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addChild(this.m_playerMinionIcon);
                           this.m_playerMinionGlass = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionCrystal");
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              this.m_playerMinionGlass.x = -20;
                              addr212:
                              this.m_playerMinionGlass.y = -3;
                              addr216:
                              addChild(this.m_playerMinionGlass);
                              this.m_numberOfOpponentMinionsText = new TextField();
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.m_numberOfOpponentMinionsText.x = 93;
                                 this.m_numberOfOpponentMinionsText.y = -60;
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.m_numberOfOpponentMinionsText.embedFonts = true;
                                    §§goto(addr250);
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr278);
                           }
                           addr250:
                           this.m_numberOfOpponentMinionsText.defaultTextFormat = _loc1_;
                           this.m_numberOfOpponentMinionsText.wordWrap = true;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              this.m_numberOfOpponentMinionsText.autoSize = TextFieldAutoSize.CENTER;
                              this.m_numberOfOpponentMinionsText.text = "99";
                              this.m_numberOfOpponentMinionsText.width = 150;
                              addr278:
                              this.m_numberOfOpponentMinionsText.selectable = false;
                              addChild(this.m_numberOfOpponentMinionsText);
                           }
                           this.m_opponentMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("moveIcon_agility");
                           this.m_opponentMinionIcon.x = 17;
                           §§goto(addr297);
                        }
                        §§goto(addr312);
                     }
                  }
                  addr297:
                  this.m_opponentMinionIcon.y = 63;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addChild(this.m_opponentMinionIcon);
                     this.m_opponentMinionGlass = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionCrystal");
                     addr326:
                     this.m_opponentMinionGlass.x = 139;
                     addr330:
                     this.m_opponentMinionGlass.y = -3;
                     if(_loc2_ || _loc3_)
                     {
                        addChild(this.m_opponentMinionGlass);
                     }
                     addr312:
                  }
                  return;
               }
               §§goto(addr326);
            }
            §§goto(addr216);
         }
         §§goto(addr212);
      }
      
      public function CheckForActivation() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc6_)
         {
            §§push(Singleton.dynamicData);
            if(_loc5_)
            {
               §§push(§§pop().m_currTrainerData);
               if(_loc5_ || Boolean(this))
               {
                  if(§§pop().IsModActive(ModStoneTypes.MOD_STONE_EXTRA_MINIONS))
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        visible = true;
                        if(_loc5_ || _loc2_)
                        {
                           addr50:
                        }
                     }
                     else
                     {
                        §§goto(addr56);
                     }
                  }
                  else
                  {
                     visible = false;
                     if(!_loc6_)
                     {
                        addr56:
                        return;
                     }
                  }
                  addr59:
                  §§push(Singleton.dynamicData.m_currTrainerData);
               }
               var _loc1_:TrainerDataObject = §§pop();
               var _loc2_:BaseMinion = Singleton.staticData.GetBaseMinion(_loc1_.m_extraOpponentMinionID);
               if(_loc5_)
               {
                  removeChild(this.m_opponentMinionIcon);
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     this.m_opponentMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_minionBattleSprite);
                  }
               }
               var _loc4_:int = 45;
               if(this.m_opponentMinionIcon.width > this.m_opponentMinionIcon.height)
               {
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     §§push(int(this.m_opponentMinionIcon.width));
                     if(!(_loc6_ && Boolean(_loc1_)))
                     {
                        _loc3_ = §§pop();
                        this.m_opponentMinionIcon.width = _loc4_;
                        this.m_opponentMinionIcon.height *= _loc4_ / _loc3_;
                        addr159:
                        this.m_opponentMinionIcon.x = 167 - this.m_opponentMinionIcon.width / 2;
                        this.m_opponentMinionIcon.y = 24 - this.m_opponentMinionIcon.height / 2;
                        addChild(this.m_opponentMinionIcon);
                        if(_loc5_)
                        {
                           this.m_opponentMinionIcon.alpha = 0.8;
                        }
                        removeChild(this.m_opponentMinionIcon);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           addr207:
                           addChild(this.m_opponentMinionIcon);
                        }
                        _loc2_ = Singleton.staticData.GetBaseMinion(_loc1_.m_extraPlayerMinionID);
                        removeChild(this.m_playerMinionIcon);
                        this.m_playerMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_minionBattleSprite);
                        if(!_loc6_)
                        {
                           if(this.m_playerMinionIcon.width > this.m_playerMinionIcon.height)
                           {
                              §§push(int(this.m_playerMinionIcon.width));
                              if(!_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 this.m_playerMinionIcon.width = _loc4_;
                                 if(_loc5_)
                                 {
                                    this.m_playerMinionIcon.height *= _loc4_ / _loc3_;
                                 }
                                 addr293:
                                 this.m_playerMinionIcon.x = 9 - this.m_playerMinionIcon.width / 2;
                                 this.m_playerMinionIcon.y = 27 - this.m_playerMinionIcon.height / 2;
                                 if(!_loc6_)
                                 {
                                    addChild(this.m_playerMinionIcon);
                                    this.m_playerMinionGlass.alpha = 0.8;
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       removeChild(this.m_playerMinionGlass);
                                    }
                                    §§goto(addr341);
                                 }
                              }
                              else
                              {
                                 addr267:
                                 _loc3_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    this.m_playerMinionIcon.height = _loc4_;
                                    if(_loc5_)
                                    {
                                       this.m_playerMinionIcon.width *= _loc4_ / _loc3_;
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                          §§goto(addr293);
                                       }
                                       §§goto(addr341);
                                    }
                                    §§goto(addr293);
                                 }
                              }
                              §§goto(addr352);
                           }
                           else
                           {
                              §§push(int(this.m_playerMinionIcon.height));
                           }
                           §§goto(addr267);
                        }
                        addr341:
                        addChild(this.m_playerMinionGlass);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           addr352:
                           this.SetMinionsToAddText(_loc1_.m_numOfExtraOpponentMinions,_loc1_.m_numOfExtraPlayerMinions);
                        }
                        return;
                        addr132:
                     }
                     else
                     {
                        addr137:
                        _loc3_ = §§pop();
                        this.m_opponentMinionIcon.height = _loc4_;
                        this.m_opponentMinionIcon.width *= _loc4_ / _loc3_;
                        if(!(_loc6_ && Boolean(_loc1_)))
                        {
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr132);
               }
               else
               {
                  §§push(int(this.m_opponentMinionIcon.height));
               }
               §§goto(addr137);
            }
            §§goto(addr59);
         }
         §§goto(addr50);
      }
      
      public function PlayAddMinionAnimation() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TimelineLite = new TimelineLite();
         if(_loc3_)
         {
            _loc1_.append(new TweenLite(this,0.3,{"y":"-10"}));
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.append(new TweenLite(this,0.3,{"y":"10"}));
            }
         }
      }
      
      public function SetMinionsToAddText(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc3_ && Boolean(param2)))
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.m_numberOfOpponentMinionsText.visible = false;
                     this.m_opponentMinionIcon.visible = false;
                  }
                  else
                  {
                     this.m_numberOfOpponentMinionsText.visible = true;
                     this.m_opponentMinionIcon.visible = true;
                  }
                  addr53:
                  §§push(param2);
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  this.m_numberOfPlayerMinionsText.visible = false;
                  if(_loc4_ || Boolean(param2))
                  {
                     this.m_playerMinionIcon.visible = false;
                     if(_loc3_)
                     {
                     }
                     §§goto(addr107);
                  }
                  addr95:
                  this.m_numberOfOpponentMinionsText.text = "" + param1;
                  this.m_numberOfPlayerMinionsText.text = "" + param2;
               }
               else
               {
                  this.m_numberOfPlayerMinionsText.visible = true;
                  this.m_playerMinionIcon.visible = true;
                  if(_loc4_ || Boolean(param2))
                  {
                     §§goto(addr95);
                  }
               }
               addr107:
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr95);
      }
   }
}
