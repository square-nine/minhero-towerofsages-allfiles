package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class CourtyardExitBlockade extends WallCollObject
   {
       
      
      public function CourtyardExitBlockade()
      {
         super();
      }
      
      override public function OnColl() : void
      {
         var _loc1_:MainChar = null;
         super.OnColl();
         if(Singleton.dynamicData.m_hasTalkedToTheGrandSageForTheFirstTime)
         {
            m_isSolid = false;
         }
         else
         {
            _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
            _loc1_.BringInCharChatBoxWithText("You should talk to the Grand Sage before continuing.");
         }
      }
   }
}
