package TopDown.LevelObjects
{
   public class BaseLevelCollObject extends VisualLevelObject
   {
       
      
      public var m_isSolid:Boolean;
      
      public function BaseLevelCollObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addr25:
               this.m_isSolid = true;
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function OnColl() : void
      {
      }
   }
}
