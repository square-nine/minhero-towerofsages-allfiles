package TopDown.LevelObjects
{
   public class WallCollObject extends BaseLevelCollObject
   {
       
      
      public function WallCollObject()
      {
         super();
         m_isVisible = true;
      }
      
      override public function OnColl() : void
      {
         super.OnColl();
      }
   }
}
