package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class VisualsForBossDoor extends BaseInGameInteractionObject
   {
       
      
      private var m_hasBeenOpened:Boolean;
      
      private var m_closedDoor:Sprite;
      
      public function VisualsForBossDoor()
      {
         super();
         m_interationID = 2;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         this.m_closedDoor = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_specialDoor_locked");
         this.m_closedDoor.x = 0;
         this.m_closedDoor.y = 0;
         m_currSprite.addChild(this.m_closedDoor);
         if(Singleton.dynamicData.m_hasUnlockedBossDoor || Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            this.m_closedDoor.visible = false;
            this.m_hasBeenOpened = true;
         }
         else
         {
            this.m_closedDoor.visible = true;
            this.m_hasBeenOpened = false;
         }
      }
      
      override public function Cleanup() : void
      {
         m_currSprite.removeChild(this.m_closedDoor);
         super.Cleanup();
      }
      
      override public function OnInteration() : void
      {
         var _loc1_:TimelineLite = null;
         super.OnInteration();
         if(Singleton.dynamicData.m_currKeysOnFloor > 2 && !this.m_hasBeenOpened)
         {
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this.m_closedDoor,1,{"alpha":0}));
            Singleton.utility.m_soundController.PlaySound("tower_doorUnlock",1);
         }
      }
   }
}
