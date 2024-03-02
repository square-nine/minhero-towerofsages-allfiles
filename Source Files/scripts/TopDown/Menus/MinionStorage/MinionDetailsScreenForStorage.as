package TopDown.Menus.MinionStorage
{
   import Minions.OwnedMinion;
   import States.MinionDetailsStorageState;
   import TopDown.Menus.MinionDetails.MinionDetailsScreen;
   import TopDown.Menus.MinionOverviewObject;
   import flash.events.MouseEvent;
   
   public class MinionDetailsScreenForStorage extends MinionDetailsScreen
   {
       
      
      private var m_minionOverviewObject:MinionOverviewObject;
      
      private var m_currState:int;
      
      public function MinionDetailsScreenForStorage()
      {
         super();
         this.m_currState = MinionDetailsStorageState.MDSS_MINION_STATS;
      }
      
      override public function LoadSprites() : void
      {
         this.m_minionOverviewObject = new MinionOverviewObject(this.DoesNothing);
         this.m_minionOverviewObject.x = 18;
         this.m_minionOverviewObject.y = 16;
         addChild(this.m_minionOverviewObject);
         super.LoadSprites();
         removeChild(m_returnButton);
         removeChild(m_upArrowButton);
         removeChild(m_downArrowButton);
      }
      
      override public function SnapIn(param1:OwnedMinion) : void
      {
         m_currMinion = param1;
         m_expbar.SetBarSize(param1.m_currExpPercentageToNextLevel);
         SetArrowVisiblity();
         m_minionGems.BringOut();
         m_minionMoves.BringOut();
         m_minionStats.BringOut();
         m_minionStats.SetNewMinion(param1);
         m_minionMoves.SetNewMinion(param1);
         m_minionGems.SetNewMinion(param1);
         switch(this.m_currState)
         {
            case MinionDetailsStorageState.MDSS_MINION_MOVES:
               m_minionMoves.BringIn();
               break;
            case MinionDetailsStorageState.MDSS_MINION_GEMS:
               m_minionGems.BringIn();
               break;
            case MinionDetailsStorageState.MDSS_MINION_STATS:
               m_minionStats.BringIn();
         }
         this.m_minionOverviewObject.Cleanup();
         this.m_minionOverviewObject.SetMinion(param1);
      }
      
      override protected function ClosePreviousTab() : void
      {
         switch(this.m_currState)
         {
            case MinionDetailsStorageState.MDSS_MINION_STATS:
               m_minionStats.BringOut();
               break;
            case MinionDetailsStorageState.MDSS_MINION_MOVES:
               m_minionMoves.BringOut();
               break;
            case MinionDetailsStorageState.MDSS_MINION_GEMS:
               m_minionGems.BringOut();
         }
      }
      
      override protected function StatsButtonPress(param1:MouseEvent) : void
      {
         this.ClosePreviousTab();
         this.m_currState = MinionDetailsStorageState.MDSS_MINION_STATS;
         m_minionStats.BringIn();
      }
      
      override protected function MovesButtonPress(param1:MouseEvent) : void
      {
         this.ClosePreviousTab();
         this.m_currState = MinionDetailsStorageState.MDSS_MINION_MOVES;
         m_minionMoves.BringIn();
      }
      
      override protected function GemsButtonPress(param1:MouseEvent) : void
      {
         this.ClosePreviousTab();
         this.m_currState = MinionDetailsStorageState.MDSS_MINION_GEMS;
         m_minionGems.BringIn();
      }
      
      override public function UpdateFullFrames() : void
      {
         if(!this.visible)
         {
            return;
         }
         switch(this.m_currState)
         {
            case MinionDetailsStorageState.MDSS_MINION_STATS:
               m_movesButton.m_isActive = true;
               m_gemsButton.m_isActive = true;
               break;
            case MinionDetailsStorageState.MDSS_MINION_MOVES:
               m_statsButton.m_isActive = true;
               m_gemsButton.m_isActive = true;
               m_minionMoves.UpdateFullFrames();
               break;
            case MinionDetailsStorageState.MDSS_MINION_GEMS:
               m_movesButton.m_isActive = true;
               m_statsButton.m_isActive = true;
               m_minionGems.UpdateFullFrames();
         }
      }
      
      private function DoesNothing(param1:MouseEvent) : void
      {
      }
   }
}
