package TopDown.LevelObjects
{
   public class BaseInGameInteractionObject extends BaseLevelCollObject
   {
       
      
      public var m_interationID:int;
      
      public function BaseInGameInteractionObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function OnPotentialInteration() : void
      {
      }
      
      public function OnInteration() : void
      {
      }
   }
}
