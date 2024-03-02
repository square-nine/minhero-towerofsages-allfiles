package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class ExpertRoomVisualObjectBase extends VisualLevelObject
   {
       
      
      private var m_teleporterOn:Sprite;
      
      public function ExpertRoomVisualObjectBase()
      {
         super();
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         this.m_teleporterOn = Singleton.utility.m_spriteHandler.CreateSprite("room_expertTeleporter");
         this.m_teleporterOn.x = 0;
         this.m_teleporterOn.y = 0;
         m_currSprite.addChild(this.m_teleporterOn);
         if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            this.m_teleporterOn.alpha = 1;
         }
         else
         {
            this.m_teleporterOn.alpha = 0;
         }
      }
      
      override public function Cleanup() : void
      {
         m_currSprite.removeChild(this.m_teleporterOn);
         super.Cleanup();
      }
   }
}
