package TopDown.LevelObjects
{
   import States.MinionDexID;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class TitanVisualsForEgg extends VisualLevelObjectWithHeight
   {
       
      
      public var m_eggID:int;
      
      private var m_mask:Sprite;
      
      public function TitanVisualsForEgg()
      {
         super();
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_titanEgg");
         this.m_mask.x = m_initialX;
         this.m_mask.y = m_initialY;
         this.m_mask.scaleX = m_initialScaleX;
         this.m_mask.scaleY = m_initialScaleY;
         this.m_mask.rotation = m_initialRotation;
         m_addToSprite.addChild(this.m_mask);
         this.m_mask.cacheAsBitmap = true;
         m_currSprite.cacheAsBitmap = true;
         m_currSprite.mask = this.m_mask;
         if(Singleton.dynamicData.GetIsMinionOwned(MinionDexID.DEX_ID_titan_1))
         {
            m_currSprite.y = m_initialY + 330;
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
         TweenLite.to(m_currSprite,10.5,{"y":"330"});
         TweenLite.to(this,10.5,{"m_activationHieghtPoint":"330"});
         Singleton.utility.m_soundController.PlaySound("tower_eggsGoingIntoTheGround",0.04);
      }
   }
}
