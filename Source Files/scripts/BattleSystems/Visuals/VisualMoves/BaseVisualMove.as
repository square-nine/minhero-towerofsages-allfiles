package BattleSystems.Visuals.VisualMoves
{
   import BattleSystems.Visuals.BattleScreenMinionVisual;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class BaseVisualMove
   {
       
      
      public var m_moveTime:Number;
      
      protected var m_addedToSprite:Sprite;
      
      protected var m_minionAttacking:OwnedMinion;
      
      protected var m_minionAttacked:OwnedMinion;
      
      protected var m_minionAttackingVisual:BattleScreenMinionVisual;
      
      protected var m_minionAttackedVisual:BattleScreenMinionVisual;
      
      public var m_impactSound:String;
      
      public var m_impactSoundVolume:Number;
      
      public var m_mainSound:String;
      
      public var m_mainSoundVolume:Number;
      
      public var m_mainSound2:String = "";
      
      public var m_mainSoundVolume2:Number = 1;
      
      public function BaseVisualMove()
      {
         super();
         this.SetSounds("",1,"",1);
      }
      
      public function SetSounds(param1:String, param2:Number, param3:String, param4:Number) : void
      {
         this.m_impactSound = param1;
         this.m_mainSound = param3;
         this.m_impactSoundVolume = param2;
         this.m_mainSoundVolume = param4;
      }
      
      protected function PlayHitSound() : void
      {
         if(this.m_impactSound != "")
         {
            Singleton.utility.m_soundController.PlaySound(this.m_impactSound,this.m_impactSoundVolume);
         }
      }
      
      protected function PlayMainSound() : void
      {
         if(this.m_mainSound != "")
         {
            Singleton.utility.m_soundController.PlaySound(this.m_mainSound,this.m_mainSoundVolume);
         }
      }
      
      protected function PlayMainSound2() : void
      {
         if(this.m_mainSound2 != "")
         {
            Singleton.utility.m_soundController.PlaySound(this.m_mainSound2,this.m_mainSoundVolume2);
         }
      }
      
      public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         this.m_addedToSprite = param1;
         this.m_minionAttacking = param3;
         this.m_minionAttacked = param4;
         this.m_minionAttackingVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_minionAttacking);
         this.m_minionAttackedVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_minionAttacked);
      }
      
      public function PlayMove() : void
      {
      }
      
      protected function CleanupMove() : void
      {
      }
   }
}
