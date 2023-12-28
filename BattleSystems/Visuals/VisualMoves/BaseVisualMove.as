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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr19:
               this.SetSounds("",1,"",1);
            }
            return;
         }
         §§goto(addr19);
      }
      
      public function SetSounds(param1:String, param2:Number, param3:String, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.m_impactSound = param1;
            if(!_loc5_)
            {
               this.m_mainSound = param3;
               if(_loc6_)
               {
                  addr33:
                  this.m_impactSoundVolume = param2;
                  if(_loc6_ || Boolean(this))
                  {
                     this.m_mainSoundVolume = param4;
                  }
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      protected function PlayHitSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.m_impactSound != "")
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  addr34:
                  Singleton.utility.m_soundController.PlaySound(this.m_impactSound,this.m_impactSoundVolume);
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      protected function PlayMainSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            if(this.m_mainSound != "")
            {
               if(!_loc2_)
               {
                  Singleton.utility.m_soundController.PlaySound(this.m_mainSound,this.m_mainSoundVolume);
               }
            }
         }
      }
      
      protected function PlayMainSound2() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.m_mainSound2 != "")
            {
               if(!_loc2_)
               {
                  Singleton.utility.m_soundController.PlaySound(this.m_mainSound2,this.m_mainSoundVolume2);
               }
            }
         }
      }
      
      public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(param1)))
         {
            this.m_addedToSprite = param1;
            if(_loc5_ || Boolean(this))
            {
               this.m_minionAttacking = param3;
               if(!(_loc6_ && Boolean(this)))
               {
                  this.m_minionAttacked = param4;
                  if(!_loc6_)
                  {
                     addr59:
                     this.m_minionAttackingVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_minionAttacking);
                     if(_loc6_)
                     {
                     }
                  }
                  §§goto(addr81);
               }
               this.m_minionAttackedVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_minionAttacked);
            }
            addr81:
            return;
         }
         §§goto(addr59);
      }
      
      public function PlayMove() : void
      {
      }
      
      protected function CleanupMove() : void
      {
      }
   }
}
