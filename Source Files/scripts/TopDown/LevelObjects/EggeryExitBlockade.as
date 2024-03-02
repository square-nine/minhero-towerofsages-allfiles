package TopDown.LevelObjects
{
   import TopDown.Levels.MainTower.BaseEggery;
   import Utilities.Singleton;
   
   public class EggeryExitBlockade extends WallCollObject
   {
       
      
      public function EggeryExitBlockade()
      {
         super();
      }
      
      override public function OnColl() : void
      {
         var _loc1_:MainChar = null;
         super.OnColl();
         if(Singleton.staticData.GetCurrentLevel() is BaseEggery)
         {
            if(Singleton.dynamicData.m_numOfMinionsLeftToChoose == 0)
            {
               m_isSolid = false;
            }
            else
            {
               _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
               _loc1_.BringInCharChatBoxWithText("You still need to choose an egg!");
            }
         }
      }
   }
}
