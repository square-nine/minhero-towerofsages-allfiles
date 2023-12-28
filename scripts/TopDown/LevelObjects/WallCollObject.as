package TopDown.LevelObjects
{
   public class WallCollObject extends BaseLevelCollObject
   {
       
      
      public function WallCollObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               m_isVisible = true;
            }
         }
      }
      
      override public function OnColl() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.OnColl();
         }
      }
   }
}
