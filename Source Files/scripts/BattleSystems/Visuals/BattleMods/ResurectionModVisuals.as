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
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_stone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_resurection");
         this.m_stone.x = 36;
         this.m_stone.y = 94;
         addChild(this.m_stone);
      }
      
      public function CheckForActivation() : void
      {
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_RESURECTION))
         {
            visible = true;
         }
         else
         {
            visible = false;
         }
      }
   }
}
