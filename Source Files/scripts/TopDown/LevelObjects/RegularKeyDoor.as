package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class RegularKeyDoor extends BaseInGameInteractionObject
   {
       
      
      public function RegularKeyDoor()
      {
         super();
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         if(!Singleton.dynamicData.m_hasUnlockedBossDoor)
         {
            m_isSolid = true;
         }
         else
         {
            m_isSolid = false;
         }
         if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            m_isSolid = false;
         }
      }
      
      override public function OnInteration() : void
      {
         var _loc1_:MainChar = null;
         super.OnInteration();
         if(Singleton.dynamicData.m_currKeysOnFloor > 2)
         {
            m_isSolid = false;
            m_currSprite.visible = false;
            Singleton.dynamicData.m_hasUnlockedBossDoor = true;
            Singleton.dynamicData.m_currKeysOnFloor = 0;
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
         }
         else if(!Singleton.dynamicData.m_hasUnlockedBossDoor)
         {
            _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
            _loc1_.BringInCharChatBoxWithText("I need three keys to open that door.");
         }
      }
   }
}
