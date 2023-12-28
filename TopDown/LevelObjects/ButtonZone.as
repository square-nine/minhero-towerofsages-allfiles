package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class ButtonZone extends BaseLevelCollObject
   {
       
      
      public var m_buttonZoneID:int;
      
      public function ButtonZone()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!_loc1_)
            {
               this.m_buttonZoneID = 0;
            }
         }
      }
      
      override public function OnColl() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.OnColl();
            if(!_loc1_)
            {
               addr25:
               Singleton.staticData.GetCurrentLevel().InButtonCollZone(this.m_buttonZoneID);
            }
            return;
         }
         §§goto(addr25);
      }
   }
}
