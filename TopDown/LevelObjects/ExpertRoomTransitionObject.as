package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class ExpertRoomTransitionObject extends RoomTransitionObject
   {
       
      
      public function ExpertRoomTransitionObject()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function OnColl() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Singleton.dynamicData);
         if(!(_loc1_ && _loc1_))
         {
            if(§§pop().m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
            {
               §§push(Singleton.utility);
               if(_loc2_ || _loc1_)
               {
                  §§pop().m_soundController.PlaySound("tower_teleport");
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(-99);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§pop().m_topDownCharPositionX = §§pop();
                           §§push(Singleton.dynamicData);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(-99);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr96:
                                 §§pop().m_topDownCharPositionY = §§pop();
                                 addr110:
                                 §§push(Singleton.dynamicData);
                                 if(_loc2_)
                                 {
                                    addr101:
                                    §§push(Singleton.staticData.GetRoomForTransitionID(m_transitionID));
                                 }
                                 §§pop().m_currTransitionID = m_transitionID;
                                 addr114:
                                 Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.BringInTheNewRoom();
                                 return;
                                 addr112:
                              }
                              §§pop().m_currRoomOfTower = §§pop();
                              if(!_loc1_)
                              {
                                 §§goto(addr110);
                                 §§push(Singleton.dynamicData);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr101);
                        }
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr114);
            }
         }
         §§goto(addr96);
      }
   }
}
