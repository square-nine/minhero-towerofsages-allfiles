package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class ExpertRoomVisualObjectBase extends VisualLevelObject
   {
       
      
      private var m_teleporterOn:Sprite;
      
      public function ExpertRoomVisualObjectBase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.AddSprite();
         if(_loc2_)
         {
            this.m_teleporterOn = Singleton.utility.m_spriteHandler.CreateSprite("room_expertTeleporter");
            this.m_teleporterOn.x = 0;
            this.m_teleporterOn.y = 0;
            m_currSprite.addChild(this.m_teleporterOn);
            if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
            {
               addr58:
               this.m_teleporterOn.alpha = 1;
            }
            else
            {
               this.m_teleporterOn.alpha = 0;
            }
            return;
         }
         §§goto(addr58);
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            m_currSprite.removeChild(this.m_teleporterOn);
            if(_loc1_ || _loc2_)
            {
               super.Cleanup();
            }
         }
      }
   }
}
