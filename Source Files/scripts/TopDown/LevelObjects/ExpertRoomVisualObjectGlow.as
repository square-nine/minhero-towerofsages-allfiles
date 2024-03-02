package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class ExpertRoomVisualObjectGlow extends VisualLevelObjectWithHeight
   {
       
      
      private var m_isExpert:Boolean;
      
      public function ExpertRoomVisualObjectGlow(param1:Boolean = true)
      {
         super();
         this.m_isExpert = param1;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER || !this.m_isExpert)
         {
            m_currSprite.alpha = 1;
         }
         else
         {
            m_currSprite.alpha = 0;
         }
      }
   }
}
