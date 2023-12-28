package TopDown.LevelObjects
{
   import TopDown.Levels.MainTower.BaseEggery;
   import Utilities.Singleton;
   
   public class EggeryExitBlockade extends WallCollObject
   {
       
      
      public function EggeryExitBlockade()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function OnColl() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MainChar = null;
         if(_loc3_)
         {
            super.OnColl();
            if(_loc3_)
            {
               addr23:
               if(Singleton.staticData.GetCurrentLevel() is BaseEggery)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(Singleton.dynamicData.m_numOfMinionsLeftToChoose == 0)
                     {
                        if(_loc2_)
                        {
                        }
                        addr79:
                        return;
                        addr60:
                     }
                     else
                     {
                        _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.BringInCharChatBoxWithText("You still need to choose an egg!");
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr79);
                  }
                  m_isSolid = false;
                  §§goto(addr60);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr23);
      }
   }
}
