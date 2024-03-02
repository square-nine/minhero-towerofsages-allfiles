package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class VisualsForEgg extends VisualLevelObjectWithHeight
   {
       
      
      public var m_eggID:int;
      
      private var m_mask:Sprite;
      
      public function VisualsForEgg()
      {
         super();
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite("eggery_egg");
         this.m_mask.x = m_initialX;
         this.m_mask.y = m_initialY;
         this.m_mask.scaleX = m_initialScaleX;
         this.m_mask.scaleY = m_initialScaleY;
         this.m_mask.rotation = m_initialRotation;
         m_addToSprite.addChild(this.m_mask);
         this.m_mask.cacheAsBitmap = true;
         m_currSprite.cacheAsBitmap = true;
         m_currSprite.mask = this.m_mask;
         if(Singleton.dynamicData.m_numOfMinionsLeftToChoose == 0)
         {
            m_currSprite.y = m_initialY + 180;
         }
         else
         {
            m_currSprite.y = m_initialY;
         }
      }
      
      override public function Cleanup() : void
      {
         m_addToSprite.removeChild(this.m_mask);
         super.Cleanup();
      }
      
      public function MoveEggIntoGround() : void
      {
         TweenLite.to(m_currSprite,5.5,{"y":"180"});
         TweenLite.to(this,5.5,{"m_activationHieghtPoint":"180"});
         Singleton.utility.m_soundController.PlaySound("tower_eggsGoingIntoTheGround",0.02);
      }
   }
}
