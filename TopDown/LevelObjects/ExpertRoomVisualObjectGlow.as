package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class ExpertRoomVisualObjectGlow extends VisualLevelObjectWithHeight
   {
       
      
      private var m_isExpert:Boolean;
      
      public function ExpertRoomVisualObjectGlow(param1:Boolean = true)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr20:
               this.m_isExpert = param1;
            }
            return;
         }
         §§goto(addr20);
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.AddSprite();
            if(_loc1_ || _loc2_)
            {
               §§push(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
               if(_loc1_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        addr59:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(this.m_isExpert);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr79:
                              if(!§§pop())
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                 }
                                 addr96:
                                 return;
                                 addr92:
                              }
                              else
                              {
                                 m_currSprite.alpha = 0;
                                 §§goto(addr96);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr79);
                        }
                        m_currSprite.alpha = 1;
                        if(_loc1_)
                        {
                           §§goto(addr92);
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr59);
            }
         }
         §§goto(addr96);
      }
   }
}
