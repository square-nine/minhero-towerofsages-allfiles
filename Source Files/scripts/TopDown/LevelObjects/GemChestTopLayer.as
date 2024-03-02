package TopDown.LevelObjects
{
   public class GemChestTopLayer extends VisualLevelObjectWithHeight
   {
       
      
      public var m_hasBeenUsed:Boolean;
      
      public function GemChestTopLayer()
      {
         super();
         this.m_hasBeenUsed = false;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         if(this.m_hasBeenUsed)
         {
            m_currSprite.alpha = 0;
         }
      }
   }
}
