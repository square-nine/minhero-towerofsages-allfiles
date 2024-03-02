package BattleSystems.Visuals
{
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import States.MinionDexID;
   import States.MinionMoveID;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class MoveSelectorForPlayer extends GameObject
   {
       
      
      private var m_selectorBackground:Sprite;
      
      private var m_visualMoveObjects:Vector.<VisualMoveButtonObject>;
      
      private var m_energyBar:InterfaceBar;
      
      private var m_energyText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_desparationMove:VisualMoveButtonObject;
      
      private var m_outOfEnergyPopup:Sprite;
      
      private var m_isOutOfEnergy:Boolean;
      
      private var _collisionBackground:Sprite;
      
      public function MoveSelectorForPlayer()
      {
         super();
         this.m_visualMoveObjects = new Vector.<VisualMoveButtonObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 12)
         {
            this.m_visualMoveObjects.push(new VisualMoveButtonObject());
            _loc1_++;
         }
         this.m_desparationMove = new VisualMoveButtonObject();
         this.m_energyBar = new InterfaceBar("battleScreenMenus_fillBar_energyFill","battleScreenMenus_fillBar_energyCap");
         this._collisionBackground = new Sprite();
         addChild(this._collisionBackground);
         this._collisionBackground.graphics.beginFill(5592405);
         this._collisionBackground.graphics.drawRect(-60,-70,240,220);
         this._collisionBackground.graphics.endFill();
         this._collisionBackground.visible = false;
      }
      
      public function CreateMoveSelectorForMinion(param1:OwnedMinion) : void
      {
         this.m_currMinion = param1;
         this.m_selectorBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_movesModuleBackground");
         this.m_selectorBackground.x = -63;
         this.m_selectorBackground.y = -50;
         addChild(this.m_selectorBackground);
         addChild(this.m_energyBar);
         this.m_energyBar.x = 31;
         this.m_energyBar.y = 31;
         this.m_energyText = new TextField();
         this.m_energyText.embedFonts = true;
         this.m_energyText.defaultTextFormat = Singleton.staticData.m_onInterfaceBarTextFormat;
         this.m_energyText.width = 70;
         this.m_energyText.text = "10/10";
         this.m_energyText.x = 33;
         this.m_energyText.y = 29;
         this.m_energyText.selectable = false;
         addChild(this.m_energyText);
         var _loc2_:int = 0;
         while(_loc2_ < param1.m_activeMoves.length)
         {
            this.m_visualMoveObjects[_loc2_].CreateObject(this.m_currMinion,param1.m_activeMoves[_loc2_],_loc2_);
            addChild(this.m_visualMoveObjects[_loc2_]);
            _loc2_++;
         }
         this.m_desparationMove.CreateObject(this.m_currMinion,MinionMoveID.desperation_t1,-99);
         this.m_desparationMove.x = -135;
         this.m_desparationMove.y = -60;
         addChild(this.m_desparationMove);
         this.m_outOfEnergyPopup = Singleton.utility.m_spriteHandler.CreateSprite("outOfEnergyTip");
         this.m_outOfEnergyPopup.x = -147;
         this.m_outOfEnergyPopup.y = -124;
         addChild(this.m_outOfEnergyPopup);
         visible = false;
         this.UpdateEnergyBar();
      }
      
      public function UpdateEnergyBar() : void
      {
         if(this.m_currMinion == null)
         {
            return;
         }
         this.m_energyText.text = "" + this.m_currMinion.m_currEnergy + "/" + this.m_currMinion.m_currEnergyStat;
         this.m_energyBar.SetBarSize(this.m_currMinion.m_currEnergy / this.m_currMinion.m_currEnergyStat);
      }
      
      public function CleanUp() : void
      {
         removeChild(this.m_selectorBackground);
         removeChild(this.m_energyBar);
         removeChild(this.m_energyText);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_visualMoveObjects.length)
         {
            if(this.m_visualMoveObjects[_loc1_].parent != null)
            {
               this.m_visualMoveObjects[_loc1_].Cleanup();
               removeChild(this.m_visualMoveObjects[_loc1_]);
            }
            _loc1_++;
         }
         this.m_desparationMove.Cleanup();
         removeChild(this.m_desparationMove);
         removeChild(this.m_outOfEnergyPopup);
      }
      
      public function BringIn(param1:Boolean) : void
      {
         visible = true;
         this.alpha = 1;
         this.m_isOutOfEnergy = true;
         TweenMax.killTweensOf(this);
         if(param1)
         {
            TweenMax.to(this,0.1,{"colorMatrixFilter":{"saturation":1}});
         }
         else
         {
            TweenMax.to(this,0.1,{"colorMatrixFilter":{"saturation":0.1}});
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_currMinion.m_activeMoves.length)
         {
            if(this.m_visualMoveObjects[_loc2_].SetIsTheMoveActive())
            {
               this.m_isOutOfEnergy = false;
            }
            _loc2_++;
         }
         if(this.m_isOutOfEnergy)
         {
            this.m_desparationMove.SetIsTheMoveActive();
            this.m_desparationMove.visible = true;
            this.m_outOfEnergyPopup.visible = true;
         }
         else
         {
            this.m_desparationMove.visible = false;
            this.m_outOfEnergyPopup.visible = false;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_currMinion.m_activeMoves.length)
         {
            this.m_visualMoveObjects[_loc2_].x = -142;
            this.m_visualMoveObjects[_loc2_].y = 69;
            _loc2_++;
         }
         var _loc3_:Array = new Array(-37,41,117,-37,41,117,-37,41,117,-37,41,117);
         var _loc4_:Array = new Array(-21,-45,-21,-21 + 70,-45 + 118,-21 + 70,-21 - 70 * 1,-45 - 70 * 1,-21 - 70 * 1,-21 - 70 * 2,-45 - 70 * 2,-21 - 70 * 2);
         _loc2_ = 0;
         while(_loc2_ < this.m_currMinion.m_activeMoves.length)
         {
            TweenMax.to(this.m_visualMoveObjects[_loc2_],0.3 + _loc2_ * 0.1,{
               "delay":_loc2_ * 0.1,
               "x":_loc3_[_loc2_],
               "y":_loc4_[_loc2_]
            });
            this.m_visualMoveObjects[_loc2_].AnimateIn(0.3 + _loc2_ * 0.2);
            _loc2_++;
         }
         if(param1 && !Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVE_SELECT))
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial.visible = true;
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial.alpha = 0;
            TweenMax.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial,0.5,{
               "delay":0.5,
               "alpha":1
            });
         }
         if(Singleton.dynamicData.m_currKeysOnFloor == 1)
         {
            if(param1 && !Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENERGY))
            {
               Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENERGY,true);
               TweenLite.to(this,0.8,{
                  "onComplete":Singleton.utility.m_tutorialHandler.BringIn_EnergyTut,
                  "onCompleteParams":[null]
               });
            }
         }
         else if(Singleton.dynamicData.m_currKeysOnFloor == 2 && this.m_currMinion.m_baseMinion.m_minionDexID == MinionDexID.DEX_ID_fire_pig_1)
         {
            if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_TYPE_EFFECTIVENESS))
            {
               Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_TYPE_EFFECTIVENESS,true);
               TweenLite.to(this,0.8,{
                  "onComplete":Singleton.utility.m_tutorialHandler.BringIn_TypeEffectiveness,
                  "onCompleteParams":[null]
               });
            }
         }
      }
      
      public function ExitOut() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_currMinion.m_activeMoves.length)
         {
            TweenMax.to(this.m_visualMoveObjects[_loc1_],0.3 + _loc1_ * 0.1,{
               "delay":_loc1_ * 0.1,
               "x":-142,
               "y":69
            });
            this.m_visualMoveObjects[_loc1_].AnimateOut(0.3 + _loc1_ * 0.2);
            _loc1_++;
         }
         if(this.m_currMinion.m_activeMoves.length > 5)
         {
            TweenMax.to(this,0.3,{
               "delay":5 * 0.2,
               "onComplete":this.FinishExitOut,
               "alpha":0
            });
         }
         else
         {
            TweenMax.to(this,0.3,{
               "delay":(this.m_currMinion.m_activeMoves.length - 1) * 0.2,
               "onComplete":this.FinishExitOut,
               "alpha":0
            });
         }
         TweenMax.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial,0.5,{"alpha":0});
      }
      
      public function FinishExitOut() : void
      {
         this.visible = false;
         this.alpha = 1;
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_moveSelectTutorial.visible = false;
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_visualMoveObjects.length)
         {
            if(this.m_visualMoveObjects[_loc1_].m_isInUse)
            {
               this.m_visualMoveObjects[_loc1_].UpdateFullFrames();
            }
            _loc1_++;
         }
         if(this.m_isOutOfEnergy)
         {
            this.m_desparationMove.UpdateFullFrames();
         }
      }
      
      public function get m_collisionBackground() : Sprite
      {
         var _loc1_:int = 6;
         while(_loc1_ < this.m_visualMoveObjects.length)
         {
            if(this.m_visualMoveObjects[_loc1_].m_isInUse)
            {
               return this;
            }
            _loc1_++;
         }
         if(this.m_isOutOfEnergy)
         {
            return this;
         }
         return this._collisionBackground;
      }
      
      public function set m_collisionBackground(param1:Sprite) : void
      {
         this._collisionBackground = param1;
      }
   }
}
