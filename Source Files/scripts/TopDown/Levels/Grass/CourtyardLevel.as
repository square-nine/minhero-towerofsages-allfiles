package TopDown.Levels.Grass
{
   import States.StatType;
   import TopDown.LevelObjects.ChatBox.StandardChatBox;
   import TopDown.Levels.BaseTopDownLevel;
   import Utilities.Singleton;
   
   public class CourtyardLevel extends BaseTopDownLevel
   {
       
      
      public function CourtyardLevel(param1:Class = null)
      {
         super(param1);
      }
      
      override public function InButtonCollZone(param1:int) : void
      {
         super.InButtonCollZone(param1);
      }
      
      override protected function PreformButtonAction(param1:int) : void
      {
         var _loc2_:StandardChatBox = null;
         if(param1 == 0)
         {
            if(!Singleton.dynamicData.m_hasTalkedToTheGrandSageForTheFirstTime)
            {
               _loc2_ = GetChatBoxForButtonZone(0);
               _loc2_.SetFunctions(this.BringInPartTwoOfTheGrandSageText);
               _loc2_.BringInWithText("Welcome to the Tower,  I am the Grand Sage!  Defeating me will allow you to become a Grand Sage and train Titans.  But first, you need to have the six Sage Seals to prove you have what it takes to wield a Titan!","Grand Sage");
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.TryAndReStartAnimation(param1);
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = true;
            }
            else
            {
               _loc2_ = GetChatBoxForButtonZone(param1);
               _loc2_.SetFunctions();
               _loc2_.BringInWithText("Go now and see if you can get the first Sage Seal.","Grand Sage");
            }
         }
      }
      
      public function SetTheMinionsStats(param1:int) : void
      {
         var _loc2_:StandardChatBox = null;
         Singleton.dynamicData.m_hasTalkedToTheGrandSageForTheFirstTime = true;
         _loc2_ = GetChatBoxForButtonZone(0);
         _loc2_.SetFunctions();
         switch(param1)
         {
            case 0:
               _loc2_.BringInWithText("A heart of gold!  I\'m excited to see you progress through the tower.  Go now and see if you can get the first Sage Seal.","Grand Sage");
               Singleton.dynamicData.GetOwnedMinionAt(0).m_statBonus = StatType.STAT_ATTACK;
               Singleton.dynamicData.GetOwnedMinionAt(1).m_statBonus = StatType.STAT_ATTACK;
               break;
            case 1:
               _loc2_.BringInWithText("What a fine gift!  Go now and see if you can get the first Sage Seal.","Grand Sage");
               Singleton.dynamicData.GetOwnedMinionAt(0).m_statBonus = StatType.STAT_HEALTH;
               Singleton.dynamicData.GetOwnedMinionAt(1).m_statBonus = StatType.STAT_HEALTH;
               break;
            case 2:
               _loc2_.BringInWithText("It doesn\'t matter then, we\'ll know how good a keeper you are soon enough.  Go now and see if you can get the first Sage Seal.","Grand Sage");
               Singleton.dynamicData.GetOwnedMinionAt(0).m_statBonus = StatType.STAT_SPEED;
               Singleton.dynamicData.GetOwnedMinionAt(1).m_statBonus = StatType.STAT_SPEED;
         }
      }
      
      private function BringInPartTwoOfTheGrandSageText() : void
      {
         var _loc1_:StandardChatBox = GetChatBoxForButtonZone(0);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionTypeSelectMenu.BringInChatBoxWithPosition(_loc1_.m_currSprite.x,_loc1_.m_currSprite.y);
      }
   }
}
