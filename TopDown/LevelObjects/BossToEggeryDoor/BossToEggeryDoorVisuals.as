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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(!_loc2_)
            {
               m_interationID = 2;
            }
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.AddSprite();
         §§push(Singleton.dynamicData);
         if(_loc1_ || _loc1_)
         {
            if(§§pop().m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
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
            §§push(Singleton.dynamicData);
         }
         if(§§pop().m_hasUnlockedEggeryDoor)
         {
            this.m_closedDoor.visible = false;
            if(!_loc2_)
            {
               this.m_hasBeenOpened = true;
            }
            else
            {
               addr88:
               this.m_hasBeenOpened = false;
            }
            return;
         }
         this.m_closedDoor.visible = true;
         §§goto(addr88);
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            m_currSprite.removeChild(this.m_closedDoor);
            if(_loc2_ || _loc2_)
            {
               addr39:
               super.Cleanup();
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function OnInteration() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TimelineLite = null;
         if(_loc3_)
         {
            super.OnInteration();
         }
         var _loc1_:* = false;
         §§push(Singleton.dynamicData);
         if(!_loc4_)
         {
            §§push(§§pop().m_currFloorOfTower);
            if(!_loc4_)
            {
               §§push(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
               if(!_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(Singleton.dynamicData);
                        if(!_loc4_)
                        {
                           §§push(§§pop().m_currEggeryKeys);
                           if(!_loc4_)
                           {
                              §§push(2);
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 addr57:
                                 §§push(§§pop() > §§pop());
                                 §§push(§§pop() > §§pop());
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       addr63:
                                       §§push(Singleton.dynamicData);
                                       if(!_loc4_)
                                       {
                                          addr67:
                                          §§push(§§pop().m_currKeysOnFloor);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§push(2);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr93:
                                                   _loc1_ = §§pop();
                                                   addr102:
                                                   §§push(_loc1_);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      addr112:
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.m_hasBeenOpened);
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                            }
                                                            §§goto(addr126);
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                   }
                                                }
                                                addr126:
                                                if(!§§pop())
                                                {
                                                   _loc2_ = new TimelineLite();
                                                   addr127:
                                                   if(_loc3_)
                                                   {
                                                      _loc2_.append(new TweenLite(this.m_closedDoor,1,{"alpha":0}));
                                                      if(!_loc4_)
                                                      {
                                                         Singleton.utility.m_soundController.PlaySound("tower_doorUnlock",1);
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                             addr100:
                                             _loc1_ = §§pop() > §§pop();
                                             §§goto(addr102);
                                          }
                                          else
                                          {
                                             addr99:
                                             §§goto(addr100);
                                             §§push(0);
                                          }
                                          §§goto(addr100);
                                       }
                                       else
                                       {
                                          addr98:
                                          §§goto(addr99);
                                          §§push(§§pop().m_currEggeryKeys);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr63);
                  }
                  else
                  {
                     §§push(Singleton.dynamicData);
                  }
                  §§goto(addr98);
               }
               §§goto(addr57);
            }
            §§goto(addr99);
         }
         §§goto(addr67);
      }
   }
}
