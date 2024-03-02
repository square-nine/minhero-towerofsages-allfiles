package BattleSystems.Visuals
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BattleScreenMinionVisual extends GameObject
   {
       
      
      private var m_healthBarBackgroundSprite:Sprite;
      
      private var m_healthBar:InterfaceBar;
      
      private var m_shieldBar:InterfaceBar;
      
      public var m_minionSprite:Sprite;
      
      private var m_turnBackground:Sprite;
      
      private var m_currTurnText:TextField;
      
      private var m_expBarBackgroundSprite:Sprite;
      
      public var m_expBar:InterfaceBar;
      
      private var m_currLevelText:TextField;
      
      public var m_currMinion:OwnedMinion;
      
      public var m_moveSelector:MoveSelectorForPlayer;
      
      private var m_selectedSprite:Sprite;
      
      private var m_isSelected:Boolean;
      
      public var m_superEffectivePopup:Sprite;
      
      public var m_notEffectivePopup:Sprite;
      
      public var m_critPopup:Sprite;
      
      public var m_redirectedPopup:Sprite;
      
      public var m_minionShield:Sprite;
      
      private var m_isPlayersMinion:Boolean;
      
      private var m_buffIcons:Vector.<BuffIcon>;
      
      private var m_startedDead:Boolean;
      
      public var m_teleportAnimationPieces:Vector.<Sprite>;
      
      public function BattleScreenMinionVisual()
      {
         super();
         this.m_moveSelector = new MoveSelectorForPlayer();
         this.m_buffIcons = new Vector.<BuffIcon>();
         this.m_healthBar = new InterfaceBar("battleScreenMenus_fillBar_healthFill","battleScreenMenus_fillBar_healthCap");
         this.m_shieldBar = new InterfaceBar("battleScreenMenus_fillBar_shieldFill","battleScreenMenus_fillBar_shieldCap");
         this.m_expBar = new InterfaceBar("battleScreenMenus_fillBar_expFill","battleScreenMenus_fillBar_expCap");
      }
      
      public function Cleanup() : void
      {
         if(this.m_minionSprite == null)
         {
            return;
         }
         TweenLite.to(this.m_minionSprite,0.1,{"removeTint":true});
         var _loc1_:int = 0;
         while(_loc1_ < this.m_buffIcons.length)
         {
            this.m_buffIcons[_loc1_].CleanUp();
            removeChild(this.m_buffIcons[_loc1_]);
            _loc1_++;
         }
         this.m_buffIcons = new Vector.<BuffIcon>();
         removeChild(this.m_minionSprite);
         removeChild(this.m_healthBarBackgroundSprite);
         removeChild(this.m_expBarBackgroundSprite);
         removeChild(this.m_turnBackground);
         this.m_turnBackground.removeChild(this.m_currTurnText);
         removeChild(this.m_currLevelText);
         removeChild(this.m_minionShield);
         this.m_minionSprite = null;
         if(this.m_isPlayersMinion)
         {
            this.m_moveSelector.CleanUp();
            removeChild(this.m_moveSelector);
         }
         removeChild(this.m_selectedSprite);
         removeChild(this.m_superEffectivePopup);
         removeChild(this.m_notEffectivePopup);
         removeChild(this.m_critPopup);
         removeChild(this.m_healthBar);
         removeChild(this.m_shieldBar);
         removeChild(this.m_expBar);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_teleportAnimationPieces.length)
         {
            removeChild(this.m_teleportAnimationPieces[_loc2_]);
            _loc2_++;
         }
      }
      
      public function SetNewMinion(param1:OwnedMinion, param2:Boolean) : void
      {
         this.alpha = 0;
         this.m_isPlayersMinion = param2;
         this.m_currMinion = param1;
         this.m_isSelected = false;
         if(Singleton.dynamicData.m_isInMysteryMode && !param2)
         {
            this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite("unknownMinion");
         }
         else
         {
            this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite(param1.m_baseMinion.m_minionBattleSprite);
         }
         addChild(this.m_minionSprite);
         this.m_teleportAnimationPieces = new Vector.<Sprite>(7);
         var _loc3_:int = 0;
         while(_loc3_ < this.m_teleportAnimationPieces.length)
         {
            this.m_teleportAnimationPieces[_loc3_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenIntro_teleportPiece" + (_loc3_ + 1));
            this.m_teleportAnimationPieces[_loc3_].x = -this.m_teleportAnimationPieces[_loc3_].width / 2;
            this.m_teleportAnimationPieces[_loc3_].y = -this.m_teleportAnimationPieces[_loc3_].height * 1.4;
            this.m_teleportAnimationPieces[_loc3_].alpha = 0;
            this.m_teleportAnimationPieces[_loc3_].visible = false;
            addChild(this.m_teleportAnimationPieces[_loc3_]);
            _loc3_++;
         }
         this.m_minionSprite.y = -this.m_minionSprite.height;
         if(param2)
         {
            this.m_minionSprite.x = this.m_minionSprite.width / 2;
            this.m_minionSprite.scaleX = -1;
         }
         else
         {
            this.m_minionSprite.scaleX = 1;
            this.m_minionSprite.x = -(this.m_minionSprite.width / 2);
         }
         this.m_healthBarBackgroundSprite = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_healthFillBar_background");
         addChild(this.m_healthBarBackgroundSprite);
         this.m_healthBarBackgroundSprite.x = -(this.m_healthBarBackgroundSprite.width / 2);
         this.m_healthBarBackgroundSprite.y = -this.m_minionSprite.height - 20 - 10;
         addChild(this.m_healthBar);
         this.m_healthBar.x = -(this.m_healthBarBackgroundSprite.width / 2) + 4;
         this.m_healthBar.y = -this.m_minionSprite.height - 17 - 10;
         this.m_healthBar.alpha = 1;
         this.m_healthBar.SetBarSize(param1.m_currHealthPercentage);
         addChild(this.m_shieldBar);
         this.m_shieldBar.x = -(this.m_healthBarBackgroundSprite.width / 2) + 4;
         this.m_shieldBar.y = -this.m_minionSprite.height - 17 - 10;
         this.m_shieldBar.alpha = 1;
         this.m_shieldBar.SetBarSize(param1.m_currHealthPercentage);
         this.m_expBarBackgroundSprite = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_fillBar_background");
         addChild(this.m_expBarBackgroundSprite);
         this.m_expBarBackgroundSprite.x = -(this.m_expBarBackgroundSprite.width / 2) - 6;
         this.m_expBarBackgroundSprite.y = -this.m_minionSprite.height - 20 - 10;
         this.m_expBarBackgroundSprite.alpha = 0;
         addChild(this.m_expBar);
         this.m_expBar.x = -(this.m_healthBarBackgroundSprite.width / 2) + 4;
         this.m_expBar.y = -this.m_minionSprite.height - 17 - 10;
         this.m_expBar.SetBarSize(param1.m_currExpPercentageToNextLevel);
         this.m_expBar.alpha = 0;
         if(param2)
         {
            this.m_turnBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_turnIndicator_player");
         }
         else
         {
            this.m_turnBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_turnIndicator_enemy");
         }
         addChild(this.m_turnBackground);
         this.m_turnBackground.x = -58;
         this.m_turnBackground.y = -this.m_minionSprite.height - 28 - 10;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat()).color = 1250067;
         _loc5_.size = 14;
         _loc5_.font = "BurbinCasual";
         _loc5_.align = TextFormatAlign.CENTER;
         this.m_currTurnText = new TextField();
         this.m_currTurnText.embedFonts = true;
         this.m_currTurnText.defaultTextFormat = _loc5_;
         this.m_currTurnText.wordWrap = true;
         this.m_currTurnText.autoSize = TextFieldAutoSize.CENTER;
         this.m_currTurnText.text = "1";
         this.m_currTurnText.x = 1;
         this.m_currTurnText.y = 2;
         this.m_currTurnText.width = 25;
         this.m_currTurnText.selectable = false;
         this.m_turnBackground.addChild(this.m_currTurnText);
         if(Singleton.dynamicData.m_isInMysteryMode)
         {
            this.m_currTurnText.visible = false;
         }
         else
         {
            this.m_currTurnText.visible = true;
         }
         this.m_currLevelText = new TextField();
         this.m_currLevelText.embedFonts = true;
         _loc5_.size = 9;
         _loc5_.color = 15461355;
         this.m_currLevelText.defaultTextFormat = _loc5_;
         this.m_currLevelText.text = "lv. 0";
         this.m_currLevelText.x = -21;
         this.m_currLevelText.y = -this.m_minionSprite.height - 7 - 10;
         this.m_currLevelText.width = 45;
         this.m_currLevelText.selectable = false;
         addChild(this.m_currLevelText);
         if(param2)
         {
            this.m_moveSelector.CreateMoveSelectorForMinion(param1);
            this.m_moveSelector.x = 117;
            this.m_moveSelector.y = -114;
            addChild(this.m_moveSelector);
         }
         this.m_selectedSprite = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenSelectedIndicator");
         addChild(this.m_selectedSprite);
         this.m_selectedSprite.x = -28;
         this.m_selectedSprite.y = -this.m_minionSprite.height - 50 - 10;
         this.m_selectedSprite.visible = false;
         this.AnimateIsSelected();
         this.m_superEffectivePopup = Singleton.utility.m_spriteHandler.CreateSprite("superEffectivePopup");
         addChild(this.m_superEffectivePopup);
         this.m_superEffectivePopup.x = -56;
         this.m_superEffectivePopup.y = -this.m_minionSprite.height - 99 - 10;
         this.m_superEffectivePopup.visible = false;
         this.m_notEffectivePopup = Singleton.utility.m_spriteHandler.CreateSprite("notEffectivePopup");
         addChild(this.m_notEffectivePopup);
         this.m_notEffectivePopup.x = -56;
         this.m_notEffectivePopup.y = -this.m_minionSprite.height - 99 - 10;
         this.m_notEffectivePopup.visible = false;
         this.m_critPopup = Singleton.utility.m_spriteHandler.CreateSprite("critPopup");
         addChild(this.m_critPopup);
         this.m_critPopup.x = -146;
         this.m_critPopup.y = -this.m_minionSprite.height - 99 - 10;
         this.m_critPopup.visible = false;
         this.m_redirectedPopup = Singleton.utility.m_spriteHandler.CreateSprite("damageRedirected");
         addChild(this.m_redirectedPopup);
         this.m_redirectedPopup.x = -56;
         this.m_redirectedPopup.y = -this.m_minionSprite.height - 70 - 10;
         this.m_redirectedPopup.visible = false;
         this.m_shieldBar.SetBarSize(this.m_currMinion.m_shieldPercentage);
         if(param1.m_currHealth > 0)
         {
            this.visible = true;
            this.m_startedDead = false;
         }
         else
         {
            this.visible = false;
            this.m_startedDead = true;
         }
         this.m_minionShield = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shield");
         addChild(this.m_minionShield);
         this.m_minionShield.x = -(this.m_minionShield.height / 2);
         this.m_minionShield.y = -this.m_minionShield.height - 10;
         this.m_minionShield.visible = false;
      }
      
      public function AnimateAndSetBattleModShield(param1:Boolean) : Boolean
      {
         if(this.m_minionShield.visible && !param1)
         {
            TweenLite.to(this.m_minionShield,0.8,{
               "alpha":0,
               "y":-this.m_minionShield.height - 30,
               "onComplete":this.FinishBattleModShieldAnimation
            });
            this.m_currMinion.m_isBattleModShieldActive = false;
            return true;
         }
         if(!this.m_minionShield.visible && param1)
         {
            this.m_minionShield.visible = true;
            this.m_minionShield.alpha = 0;
            this.m_minionShield.y = -this.m_minionShield.height - 30;
            TweenLite.to(this.m_minionShield,0.8,{
               "alpha":1,
               "y":-this.m_minionShield.height + 10
            });
            this.m_currMinion.m_isBattleModShieldActive = true;
            return true;
         }
         return false;
      }
      
      private function FinishBattleModShieldAnimation() : void
      {
         this.m_minionShield.visible = false;
      }
      
      public function AnimateIn() : void
      {
         var _loc1_:TimelineLite = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(this.m_teleportAnimationPieces)
         {
            _loc2_ = 0;
            while(_loc2_ < 7)
            {
               _loc4_ = 51 * _loc2_ * Math.PI / 180;
               this.m_teleportAnimationPieces[_loc2_].x += 80 * Math.cos(_loc4_);
               this.m_teleportAnimationPieces[_loc2_].y -= 80 * Math.sin(_loc4_);
               _loc2_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.m_teleportAnimationPieces.length)
            {
               this.m_teleportAnimationPieces[_loc3_].visible = true;
               this.m_teleportAnimationPieces[_loc3_].alpha = 0;
               _loc1_ = new TimelineLite();
               _loc1_.append(new TweenLite(this.m_teleportAnimationPieces[_loc3_],0.8,{
                  "x":-this.m_teleportAnimationPieces[_loc3_].width / 2,
                  "y":-this.m_teleportAnimationPieces[_loc3_].height * 1.4,
                  "alpha":0.4
               }));
               _loc1_.append(new TweenLite(this.m_teleportAnimationPieces[_loc3_],0.2 + _loc3_ * 0.15,{"alpha":0}));
               _loc3_++;
            }
         }
         alpha = 1;
         if(this.m_teleportAnimationPieces)
         {
            this.m_turnBackground.alpha = 0;
            this.m_healthBar.alpha = 0;
            this.m_healthBarBackgroundSprite.alpha = 0;
            this.m_currLevelText.alpha = 0;
            if(this.m_minionSprite)
            {
               this.m_minionSprite.alpha = 0;
               TweenLite.to(this.m_minionSprite,0.5,{
                  "delay":0.5,
                  "alpha":1
               });
            }
            TweenLite.to(this.m_turnBackground,0.5,{
               "delay":0.8,
               "alpha":1
            });
            TweenLite.to(this.m_healthBar,0.5,{
               "delay":0.8,
               "alpha":1
            });
            TweenLite.to(this.m_healthBarBackgroundSprite,0.5,{
               "delay":0.8,
               "alpha":1
            });
            TweenLite.to(this.m_currLevelText,0.5,{
               "delay":0.8,
               "alpha":1
            });
         }
      }
      
      public function TurnOffInterface() : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         TweenLite.to(this.m_healthBar,0.3,{"alpha":0});
         TweenLite.to(this.m_shieldBar,0.3,{"alpha":0});
         TweenLite.to(this.m_healthBarBackgroundSprite,0.3,{"alpha":0});
         TweenLite.to(this.m_turnBackground,0.3,{"alpha":0});
         TweenLite.to(this.m_currTurnText,0.3,{"alpha":0});
         TweenLite.to(this.m_currLevelText,0.3,{"alpha":0});
         TweenLite.to(this.m_expBar,0.3,{"alpha":0});
         TweenLite.to(this.m_expBarBackgroundSprite,0.3,{"alpha":0});
      }
      
      public function MakeVisualFromDeath() : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         TweenLite.to(this,0.3,{"alpha":0.5});
      }
      
      public function TurnOnExpBar() : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         TweenLite.to(this.m_expBar,0.3,{"alpha":1});
         TweenLite.to(this.m_expBarBackgroundSprite,0.3,{"alpha":1});
      }
      
      public function TurnOffExpBar() : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         TweenLite.to(this.m_expBar,0.3,{"alpha":0});
         TweenLite.to(this.m_expBarBackgroundSprite,0.3,{"alpha":0});
      }
      
      public function AnimateExpBarTo(param1:Number, param2:Number) : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         this.m_expBar.AnimateToBarSize(param1,0.6);
      }
      
      public function SetExpBarTo(param1:Number) : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         TweenLite.killTweensOf(this.m_expBar.m_bar);
         this.m_expBar.SetBarSize(param1);
      }
      
      public function ToggleIsSelected() : Boolean
      {
         this.m_isSelected = !this.m_isSelected;
         this.m_selectedSprite.visible = this.m_isSelected;
         return this.m_isSelected;
      }
      
      private function AnimateIsSelected() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_selectedSprite,0.7,{"y":"-10"}));
         _loc1_.append(new TweenLite(this.m_selectedSprite,0.7,{
            "y":"10",
            "onComplete":this.AnimateIsSelected
         }));
      }
      
      public function SetIsSelected(param1:Boolean) : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         this.m_isSelected = param1;
         this.m_selectedSprite.visible = this.m_isSelected;
      }
      
      public function MakeMove() : void
      {
         var _loc1_:TimelineLite = null;
         if(this.m_isPlayersMinion)
         {
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this,0.1,{"x":"20"}));
            _loc1_.append(new TweenLite(this,0.1,{"x":"-20"}));
         }
         else
         {
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this,0.1,{"x":"-20"}));
            _loc1_.append(new TweenLite(this,0.1,{"x":"20"}));
         }
      }
      
      public function UpdateVisuals() : void
      {
         var _loc1_:Vector.<int> = null;
         var _loc2_:int = 0;
         var _loc3_:BaseMinionMove = null;
         var _loc4_:int = 0;
         if(this.m_currMinion == null || this.m_startedDead)
         {
            this.visible = false;
            return;
         }
         this.visible = true;
         if(this.m_currMinion.m_moveOrderPosition == 0)
         {
            this.m_currTurnText.text = "";
         }
         else
         {
            this.m_currTurnText.text = "" + this.m_currMinion.m_moveOrderPosition;
         }
         if(this.m_currMinion.m_currLevel == 60)
         {
            this.m_currLevelText.text = "max lvl";
         }
         else
         {
            this.m_currLevelText.text = "lv. " + this.m_currMinion.m_currLevel;
         }
         if(this.m_currMinion.m_hasMovedOnThisTurn)
         {
            TweenLite.to(this.m_turnBackground,0.3,{"alpha":0.3});
         }
         else
         {
            TweenLite.to(this.m_turnBackground,0.3,{"alpha":1});
         }
         if(this.m_minionSprite == null)
         {
            return;
         }
         if(this.m_isPlayersMinion)
         {
            _loc1_ = Singleton.dynamicData.GetGlobalPassiveMovesForPlayer().concat(this.m_currMinion.m_currDOTsAndHOTs);
         }
         else
         {
            _loc1_ = Singleton.dynamicData.GetGlobalPassiveMovesForOpponet().concat(this.m_currMinion.m_currDOTsAndHOTs);
         }
         if(this.m_buffIcons.length != _loc1_.length && this.m_currMinion.m_currHealth > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.m_buffIcons.length)
            {
               this.m_buffIcons[_loc2_].CleanUp();
               removeChild(this.m_buffIcons[_loc2_]);
               _loc2_++;
            }
            this.m_buffIcons = new Vector.<BuffIcon>(_loc1_.length);
            _loc4_ = 0;
            while(_loc4_ < _loc1_.length)
            {
               _loc3_ = Singleton.staticData.GetBaseMinionMove(_loc1_[_loc4_]);
               this.m_buffIcons[_loc4_] = new BuffIcon(_loc3_);
               if(this.m_isPlayersMinion)
               {
                  this.m_buffIcons[_loc4_].x = -(this.m_minionSprite.width / 2) - this.m_buffIcons[_loc4_].width;
               }
               else
               {
                  this.m_buffIcons[_loc4_].x = this.m_minionSprite.width / 2;
               }
               this.m_buffIcons[_loc4_].y = -this.m_minionSprite.height + _loc4_ * this.m_buffIcons[_loc4_].height;
               addChild(this.m_buffIcons[_loc4_]);
               _loc4_++;
            }
         }
         this.m_moveSelector.UpdateEnergyBar();
      }
      
      public function UpdateHealth() : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         this.m_healthBar.AnimateToBarSize(this.m_currMinion.m_currHealthPercentage,0.6);
         this.m_shieldBar.AnimateToBarSize(this.m_currMinion.m_shieldPercentage,0.6);
         if(this.m_currMinion.m_currHealth < 1)
         {
            TweenLite.to(this,1.2,{"onComplete":this.PlayDeathAnimation});
         }
      }
      
      public function PlayASuperEffectiveAttackHasHit() : void
      {
         this.m_superEffectivePopup.x = -65;
         this.m_superEffectivePopup.y = -this.m_minionSprite.height - 70 - 10;
         this.m_superEffectivePopup.visible = true;
         this.m_superEffectivePopup.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_superEffectivePopup,0.5,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_superEffectivePopup,0.5,{}));
         _loc1_.append(new TweenLite(this.m_superEffectivePopup,0.2,{"alpha":0}));
         TweenLite.to(this.m_superEffectivePopup,1.2,{
            "y":"-50",
            "onComplete":this.FinishSuperEffectAnimation
         });
      }
      
      public function PlayANotEffectiveAttackHasHit() : void
      {
         this.m_notEffectivePopup.x = -63;
         this.m_notEffectivePopup.y = -this.m_minionSprite.height - 70 - 10;
         this.m_notEffectivePopup.visible = true;
         this.m_notEffectivePopup.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_notEffectivePopup,0.5,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_notEffectivePopup,0.5,{}));
         _loc1_.append(new TweenLite(this.m_notEffectivePopup,0.2,{"alpha":0}));
         TweenLite.to(this.m_notEffectivePopup,1.2,{
            "y":"-50",
            "onComplete":this.FinishSuperEffectAnimation
         });
      }
      
      public function PlayRedirectedHasHappened() : void
      {
         this.m_redirectedPopup.x = -41;
         this.m_redirectedPopup.y = -this.m_minionSprite.height - 60 - 10;
         this.m_redirectedPopup.visible = true;
         this.m_redirectedPopup.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_redirectedPopup,0.5,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_redirectedPopup,0.5,{}));
         _loc1_.append(new TweenLite(this.m_redirectedPopup,0.2,{"alpha":0}));
         TweenLite.to(this.m_redirectedPopup,1.2,{
            "y":"-20",
            "onComplete":this.FinishSuperEffectAnimation
         });
      }
      
      public function PlayACritAttackHasHit() : void
      {
         this.m_critPopup.x = -62;
         this.m_critPopup.y = -this.m_minionSprite.height - 25 - 10;
         this.m_critPopup.visible = true;
         this.m_critPopup.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_critPopup,0.5,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_critPopup,0.5,{}));
         _loc1_.append(new TweenLite(this.m_critPopup,0.2,{"alpha":0}));
         TweenLite.to(this.m_critPopup,1.2,{
            "y":"-50",
            "onComplete":this.FinishSuperEffectAnimation
         });
      }
      
      private function FinishSuperEffectAnimation() : void
      {
         this.m_superEffectivePopup.visible = false;
         this.m_notEffectivePopup.visible = false;
         this.m_critPopup.visible = false;
         this.m_redirectedPopup.visible = false;
      }
      
      private function PlayDeathAnimation() : void
      {
         this.visible = true;
         TweenLite.to(this,0.5,{"alpha":0});
         var _loc1_:int = 0;
         while(_loc1_ < this.m_buffIcons.length)
         {
            this.m_buffIcons[_loc1_].CleanUp();
            removeChild(this.m_buffIcons[_loc1_]);
            _loc1_++;
         }
         this.m_buffIcons = new Vector.<BuffIcon>();
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_moveSelector.UpdateFullFrames();
      }
   }
}
