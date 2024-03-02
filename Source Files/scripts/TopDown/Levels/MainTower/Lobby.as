package TopDown.Levels.MainTower
{
   import Minions.OwnedMinion;
   import States.MinionDexID;
   import TopDown.LevelObjects.BaseInGameInteractionObject;
   import TopDown.LevelObjects.ButtonZone;
   import TopDown.LevelObjects.ChatBox.StandardChatBox;
   import TopDown.LevelObjects.MainChar;
   import TopDown.LevelObjects.RoomTransitionEntryPointObject;
   import TopDown.LevelObjects.RoomTransitionObject;
   import TopDown.LevelObjects.TitanVisualsForEgg;
   import TopDown.Levels.BaseTopDownLevel;
   import TopDown.Menus.EggeryMinionDetailsObject;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class Lobby extends BaseTopDownLevel
   {
       
      
      private var m_minionDetailsObject:EggeryMinionDetailsObject;
      
      private var m_currMinionToAdd:OwnedMinion;
      
      private var m_visualsForEgg:TitanVisualsForEgg;
      
      private var m_visualsForEggTopLayer:TitanVisualsForEgg;
      
      public function Lobby()
      {
         super();
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_minionDetailsObject = new EggeryMinionDetailsObject();
         this.m_minionDetailsObject.LoadSprites();
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_minionDetailsObject);
         Singleton.utility.m_soundController.ChangeMusicTrack(Singleton.dynamicData.m_prevBackgroundMusic);
         Singleton.utility.m_soundController.FadeCurrentMusic(0.4,3);
      }
      
      override protected function PreformButtonAction(param1:int) : void
      {
         var _loc2_:StandardChatBox = null;
         var _loc3_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         if(_loc3_.m_chatBox.m_isOpen)
         {
            return;
         }
         if(param1 == 0)
         {
            _loc2_ = GetChatBoxForButtonZone(param1);
            _loc2_.SetFunctions(Singleton.utility.m_screenControllers.m_topDownScreen.m_gemShop.BringIn);
            _loc2_.BringInWithText("I have lots of fine gems for sale.","Gem Salesman");
         }
         else if(param1 == 1)
         {
            _loc2_ = GetChatBoxForButtonZone(param1);
            if(Singleton.dynamicData.GetTotalSageSeals() > 1)
            {
               _loc2_.SetFunctions(Singleton.utility.m_screenControllers.m_topDownScreen.m_gemCombiner.BringIn);
               _loc2_.BringInWithText("Let\'s comebine us some gems!","Gem Crafter");
            }
            else
            {
               _loc2_.SetFunctions();
               _loc2_.BringInWithText("You need the 2nd sage seal before you can combine gems!","Gem Crafter");
            }
         }
         else if(param1 == 2)
         {
            _loc2_ = GetChatBoxForButtonZone(param1);
            if(Singleton.dynamicData.GetTotalNumberOfMinions() > 5)
            {
               _loc2_.SetFunctions(Singleton.utility.m_screenControllers.m_topDownScreen.m_minionStorage.BringIn);
               _loc2_.BringInWithText("I hold onto your extra minions","Minion Keeper");
            }
            else
            {
               _loc2_.SetFunctions();
               _loc2_.BringInWithText("I hold onto your extra minions, come back when you have some extra minions","Minion Keeper");
            }
         }
         else if(param1 == 3)
         {
            _loc3_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
            if(Singleton.dynamicData.GetIsMinionOwned(MinionDexID.DEX_ID_titan_1))
            {
               _loc3_.BringInCharChatBoxWithText("I already have the titan.",this.CheckForAddSecondMinion);
            }
            else if(Singleton.dynamicData.GetHighestFloor() > 31)
            {
               this.m_visualsForEgg = GetTitanEggForButtonZone(0);
               this.m_visualsForEggTopLayer = GetTitanEggOnTopLayerForButtonZone(0);
               this.m_currMinionToAdd = new OwnedMinion(MinionDexID.DEX_ID_titan_1);
               this.m_currMinionToAdd.SetLevel(60);
               _loc3_.BringInCharChatBoxWithText("You\'ve recieved " + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName + ".",this.AddMinion);
               this.m_minionDetailsObject.BringInWithMinion(this.m_currMinionToAdd);
               this.m_minionDetailsObject.x = _loc3_.x + 100 - 13;
               this.m_minionDetailsObject.y = _loc3_.y - 184;
            }
            else
            {
               _loc3_.BringInCharChatBoxWithText("I need the six sage seals and to defeat the Grand Sage.");
            }
         }
         else if(param1 == 4)
         {
            _loc2_ = GetChatBoxForButtonZone(param1);
            _loc2_.SetFunctions();
            if(Singleton.dynamicData.GetIsMinionOwned(MinionDexID.DEX_ID_titan_1))
            {
               _loc2_.BringInWithText("You\'re amazing and you did it!","Titan Guard");
            }
            else if(Singleton.dynamicData.GetHighestFloor() > 31)
            {
               _loc2_.BringInWithText("This titan belongs to you now, go get it!","Titan Guard");
            }
            else
            {
               _loc2_.BringInWithText("Titan minions are very powerful, you\'ll need all six sage seals and you\'ll need to defeat the Grand Sage before you\'re ready to have this minion.","Titan Guard");
            }
         }
      }
      
      public function AddToFirstAvailiblePosition() : void
      {
         Singleton.dynamicData.m_numOfMinionsLeftToChoose = 0;
         this.m_currMinionToAdd.ReFillHealthAndEnergy();
         Singleton.dynamicData.AddToOwnedMinions(this.m_currMinionToAdd);
         this.ClosingChatBox();
      }
      
      private function CheckForAddSecondMinion() : void
      {
         if(!Singleton.dynamicData.m_isExtraSponsorMinionEarned)
         {
            TweenLite.to(this,4.5,{
               "onComplete":Singleton.utility.m_bonusItemPopup.BringIn,
               "onCompleteParams":[false,0.1]
            });
         }
      }
      
      private function PopupAddToPartySelector() : void
      {
         this.m_minionDetailsObject.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_eggeryPartySwapMenu.BringIn(this.m_currMinionToAdd,false);
      }
      
      private function ClosingChatBox() : void
      {
         this.m_minionDetailsObject.ExitOut();
         this.m_visualsForEgg.MoveEggIntoGround();
         this.m_visualsForEggTopLayer.MoveEggIntoGround();
         this.CheckForAddSecondMinion();
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
      }
      
      private function BringInTheWouldYouLikeToAddPopup() : void
      {
         var _loc1_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         _loc1_.BringInCharChatBoxWithText("Would you like to add " + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName + " to your party?",null,this.PopupAddToPartySelector,this.AddToFirstAvailiblePosition);
      }
      
      override public function CreateObjects() : void
      {
         var _loc3_:ButtonZone = null;
         super.CreateObjects();
         m_roomBounds.graphics.beginFill(0);
         m_roomBounds.graphics.drawRect(0,0,3051.45,2202.15);
         m_roomBounds.graphics.endFill();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.addChild(m_roomBounds);
         AddObject("generalRoom_floorTile",1926.45,470.2,1,1,0);
         AddObject("generalRoom_floorTile",2046.4,470.2,1,1,0);
         AddObject("generalRoom_floorTile",2166.4,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1806.5,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1686.5,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1326.2,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1446.15,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1566.15,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1206.25,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1086.25,470.2,1,1,0);
         AddObject("generalRoom_floorTile",966.25,470.2,1,1,0);
         AddObject("generalRoom_floorTile",725.9,470.2,1,1,0);
         AddObject("generalRoom_floorTile",845.9,470.2,1,1,0);
         AddObject("generalRoom_floorTile",1866.45,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1986.4,590.2,1,1,0);
         AddObject("generalRoom_floorTile",2106.4,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1746.5,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1626.5,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1266.2,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1386.15,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1506.15,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1146.25,590.2,1,1,0);
         AddObject("generalRoom_floorTile",1026.25,590.2,1,1,0);
         AddObject("generalRoom_floorTile",906.25,590.2,1,1,0);
         AddObject("generalRoom_floorTile",708.9,590.2,0.6475372314453125,1,0);
         AddObject("generalRoom_floorTile",785.9,590.2,1,1,0);
         AddObject("generalRoom_floorTile",2225.8,589.7,1,1,0);
         AddObject("generalRoom_floorTile",1946.45,710.1,1,1,0);
         AddObject("generalRoom_floorTile",2066.4,710.1,1,1,0);
         AddObject("generalRoom_floorTile",2186.4,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1826.5,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1706.5,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1346.2,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1466.15,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1586.15,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1226.25,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1106.25,710.1,1,1,0);
         AddObject("generalRoom_floorTile",986.25,710.1,1,1,0);
         AddObject("generalRoom_floorTile",745.9,710.1,1,1,0);
         AddObject("generalRoom_floorTile",865.9,710.1,1,1,0);
         AddObject("generalRoom_floorTile",1886.45,830.1,1,1,0);
         AddObject("generalRoom_floorTile",2006.4,830.1,1,1,0);
         AddObject("generalRoom_floorTile",2126.4,830.1,1,1,0);
         AddObject("generalRoom_floorTile",1766.5,830.1,1,1,0);
         AddObject("generalRoom_floorTile",1646.5,830.1,1,1,0);
         AddObject("generalRoom_floorTile",1286.2,830.1,1,1,0);
         AddObject("generalRoom_floorTile",1406.15,830.1,1,1,0);
         AddObject("generalRoom_floorTile",1526.15,830.1,1,1,0);
         AddObject("generalRoom_floorTile",1166.25,830.1,1,1,0);
         AddObject("generalRoom_floorTile",1046.25,830.1,1,1,0);
         AddObject("generalRoom_floorTile",926.25,830.1,1,1,0);
         AddObject("generalRoom_floorTile",805.9,830.1,1,1,0);
         AddObject("generalRoom_floorTile",2245.8,829.6,1,1,0);
         AddObject("generalRoom_floorTile",2028.95,947.6,1,1,0);
         AddObject("generalRoom_floorTile",2148.9,947.6,1,1,0);
         AddObject("generalRoom_floorTile",2268.9,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1909,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1789,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1428.7,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1548.65,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1668.65,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1308.75,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1188.75,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1068.75,947.6,1,1,0);
         AddObject("generalRoom_floorTile",828.4,947.6,1,1,0);
         AddObject("generalRoom_floorTile",948.4,947.6,1,1,0);
         AddObject("generalRoom_floorTile",1968.95,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",2088.9,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",2208.9,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1849,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1729,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1368.7,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1488.65,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1608.65,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1248.75,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1128.75,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",1008.75,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",888.4,1067.6,1,1,0);
         AddObject("generalRoom_floorTile",2328.3,1067.1,1,1,0);
         AddObject("generalRoom_floorTile",2048.95,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",2168.9,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",2288.9,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1929,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1809,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1448.7,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1568.65,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1688.65,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1328.75,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1208.75,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1088.75,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",848.4,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",968.4,1187.5,1,1,0);
         AddObject("generalRoom_floorTile",1988.95,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",2108.9,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",2228.9,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1869,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1749,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1388.7,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1508.65,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1628.65,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1268.75,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1148.75,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1028.75,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",782.05,1307.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",908.4,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",1926.45,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",2046.4,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",2166.4,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1806.5,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1686.5,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1326.2,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1446.15,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1566.15,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1206.25,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1086.25,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",966.25,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",725.9,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",845.9,1428.5,1,1,0);
         AddObject("generalRoom_floorTile",1866.45,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1986.4,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",2106.4,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1746.5,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1626.5,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1266.2,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1386.15,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1506.15,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1146.25,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1026.25,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",906.25,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",708.9,1548.5,0.6475372314453125,1,0);
         AddObject("generalRoom_floorTile",785.9,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1908.95,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",2028.9,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",2148.9,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",1789,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",1669,1669.5,1,1,0);
         AddObject("generalRoom_floorTile",1308.7,1669.5,1,1,0);
         AddObject("generalRoom_floorTile",1428.65,1669.5,1,1,0);
         AddObject("generalRoom_floorTile",1548.65,1669.5,1,1,0);
         AddObject("generalRoom_floorTile",1188.75,1669.5,1,0.9918975830078125,0);
         AddObject("generalRoom_floorTile",1068.75,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",948.75,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",708.4,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",828.4,1669.5,1,0.8594970703125,0);
         AddObject("generalRoom_floorTile",2224.3,1548.5,1,1,0);
         AddObject("generalRoom_floorTile",1624.5,1788.5,1,1,0);
         AddObject("generalRoom_floorTile",1264.2,1788.5,1,1,0);
         AddObject("generalRoom_floorTile",1384.15,1788.5,1,1,0);
         AddObject("generalRoom_floorTile",1504.15,1788.5,1,1,0);
         AddObject("generalRoom_floorTile",1664.5,1909.5,1,1,0);
         AddObject("generalRoom_floorTile",1304.2,1909.5,1,1,0);
         AddObject("generalRoom_floorTile",1424.15,1909.5,1,1,0);
         AddObject("generalRoom_floorTile",1544.15,1909.5,1,1,0);
         AddObject("generalRoom_floorTile",1644.5,2028.5,1,1,0);
         AddObject("generalRoom_floorTile",1284.2,2028.5,1,1,0);
         AddObject("generalRoom_floorTile",1404.15,2028.5,1,1,0);
         AddObject("generalRoom_floorTile",1524.15,2028.5,1,1,0);
         AddObject("generalRoom_floorTile",1627,349.2,1,1,0);
         AddObject("generalRoom_floorTile",1266.7,349.2,1,1,0);
         AddObject("generalRoom_floorTile",1386.65,349.2,1,1,0);
         AddObject("generalRoom_floorTile",1506.65,349.2,1,1,0);
         AddObject("generalRoom_floorTile",1146.75,349.2,1,1,0);
         AddObject("generalRoom_floorTile",1659.05,228.2,1,1,0);
         AddObject("generalRoom_floorTile",1298.75,228.2,1,1,0);
         AddObject("generalRoom_floorTile",1418.7,228.2,1,1,0);
         AddObject("generalRoom_floorTile",1538.7,228.2,1,1,0);
         AddObject("generalRoom_floorTile",1629.05,109.7,1,1,0);
         AddObject("generalRoom_floorTile",1268.75,109.7,1,1,0);
         AddObject("generalRoom_floorTile",1388.7,109.7,1,1,0);
         AddObject("generalRoom_floorTile",1508.7,109.7,1,1,0);
         AddObject("generalRoom_floorTile",708.4,947.5,1,1,0);
         AddObject("generalRoom_floorTile",768.4,1067.5,1,1,0);
         AddObject("generalRoom_floorTile",728.4,1187.4,1,1,0);
         AddObject("generalRoom_floorTile",587.4,946.5,1,1,0);
         AddObject("generalRoom_floorTile",647.4,1066.5,1,1,0);
         AddObject("generalRoom_floorTile",607.4,1186.4,1,1,0);
         AddObject("generalRoom_floorTile",466.45,945.5,1,1,0);
         AddObject("generalRoom_floorTile",526.45,1065.5,1,1,0);
         AddObject("generalRoom_floorTile",486.45,1185.4,1,1,0);
         AddObject("generalRoom_floorTile",346.45,945.5,1,1,0);
         AddObject("generalRoom_floorTile",406.45,1065.5,1,1,0);
         AddObject("generalRoom_floorTile",366.45,1185.4,1,1,0);
         AddObject("generalRoom_floorTile",321.45,1065.5,0.7131195068359375,1,0);
         AddObject("generalRoom_floorTile",2388.8,946.6,1,1,0);
         AddObject("generalRoom_floorTile",2448.2,1066.1,1,1,0);
         AddObject("generalRoom_floorTile",2408.8,1186.5,1,1,0);
         AddObject("generalRoom_floorTile",2509.8,945.5,1,1,0);
         AddObject("generalRoom_floorTile",2569.2,1066,1,1,0);
         AddObject("generalRoom_floorTile",2529.8,1186.4,1,1,0);
         AddObject("generalRoom_floorTile",2627.8,946.5,0.819671630859375,1,0);
         AddObject("generalRoom_floorTile",2648.75,1185.4,0.6065521240234375,1,0);
         AddObject("generalRoom_floorTile",2348.9,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",2467.9,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",2587.9,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",2707.9,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",2827.9,1307.5,1,1,0);
         AddObject("generalRoom_floorTile",2947.9,1307.5,0.779510498046875,1,0);
         AddObject("generalRoom_floorTile",2363.8,829.6,1,1,0);
         AddObject("generalRoom_floorTile",2481.8,829.6,1,1,0);
         AddObject("generalRoom_floorTile",2599.8,829.6,1,1,0);
         AddObject("generalRoom_floorTile",2718.8,829.6,1,1,0);
         AddObject("generalRoom_floorTile",2836.8,829.6,1,1,0);
         AddObject("generalRoom_floorTile",2956.8,829.6,0.6983642578125,1,0);
         AddObject("generalRoom_floorTile",655.05,1307.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",532.05,1307.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",405.05,1307.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",282.05,1307.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",155.05,1307.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",32.05,1307.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",62.85,927,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",72.85,1037,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",82.85,1147,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",685.9,830.1,1,1,0);
         AddObject("generalRoom_floorTile",565.9,830.1,1,1,0);
         AddObject("generalRoom_floorTile",445.9,830.1,1,1,0);
         AddObject("generalRoom_floorTile",325.9,830.1,1,1,0);
         AddObject("generalRoom_floorTile",205.9,830.1,1,1,0);
         AddObject("generalRoom_floorTile",86.9,830.1,1,1,0);
         AddObject("generalRoom_floorTile",600.05,1427.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",473.05,1427.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",350.05,1427.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",223.05,1427.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",100.05,1427.5,1.05224609375,1,0);
         AddObject("generalRoom_floorTile",625.9,710.1,1,1,0);
         AddObject("generalRoom_floorTile",505.9,710.1,1,1,0);
         AddObject("generalRoom_floorTile",385.9,710.1,1,1,0);
         AddObject("generalRoom_floorTile",265.9,710.1,1,1,0);
         AddObject("generalRoom_floorTile",130.9,710.1,1,1,0);
         AddObject("generalRoom_floorTile",18,1427.5,0.7411956787109375,1,0);
         AddObject("generalRoom_floorTile",10.9,710.1,1,1,0);
         AddObject("generalRoom_topWall",1355.65,2.7,1,1,0);
         AddObject("generalRoom_upperLeftCorner",1223.65,2.7,1,1,0);
         AddObject("generalRoom_upperRightCorner",1701.15,2.2,1,1,0);
         AddObject("generalRoom_upperRight_tSection",1745.15,230.7,1,1,0);
         AddObject("generalRoom_upperLeft_tSection",1171.2,231.2,1,1,0);
         AddObject("generalRoom_topWall",1883.65,301.7,1,1,0);
         AddObject("generalRoom_upperRightCorner",2227.4,301.7,1,1,0);
         AddObject("generalRoom_topWall",969.2,302.2,1,1,0);
         AddObject("generalRoom_upperLeftCorner",696.4,302.3,1,1,0);
         AddObject("generalRoom_upperRight_tSection",2271.2,603.7,1,1,0);
         AddObject("generalRoom_topWall",2410.2,674.7,1,1,0);
         AddObject("generalRoom_upperRightCorner",2925.75,674.4,1,1,0);
         AddObject("generalRoom_lowerRightCorner",2925.2,1271.4,1,1,0);
         AddObject("generalRoom_bottomWall",2408.2,1368.5,1,1,0);
         AddObject("generalRoom_lowerRight_tSection",2271.2,1368.5,1,1,0);
         AddObject("generalRoom_lowerRightCorner",2226.55,1631.95,1,1,0);
         AddObject("generalRoom_bottomWall",2024.55,1728.95,1,1,0);
         AddObject("generalRoom_lowerRight_tSection",1746.65,1728.7,1,1,0);
         AddObject("generalRoom_lowerRightCorner",1701.15,2035.7,1,1,0);
         AddObject("generalRoom_bottomWall",1512.7,2132.7,0.937774658203125,1,0);
         AddObject("generalRoom_lowerLeftCorner",1220.65,2035.85,1,1,0);
         AddObject("generalRoom_lowerLeft_tSection",1166.15,1728.7,1,1,0);
         AddObject("generalRoom_lowerLeftCorner",695.05,1631.45,1,1,0);
         AddObject("generalRoom_upperLeftCorner",5.75,602.45,1,1,0);
         AddObject("generalRoom_topWall",2084.8,301.7,0.7128753662109375,1,0);
         AddObject("generalRoom_topWall",1557.65,1.7,0.7128753662109375,1,0);
         AddObject("generalRoom_topWall",828,301.7,0.6989288330078125,1,0);
         AddObject("generalRoom_bottomWall",1886.6,1728.95,0.68292236328125,1,0);
         AddObject("generalRoom_sideWall",1746.65,1872.7,1,0.81976318359375,0);
         AddObject("generalRoom_bottomWall",826.95,1728.7,1,1,0);
         AddObject("generalRoom_bottomWall",1028.05,1728.7,0.68292236328125,1,0);
         AddObject("generalRoom_sideWall",1307.5,1872.7,-1,0.81976318359375,0);
         AddObject("generalRoom_bottomWall",1350.25,2132.85,0.8040618896484375,1,0);
         AddObject("generalRoom_topWall",2610.2,674.7,1,1,0);
         AddObject("generalRoom_topWall",2810,674.7,0.5741729736328125,1,0);
         AddObject("generalRoom_bottomWall",2608.2,1368.5,1,1,0);
         AddObject("generalRoom_bottomWall",2808.2,1368.5,0.58319091796875,1,0);
         AddObject("generalRoom_sideWall",2272,1511,1,0.6100006103515625,0);
         AddObject("generalRoom_sideWall",2271.5,530,1,0.369964599609375,0);
         AddObject("generalRoom_sideWall",2969.5,1072,1,1,0);
         AddObject("generalRoom_sideWall",2969.5,903,1,0.850006103515625,0);
         AddObject("generalRoom_sideWall",93.5,832,-1,1,0);
         AddObject("generalRoom_topWall",137,603,1,1,0);
         AddObject("generalRoom_topWall",339,603,1,1,0);
         AddObject("generalRoom_upperLeft_tSection",643.5,531.5,1,1,0);
         AddObject("generalRoom_topWall",541,603,0.5148162841796875,1,0);
         AddObject("generalRoom_sideWall",93.5,1032,-1,1,0);
         AddObject("generalRoom_sideWall",93.5,1232,-1,0.8000640869140625,0);
         AddObject("generalRoom_lowerLeftCorner",6,1391,1,1,0);
         AddObject("generalRoom_bottomWall",137,1488,1,1,0);
         AddObject("generalRoom_bottomWall",336,1488,1,1,0);
         AddObject("generalRoom_lowerLeft_tSection",640.5,1488,1,1,0);
         AddObject("generalRoom_bottomWall",538,1488.5,0.5148468017578125,1,0);
         AddObject("generalRoom_sideMosaic",88,927.5,1,1,0);
         AddObject("generalRoom_sideMosaic",2972,922.5,-1,1,0);
         AddObject("generalRoom_blocked_bottomDoor",1452.65,2122.5,1,1,0);
         AddObject("generalRoom_floorTile",1476.7,122.95,0.8842926025390625,0.8842926025390625,0);
         AddObject("generalRoom_lobby_topDoor",1462.3,53.85,1,1,0);
         AddObject("generalRoom_sideDoor",2965.9,1033.15,1,1,0);
         AddObject("generalRoom_floorRunnerTop",1424.15,1362.15,1,0.939483642578125,0);
         AddObject("generalRoom_floorRunnerMid2",1424.8,1449.3,1,0.847076416015625,0);
         AddObject("generalRoom_floorRunnerMid1",1424.8,1737.7,1,0.939483642578125,0);
         AddObject("generalRoom_floorRunnerMid1",1424.15,1851.35,1,1.1221771240234375,0);
         AddObject("generalRoom_floorRunnerTop",1625.25,2078,1,0.939483642578125,180);
         AddObject("generalRoom_floorRunner_rotationConnect",1424.45,1987.15,1,0.939483642578125,0);
         AddObject("generalRoom_floorRunnerTop",1429.7,215.85,1,1,0);
         AddObject("generalRoom_floorRunnerMid2",1429.35,307.95,1,0.9068450927734375,0);
         AddObject("generalRoom_floorRunnerMid1",1429.35,677,1,0.9423675537109375,0);
         AddObject("generalRoom_floorRunnerTop",1630.8,886.5,1,1,180);
         AddObject("generalRoom_floorRunner_rotationConnect",1429.5,789.75,1,1,0);
         AddObject("generalRoom_bottomTorch",1628,2114.5,1,1,0);
         AddObject("generalRoom_bottomTorch",1345,2111.5,1,1,0);
         AddObject("generalRoom_sideTorch",1742,1832,1,1,0);
         AddObject("generalRoom_sideTorch",1313,1832,-1,1,0);
         AddObject("generalRoom_bottomTorch",1918,1713.5,1,1,0);
         AddObject("generalRoom_bottomTorch",864,1711.5,1,1,0);
         AddObject("generalRoom_sideTorch",2268,1562,1,1,0);
         AddObject("generalRoom_sideTorch",2264,657,1,1,0);
         AddObject("generalRoom_sideTorch",791,511,-1,1,0);
         AddObject("generalRoom_topTorch",1938.5,346.5,1,1,0);
         AddObject("generalRoom_topTorch",1342.5,59.5,1,1,0);
         AddObject("generalRoom_topTorch",1621.5,60.5,1,1,0);
         AddObject("generalRoom_topTorch",1024.5,346.5,1,1,0);
         AddObject("generalRoom_sideTorch",1315,156,-1,1,0);
         AddObject("generalRoom_sideTorch",1739,158,1,1,0);
         AddObject("generalRoom_vipSign",2437.5,821,1,1,0);
         AddObject("generalRoom_velvetRope",2514,823.5,1,1,0);
         AddObject("generalRoom_velvetRope",2516,994.5,1,1,0);
         AddObject("generalRoom_sideTorch",1742,1972,1,1,0);
         AddObject("generalRoom_sideTorch",1313,1972,-1,1,0);
         AddObject("generalRoom_bottomTorch",1054,1711.5,1,1,0);
         AddObject("generalRoom_sideTorch",786,1586,-1,1,0);
         AddObject("generalRoom_bottomTorch",2088,1712.5,1,1,0);
         AddObject("generalRoom_sideTorch",2268,1432,1,1,0);
         AddObject("generalRoom_sideTorch",2264,527,1,1,0);
         AddObject("generalRoom_topTorch",2068.5,348.5,1,1,0);
         AddObject("generalRoom_sideTorch",1743,249,1,1,0);
         AddObject("generalRoom_sideTorch",1316,248,-1,1,0);
         AddObject("generalRoom_topTorch",894.5,347.5,1,1,0);
         AddObject("generalRoom_topTorch",594.5,650.5,1,1,0);
         AddObject("generalRoom_bottomTorch",611,1474.5,1,1,0);
         AddObject("generalRoom_titanEggPit_back",111,1060.5,1,1,0);
         AddObject("generalRoom_topTorch",331.5,650.5,1,1,0);
         AddObject("generalRoom_topTorch",100.5,650.5,1,1,0);
         AddObject("generalRoom_titanStatue",137.5,686.5,1,1,0);
         AddObject("generalRoom_titanDoorGaurd2",364.5,976,1,1,0);
         AddObject("generalRoom_titanEgg",119.5,876.5,1,1,0);
         AddObject("generalRoom_velvetRope",2516,1167.5,1,1,0);
         AddObject("generalRoom_titanEggPit_front",111,1113.5,1,1,0);
         AddObject("generalRoom_titanStatue",127.5,1222.5,1,1,0);
         AddObject("generalRoom_titanDoorGaurd1",363.5,1090.5,1,1,0);
         AddObject("generalRoom_bottomTorch",361,1474.5,1,1,0);
         AddObject("generalRoom_bottomTorch",111,1474.5,1,1,0);
         AddObject("generalRoom_sideTorch",97,1248,-1,1,0);
         AddObject("generalRoom_sideTorch",97,878,-1,1,0);
         AddObject("generalRoom_topTorch",2854.5,724.5,1,1,0);
         AddObject("generalRoom_bottomTorch",2871,1350.5,1,1,0);
         AddObject("generalRoom_topTorch",2591.5,724.5,1,1,0);
         AddObject("generalRoom_topTorch",2360.5,724.5,1,1,0);
         AddObject("generalRoom_bottomTorch",2621,1350.5,1,1,0);
         AddObject("generalRoom_bottomTorch",2371,1350.5,1,1,0);
         AddObject("generalRoom_sideTorch",2964,1215,1,1,0);
         AddObject("generalRoom_sideTorch",2964,915,1,1,0);
         AddObject("generalRoom_floorRunnerMid1",1424.8,1550,1,1.543853759765625,0);
         AddObject("generalRoom_floorRunnerMid2",1429.35,417.95,1,0.9068450927734375,0);
         AddObject("generalRoom_floorRunnerMid1",1429.35,528,1,1.22943115234375,0);
         AddObject("generalRoom_largePillar",861.65,402.5,1,1,0);
         AddObject("generalRoom_largePillar",2203,414.5,-1,1,0);
         AddObject("generalRoom_largePillar",842.65,1066.5,1,1,0);
         AddObject("generalRoom_largePillar",2196,1082.5,-1,1,0);
         AddObject("generalRoom_fountain",1273,580,1,1,0);
         AddObject("generalRoom_gemCombiner_anvil",1127,907,1,1,0);
         AddObject("generalRoom_gemCombiner",1071,889,1,1,0);
         AddObject("generalRoom_gemSalesman_blanket",1268,1445.5,1,1,0);
         AddObject("generalRoom_gemSalesman",1212,1469.5,1,1,0);
         AddObject("generalRoom_minionKeeper",1838.5,880,1,1,0);
         AddObject("collRect",1303,166,1.779998779296875,0.4799957275390625,0);
         AddObject("collRect",1583,165,1.779998779296875,0.4799957275390625,0);
         AddObject("collRect",1746,173,0.30999755859375,6.32159423828125,0);
         AddObject("collRect",1280,172.5,0.30999755859375,6.32159423828125,0);
         AddObject("collRect",1753,463,5.30999755859375,0.5200042724609375,0);
         AddObject("collRect",2273,482,0.2599945068359375,7.134796142578125,0);
         AddObject("collRect",766,462,5.30999755859375,0.5200042724609375,0);
         AddObject("collRect",756,476,0.2599945068359375,6.23773193359375,0);
         AddObject("collRect",760,1489.7,0.220001220703125,4.88446044921875,0);
         AddObject("collRect",765,1728,5.41998291015625,0.4199981689453125,0);
         AddObject("collRect",1285,1740,0.220001220703125,7.963104248046875,0);
         AddObject("collRect",1293,2133,4.629913330078125,0.32000732421875,0);
         AddObject("collRect",1748,1731.85,0.25,8.263229370117188,0);
         AddObject("collRect",1749,1729,5.2899169921875,0.399993896484375,0);
         AddObject("collRect",2271,1387.75,0.25,7.0042724609375,0);
         AddObject("collRect",1001,698,2.620208740234375,2.90045166015625,0);
         AddObject("buttonZoneObject1",1045.1,872.5,1.52044677734375,1.479736328125,0);
         AddObject("collRect",1095,980.5,0.4407806396484375,0.260406494140625,0);
         AddObject("buttonZoneObject2",1829,870.55,1.940338134765625,1.599609375,0);
         AddObject("collRect",1920,913.5,0.6797943115234375,1.30999755859375,0);
         _loc3_ = AddObject("buttonZoneObject",1194.95,1469,1.7403411865234375,1.479736328125,0) as ButtonZone;
         _loc3_.m_buttonZoneID = 0;
         AddObject("collRect",1234.55,1554.25,0.329986572265625,0.3902435302734375,0);
         AddObject("collRect",1019,716.9,2.150360107421875,3.0815887451171875,0);
         AddObject("collRect",1053.45,740.9,1.440032958984375,3.021209716796875,0);
         AddObject("collRect",1025,673,2.150177001953125,0.5609130859375,0);
         AddObject("collRect",979.05,1354.95,2.6795501708984375,2.322235107421875,0);
         AddObject("collRect",997.1,1373.85,2.3288421630859375,3.143707275390625,0);
         AddObject("collRect",1033.55,1397.85,1.4737548828125,3.18145751953125,0);
         AddObject("collRect",1007.95,1329.95,2.12017822265625,0.5609130859375,0);
         AddObject("collRect",1801.1,708,2.627960205078125,2.322235107421875,0);
         AddObject("collRect",1809.05,726.9,2.4093170166015625,2.7425537109375,0);
         AddObject("collRect",1840,750.9,1.7377777099609375,2.781158447265625,0);
         AddObject("collRect",1832.95,683,2.3448486328125,0.5609130859375,0);
         AddObject("collRect",1793.95,1376,2.6312255859375,2.579986572265625,0);
         AddObject("collRect",1817.9,1394.9,2.2295074462890625,2.9422607421875,0);
         AddObject("collRect",1857.25,1418.9,1.4639129638671875,3.0630340576171875,0);
         AddObject("collRect",1817,1351,2.1614990234375,0.5609130859375,0);
         AddObject("collRect",1875,897.05,0.619873046875,1.2997283935546875,0);
         AddObject("collRect",1845,922.05,0.6203765869140625,0.9991455078125,0);
         AddObject("collRect",1959.05,948.5,0.5392913818359375,0.8867645263671875,0);
         AddObject("collRect",1962.05,984.5,0.3097686767578125,0.750030517578125,0);
         AddObject("collRect",1119.15,922.5,0.619873046875,0.7262420654296875,0);
         AddObject("collRect",1300.85,1508,0.203277587890625,0.240386962890625,0);
         AddObject("collRect",1327,1495,0.059783935546875,0.240386962890625,0);
         AddObject("collRect",1293,1522,0.099609375,0.1999969482421875,0);
         AddObject("collRect",1302,1495,0.099609375,0.1199951171875,0);
         AddObject("collRect",1431.85,1208.8,0.1252288818359375,0.2010955810546875,0);
         AddObject("collRect",1291,1491,0.059783935546875,0.240386962890625,0);
         AddObject("entryObject_lobbyFromEggery",1500,2062,1,1,0);
         AddObject("elevatorEntrance",1474.5,129,1.723876953125,0.52984619140625,0);
         AddObject("entryObject_startingRoomToLobby",1513,194,1,1,0);
         AddObject("collRect",2274,811,7,1,0);
         AddObject("collRect",1311.95,1475.95,0.099609375,0.1999969482421875,0);
         AddObject("collRect",79,761,7.029998779296875,0.5800018310546875,0);
         AddObject("collRect",68,1488,7.029998779296875,0.5800018310546875,0);
         AddObject("collRect",57,778.75,0.3800048828125,14.344940185546875,0);
         AddObject("collRect",141,815,1.8599853515625,1.6394500732421875,0);
         AddObject("collRect",134,1353,1.8599853515625,1.6394500732421875,0);
         AddObject("buttonZoneObject3",95.9,1013,2.6112060546875,1.900543212890625,0);
         AddObject("collRect",123,1073,2.160003662109375,1.7793426513671875,0);
         AddObject("buttonZoneObject4",376,1004,1,2.0200042724609375,0);
         AddObject("collRect",382,1182.5,0.359954833984375,0.3798065185546875,0);
         AddObject("collRect",382,1072.5,0.359954833984375,0.3798065185546875,0);
         AddObject("collRect",2970,835,0.339996337890625,10.88079833984375,0);
         AddObject("collRect",2272.1,1368,7.279022216796875,1,0);
         AddObject("collRect",2526,838.1,0.190032958984375,10.977783203125,0);
         AddObject("collRect",2445,891,0.44000244140625,0.279998779296875,0);
         AddObject("collRect",1347.05,961.05,3.5076904296875,0.8790283203125,0);
         AddObject("collRect",1312.65,1000.1,4.394866943359375,1.2571868896484375,0);
         AddObject("collRect",1298.15,1056.7,4.59783935546875,2.690399169921875,0);
         AddObject("collRect",1315,1115.8,4.2626800537109375,2.33837890625,0);
         AddObject("collRect",1347.55,1166.05,3.5469818115234375,2.112060546875,0);
         AddObject("collRect",1391.7,1225.2,2.5644989013671875,1.5342864990234375,0);
         AddObject("collRect",1385.45,936.9,2.7131805419921875,1.0811767578125,0);
         AddObject("menus_speechBubble",1145,1381.5,1,1,0);
         AddObject("menus_speechBubble2",1760,806,1,1,0);
         AddObject("menus_speechBubble1",1033,807,1,1,0);
         AddObject("menus_speechBubble4",302.5,1031.5,1,1,0);
      }
   }
}
