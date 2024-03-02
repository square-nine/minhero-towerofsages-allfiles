package TopDown.LevelObjects
{
   import SharedObjects.Animation;
   
   public class FireTorch extends VisualLevelObject
   {
       
      
      private var m_animation:Animation;
      
      private var m_currFrameCount:Number;
      
      public var m_numberOfFrames:int;
      
      public function FireTorch()
      {
         super();
      }
      
      public function Update() : void
      {
         if(this.m_currFrameCount % 2 == 0)
         {
            this.m_animation.PlayNextFrame();
         }
         this.m_currFrameCount += 1;
      }
      
      override public function AddSprite() : void
      {
         this.m_animation = new Animation();
         this.m_animation.Create(m_spriteName,this.m_numberOfFrames);
         m_addToSprite.addChild(this.m_animation);
         this.m_animation.x = m_initialX;
         this.m_animation.y = m_initialY;
         this.m_animation.scaleX = m_initialScaleX;
         this.m_animation.scaleY = m_initialScaleY;
         this.m_animation.rotation = m_initialRotation;
         this.m_currFrameCount = 0;
      }
      
      override public function Cleanup() : void
      {
         this.m_animation.Cleanup();
         m_addToSprite.removeChild(this.m_animation);
      }
   }
}
