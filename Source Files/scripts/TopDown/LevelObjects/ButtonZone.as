package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class ButtonZone extends BaseLevelCollObject
   {
       
      
      public var m_buttonZoneID:int;
      
      public function ButtonZone()
      {
         super();
         this.m_buttonZoneID = 0;
      }
      
      override public function OnColl() : void
      {
         super.OnColl();
         Singleton.staticData.GetCurrentLevel().InButtonCollZone(this.m_buttonZoneID);
      }
   }
}
