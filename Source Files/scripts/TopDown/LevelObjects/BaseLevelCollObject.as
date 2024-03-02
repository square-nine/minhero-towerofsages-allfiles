package TopDown.LevelObjects
{
   public class BaseLevelCollObject extends VisualLevelObject
   {
       
      
      public var m_isSolid:Boolean;
      
      public function BaseLevelCollObject()
      {
         super();
         this.m_isSolid = true;
      }
      
      public function OnColl() : void
      {
      }
   }
}
