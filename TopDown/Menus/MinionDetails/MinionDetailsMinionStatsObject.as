package TopDown.Menus.MinionDetails
{
   import Minions.BaseMinion;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import States.MinionType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionDetailsMinionStatsObject extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private const m_maxStatPerBar:Number = 300;
      
      private var m_statTexts:Vector.<TextField>;
      
      private var m_statBars:Vector.<InterfaceBar>;
      
      private var m_typeIcon1:Sprite;
      
      private var m_typeIcon2:Sprite;
      
      private var m_statBonusText:TextField;
      
      public function MinionDetailsMinionStatsObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               this.m_statTexts = new Vector.<TextField>(5);
               if(!(_loc1_ && Boolean(this)))
               {
                  this.m_statBars = new Vector.<InterfaceBar>(5);
               }
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_statsBackground");
            if(_loc5_ || Boolean(this))
            {
               addChild(this.m_background);
            }
         }
         var _loc1_:TextFormat = new TextFormat();
         if(!(_loc6_ && Boolean(this)))
         {
            _loc1_.color = 2961720;
            if(_loc5_)
            {
               _loc1_.size = 15;
               if(_loc5_ || Boolean(this))
               {
                  addr69:
                  _loc1_.font = "BurbinCasual";
                  if(_loc5_ || Boolean(this))
                  {
                     _loc1_.align = TextFormatAlign.LEFT;
                  }
               }
            }
            var _loc2_:Array = ["menus_statsBars_full_health","menus_statsBars_full_armor","menus_statsBars_full_attack","menus_statsBars_full_armorPenetration","menus_statsBars_full_speed"];
            _loc3_ = ["menus_statsBars_cap_health","menus_statsBars_cap_armor","menus_statsBars_cap_attack","menus_statsBars_cap_armorPenetration","menus_statsBars_cap_speed"];
            if(_loc5_ || Boolean(_loc3_))
            {
               _loc4_ = 0;
            }
            do
            {
               if(_loc4_ < 5)
               {
                  this.m_statTexts[_loc4_] = new TextField();
                  this.m_statTexts[_loc4_].x = 78;
                  this.m_statTexts[_loc4_].y = 85 + _loc4_ * 29;
                  this.m_statTexts[_loc4_].embedFonts = true;
                  this.m_statTexts[_loc4_].defaultTextFormat = _loc1_;
                  this.m_statTexts[_loc4_].text = "16";
                  this.m_statTexts[_loc4_].width = 50;
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     this.m_statTexts[_loc4_].selectable = false;
                     addChild(this.m_statTexts[_loc4_]);
                     if(!(_loc5_ || Boolean(_loc1_)))
                     {
                        break;
                     }
                     this.m_statBars[_loc4_] = new InterfaceBar(_loc2_[_loc4_],_loc3_[_loc4_]);
                     this.m_statBars[_loc4_].x = 110;
                     this.m_statBars[_loc4_].y = 88 + _loc4_ * 29;
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr298);
                  }
                  break;
               }
               this.m_statBonusText = new TextField();
               if(!_loc6_)
               {
                  this.m_statBonusText.x = 78 + 37;
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§goto(addr298);
               }
               this.m_statBonusText.width = 50;
               this.m_statBonusText.selectable = false;
               addChild(this.m_statBonusText);
               if(_loc5_)
               {
                  §§goto(addr298);
               }
               addr298:
               this.visible = false;
               return;
               §§goto(addr298);
            }
            while(addChild(this.m_statBars[_loc4_]), _loc4_++, !(_loc6_ && Boolean(_loc1_)));
            
            this.m_statBonusText.y = 85;
            if(_loc5_)
            {
               this.m_statBonusText.embedFonts = true;
               if(_loc5_ || Boolean(_loc1_))
               {
                  this.m_statBonusText.defaultTextFormat = _loc1_;
                  if(!_loc6_)
                  {
                     this.m_statBonusText.text = "+5%";
                     §§goto(addr284);
                  }
                  §§goto(addr298);
               }
               §§goto(addr284);
            }
            §§goto(addr288);
         }
         §§goto(addr69);
      }
      
      public function SetNewMinion(param1:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1.m_minionDexID);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:BaseMinion = Singleton.staticData.GetBaseMinion(_loc2_);
         param1.CalculateCurrStats();
         if(_loc7_ || _loc2_)
         {
            this.m_statTexts[0].text = "" + param1.m_currHealthStat;
            if(_loc7_)
            {
               this.m_statBars[0].SetBarSize(param1.m_currHealthStat / this.m_maxStatPerBar);
               this.m_statTexts[1].text = "" + param1.m_currEnergyStat;
               this.m_statBars[1].SetBarSize(param1.m_currEnergyStat / this.m_maxStatPerBar);
               this.m_statTexts[2].text = "" + param1.m_currAttackStat;
               this.m_statBars[2].SetBarSize(param1.m_currAttackStat / this.m_maxStatPerBar);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  this.m_statTexts[3].text = "" + param1.m_currHealingStat;
                  this.m_statBars[3].SetBarSize(param1.m_currHealingStat / this.m_maxStatPerBar);
                  if(_loc7_)
                  {
                     this.m_statTexts[4].text = "" + param1.m_currSpeedStat;
                     addr136:
                     this.m_statBars[4].SetBarSize(param1.m_currSpeedStat / this.m_maxStatPerBar);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(this.m_typeIcon1 != null);
                        §§push(this.m_typeIcon1 != null);
                        if(_loc7_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(this.m_typeIcon1.parent != null);
                           }
                           if(§§pop())
                           {
                              if(_loc7_ || Boolean(this))
                              {
                                 this.m_typeIcon1.parent.removeChild(this.m_typeIcon1);
                                 addr188:
                                 §§push(this.m_typeIcon2 != null);
                                 if(!_loc6_)
                                 {
                                    addr196:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr199:
                                          §§pop();
                                          if(!(_loc6_ && Boolean(param1)))
                                          {
                                             addr213:
                                             if(this.m_typeIcon2.parent != null)
                                             {
                                                this.m_typeIcon2.parent.removeChild(this.m_typeIcon2);
                                             }
                                             §§push(_loc3_.m_minionType1);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§push(MinionType.TYPE_NONE);
                                                if(_loc7_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      this.m_typeIcon1 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc3_.m_minionType1));
                                                      addr251:
                                                      this.m_typeIcon1.x = 127;
                                                      this.m_typeIcon1.y = 53;
                                                      addr259:
                                                      addChild(this.m_typeIcon1);
                                                      addr263:
                                                      §§push(_loc3_.m_minionType2);
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                         addr274:
                                                         if(§§pop() != MinionType.TYPE_NONE)
                                                         {
                                                            addr275:
                                                            this.m_typeIcon2 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc3_.m_minionType2));
                                                            if(_loc7_)
                                                            {
                                                               this.m_typeIcon2.x = 209;
                                                               this.m_typeIcon2.y = 53;
                                                               addr295:
                                                               addChild(this.m_typeIcon2);
                                                               addr299:
                                                               this.m_statBonusText.y = 85 + param1.m_statBonus * 29;
                                                               §§push(0);
                                                            }
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      var _loc4_:* = §§pop();
                                                      §§push(param1.m_statBonus);
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         loop0:
                                                         while(true)
                                                         {
                                                            var _loc5_:* = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        addr470:
                                                                        §§push(!_loc6_ ? 0 : 4);
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    continue loop0;
                                                                                 case 1:
                                                                                    §§push(param1.m_currEnergyStat);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          break;
                                                                                       }
                                                                                       addr360:
                                                                                       §§push(§§pop());
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          break;
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    addr348:
                                                                                    _loc4_ = §§pop();
                                                                                    if(_loc7_ || Boolean(this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break loop1;
                                                                                 case 2:
                                                                                    _loc4_ = param1.m_currAttackStat;
                                                                                    break;
                                                                                 case 3:
                                                                                    §§push(param1.m_currHealingStat);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§goto(addr348);
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 case 4:
                                                                                    §§goto(addr360);
                                                                                    §§push(param1.m_currSpeedStat);
                                                                              }
                                                                              addr488:
                                                                              break loop0;
                                                                           }
                                                                           addr502:
                                                                           return;
                                                                           addr485:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(1);
                                                                     §§push(_loc5_);
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        addr409:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           §§push(_loc7_ ? 1 : 2);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(2);
                                                                           §§push(_loc5_);
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr431);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr452:
                                                                                    §§push(3);
                                                                                 }
                                                                                 §§goto(addr470);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(3);
                                                                                 if(_loc7_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr464);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(4);
                                                                                          if(!(_loc6_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             addr463:
                                                                                             if(§§pop() === _loc5_)
                                                                                             {
                                                                                                §§goto(addr464);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr470);
                                                                                                §§push(5);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                       §§goto(addr470);
                                                                                    }
                                                                                    §§goto(addr463);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr463);
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                     §§goto(addr463);
                                                                     §§goto(addr464);
                                                                  }
                                                                  §§goto(addr409);
                                                               }
                                                            }
                                                            §§goto(addr431);
                                                         }
                                                         if(§§pop() > 65)
                                                         {
                                                            this.m_statBonusText.x = 78 + 37;
                                                         }
                                                         else
                                                         {
                                                            this.m_statBonusText.x = 270;
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                      §§goto(addr485);
                                                   }
                                                   §§goto(addr263);
                                                }
                                             }
                                             §§goto(addr274);
                                          }
                                          §§goto(addr259);
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr299);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr259);
                  }
                  §§goto(addr251);
               }
               §§goto(addr275);
            }
            §§goto(addr295);
         }
         §§goto(addr136);
      }
      
      private function GetIconSpriteForType(param1:int) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = "";
         §§push(param1);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(MinionType.TYPE_EARTH);
               if(_loc5_)
               {
                  if(§§pop() === _loc3_)
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!(_loc5_ || Boolean(this)))
                        {
                           addr174:
                        }
                     }
                     else
                     {
                        addr230:
                        §§push(7);
                     }
                     addr328:
                     switch(§§pop())
                     {
                        case 0:
                           _loc2_ = "menus_minionType_earth";
                           break;
                        case 1:
                           §§push("menus_minionType_plant");
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              _loc2_ = §§pop();
                              break;
                           }
                           addr96:
                           _loc2_ = §§pop();
                           addr97:
                           break;
                        case 2:
                           §§push("menus_minionType_undead");
                           if(!(_loc4_ && Boolean(this)))
                           {
                              _loc2_ = §§pop();
                              break;
                           }
                           addr51:
                           _loc2_ = §§pop();
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              break;
                           }
                           addr93:
                           break;
                        case 3:
                           §§push("menus_minionType_demonic");
                           if(!_loc4_)
                           {
                              _loc2_ = §§pop();
                              break;
                           }
                           addr77:
                           _loc2_ = §§pop();
                           addr78:
                           break;
                        case 4:
                           §§goto(addr51);
                           §§push("menus_minionType_dino");
                        case 5:
                           §§push("menus_minionType_energy");
                           if(_loc4_)
                           {
                              addr128:
                              _loc2_ = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 addr136:
                                 break;
                              }
                              break;
                           }
                           _loc2_ = §§pop();
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              break;
                           }
                           §§goto(addr78);
                           break;
                        case 6:
                           §§push("menus_minionType_fire");
                           if(_loc5_)
                           {
                              §§goto(addr77);
                           }
                           else
                           {
                              §§goto(addr128);
                           }
                        case 7:
                           _loc2_ = "menus_minionType_flying";
                           if(!(_loc4_ && _loc3_))
                           {
                              break;
                           }
                           §§goto(addr97);
                           break;
                        case 8:
                           _loc2_ = "menus_minionType_holy";
                           §§goto(addr93);
                        case 9:
                           §§goto(addr96);
                           §§push("menus_minionType_ice");
                        case 10:
                           _loc2_ = "menus_minionType_robot";
                           break;
                        case 11:
                           §§push("menus_minionType_titan");
                           if(!(_loc4_ && _loc3_))
                           {
                              _loc2_ = §§pop();
                              break;
                           }
                           §§goto(addr128);
                           break;
                        case 12:
                           §§push("menus_minionType_water");
                           if(_loc5_)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc4_ && _loc3_))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr128);
                           }
                           §§goto(addr136);
                        case 13:
                           §§goto(addr128);
                           §§push("menus_minionType_normal");
                     }
                     return _loc2_;
                     addr327:
                  }
                  else
                  {
                     if(MinionType.TYPE_PLANT === _loc3_)
                     {
                        §§goto(addr174);
                        §§push(1);
                     }
                     else
                     {
                        §§push(MinionType.TYPE_UNDEAD);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr327);
                                 §§push(2);
                              }
                              else if(MinionType.TYPE_DEMONIC === _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(3);
                                    if(_loc4_)
                                    {
                                       addr288:
                                    }
                                 }
                                 else
                                 {
                                    addr280:
                                    §§push(10);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr288);
                                    }
                                 }
                                 §§goto(addr327);
                              }
                              else
                              {
                                 §§push(MinionType.TYPE_DINO);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() === _loc3_)
                                    {
                                       addr201:
                                       §§goto(addr327);
                                       §§push(4);
                                    }
                                    else if(MinionType.TYPE_ENERGY === _loc3_)
                                    {
                                       §§push(5);
                                       if(_loc4_)
                                       {
                                          addr319:
                                          if(§§pop() === _loc3_)
                                          {
                                             addr321:
                                             §§push(13);
                                          }
                                          else
                                          {
                                             §§goto(addr327);
                                             §§push(14);
                                          }
                                       }
                                       §§goto(addr327);
                                    }
                                    else
                                    {
                                       if(MinionType.TYPE_FIRE === _loc3_)
                                       {
                                          §§push(6);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr327);
                                          }
                                          else
                                          {
                                             addr256:
                                             §§push(_loc3_);
                                             if(!(_loc4_ && Boolean(param1)))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_ || Boolean(param1))
                                                   {
                                                      addr273:
                                                      §§goto(addr327);
                                                      §§push(9);
                                                   }
                                                }
                                                else
                                                {
                                                   addr277:
                                                   if(MinionType.TYPE_ROBOT === _loc3_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr280);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(MinionType.TYPE_TITAN);
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr299:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            addr308:
                                                            §§goto(addr327);
                                                            §§push(11);
                                                         }
                                                         else
                                                         {
                                                            addr322:
                                                            §§push(MinionType.TYPE_WATER);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(_loc3_);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      if(§§pop() === §§pop())
                                                      {
                                                         addr316:
                                                         §§goto(addr327);
                                                         §§push(12);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr319);
                                                         §§push(MinionType.TYPE_NORMAL);
                                                      }
                                                   }
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr277);
                                          }
                                       }
                                       else
                                       {
                                          §§push(MinionType.TYPE_FLYING);
                                          §§push(_loc3_);
                                          if(_loc5_ || Boolean(this))
                                          {
                                             addr229:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr230);
                                             }
                                             else
                                             {
                                                §§push(MinionType.TYPE_HOLY);
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      if(!(_loc4_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(8);
                                                         if(!(_loc4_ && Boolean(param1)))
                                                         {
                                                            §§goto(addr327);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr316);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr256);
                                                      §§push(MinionType.TYPE_ICE);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr308);
                                             }
                                          }
                                       }
                                       §§goto(addr299);
                                    }
                                    §§goto(addr327);
                                 }
                                 §§goto(addr322);
                              }
                              §§goto(addr327);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr327);
                  }
                  §§goto(addr230);
               }
               §§goto(addr273);
            }
            §§goto(addr201);
         }
         §§goto(addr328);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.visible = true;
         }
      }
      
      public function BringOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.visible = false;
         }
      }
   }
}
