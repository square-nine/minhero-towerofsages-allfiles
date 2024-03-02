package TopDown.LevelObjects.BossToEggeryDoor
{
   import TopDown.LevelObjects.BaseInGameInteractionObject;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BossToEggeryDoorVisuals extends BaseInGameInteractionObject
   {
       
      
      private var m_hasBeenOpened:Boolean;
      
      private var m_closedDoor:Sprite;
      
      public function BossToEggeryDoorVisuals()
      {
         super();
         m_interationID = 2;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            this.m_closedDoor = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_eggeryDoor_locked_sixKeys");
         }
         else
         {
            this.m_closedDoor = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_eggeryDoor_locked");
         }
         this.m_closedDoor.x = 0;
         this.m_closedDoor.y = 0;
         m_currSprite.addChild(this.m_closedDoor);
         if(Singleton.dynamicData.m_hasUnlockedEggeryDoor)
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
         var _loc2_:TimelineLite = null;
         super.OnInteration();
         var _loc1_:* = false;
         if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            _loc1_ = Singleton.dynamicData.m_currEggeryKeys > 2 && Singleton.dynamicData.m_currKeysOnFloor > 2;
         }
         else
         {
            _loc1_ = Singleton.dynamicData.m_currEggeryKeys > 0;
         }
         if(_loc1_ && !this.m_hasBeenOpened)
         {
            _loc2_ = new TimelineLite();
            _loc2_.append(new TweenLite(this.m_closedDoor,1,{"alpha":0}));
            Singleton.utility.m_soundController.PlaySound("tower_doorUnlock",1);
         }
      }
   }
}
