package Minions.MinionMove
{
   import States.MinionType;
   import States.MinionVisualMoveID;
   import States.StatType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BaseMinionMove
   {
      private const m_healingModifier:Number = 1;
      
      public var m_moveID:int = 0;
      
      public var m_moveClass:int = 0;
      
      public var m_moveTier:int = 0;
      
      public var m_moveType:int = 0;
      
      public var m_moveName:String = "no name";
      
      public var _moveIcon:String = "moveIcon_needleBarrage";
      
      public var m_buffIcon:String = "moveIcon_needleBarrage";
      
      public var m_accuracy:int = 100;
      
      public var m_isPassive:Boolean = false;
      
      public var m_isGlobalPassive:Boolean = false;
      
      public var m_moveCoolDownTime:int = 0;
      
      public var m_chanceToAddOverTimeMove:int = 100;
      
      public var m_overTimeStackAmount:int = 1;
      
      public var m_overTimeTurnsActive:int = 3;
      
      public var m_additionalRandomOverTimeTurnsActive:int = 0;
      
      public var m_chargeTime:int = 0;
      
      public var m_exhaustTime:int = 0;
      
      public var m_enemiesItHits:int = 1;
      
      public var m_alliesItHits:int = 0;
      
      public var m_hitsRandomTargets:Boolean = false;
      
      public var m_onlyHitsSelf:Boolean = false;
      
      public var m_energyUsed:int = 1;
      
      public var m_energyPercentageRestored:int = 0;
      
      private var _visualMoveID:int = 0;
      
      private var _visualDOTMoveID:int = 0;
      
      public var m_doesHitEachEnemy:Boolean = true;
      
      public var m_isThereABufferBetweenVisualMovesOnMultipleEnemies:Boolean = true;
      
      public var m_damage:int = 0;
      
      public var m_additionalRandomDamage:int = 0;
      
      public var m_DOTDamage:int = 0;
      
      public var m_additionalDOTDamage:int = 0;
      
      public var m_percentageOfHealthRemoved:int = 0;
      
      public var m_selfDamage:int = 0;
      
      public var m_additionalRandomSelfDamage:int = 0;
      
      public var m_selfPercentageDamage:int = 0;
      
      private var _healing:int = 0;
      
      private var _additionalRandomHealing:int = 0;
      
      private var _HOTHealing:int = 0;
      
      private var _additionalHOTHealing:int = 0;
      
      private var _selfHeal:int = 0;
      
      private var _additionalRandomSelfHeal:int = 0;
      
      public var m_stunChance:int = 0;
      
      public var m_freezeChance:int = 0;
      
      public var m_statTypesToDeBuff:Vector.<int>;
      
      public var m_chanceToDeBuff:int = 100;
      
      public var m_amountOfStatTypeToDeBuffPercentage:int = 0;
      
      public var m_stagesOfStatTypeToDeBuff:int = 0;
      
      public var m_doesDeBuffTargets:Boolean = false;
      
      public var m_doesDeBuffSelf:Boolean = false;
      
      public var m_reviveChance:int = 0;
      
      public var m_percentageOfDamageThatGetsRedirectedAtMinion:int = 0;
      
      public var m_statTypesToBuff:Vector.<int>;
      
      public var m_chanceToBuff:int = 100;
      
      public var m_amountOfStatTypeToBuffPercentage:int = 0;
      
      public var m_stagesOfStatTypeToBuff:int = 0;
      
      public var m_doesBuffTargets:Boolean = false;
      
      public var m_doesBuffSelf:Boolean = false;
      
      public var m_clearBuffsAndDebuffsChance:int = 0;
      
      public var m_armor:int = 0;
      
      public var m_setShieldAmount:int = 0;
      
      public var m_setReflectDamageAmount:int = 0;
      
      public var m_increasedExtraCritChance:int = 0;
      
      public var m_chanceToClearAllCooldowns:int = 0;
      
      private var m_tooltipTypeImage:Sprite;
      
      public function BaseMinionMove()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               this.m_statTypesToDeBuff = new Vector.<int>();
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr51);
            }
            this.m_statTypesToBuff = new Vector.<int>();
         }
         addr51:
      }
      
      public function AddStatToBuff(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_statTypesToBuff.push(param1);
         }
      }
      
      public function AddStatToBuffFirstTime(param1:int, param2:Boolean = false, param3:Boolean = false, param4:int = 1, param5:int = 100) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            this.m_statTypesToBuff.push(param1);
            if(!_loc7_)
            {
               addr33:
               this.m_doesBuffSelf = param3;
               if(!_loc7_)
               {
                  this.m_doesBuffTargets = param2;
                  if(_loc6_ || Boolean(param1))
                  {
                     this.m_stagesOfStatTypeToBuff = param4;
                     if(_loc6_ || param3)
                     {
                        this.m_chanceToBuff = param5;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function AddStatToDeBuff(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.m_statTypesToDeBuff.push(param1);
         }
      }
      
      public function AddStatToDeBuffFirstTime(param1:int, param2:Boolean = false, param3:Boolean = false, param4:int = 1, param5:int = 100) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.m_statTypesToDeBuff.push(param1);
            if(_loc6_ || Boolean(param1))
            {
               this.m_doesDeBuffSelf = param3;
               if(_loc6_ || Boolean(param1))
               {
                  this.m_doesDeBuffTargets = param2;
                  if(_loc6_)
                  {
                     addr60:
                     this.m_stagesOfStatTypeToDeBuff = -param4;
                     if(_loc6_)
                     {
                        this.m_chanceToDeBuff = param5;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function GetToolTipForMoveDescription() : Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = 0;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:TextFormat = new TextFormat();
         if(!_loc11_)
         {
            _loc2_.color = 15921906;
            if(!_loc11_)
            {
               _loc2_.size = 21;
               if(_loc12_)
               {
               }
               addr41:
               _loc2_.align = TextFormatAlign.CENTER;
               addr45:
               var _loc3_:TextField = new TextField();
               _loc3_.y = -6;
               _loc3_.width = 200;
               _loc3_.embedFonts = true;
               if(_loc12_)
               {
                  _loc3_.defaultTextFormat = _loc2_;
                  _loc3_.text = this.m_moveName;
                  if(!(_loc11_ && Boolean(_loc3_)))
                  {
                     _loc3_.selectable = false;
                  }
               }
               if(_loc3_.textWidth > _loc3_.width)
               {
                  _loc3_.width = _loc3_.textWidth * 1.1;
               }
               var _loc4_:TextField;
               (_loc4_ = this.GetTextFieldForMoveDescription()).y = 27 + _loc3_.y;
               var _loc5_:int = 5;
               var _loc6_:int = 2;
               var _loc7_:int = 6;
               var _loc8_:int = 20;
               if(_loc12_ || Boolean(this))
               {
                  if(_loc3_.width > _loc4_.width)
                  {
                     if(!(_loc11_ && Boolean(_loc3_)))
                     {
                        addr125:
                        §§push(int(_loc3_.width));
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           _loc9_ = §§pop();
                           if(_loc12_)
                           {
                              addr138:
                           }
                        }
                        else
                        {
                           addr149:
                           _loc9_ = §§pop();
                        }
                        addr153:
                        var _loc10_:int = _loc4_.textHeight;
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           _loc1_.graphics.beginFill(15066856,0.85);
                           _loc1_.graphics.drawRoundRect(-_loc5_ - _loc6_,-_loc5_ - _loc6_,_loc9_ + _loc5_ * 2 + _loc6_ * 2,_loc10_ + _loc8_ + _loc5_ * 3 + _loc6_ * 2,_loc7_);
                           _loc1_.graphics.drawRoundRect(-_loc5_,-_loc5_,_loc9_ + _loc5_ * 2,_loc10_ + _loc8_ + _loc5_ * 3,_loc7_);
                           _loc1_.graphics.endFill();
                           if(!_loc11_)
                           {
                              _loc1_.graphics.beginFill(6186100,0.95);
                              if(!(_loc11_ && Boolean(this)))
                              {
                                 _loc1_.graphics.drawRoundRect(-_loc5_,-_loc5_,_loc9_ + _loc5_ * 2,_loc10_ + _loc8_ + _loc5_ * 3,_loc7_);
                                 _loc1_.graphics.endFill();
                                 _loc1_.addChild(_loc3_);
                                 _loc1_.addChild(_loc4_);
                                 §§push(_loc9_);
                                 if(!_loc11_)
                                 {
                                    if(§§pop() > _loc3_.width)
                                    {
                                       _loc3_.width = _loc9_;
                                       addr280:
                                       _loc3_.wordWrap = true;
                                       _loc3_.autoSize = TextFieldAutoSize.CENTER;
                                       if(_loc12_ || Boolean(_loc1_))
                                       {
                                          §§push(this.m_tooltipTypeImage == null);
                                          if(_loc12_ || Boolean(_loc3_))
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc11_ && Boolean(_loc2_)))
                                             {
                                                addr313:
                                                if(§§pop())
                                                {
                                                   if(!(_loc11_ && Boolean(_loc2_)))
                                                   {
                                                      §§pop();
                                                      §§push(this.m_tooltipTypeImage.parent == null);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                this.m_tooltipTypeImage.parent.removeChild(this.m_tooltipTypeImage);
                                             }
                                             addr340:
                                             if(this.m_moveType != MinionType.TYPE_NONE)
                                             {
                                                this.m_tooltipTypeImage = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(this.m_moveType));
                                                this.m_tooltipTypeImage.x = _loc1_.width - this.m_tooltipTypeImage.width - 8;
                                                addr371:
                                                this.m_tooltipTypeImage.y = _loc10_ + 10;
                                                _loc1_.addChild(this.m_tooltipTypeImage);
                                                addr381:
                                                return _loc1_;
                                                addr343:
                                             }
                                             §§goto(addr381);
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr280);
                                 }
                                 §§goto(addr340);
                              }
                              §§goto(addr371);
                           }
                           §§goto(addr280);
                        }
                        §§goto(addr371);
                     }
                     §§goto(addr138);
                  }
                  else
                  {
                     §§push(int(_loc4_.width));
                     if(!(_loc11_ && Boolean(_loc1_)))
                     {
                        §§goto(addr149);
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr125);
            }
            _loc2_.font = "BurbinCasual";
            if(_loc12_)
            {
               §§goto(addr41);
            }
            §§goto(addr45);
         }
         §§goto(addr41);
      }
      
      public function GetTextFieldForMoveDescription() : TextField
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 4645
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function GetStatTypeNameAsString(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && Boolean(param1)))
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(StatType.STAT_ENERGY);
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              addr166:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push("energy");
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr55);
                                    break;
                                 case 1:
                                    §§push("attack");
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr43);
                                    break;
                                 case 2:
                                    §§push("healing");
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr43:
                                       return §§pop();
                                    }
                                    break;
                                 case 3:
                                    §§push("speed");
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr55:
                                       return §§pop();
                                    }
                                    break;
                                 default:
                                    §§push("health");
                              }
                              return §§pop();
                              addr165:
                           }
                           else
                           {
                              addr104:
                              §§push(_loc2_);
                              if(_loc4_ || Boolean(this))
                              {
                                 addr112:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       addr115:
                                       §§push(1);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                                 else
                                 {
                                    §§push(StatType.STAT_HEALING);
                                    §§push(_loc2_);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr137:
                                             §§push(2);
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                addr160:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr156:
                                          if(StatType.STAT_SPEED !== _loc2_)
                                          {
                                             §§goto(addr165);
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr115);
                     }
                     else
                     {
                        §§push(StatType.STAT_ATTACK);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr112);
               }
               §§goto(addr165);
            }
            §§goto(addr137);
         }
         §§goto(addr166);
      }
      
      private function GetIconSpriteForType(param1:int) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         §§push(param1);
         if(!_loc5_)
         {
            var _loc3_:* = §§pop();
            if(MinionType.TYPE_EARTH === _loc3_)
            {
               §§push(0);
               if(_loc5_)
               {
                  addr145:
               }
            }
            else
            {
               §§push(MinionType.TYPE_PLANT);
               §§push(_loc3_);
               if(!(_loc5_ && Boolean(param1)))
               {
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr145);
                     §§push(1);
                  }
                  else if(MinionType.TYPE_UNDEAD === _loc3_)
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(2);
                        if(_loc4_)
                        {
                           addr320:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc2_ = "moveDescription_type_earth";
                                 break;
                              case 1:
                                 §§push("moveDescription_type_plant");
                                 if(_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       break;
                                    }
                                    addr90:
                                    break;
                                 }
                                 addr75:
                                 _loc2_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 addr114:
                                 break;
                              case 2:
                                 _loc2_ = "moveDescription_type_undead";
                                 break;
                              case 3:
                                 _loc2_ = "moveDescription_type_demonic";
                                 break;
                              case 4:
                                 _loc2_ = "moveDescription_type_dino";
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 addr84:
                                 break;
                              case 5:
                                 _loc2_ = "moveDescription_type_energy";
                                 break;
                              case 6:
                                 _loc2_ = "moveDescription_type_fire";
                                 break;
                              case 7:
                                 _loc2_ = "moveDescription_type_flying";
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    break;
                                 }
                                 §§goto(addr114);
                                 break;
                              case 8:
                                 §§push("moveDescription_type_holy");
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr75);
                                 }
                                 else
                                 {
                                    addr111:
                                    _loc2_ = §§pop();
                                    if(_loc5_)
                                    {
                                       addr118:
                                       break;
                                    }
                                 }
                                 §§goto(addr114);
                              case 9:
                                 §§push("moveDescription_type_ice");
                                 if(_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr84);
                                 }
                                 else
                                 {
                                    §§goto(addr111);
                                 }
                              case 10:
                                 _loc2_ = "moveDescription_type_robot";
                                 if(!_loc4_)
                                 {
                                    addr101:
                                    break;
                                 }
                                 §§goto(addr90);
                                 break;
                              case 11:
                                 _loc2_ = "moveDescription_type_titan";
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr101);
                                 }
                                 break;
                              case 12:
                                 §§push("moveDescription_type_water");
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr111);
                                 }
                                 else
                                 {
                                    addr117:
                                    _loc2_ = §§pop();
                                 }
                                 §§goto(addr118);
                              case 13:
                                 §§goto(addr117);
                                 §§push("moveDescription_type_normal");
                           }
                           return _loc2_;
                           addr319:
                        }
                        else
                        {
                           addr234:
                           §§goto(addr319);
                        }
                     }
                     else
                     {
                        addr283:
                        §§push(11);
                        if(_loc4_)
                        {
                           addr286:
                        }
                        else
                        {
                           addr314:
                        }
                     }
                     §§goto(addr319);
                  }
                  else
                  {
                     §§push(MinionType.TYPE_DEMONIC);
                     if(_loc4_)
                     {
                        if(§§pop() === _loc3_)
                        {
                           §§goto(addr319);
                           §§push(3);
                        }
                        else
                        {
                           §§push(MinionType.TYPE_DINO);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr319);
                                    §§push(4);
                                 }
                                 else
                                 {
                                    §§push(MinionType.TYPE_ENERGY);
                                    if(_loc4_)
                                    {
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr319);
                                          §§push(5);
                                       }
                                       else
                                       {
                                          §§push(MinionType.TYPE_FIRE);
                                          §§push(_loc3_);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr319);
                                                §§push(6);
                                             }
                                             else
                                             {
                                                addr215:
                                                if(MinionType.TYPE_FLYING === _loc3_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(7);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr319);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr313:
                                                      §§goto(addr314);
                                                      §§push(13);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(MinionType.TYPE_HOLY);
                                                   if(!(_loc5_ && Boolean(_loc2_)))
                                                   {
                                                      if(§§pop() === _loc3_)
                                                      {
                                                         §§goto(addr234);
                                                         §§push(8);
                                                      }
                                                      else if(MinionType.TYPE_ICE === _loc3_)
                                                      {
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            §§goto(addr319);
                                                            §§push(9);
                                                         }
                                                         else
                                                         {
                                                            addr266:
                                                            §§push(10);
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                      else
                                                      {
                                                         §§push(MinionType.TYPE_ROBOT);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr265:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr266);
                                                               }
                                                               else
                                                               {
                                                                  §§push(MinionType.TYPE_TITAN);
                                                                  if(_loc4_ || Boolean(_loc2_))
                                                                  {
                                                                     addr277:
                                                                     §§push(_loc3_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr280:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr283);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr300:
                                                                              §§push(12);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(MinionType.TYPE_WATER);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr299:
                                                                              if(§§pop() === _loc3_)
                                                                              {
                                                                                 §§goto(addr300);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(MinionType.TYPE_NORMAL);
                                                                                 §§push(_loc3_);
                                                                              }
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§goto(addr313);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr319);
                                                                        §§push(14);
                                                                     }
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr299);
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr299);
                                 }
                                 §§goto(addr319);
                              }
                              §§goto(addr265);
                           }
                        }
                        §§goto(addr319);
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr319);
               }
               §§goto(addr215);
            }
            §§goto(addr319);
         }
         §§goto(addr320);
      }
      
      private function CreateAddText(param1:String, param2:Object, param3:Vector.<Object>, param4:Vector.<int>) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && Boolean(param2)))
         {
            param3.push(param2);
            if(_loc6_ || Boolean(param2))
            {
               param4.push(param1.length);
            }
         }
         return param1;
      }
      
      public function GetMoveCopy() : BaseMinionMove
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:BaseMinionMove = new BaseMinionMove();
         _loc1_.m_moveID = this.m_moveID;
         _loc1_.m_moveClass = this.m_moveClass;
         _loc1_.m_moveTier = this.m_moveTier;
         if(_loc3_)
         {
            _loc1_.m_moveType = this.m_moveType;
            _loc1_.m_moveName = this.m_moveName;
            if(_loc3_)
            {
               _loc1_._moveIcon = this._moveIcon;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.m_buffIcon = this.m_buffIcon;
                  _loc1_.m_accuracy = this.m_accuracy;
                  if(!_loc2_)
                  {
                     _loc1_.m_isPassive = this.m_isPassive;
                     if(_loc3_)
                     {
                        _loc1_.m_isGlobalPassive = this.m_isGlobalPassive;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.m_moveCoolDownTime = this.m_moveCoolDownTime;
                           addr84:
                           _loc1_.m_chanceToAddOverTimeMove = this.m_chanceToAddOverTimeMove;
                           _loc1_.m_overTimeStackAmount = this.m_overTimeStackAmount;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.m_overTimeTurnsActive = this.m_overTimeTurnsActive;
                              addr103:
                              _loc1_.m_additionalRandomOverTimeTurnsActive = this.m_additionalRandomOverTimeTurnsActive;
                              if(!_loc2_)
                              {
                                 _loc1_.m_chargeTime = this.m_chargeTime;
                                 if(!_loc2_)
                                 {
                                    addr115:
                                    _loc1_.m_exhaustTime = this.m_exhaustTime;
                                    _loc1_.m_enemiesItHits = this.m_enemiesItHits;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       _loc1_.m_alliesItHits = this.m_alliesItHits;
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          _loc1_.m_hitsRandomTargets = this.m_hitsRandomTargets;
                                          addr145:
                                          _loc1_.m_onlyHitsSelf = this.m_onlyHitsSelf;
                                          if(!_loc2_)
                                          {
                                             _loc1_.m_energyUsed = this.m_energyUsed;
                                             _loc1_.m_energyPercentageRestored = this.m_energyPercentageRestored;
                                             addr159:
                                             _loc1_.m_visualMoveID = this.m_visualMoveID;
                                             if(_loc3_ || _loc3_)
                                             {
                                                _loc1_.m_visualDOTMoveID = this.m_visualDOTMoveID;
                                                addr174:
                                                _loc1_.m_doesHitEachEnemy = this.m_doesHitEachEnemy;
                                                if(!_loc2_)
                                                {
                                                   _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = this.m_isThereABufferBetweenVisualMovesOnMultipleEnemies;
                                                   if(!_loc2_)
                                                   {
                                                      _loc1_.m_damage = this.m_damage;
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         _loc1_.m_additionalRandomDamage = this.m_additionalRandomDamage;
                                                         addr201:
                                                         _loc1_.m_DOTDamage = this.m_DOTDamage;
                                                         if(_loc3_)
                                                         {
                                                            _loc1_.m_additionalDOTDamage = this.m_additionalDOTDamage;
                                                            _loc1_.m_percentageOfHealthRemoved = this.m_percentageOfHealthRemoved;
                                                            _loc1_.m_selfDamage = this.m_selfDamage;
                                                            if(!(_loc2_ && Boolean(_loc1_)))
                                                            {
                                                               _loc1_.m_additionalRandomSelfDamage = this.m_additionalRandomSelfDamage;
                                                               _loc1_.m_selfPercentageDamage = this.m_selfPercentageDamage;
                                                               _loc1_.m_healing = this._healing;
                                                               _loc1_.m_additionalRandomHealing = this._additionalRandomHealing;
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  _loc1_.m_HOTHealing = this._HOTHealing;
                                                                  _loc1_.m_additionalHOTHealing = this._additionalHOTHealing;
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     _loc1_.m_selfHeal = this._selfHeal;
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                     §§goto(addr412);
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               _loc1_.m_additionalRandomSelfHeal = this._additionalRandomSelfHeal;
                                                               addr281:
                                                               _loc1_.m_stunChance = this.m_stunChance;
                                                               if(!(_loc2_ && Boolean(_loc1_)))
                                                               {
                                                                  _loc1_.m_freezeChance = this.m_freezeChance;
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     addr303:
                                                                     _loc1_.m_statTypesToDeBuff = this.m_statTypesToDeBuff;
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        _loc1_.m_chanceToDeBuff = this.m_chanceToDeBuff;
                                                                        _loc1_.m_amountOfStatTypeToDeBuffPercentage = this.m_amountOfStatTypeToDeBuffPercentage;
                                                                        _loc1_.m_stagesOfStatTypeToDeBuff = this.m_stagesOfStatTypeToDeBuff;
                                                                        addr326:
                                                                        _loc1_.m_doesDeBuffTargets = this.m_doesDeBuffTargets;
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           _loc1_.m_doesDeBuffSelf = this.m_doesDeBuffSelf;
                                                                           _loc1_.m_reviveChance = this.m_reviveChance;
                                                                           _loc1_.m_percentageOfDamageThatGetsRedirectedAtMinion = this.m_percentageOfDamageThatGetsRedirectedAtMinion;
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr351:
                                                                              _loc1_.m_statTypesToBuff = this.m_statTypesToBuff;
                                                                           }
                                                                           _loc1_.m_chanceToBuff = this.m_chanceToBuff;
                                                                           if(_loc2_)
                                                                           {
                                                                           }
                                                                           §§goto(addr376);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     _loc1_.m_amountOfStatTypeToBuffPercentage = this.m_amountOfStatTypeToBuffPercentage;
                                                                     if(!(_loc2_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr372:
                                                                        _loc1_.m_stagesOfStatTypeToBuff = this.m_stagesOfStatTypeToBuff;
                                                                        §§goto(addr376);
                                                                     }
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               addr376:
                                                               _loc1_.m_doesBuffTargets = this.m_doesBuffTargets;
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  _loc1_.m_doesBuffSelf = this.m_doesBuffSelf;
                                                                  _loc1_.m_clearBuffsAndDebuffsChance = this.m_clearBuffsAndDebuffsChance;
                                                                  _loc1_.m_armor = this.m_armor;
                                                                  if(!_loc2_)
                                                                  {
                                                                     _loc1_.m_setShieldAmount = this.m_setShieldAmount;
                                                                  }
                                                               }
                                                               §§goto(addr412);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      addr412:
                                                      _loc1_.m_setReflectDamageAmount = this.m_setReflectDamageAmount;
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         _loc1_.m_increasedExtraCritChance = this.m_increasedExtraCritChance;
                                                         addr427:
                                                         _loc1_.m_chanceToClearAllCooldowns = this.m_chanceToClearAllCooldowns;
                                                      }
                                                      return _loc1_;
                                                   }
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr303);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr427);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr103);
               }
               §§goto(addr159);
            }
            §§goto(addr84);
         }
         §§goto(addr351);
      }
      
      public function get m_moveIcon() : String
      {
         return this._moveIcon;
      }
      
      public function set m_moveIcon(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this._moveIcon = param1;
            if(_loc3_)
            {
               addr26:
               this.m_buffIcon = param1;
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function get m_healing() : int
      {
         return this._healing;
      }
      
      public function set m_healing(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this._healing = param1 * this.m_healingModifier;
         }
      }
      
      public function get m_additionalRandomHealing() : int
      {
         return this._additionalRandomHealing;
      }
      
      public function set m_additionalRandomHealing(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this._additionalRandomHealing = param1 * this.m_healingModifier;
         }
      }
      
      public function get m_HOTHealing() : int
      {
         return this._HOTHealing;
      }
      
      public function set m_HOTHealing(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._HOTHealing = param1 * this.m_healingModifier;
         }
      }
      
      public function get m_additionalHOTHealing() : int
      {
         return this._additionalHOTHealing;
      }
      
      public function set m_additionalHOTHealing(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._additionalHOTHealing = param1 * this.m_healingModifier;
         }
      }
      
      public function get m_selfHeal() : int
      {
         return this._selfHeal;
      }
      
      public function set m_selfHeal(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this._selfHeal = param1 * this.m_healingModifier;
         }
      }
      
      public function get m_additionalRandomSelfHeal() : int
      {
         return this._additionalRandomSelfHeal;
      }
      
      public function set m_additionalRandomSelfHeal(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this._additionalRandomSelfHeal = param1 * this.m_healingModifier;
         }
      }
      
      public function get m_visualMoveID() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(MinionVisualMoveID.VISUALS_SameAsClass);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop() == this._visualMoveID)
               {
                  if(_loc2_)
                  {
                     §§push(this.m_moveClass);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr47:
                     §§push(this._visualMoveID);
                  }
               }
               §§goto(addr47);
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function set m_visualMoveID(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this._visualMoveID = param1;
         }
      }
      
      public function get m_visualDOTMoveID() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(MinionVisualMoveID.VISUALS_SameAsClass);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() == this._visualDOTMoveID)
               {
                  if(_loc2_)
                  {
                     §§push(this.m_moveClass);
                     if(!_loc1_)
                     {
                        §§goto(addr46);
                     }
                  }
                  else
                  {
                     addr47:
                     §§push(this._visualDOTMoveID);
                  }
                  return §§pop();
               }
               §§goto(addr47);
            }
            addr46:
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function set m_visualDOTMoveID(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this._visualDOTMoveID = param1;
         }
      }
   }
}
