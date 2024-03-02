package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class HealStone extends BaseInGameInteractionObject
   {
       
      
      private var m_hasHealed:Boolean;
      
      private var m_healingGlow:Sprite;
      
      public function HealStone()
      {
         super();
         m_interationID = 1;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         this.m_healingGlow = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_healStone_glow");
         this.m_healingGlow.x = -45;
         this.m_healingGlow.y = -42;
         this.m_healingGlow.alpha = 0;
         m_currSprite.addChild(this.m_healingGlow);
         this.m_hasHealed = false;
      }
      
      override public function Cleanup() : void
      {
         m_currSprite.removeChild(this.m_healingGlow);
         super.Cleanup();
      }
      
      override public function OnPotentialInteration() : void
      {
         if(this.m_hasHealed)
         {
            return;
         }
         this.m_hasHealed = true;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.PlayHealedAnimation();
         this.m_healingGlow.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_healingGlow,0.4,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_healingGlow,0.2,{}));
         _loc1_.append(new TweenLite(this.m_healingGlow,2,{"alpha":0}));
         Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
         Singleton.dynamicData.SetNewReturnToOnDeathPoint();
      }
   }
}
