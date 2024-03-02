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
         super();
         this.m_statTypesToDeBuff = new Vector.<int>();
         this.m_statTypesToBuff = new Vector.<int>();
      }
      
      public function AddStatToBuff(param1:int) : void
      {
         this.m_statTypesToBuff.push(param1);
      }
      
      public function AddStatToBuffFirstTime(param1:int, param2:Boolean = false, param3:Boolean = false, param4:int = 1, param5:int = 100) : void
      {
         this.m_statTypesToBuff.push(param1);
         this.m_doesBuffSelf = param3;
         this.m_doesBuffTargets = param2;
         this.m_stagesOfStatTypeToBuff = param4;
         this.m_chanceToBuff = param5;
      }
      
      public function AddStatToDeBuff(param1:int) : void
      {
         this.m_statTypesToDeBuff.push(param1);
      }
      
      public function AddStatToDeBuffFirstTime(param1:int, param2:Boolean = false, param3:Boolean = false, param4:int = 1, param5:int = 100) : void
      {
         this.m_statTypesToDeBuff.push(param1);
         this.m_doesDeBuffSelf = param3;
         this.m_doesDeBuffTargets = param2;
         this.m_stagesOfStatTypeToDeBuff = -param4;
         this.m_chanceToDeBuff = param5;
      }
      
      public function GetToolTipForMoveDescription() : Sprite
      {
         var _loc9_:int = 0;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 15921906;
         _loc2_.size = 21;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         var _loc3_:TextField = new TextField();
         _loc3_.y = -6;
         _loc3_.width = 200;
         _loc3_.embedFonts = true;
         _loc3_.defaultTextFormat = _loc2_;
         _loc3_.text = this.m_moveName;
         _loc3_.selectable = false;
         if(_loc3_.textWidth > _loc3_.width)
         {
            _loc3_.width = _loc3_.textWidth * 1.1;
         }
         var _loc4_:TextField;
         (_loc4_ = this.GetTextFieldForMoveDescription()).y = 27 + _loc3_.y;
         if(_loc3_.width > _loc4_.width)
         {
            _loc9_ = _loc3_.width;
         }
         else
         {
            _loc9_ = _loc4_.width;
         }
         var _loc10_:int = _loc4_.textHeight;
         _loc1_.graphics.beginFill(15066856,0.85);
         _loc1_.graphics.drawRoundRect(-5 - 2,-5 - 2,_loc9_ + 5 * 2 + 2 * 2,_loc10_ + 20 + 5 * 3 + 2 * 2,6);
         _loc1_.graphics.drawRoundRect(-5,-5,_loc9_ + 5 * 2,_loc10_ + 20 + 5 * 3,6);
         _loc1_.graphics.endFill();
         _loc1_.graphics.beginFill(6186100,0.95);
         _loc1_.graphics.drawRoundRect(-5,-5,_loc9_ + 5 * 2,_loc10_ + 20 + 5 * 3,6);
         _loc1_.graphics.endFill();
         _loc1_.addChild(_loc3_);
         _loc1_.addChild(_loc4_);
         if(_loc9_ > _loc3_.width)
         {
            _loc3_.width = _loc9_;
         }
         _loc3_.wordWrap = true;
         _loc3_.autoSize = TextFieldAutoSize.CENTER;
         if(this.m_tooltipTypeImage != null && this.m_tooltipTypeImage.parent != null)
         {
            this.m_tooltipTypeImage.parent.removeChild(this.m_tooltipTypeImage);
         }
         if(this.m_moveType != MinionType.TYPE_NONE)
         {
            this.m_tooltipTypeImage = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(this.m_moveType));
            this.m_tooltipTypeImage.x = _loc1_.width - this.m_tooltipTypeImage.width - 8;
            this.m_tooltipTypeImage.y = _loc10_ + 10;
            _loc1_.addChild(this.m_tooltipTypeImage);
         }
         return _loc1_;
      }
      
      public function GetTextFieldForMoveDescription() : TextField
      {
         var _loc18_:Number = NaN;
         var _loc8_:String = "";
         var _loc9_:* = "";
         var _loc10_:Vector.<Object> = new Vector.<Object>();
         var _loc11_:Vector.<int> = new Vector.<int>();
         var _loc12_:Boolean = true;
         if(this.m_damage > 0 || this.m_additionalRandomDamage > 0)
         {
            _loc8_ += this.CreateAddText("Damage: ",15066856,_loc10_,_loc11_);
            if(this.m_additionalRandomDamage > 0)
            {
               _loc9_ = "" + this.m_damage + "-" + (this.m_additionalRandomDamage + this.m_damage) + "\n";
               _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
            }
            else
            {
               _loc9_ = "" + this.m_damage + "\n";
               _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
            }
         }
         if(this.m_DOTDamage > 0 || this.m_additionalDOTDamage > 0)
         {
            _loc8_ += this.CreateAddText("Time Damage: ",15066856,_loc10_,_loc11_);
            if(this.m_additionalDOTDamage > 0)
            {
               _loc9_ = "" + this.m_DOTDamage * this.m_overTimeTurnsActive + "-" + (this.m_DOTDamage * this.m_overTimeTurnsActive + this.m_additionalDOTDamage * this.m_overTimeTurnsActive) + "";
               _loc8_ = (_loc8_ = (_loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_)) + this.CreateAddText(" over ",16740659,_loc10_,_loc11_)) + this.CreateAddText("" + this.m_overTimeTurnsActive + " turns\n",16740659,_loc10_,_loc11_);
            }
            else
            {
               _loc9_ = "" + this.m_DOTDamage * this.m_overTimeTurnsActive + "";
               _loc8_ = (_loc8_ = (_loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_)) + this.CreateAddText(" over ",16740659,_loc10_,_loc11_)) + this.CreateAddText("" + this.m_overTimeTurnsActive + " turns\n",16740659,_loc10_,_loc11_);
            }
         }
         if(this.m_enemiesItHits == 5)
         {
            _loc8_ = (_loc8_ += this.CreateAddText("Enemies Hit: ",15066856,_loc10_,_loc11_)) + this.CreateAddText("All\n",16740659,_loc10_,_loc11_);
         }
         else if(this.m_enemiesItHits > 1)
         {
            _loc8_ += this.CreateAddText("Enemies Hit:",15066856,_loc10_,_loc11_);
            _loc9_ = " " + this.m_enemiesItHits + "";
            _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
            if(this.m_hitsRandomTargets)
            {
               _loc8_ += this.CreateAddText(" random",16740659,_loc10_,_loc11_);
            }
            _loc8_ += this.CreateAddText("\n",15066856,_loc10_,_loc11_);
         }
         else if(this.m_enemiesItHits == 1)
         {
            if(this.m_hitsRandomTargets)
            {
               _loc8_ = (_loc8_ += this.CreateAddText("Enemies Hit: ",15066856,_loc10_,_loc11_)) + this.CreateAddText("1 random\n",16740659,_loc10_,_loc11_);
            }
         }
         if(this.m_healing > 0 || this.m_additionalRandomHealing > 0)
         {
            _loc8_ += this.CreateAddText("Healing: ",15066856,_loc10_,_loc11_);
            if(this.m_additionalRandomHealing > 0)
            {
               _loc9_ = "" + this.m_healing + "-" + (this.m_additionalRandomHealing + this.m_damage) + "\n";
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            }
            else
            {
               _loc9_ = "" + this.m_healing + "\n";
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            }
         }
         if(this.m_HOTHealing > 0 || this.m_additionalHOTHealing > 0)
         {
            _loc8_ += this.CreateAddText("Time Healing: ",15066856,_loc10_,_loc11_);
            if(this.m_additionalHOTHealing > 0)
            {
               _loc9_ = "" + this.m_HOTHealing * this.m_overTimeTurnsActive + "-" + (this.m_HOTHealing * this.m_overTimeTurnsActive + this.m_additionalHOTHealing * this.m_overTimeTurnsActive) + "";
               _loc8_ = (_loc8_ = (_loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_)) + this.CreateAddText(" over ",8576630,_loc10_,_loc11_)) + this.CreateAddText("" + this.m_overTimeTurnsActive + " turns\n",8576630,_loc10_,_loc11_);
            }
            else
            {
               _loc9_ = "" + this.m_HOTHealing * this.m_overTimeTurnsActive + "";
               _loc8_ = (_loc8_ = (_loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_)) + this.CreateAddText(" over ",8576630,_loc10_,_loc11_)) + this.CreateAddText("" + this.m_overTimeTurnsActive + " turns\n",8576630,_loc10_,_loc11_);
            }
         }
         if(this.m_setShieldAmount > 0)
         {
            _loc8_ += this.CreateAddText("Shield: ",15066856,_loc10_,_loc11_);
            _loc12_ = false;
            _loc9_ = "" + this.m_setShieldAmount + "\n";
            _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
         }
         if(this.m_alliesItHits == 5)
         {
            _loc8_ = (_loc8_ += this.CreateAddText("Allies Hit: ",15066856,_loc10_,_loc11_)) + this.CreateAddText("All\n",8576630,_loc10_,_loc11_);
         }
         else if(this.m_alliesItHits > 1)
         {
            _loc8_ += this.CreateAddText("Allies Hit:",15066856,_loc10_,_loc11_);
            _loc9_ = " " + this.m_alliesItHits + "";
            _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            if(this.m_hitsRandomTargets)
            {
               _loc8_ += this.CreateAddText(" random",8576630,_loc10_,_loc11_);
            }
            _loc8_ += this.CreateAddText("\n",15066856,_loc10_,_loc11_);
         }
         else if(this.m_alliesItHits == 1)
         {
            if(this.m_hitsRandomTargets)
            {
               _loc8_ = (_loc8_ += this.CreateAddText("Allies Hit: ",15066856,_loc10_,_loc11_)) + this.CreateAddText("1 random\n",8576630,_loc10_,_loc11_);
            }
         }
         if(this.m_selfDamage > 0 || this.m_additionalRandomSelfDamage > 0)
         {
            _loc8_ += this.CreateAddText("Recoil: ",15066856,_loc10_,_loc11_);
            if(this.m_additionalRandomSelfDamage > 0)
            {
               _loc9_ = "" + this.m_selfDamage + " - " + this.m_additionalRandomSelfDamage + "\n";
               _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
            }
            else
            {
               _loc9_ = "" + this.m_selfDamage + "\n";
               _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
            }
         }
         if(this.m_selfHeal > 0 || this.m_additionalRandomSelfHeal > 0)
         {
            _loc8_ += this.CreateAddText("Self Heal: ",15066856,_loc10_,_loc11_);
            if(this.m_additionalRandomSelfHeal > 0)
            {
               _loc9_ = "" + this.m_selfHeal + " - " + this.m_additionalRandomSelfHeal + "\n";
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            }
            else
            {
               _loc9_ = "" + this.m_selfHeal + "\n";
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            }
         }
         if(this.m_selfPercentageDamage > 0)
         {
            _loc8_ += this.CreateAddText("Remove Health: ",15066856,_loc10_,_loc11_);
            _loc9_ = "-" + this.m_selfPercentageDamage + "% on self\n";
            _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
         }
         if(this.m_armor > 0)
         {
            if(this.m_onlyHitsSelf)
            {
               _loc8_ += this.CreateAddText("Increases your armor: ",15066856,_loc10_,_loc11_);
            }
            else
            {
               _loc8_ += this.CreateAddText("Increases targets armor: ",15066856,_loc10_,_loc11_);
            }
            _loc9_ = "+" + this.m_armor + "%\n";
            _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
         }
         if(this.m_armor < 0)
         {
            if(this.m_onlyHitsSelf)
            {
               _loc8_ += this.CreateAddText("Reduces your armor: ",15066856,_loc10_,_loc11_);
            }
            else
            {
               _loc8_ += this.CreateAddText("Reduces targets armor: ",15066856,_loc10_,_loc11_);
            }
            _loc9_ = "" + this.m_armor + "%\n";
            _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
         }
         var _loc13_:int = 0;
         while(_loc13_ < this.m_statTypesToDeBuff.length)
         {
            if(this.m_doesDeBuffSelf && this.m_doesDeBuffTargets)
            {
               _loc9_ = "Reduces target/your " + this.GetStatTypeNameAsString(this.m_statTypesToDeBuff[_loc13_]) + ": ";
               _loc8_ += this.CreateAddText(_loc9_,15066856,_loc10_,_loc11_);
               _loc18_ = (_loc18_ = Singleton.staticData.GetStatStageModificationAmount(this.m_stagesOfStatTypeToDeBuff) - 1) * 100;
               _loc18_ = Math.round(_loc18_);
               _loc9_ = "" + _loc18_ + "%";
               _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
               if(this.m_chanceToDeBuff < 100)
               {
                  _loc8_ += this.CreateAddText(" (Chance ",16760188,_loc10_,_loc11_);
                  _loc9_ = "" + this.m_chanceToDeBuff + "%)\n";
                  _loc8_ += this.CreateAddText(_loc9_,16760188,_loc10_,_loc11_);
               }
               else
               {
                  _loc8_ += this.CreateAddText("\n",15066856,_loc10_,_loc11_);
               }
            }
            else if(this.m_doesDeBuffSelf)
            {
               _loc9_ = "Reduces your " + this.GetStatTypeNameAsString(this.m_statTypesToDeBuff[_loc13_]) + ": ";
               _loc8_ += this.CreateAddText(_loc9_,15066856,_loc10_,_loc11_);
               _loc18_ = (_loc18_ = Singleton.staticData.GetStatStageModificationAmount(this.m_stagesOfStatTypeToDeBuff) - 1) * 100;
               _loc18_ = Math.round(_loc18_);
               _loc9_ = "" + _loc18_ + "%";
               _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
               if(this.m_chanceToDeBuff < 100)
               {
                  _loc8_ += this.CreateAddText(" (Chance ",16760188,_loc10_,_loc11_);
                  _loc9_ = "" + this.m_chanceToDeBuff + "%)\n";
                  _loc8_ += this.CreateAddText(_loc9_,16760188,_loc10_,_loc11_);
               }
               else
               {
                  _loc8_ += this.CreateAddText("\n",15066856,_loc10_,_loc11_);
               }
            }
            else if(this.m_doesDeBuffTargets)
            {
               _loc9_ = "Reduces targets " + this.GetStatTypeNameAsString(this.m_statTypesToDeBuff[_loc13_]) + ": ";
               _loc8_ += this.CreateAddText(_loc9_,15066856,_loc10_,_loc11_);
               _loc18_ = (_loc18_ = Singleton.staticData.GetStatStageModificationAmount(this.m_stagesOfStatTypeToDeBuff) - 1) * 100;
               _loc18_ = Math.round(_loc18_);
               _loc9_ = "" + _loc18_ + "%";
               _loc8_ += this.CreateAddText(_loc9_,16740659,_loc10_,_loc11_);
               if(this.m_chanceToDeBuff < 100)
               {
                  _loc8_ += this.CreateAddText(" (Chance ",16760188,_loc10_,_loc11_);
                  _loc9_ = "" + this.m_chanceToDeBuff + "%)\n";
                  _loc8_ += this.CreateAddText(_loc9_,16760188,_loc10_,_loc11_);
               }
               else
               {
                  _loc8_ += this.CreateAddText("\n",15066856,_loc10_,_loc11_);
               }
            }
            _loc13_++;
         }
         _loc13_ = 0;
         while(_loc13_ < this.m_statTypesToBuff.length)
         {
            if(this.m_doesBuffSelf)
            {
               _loc9_ = "Increases your " + this.GetStatTypeNameAsString(this.m_statTypesToBuff[_loc13_]) + ": ";
               _loc8_ += this.CreateAddText(_loc9_,15066856,_loc10_,_loc11_);
               _loc18_ = (_loc18_ = Singleton.staticData.GetStatStageModificationAmount(this.m_stagesOfStatTypeToBuff) - 1) * 100;
               _loc18_ = Math.round(_loc18_);
               _loc9_ = "+" + _loc18_ + "%";
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
               if(this.m_chanceToBuff < 100)
               {
                  _loc8_ += this.CreateAddText(" (Chance ",12642746,_loc10_,_loc11_);
                  _loc9_ = "" + this.m_chanceToBuff + "%)\n";
                  _loc8_ += this.CreateAddText(_loc9_,12642746,_loc10_,_loc11_);
               }
               else
               {
                  _loc8_ += this.CreateAddText("\n",15066856,_loc10_,_loc11_);
               }
            }
            if(this.m_doesBuffTargets)
            {
               _loc9_ = "Increases targets " + this.GetStatTypeNameAsString(this.m_statTypesToBuff[_loc13_]) + ": ";
               _loc8_ += this.CreateAddText(_loc9_,15066856,_loc10_,_loc11_);
               _loc18_ = (_loc18_ = Singleton.staticData.GetStatStageModificationAmount(this.m_stagesOfStatTypeToBuff) - 1) * 100;
               _loc18_ = Math.round(_loc18_);
               _loc9_ = "+" + _loc18_ + "%";
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
               if(this.m_chanceToBuff < 100)
               {
                  _loc8_ += this.CreateAddText(" (Chance ",12642746,_loc10_,_loc11_);
                  _loc9_ = "" + this.m_chanceToBuff + "%)\n";
                  _loc8_ += this.CreateAddText(_loc9_,12642746,_loc10_,_loc11_);
               }
               else
               {
                  _loc8_ += this.CreateAddText("\n",15066856,_loc10_,_loc11_);
               }
            }
            _loc13_++;
         }
         if(this.m_setReflectDamageAmount > 0)
         {
            _loc8_ += this.CreateAddText("Reflect Damage: ",15066856,_loc10_,_loc11_);
            _loc9_ = "+" + this.m_setReflectDamageAmount + "%\n";
            _loc8_ = (_loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_)) + this.CreateAddText("Turns active: ",15066856,_loc10_,_loc11_);
            _loc9_ = "" + this.m_overTimeTurnsActive + "\n";
            _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
         }
         if(this.m_stunChance > 0)
         {
            _loc8_ += this.CreateAddText("Stun Chance:",15066856,_loc10_,_loc11_);
            _loc9_ = " " + this.m_stunChance + "%\n";
            _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
         }
         if(this.m_freezeChance > 0)
         {
            _loc8_ += this.CreateAddText("Freeze Chance:",15066856,_loc10_,_loc11_);
            _loc9_ = " " + this.m_freezeChance + "%\n";
            _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
         }
         if(this.m_exhaustTime > 0)
         {
            _loc8_ += this.CreateAddText("Exhaustion:",15066856,_loc10_,_loc11_);
            if(this.m_exhaustTime == 1)
            {
               _loc9_ = " " + this.m_exhaustTime + " turn\n";
            }
            else
            {
               _loc9_ = " " + this.m_exhaustTime + " turns\n";
            }
            _loc8_ += this.CreateAddText(_loc9_,15039999,_loc10_,_loc11_);
         }
         if(this.m_chargeTime > 0)
         {
            _loc8_ += this.CreateAddText("Charge:",15066856,_loc10_,_loc11_);
            if(this.m_chargeTime == 1)
            {
               _loc9_ = " " + this.m_chargeTime + " turn\n";
            }
            else
            {
               _loc9_ = " " + this.m_chargeTime + " turns\n";
            }
            _loc8_ += this.CreateAddText(_loc9_,15039999,_loc10_,_loc11_);
         }
         if(this.m_clearBuffsAndDebuffsChance > 0)
         {
            _loc8_ += this.CreateAddText("Buff/Debuff Clear Chance: ",15066856,_loc10_,_loc11_);
            _loc9_ = "" + this.m_clearBuffsAndDebuffsChance + "%\n";
            _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
         }
         if(this.m_energyPercentageRestored > 0)
         {
            _loc8_ += this.CreateAddText("Energy Restored: ",15066856,_loc10_,_loc11_);
            _loc9_ = " " + this.m_energyPercentageRestored + "%";
            _loc8_ += this.CreateAddText(_loc9_,8049641,_loc10_,_loc11_);
            if(this.m_onlyHitsSelf)
            {
               _loc8_ += this.CreateAddText(" on self",8049641,_loc10_,_loc11_);
            }
            _loc8_ += this.CreateAddText("\n",8049641,_loc10_,_loc11_);
         }
         if(this.m_armor < 0)
         {
            _loc8_ += this.CreateAddText("Turns active: ",15066856,_loc10_,_loc11_);
            _loc9_ = "" + this.m_overTimeTurnsActive + "\n";
            _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
         }
         if(this.m_armor > 0)
         {
            _loc8_ += this.CreateAddText("Turns active: ",15066856,_loc10_,_loc11_);
            _loc9_ = "" + this.m_overTimeTurnsActive + "\n";
            _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
         }
         if(this.m_accuracy < 100)
         {
            _loc8_ += this.CreateAddText("Accuracy: ",15066856,_loc10_,_loc11_);
            _loc9_ = "" + this.m_accuracy + "% \n";
            _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
         }
         if(this.m_moveCoolDownTime > 0)
         {
            _loc8_ += this.CreateAddText("Cooldown: ",15066856,_loc10_,_loc11_);
            if(this.m_moveCoolDownTime == 1)
            {
               _loc9_ = " " + this.m_moveCoolDownTime + " turn\n";
            }
            else
            {
               _loc9_ = " " + this.m_moveCoolDownTime + " turns\n";
            }
            _loc8_ += this.CreateAddText(_loc9_,8049641,_loc10_,_loc11_);
         }
         if(this.m_energyUsed > 0)
         {
            _loc8_ += this.CreateAddText("Energy: ",15066856,_loc10_,_loc11_);
            _loc9_ = "" + this.m_energyUsed + " \n";
            _loc8_ += this.CreateAddText(_loc9_,8049641,_loc10_,_loc11_);
         }
         if(this.m_percentageOfDamageThatGetsRedirectedAtMinion > 0)
         {
            _loc8_ = "";
            _loc9_ = "";
            _loc10_ = new Vector.<Object>();
            _loc11_ = new Vector.<int>();
            _loc8_ += this.CreateAddText("Redirects",15066856,_loc10_,_loc11_);
            _loc9_ += " " + this.m_percentageOfDamageThatGetsRedirectedAtMinion + "%";
            _loc8_ = (_loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_)) + this.CreateAddText(" of damage to this minion",16774504,_loc10_,_loc11_);
         }
         else if(this.m_isPassive || this.m_isGlobalPassive)
         {
            _loc8_ = "";
            _loc9_ = "";
            _loc10_ = new Vector.<Object>();
            _loc11_ = new Vector.<int>();
            if(this.m_isGlobalPassive)
            {
               _loc8_ += this.CreateAddText("Increases group",15066856,_loc10_,_loc11_);
            }
            else
            {
               _loc8_ += this.CreateAddText("Increase",15066856,_loc10_,_loc11_);
            }
            if(this.m_statTypesToBuff.length > 0)
            {
               _loc9_ = (_loc9_ = (_loc9_ = " " + this.GetStatTypeNameAsString(this.m_statTypesToBuff[0])) + " by") + (" " + this.m_amountOfStatTypeToBuffPercentage + "%");
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            }
            else if(this.m_armor > 0)
            {
               _loc9_ = (_loc9_ = " armor by") + (" " + this.m_armor + "%");
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            }
            else if(this.m_increasedExtraCritChance > 0)
            {
               _loc9_ = (_loc9_ = " critical hit chance by") + (" " + this.m_increasedExtraCritChance + "%");
               _loc8_ += this.CreateAddText(_loc9_,8576630,_loc10_,_loc11_);
            }
            else if(this.m_setReflectDamageAmount > 0)
            {
               _loc9_ = (_loc9_ = " reflect damage by") + (" " + this.m_setReflectDamageAmount + "%");
               _loc8_ += this.CreateAddText(_loc9_,16774504,_loc10_,_loc11_);
            }
         }
         var _loc14_:TextFormat;
         (_loc14_ = new TextFormat()).color = 65280;
         _loc14_.size = 14;
         _loc14_.font = "BurbinCasual";
         _loc14_.align = TextFormatAlign.LEFT;
         var _loc15_:TextField;
         (_loc15_ = new TextField()).embedFonts = true;
         _loc15_.defaultTextFormat = _loc14_;
         _loc15_.autoSize = TextFieldAutoSize.LEFT;
         _loc15_.text = _loc8_;
         _loc15_.width = 200;
         _loc15_.selectable = false;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         while(_loc17_ < _loc10_.length)
         {
            _loc14_.color = _loc10_[_loc17_];
            _loc15_.setTextFormat(_loc14_,_loc16_,_loc11_[_loc17_] + _loc16_);
            _loc16_ += _loc11_[_loc17_];
            _loc17_++;
         }
         return _loc15_;
      }
      
      private function GetStatTypeNameAsString(param1:int) : String
      {
         switch(param1)
         {
            case StatType.STAT_ENERGY:
               return "energy";
            case StatType.STAT_ATTACK:
               return "attack";
            case StatType.STAT_HEALING:
               return "healing";
            case StatType.STAT_SPEED:
               return "speed";
            default:
               return "health";
         }
      }
      
      private function GetIconSpriteForType(param1:int) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case MinionType.TYPE_EARTH:
               _loc2_ = "moveDescription_type_earth";
               break;
            case MinionType.TYPE_PLANT:
               _loc2_ = "moveDescription_type_plant";
               break;
            case MinionType.TYPE_UNDEAD:
               _loc2_ = "moveDescription_type_undead";
               break;
            case MinionType.TYPE_DEMONIC:
               _loc2_ = "moveDescription_type_demonic";
               break;
            case MinionType.TYPE_DINO:
               _loc2_ = "moveDescription_type_dino";
               break;
            case MinionType.TYPE_ENERGY:
               _loc2_ = "moveDescription_type_energy";
               break;
            case MinionType.TYPE_FIRE:
               _loc2_ = "moveDescription_type_fire";
               break;
            case MinionType.TYPE_FLYING:
               _loc2_ = "moveDescription_type_flying";
               break;
            case MinionType.TYPE_HOLY:
               _loc2_ = "moveDescription_type_holy";
               break;
            case MinionType.TYPE_ICE:
               _loc2_ = "moveDescription_type_ice";
               break;
            case MinionType.TYPE_ROBOT:
               _loc2_ = "moveDescription_type_robot";
               break;
            case MinionType.TYPE_TITAN:
               _loc2_ = "moveDescription_type_titan";
               break;
            case MinionType.TYPE_WATER:
               _loc2_ = "moveDescription_type_water";
               break;
            case MinionType.TYPE_NORMAL:
               _loc2_ = "moveDescription_type_normal";
         }
         return _loc2_;
      }
      
      private function CreateAddText(param1:String, param2:Object, param3:Vector.<Object>, param4:Vector.<int>) : String
      {
         param3.push(param2);
         param4.push(param1.length);
         return param1;
      }
      
      public function GetMoveCopy() : BaseMinionMove
      {
         var _loc1_:BaseMinionMove = new BaseMinionMove();
         _loc1_.m_moveID = this.m_moveID;
         _loc1_.m_moveClass = this.m_moveClass;
         _loc1_.m_moveTier = this.m_moveTier;
         _loc1_.m_moveType = this.m_moveType;
         _loc1_.m_moveName = this.m_moveName;
         _loc1_._moveIcon = this._moveIcon;
         _loc1_.m_buffIcon = this.m_buffIcon;
         _loc1_.m_accuracy = this.m_accuracy;
         _loc1_.m_isPassive = this.m_isPassive;
         _loc1_.m_isGlobalPassive = this.m_isGlobalPassive;
         _loc1_.m_moveCoolDownTime = this.m_moveCoolDownTime;
         _loc1_.m_chanceToAddOverTimeMove = this.m_chanceToAddOverTimeMove;
         _loc1_.m_overTimeStackAmount = this.m_overTimeStackAmount;
         _loc1_.m_overTimeTurnsActive = this.m_overTimeTurnsActive;
         _loc1_.m_additionalRandomOverTimeTurnsActive = this.m_additionalRandomOverTimeTurnsActive;
         _loc1_.m_chargeTime = this.m_chargeTime;
         _loc1_.m_exhaustTime = this.m_exhaustTime;
         _loc1_.m_enemiesItHits = this.m_enemiesItHits;
         _loc1_.m_alliesItHits = this.m_alliesItHits;
         _loc1_.m_hitsRandomTargets = this.m_hitsRandomTargets;
         _loc1_.m_onlyHitsSelf = this.m_onlyHitsSelf;
         _loc1_.m_energyUsed = this.m_energyUsed;
         _loc1_.m_energyPercentageRestored = this.m_energyPercentageRestored;
         _loc1_.m_visualMoveID = this.m_visualMoveID;
         _loc1_.m_visualDOTMoveID = this.m_visualDOTMoveID;
         _loc1_.m_doesHitEachEnemy = this.m_doesHitEachEnemy;
         _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = this.m_isThereABufferBetweenVisualMovesOnMultipleEnemies;
         _loc1_.m_damage = this.m_damage;
         _loc1_.m_additionalRandomDamage = this.m_additionalRandomDamage;
         _loc1_.m_DOTDamage = this.m_DOTDamage;
         _loc1_.m_additionalDOTDamage = this.m_additionalDOTDamage;
         _loc1_.m_percentageOfHealthRemoved = this.m_percentageOfHealthRemoved;
         _loc1_.m_selfDamage = this.m_selfDamage;
         _loc1_.m_additionalRandomSelfDamage = this.m_additionalRandomSelfDamage;
         _loc1_.m_selfPercentageDamage = this.m_selfPercentageDamage;
         _loc1_.m_healing = this._healing;
         _loc1_.m_additionalRandomHealing = this._additionalRandomHealing;
         _loc1_.m_HOTHealing = this._HOTHealing;
         _loc1_.m_additionalHOTHealing = this._additionalHOTHealing;
         _loc1_.m_selfHeal = this._selfHeal;
         _loc1_.m_additionalRandomSelfHeal = this._additionalRandomSelfHeal;
         _loc1_.m_stunChance = this.m_stunChance;
         _loc1_.m_freezeChance = this.m_freezeChance;
         _loc1_.m_statTypesToDeBuff = this.m_statTypesToDeBuff;
         _loc1_.m_chanceToDeBuff = this.m_chanceToDeBuff;
         _loc1_.m_amountOfStatTypeToDeBuffPercentage = this.m_amountOfStatTypeToDeBuffPercentage;
         _loc1_.m_stagesOfStatTypeToDeBuff = this.m_stagesOfStatTypeToDeBuff;
         _loc1_.m_doesDeBuffTargets = this.m_doesDeBuffTargets;
         _loc1_.m_doesDeBuffSelf = this.m_doesDeBuffSelf;
         _loc1_.m_reviveChance = this.m_reviveChance;
         _loc1_.m_percentageOfDamageThatGetsRedirectedAtMinion = this.m_percentageOfDamageThatGetsRedirectedAtMinion;
         _loc1_.m_statTypesToBuff = this.m_statTypesToBuff;
         _loc1_.m_chanceToBuff = this.m_chanceToBuff;
         _loc1_.m_amountOfStatTypeToBuffPercentage = this.m_amountOfStatTypeToBuffPercentage;
         _loc1_.m_stagesOfStatTypeToBuff = this.m_stagesOfStatTypeToBuff;
         _loc1_.m_doesBuffTargets = this.m_doesBuffTargets;
         _loc1_.m_doesBuffSelf = this.m_doesBuffSelf;
         _loc1_.m_clearBuffsAndDebuffsChance = this.m_clearBuffsAndDebuffsChance;
         _loc1_.m_armor = this.m_armor;
         _loc1_.m_setShieldAmount = this.m_setShieldAmount;
         _loc1_.m_setReflectDamageAmount = this.m_setReflectDamageAmount;
         _loc1_.m_increasedExtraCritChance = this.m_increasedExtraCritChance;
         _loc1_.m_chanceToClearAllCooldowns = this.m_chanceToClearAllCooldowns;
         return _loc1_;
      }
      
      public function get m_moveIcon() : String
      {
         return this._moveIcon;
      }
      
      public function set m_moveIcon(param1:String) : void
      {
         this._moveIcon = param1;
         this.m_buffIcon = param1;
      }
      
      public function get m_healing() : int
      {
         return this._healing;
      }
      
      public function set m_healing(param1:int) : void
      {
         this._healing = param1 * this.m_healingModifier;
      }
      
      public function get m_additionalRandomHealing() : int
      {
         return this._additionalRandomHealing;
      }
      
      public function set m_additionalRandomHealing(param1:int) : void
      {
         this._additionalRandomHealing = param1 * this.m_healingModifier;
      }
      
      public function get m_HOTHealing() : int
      {
         return this._HOTHealing;
      }
      
      public function set m_HOTHealing(param1:int) : void
      {
         this._HOTHealing = param1 * this.m_healingModifier;
      }
      
      public function get m_additionalHOTHealing() : int
      {
         return this._additionalHOTHealing;
      }
      
      public function set m_additionalHOTHealing(param1:int) : void
      {
         this._additionalHOTHealing = param1 * this.m_healingModifier;
      }
      
      public function get m_selfHeal() : int
      {
         return this._selfHeal;
      }
      
      public function set m_selfHeal(param1:int) : void
      {
         this._selfHeal = param1 * this.m_healingModifier;
      }
      
      public function get m_additionalRandomSelfHeal() : int
      {
         return this._additionalRandomSelfHeal;
      }
      
      public function set m_additionalRandomSelfHeal(param1:int) : void
      {
         this._additionalRandomSelfHeal = param1 * this.m_healingModifier;
      }
      
      public function get m_visualMoveID() : int
      {
         if(MinionVisualMoveID.VISUALS_SameAsClass == this._visualMoveID)
         {
            return this.m_moveClass;
         }
         return this._visualMoveID;
      }
      
      public function set m_visualMoveID(param1:int) : void
      {
         this._visualMoveID = param1;
      }
      
      public function get m_visualDOTMoveID() : int
      {
         if(MinionVisualMoveID.VISUALS_SameAsClass == this._visualDOTMoveID)
         {
            return this.m_moveClass;
         }
         return this._visualDOTMoveID;
      }
      
      public function set m_visualDOTMoveID(param1:int) : void
      {
         this._visualDOTMoveID = param1;
      }
   }
}
