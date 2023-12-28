package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class VisualsForBossDoor extends BaseInGameInteractionObject
   {
       
      
      private var m_hasBeenOpened:Boolean;
      
      private var m_closedDoor:Sprite;
      
      public function VisualsForBossDoor()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!_loc1_)
            {
               m_interationID = 2;
            }
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.AddSprite();
         }
         this.m_closedDoor = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_specialDoor_locked");
         this.m_closedDoor.x = 0;
         this.m_closedDoor.y = 0;
         if(!_loc1_)
         {
            m_currSprite.addChild(this.m_closedDoor);
            §§push(Singleton.dynamicData);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().m_hasUnlockedBossDoor);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || Boolean(this))
                  {
                     addr71:
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr75:
                           §§pop();
                           §§push(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           this.m_closedDoor.visible = false;
                           this.m_hasBeenOpened = true;
                           if(_loc1_)
                           {
                              addr107:
                              this.m_hasBeenOpened = false;
                           }
                           else
                           {
                              addr102:
                           }
                        }
                        return;
                     }
                     this.m_closedDoor.visible = true;
                     §§goto(addr107);
                  }
                  §§goto(addr75);
               }
               §§goto(addr71);
            }
            §§goto(addr75);
         }
         §§goto(addr102);
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            m_currSprite.removeChild(this.m_closedDoor);
            if(_loc1_)
            {
               addr21:
               super.Cleanup();
            }
            return;
         }
         §§goto(addr21);
      }
      
      override public function OnInteration() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TimelineLite = null;
         if(!(_loc3_ && Boolean(this)))
         {
            super.OnInteration();
            if(!(_loc3_ && _loc2_))
            {
               §§push(Singleton.dynamicData.m_currKeysOnFloor > 2);
               if(_loc2_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        addr64:
                        if(!_loc3_)
                        {
                           addr58:
                           §§push(this.m_hasBeenOpened);
                           if(!_loc3_)
                           {
                              addr62:
                              §§push(!§§pop());
                           }
                        }
                        _loc1_ = new TimelineLite();
                        if(!_loc3_)
                        {
                           _loc1_.append(new TweenLite(this.m_closedDoor,1,{"alpha":0}));
                           if(_loc2_)
                           {
                              addr89:
                              Singleton.utility.m_soundController.PlaySound("tower_doorUnlock",1);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr62);
                  }
                  if(§§pop())
                  {
                     §§goto(addr64);
                  }
                  addr95:
                  return;
               }
               §§goto(addr62);
            }
            §§goto(addr64);
         }
         §§goto(addr58);
      }
   }
}
