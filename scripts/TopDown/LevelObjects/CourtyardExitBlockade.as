package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class CourtyardExitBlockade extends WallCollObject
   {
       
      
      public function CourtyardExitBlockade()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function OnColl() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MainChar = null;
         if(_loc2_)
         {
            super.OnColl();
            if(!_loc3_)
            {
               §§goto(addr22);
            }
            §§goto(addr47);
         }
         addr22:
         if(Singleton.dynamicData.m_hasTalkedToTheGrandSageForTheFirstTime)
         {
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr47:
               m_isSolid = false;
            }
         }
         else
         {
            _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.BringInCharChatBoxWithText("You should talk to the Grand Sage before continuing.");
            }
         }
      }
   }
}
