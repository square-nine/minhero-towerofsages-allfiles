package TopDown.Levels.MainTower
{
   import Minions.OwnedMinion;
   import TopDown.LevelObjects.MainChar;
   import TopDown.LevelObjects.VisualsForEgg;
   import TopDown.Levels.BaseTopDownLevel;
   import TopDown.Menus.EggeryMinionDetailsObject;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class BaseEggery extends BaseTopDownLevel
   {
       
      
      private var m_currMinionToAdd:OwnedMinion;
      
      private var m_eggsAlreadySelected:Vector.<int>;
      
      private var m_minionDetailsObject:EggeryMinionDetailsObject;
      
      private var m_visualsForEgg:VisualsForEgg;
      
      private var m_visualsForEggTopLayer:VisualsForEgg;
      
      public function BaseEggery(param1:Class = null)
      {
         super(param1);
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_eggsAlreadySelected = new Vector.<int>();
         this.m_minionDetailsObject = new EggeryMinionDetailsObject();
         this.m_minionDetailsObject.LoadSprites();
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_minionDetailsObject);
         if(Singleton.dynamicData.m_numOfMinionsLeftToChoose < 1)
         {
            m_displayKeyPress = false;
         }
      }
      
      override protected function PreformButtonAction(param1:int) : void
      {
         var _loc2_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         var _loc3_:int = 0;
         while(_loc3_ < 9)
         {
            if(param1 == _loc3_ && this.m_eggsAlreadySelected.indexOf(_loc3_) == -1)
            {
               this.m_currMinionToAdd = Singleton.staticData.GetRandomMinionForFloor(Singleton.dynamicData.m_currFloorOfTower);
               if(Singleton.dynamicData.m_numOfMinionsLeftToChoose == 1)
               {
                  _loc2_.BringInCharChatBoxWithText("You\'ve recieved a " + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName + ".",this.AddMinion);
                  this.m_visualsForEgg = GetEggForButtonZone(_loc3_);
                  this.m_visualsForEggTopLayer = GetEggOnTopLayerForButtonZone(_loc3_);
                  --Singleton.dynamicData.m_numOfMinionsLeftToChoose;
                  this.m_eggsAlreadySelected.push(_loc3_);
                  this.m_minionDetailsObject.BringInWithMinion(this.m_currMinionToAdd);
                  this.m_minionDetailsObject.x = _loc2_.x + 100 - 13;
                  this.m_minionDetailsObject.y = _loc2_.y - 184;
               }
               else if(Singleton.dynamicData.m_numOfMinionsLeftToChoose > 1)
               {
                  _loc2_.BringInCharChatBoxWithText("This egg contains a " + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName + ". Would you like to keep it?",null,this.AddMinion,this.ClosingChatBox);
                  this.m_visualsForEgg = GetEggForButtonZone(_loc3_);
                  this.m_visualsForEggTopLayer = GetEggOnTopLayerForButtonZone(_loc3_);
                  --Singleton.dynamicData.m_numOfMinionsLeftToChoose;
                  this.m_eggsAlreadySelected.push(_loc3_);
                  this.m_minionDetailsObject.BringInWithMinion(this.m_currMinionToAdd);
                  this.m_minionDetailsObject.x = _loc2_.x + 100 - 13;
                  this.m_minionDetailsObject.y = _loc2_.y - 184;
               }
            }
            _loc3_++;
         }
      }
      
      private function ClosingChatBox() : void
      {
         this.m_minionDetailsObject.ExitOut();
         this.m_visualsForEgg.MoveEggIntoGround();
         this.m_visualsForEggTopLayer.MoveEggIntoGround();
      }
      
      public function AddToFirstAvailiblePosition() : void
      {
         Singleton.dynamicData.m_numOfMinionsLeftToChoose = 0;
         this.m_currMinionToAdd.ReFillHealthAndEnergy();
         Singleton.dynamicData.AddToOwnedMinions(this.m_currMinionToAdd);
         this.ClosingChatBox();
         var _loc1_:int = 0;
         while(_loc1_ < 9)
         {
            if(this.m_eggsAlreadySelected.indexOf(_loc1_) == -1)
            {
               GetEggForButtonZone(_loc1_).MoveEggIntoGround();
               GetEggOnTopLayerForButtonZone(_loc1_).MoveEggIntoGround();
            }
            _loc1_++;
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
      }
      
      private function PopupAddToPartySelector() : void
      {
         this.m_minionDetailsObject.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_eggeryPartySwapMenu.BringIn(this.m_currMinionToAdd);
      }
      
      private function AddMinion() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) == null)
            {
               _loc1_ = false;
               break;
            }
            _loc2_++;
         }
         if(_loc1_)
         {
            TweenLite.to(this,0.25,{"onComplete":this.BringInTheWouldYouLikeToAddPopup});
         }
         else
         {
            this.AddToFirstAvailiblePosition();
         }
         m_displayKeyPress = false;
      }
      
      private function BringInTheWouldYouLikeToAddPopup() : void
      {
         var _loc1_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         _loc1_.BringInCharChatBoxWithText("Would you like to add " + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName + " to your party?",null,this.PopupAddToPartySelector,this.AddToFirstAvailiblePosition);
      }
   }
}
