package BattleSystems.Visuals.BattleMods
{
   import States.ModStoneTypes;
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class ResurectionModVisuals extends Sprite
   {
       
      
      private var m_stone:Sprite;
      
      public function ResurectionModVisuals()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_stone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_resurection");
            if(!_loc2_)
            {
               this.m_stone.x = 36;
               if(_loc1_)
               {
                  §§goto(addr37);
               }
               §§goto(addr43);
            }
         }
         addr37:
         this.m_stone.y = 94;
         if(_loc1_)
         {
            addr43:
            addChild(this.m_stone);
         }
      }
      
      public function CheckForActivation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION))
            {
               if(_loc2_)
               {
                  visible = true;
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr46);
               }
            }
            else
            {
               visible = false;
            }
         }
         addr46:
      }
   }
}
