package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class RegularKeyDoor extends BaseInGameInteractionObject
   {
       
      
      public function RegularKeyDoor()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.AddSprite();
            §§push(Singleton.dynamicData);
            if(_loc1_)
            {
               if(!§§pop().m_hasUnlockedBossDoor)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     m_isSolid = true;
                     §§goto(addr37);
                  }
               }
               else
               {
                  m_isSolid = false;
               }
            }
            §§goto(addr58);
         }
         addr37:
         if(_loc1_ || _loc2_)
         {
            addr58:
            if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
            {
               m_isSolid = false;
            }
         }
      }
      
      override public function OnInteration() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MainChar = null;
         super.OnInteration();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            §§push(Singleton.dynamicData);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop().m_currKeysOnFloor > 2)
               {
                  m_isSolid = false;
                  m_currSprite.visible = false;
                  if(!_loc3_)
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc2_)
                     {
                        addr49:
                        §§pop().m_hasUnlockedBossDoor = true;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr65:
                           §§push(Singleton.dynamicData);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§pop().m_currKeysOnFloor = 0;
                              §§push(Singleton.utility);
                              if(_loc2_)
                              {
                                 §§push(§§pop().m_screenControllers);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().m_topDownScreen);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§push(§§pop().m_topDownMovementScreen);
                                       if(!_loc3_)
                                       {
                                          §§pop().UpdateMovementHUD();
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr127:
                                             return;
                                             addr109:
                                          }
                                          else
                                          {
                                             addr118:
                                             §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen);
                                          }
                                          §§goto(addr127);
                                       }
                                       _loc1_ = §§pop().m_mainChar;
                                       if(!_loc3_)
                                       {
                                          _loc1_.BringInCharChatBoxWithText("I need three keys to open that door.");
                                       }
                                       §§goto(addr127);
                                    }
                                 }
                              }
                              §§goto(addr118);
                           }
                           else
                           {
                              addr112:
                              if(!§§pop().m_hasUnlockedBossDoor)
                              {
                                 §§goto(addr118);
                              }
                           }
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr109);
               }
               else
               {
                  §§push(Singleton.dynamicData);
               }
               §§goto(addr112);
            }
            §§goto(addr49);
         }
         §§goto(addr65);
      }
   }
}
