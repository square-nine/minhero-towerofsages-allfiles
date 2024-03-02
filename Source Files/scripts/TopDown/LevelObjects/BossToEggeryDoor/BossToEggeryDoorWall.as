package TopDown.LevelObjects.BossToEggeryDoor
{
   import TopDown.LevelObjects.BaseInGameInteractionObject;
   import TopDown.LevelObjects.MainChar;
   import Utilities.Singleton;
   
   public class BossToEggeryDoorWall extends BaseInGameInteractionObject
   {
       
      
      public function BossToEggeryDoorWall()
      {
         super();
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         if(!Singleton.dynamicData.m_hasUnlockedEggeryDoor)
         {
            m_isSolid = true;
         }
         else
         {
            m_isSolid = false;
         }
      }
      
      override public function OnInteration() : void
      {
         var _loc2_:MainChar = null;
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
         if(_loc1_)
         {
            m_isSolid = false;
            m_currSprite.visible = false;
            Singleton.dynamicData.m_hasUnlockedEggeryDoor = true;
            Singleton.dynamicData.m_currEggeryKeys = 0;
            Singleton.dynamicData.m_currKeysOnFloor = 0;
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
         }
         else if(!Singleton.dynamicData.m_hasUnlockedEggeryDoor)
         {
            _loc2_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
            _loc2_.BringInCharChatBoxWithText("I need more keys to open that door.");
         }
      }
   }
}
