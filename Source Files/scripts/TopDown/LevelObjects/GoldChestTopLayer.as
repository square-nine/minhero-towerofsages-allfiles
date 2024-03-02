package TopDown.LevelObjects
{
   public class GoldChestTopLayer extends VisualLevelObjectWithHeight
   {
       
      
      public var m_hasBeenUsed:Boolean;
      
      public function GoldChestTopLayer()
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
