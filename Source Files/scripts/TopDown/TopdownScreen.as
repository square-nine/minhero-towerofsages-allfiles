package TopDown
{
   import SharedObjects.BaseScreen;
   import States.TopDownStates;
   import TopDown.Menus.EggeryPartySwapMenu;
   import TopDown.Menus.GemCombiner;
   import TopDown.Menus.GemShop;
   import TopDown.Menus.MinionStorage.MinionStorageMenu;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   
   public class TopdownScreen extends BaseScreen
   {
       
      
      public var m_topDownMovementScreen:TopDownMovementScreen;
      
      public var m_topDownMenuScreen:TopDownMenuScreen;
      
      public var m_gemCombiner:GemCombiner;
      
      public var m_gemShop:GemShop;
      
      public var m_minionStorage:MinionStorageMenu;
      
      public var m_currState:int;
      
      public var m_eggeryPartySwapMenu:EggeryPartySwapMenu;
      
      public function TopdownScreen()
      {
         super();
         this.m_topDownMovementScreen = new TopDownMovementScreen();
         this.m_topDownMenuScreen = new TopDownMenuScreen();
         this.m_gemCombiner = new GemCombiner();
         this.m_gemShop = new GemShop();
         this.m_minionStorage = new MinionStorageMenu();
         this.m_eggeryPartySwapMenu = new EggeryPartySwapMenu();
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_topDownMovementScreen.LoadSprites();
         addChild(this.m_minionStorage);
         this.m_minionStorage.LoadSprites();
         this.m_topDownMenuScreen.LoadSprites();
         addChild(this.m_gemCombiner);
         this.m_gemCombiner.LoadSprites();
         addChild(this.m_gemShop);
         this.m_gemShop.LoadSprites();
         this.m_eggeryPartySwapMenu.LoadSprites();
         this.m_eggeryPartySwapMenu.x = 515;
         this.m_eggeryPartySwapMenu.y = 0;
         addChild(this.m_eggeryPartySwapMenu);
      }
      
      override public function StartActivate() : void
      {
         super.StartActivate();
         this.m_topDownMovementScreen.StartActivate();
      }
      
      override public function FinishActivate() : void
      {
         super.FinishActivate();
         this.m_topDownMovementScreen.FinishActivate();
         TweenLite.to(this,0.2,{"onComplete":Singleton.utility.CheckForSiteLock});
      }
      
      public function OpenMenus() : void
      {
         this.m_topDownMenuScreen.OpenMenus();
         this.m_currState = TopDownStates.MENUS;
         this.m_topDownMovementScreen.UpdateMovementHUD();
      }
      
      public function CloseMenus() : void
      {
         this.m_topDownMenuScreen.CloseMenus();
         this.m_currState = TopDownStates.MOVEMENT;
         this.m_topDownMovementScreen.UpdateMovementHUD();
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         if(Singleton.utility.m_tutorialHandler.m_isActive)
         {
            Singleton.utility.m_tutorialHandler.Update();
            return;
         }
         if(Singleton.utility.m_bonusItemPopup.m_isActive)
         {
            Singleton.utility.m_bonusItemPopup.Update();
            return;
         }
         if(this.m_currState == TopDownStates.MENUS)
         {
            this.m_topDownMenuScreen.UpdateFullFrames();
         }
         else if(this.m_currState == TopDownStates.IN_GEM_COMBINER)
         {
            this.m_gemCombiner.Update();
         }
         else if(this.m_currState == TopDownStates.IN_GEM_STORE)
         {
            this.m_gemShop.Update();
         }
         else if(this.m_currState == TopDownStates.IN_MINION_STORAGE)
         {
            this.m_minionStorage.Update();
         }
         else if(this.m_currState == TopDownStates.IN_EGGERY_PARTY_SWAP_SCREEN)
         {
            this.m_eggeryPartySwapMenu.UpdateFullFrames();
         }
         else if(this.m_currState == TopDownStates.IN_MINION_STAT_SELECTION)
         {
            this.m_topDownMenuScreen.m_minionTypeSelectMenu.Update();
         }
         else
         {
            this.m_topDownMovementScreen.UpdateFullFrames();
         }
      }
      
      private function LevelImporterCodeBuildXML() : void
      {
         var _loc6_:String = null;
         var _loc7_:XML = null;
         var _loc1_:Sprite = this;
         var _loc2_:XML = new XML(<level/>);
         _loc2_.@width = _loc1_.width;
         _loc2_.@height = _loc1_.height;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.numChildren)
         {
            _loc6_ = (_loc6_ = _loc1_.getChildAt(_loc3_).toString()).slice(8,_loc6_.length - 1);
            _loc7_ = new XML(<levelObject/>);
            if(_loc6_.slice(0,7) == "invert_")
            {
               _loc7_.@spriteName = _loc6_.slice(7);
               _loc7_.@xPos = _loc1_.getChildAt(_loc3_).x + _loc1_.getChildAt(_loc3_).width;
               _loc7_.@yPos = _loc1_.getChildAt(_loc3_).y;
               _loc7_.@xScale = _loc1_.getChildAt(_loc3_).scaleX * -1;
               _loc7_.@yScale = _loc1_.getChildAt(_loc3_).scaleY;
               _loc7_.@rotation = _loc1_.getChildAt(_loc3_).rotation;
               _loc2_.appendChild(_loc7_);
            }
            else
            {
               _loc7_.@spriteName = _loc6_;
               _loc7_.@xPos = _loc1_.getChildAt(_loc3_).x;
               _loc7_.@yPos = _loc1_.getChildAt(_loc3_).y;
               _loc7_.@xScale = _loc1_.getChildAt(_loc3_).scaleX;
               _loc7_.@yScale = _loc1_.getChildAt(_loc3_).scaleY;
               _loc7_.@rotation = _loc1_.getChildAt(_loc3_).rotation;
               _loc2_.appendChild(_loc7_);
            }
            _loc3_++;
         }
         var _loc4_:FileReference = new FileReference();
         var _loc5_:ByteArray;
         (_loc5_ = new ByteArray()).writeUTFBytes(_loc2_);
         _loc5_.compress();
         _loc4_.save(_loc5_,"testLevel_compressed.xml");
      }
      
      private function LevelImporterCodeBuildClass() : void
      {
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc1_:Sprite = this;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.numChildren)
         {
            _loc3_ = _loc1_.getChildAt(_loc2_).toString();
            _loc3_ = _loc3_.slice(8,_loc3_.length - 1);
            if(_loc3_.slice(0,7) == "invert_")
            {
               _loc4_ = "AddObject(\"" + _loc3_.slice(7) + "\", " + (_loc1_.getChildAt(_loc2_).x + _loc1_.getChildAt(_loc2_).width) + ", " + _loc1_.getChildAt(_loc2_).y + ", " + _loc1_.getChildAt(_loc2_).scaleX * -1 + ", " + _loc1_.getChildAt(_loc2_).scaleY + ", " + _loc1_.getChildAt(_loc2_).rotation + ");";
            }
            else if(_loc3_ == "grassRoom_testFlowers8")
            {
               _loc4_ = "tempRoomTransitionEntryPointObject = AddObject(\"" + _loc3_ + "\", " + _loc1_.getChildAt(_loc2_).x + ", " + _loc1_.getChildAt(_loc2_).y + ", " + _loc1_.getChildAt(_loc2_).scaleX + ", " + _loc1_.getChildAt(_loc2_).scaleY + ", " + _loc1_.getChildAt(_loc2_).rotation + ") as RoomTransitionEntryPointObject;\ntempRoomTransitionEntryPointObject.m_roomComingFrom = 0;";
            }
            else if(_loc3_ == "regularDoor")
            {
               _loc4_ = "tempInteractionObject = AddObject(\"" + _loc3_ + "\", " + _loc1_.getChildAt(_loc2_).x + ", " + _loc1_.getChildAt(_loc2_).y + ", " + _loc1_.getChildAt(_loc2_).scaleX + ", " + _loc1_.getChildAt(_loc2_).scaleY + ", " + _loc1_.getChildAt(_loc2_).rotation + ") as BaseInGameInteractionObject;\ntempInteractionObject.m_interationID = 2;";
            }
            else if(_loc3_ == "buttonZoneObject")
            {
               _loc4_ = "buttonZone = AddObject(\"" + _loc3_ + "\", " + _loc1_.getChildAt(_loc2_).x + ", " + _loc1_.getChildAt(_loc2_).y + ", " + _loc1_.getChildAt(_loc2_).scaleX + ", " + _loc1_.getChildAt(_loc2_).scaleY + ", " + _loc1_.getChildAt(_loc2_).rotation + ") as ButtonZone;\nbuttonZone.m_buttonZoneID = 0;";
            }
            else if(_loc3_ == "grassRoom_testMushrooms8")
            {
               _loc4_ = "tempRoomTransitionObject = AddObject(\"" + _loc3_ + "\", " + _loc1_.getChildAt(_loc2_).x + ", " + _loc1_.getChildAt(_loc2_).y + ", " + _loc1_.getChildAt(_loc2_).scaleX + ", " + _loc1_.getChildAt(_loc2_).scaleY + ", " + _loc1_.getChildAt(_loc2_).rotation + ") as RoomTransitionObject;\ntempRoomTransitionObject.m_roomToGoTo = 0;";
            }
            else
            {
               _loc4_ = "AddObject(\"" + _loc3_ + "\", " + _loc1_.getChildAt(_loc2_).x + ", " + _loc1_.getChildAt(_loc2_).y + ", " + _loc1_.getChildAt(_loc2_).scaleX + ", " + _loc1_.getChildAt(_loc2_).scaleY + ", " + _loc1_.getChildAt(_loc2_).rotation + ");";
            }
            _loc2_++;
         }
      }
   }
}
