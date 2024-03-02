package TopDown.Levels
{
   import States.BackgroundMusicTracks;
   import States.GameState;
   import States.OrientationState;
   import States.SpecialRoom;
   import States.TrainerType;
   import TopDown.LevelObjects.BaseInGameInteractionObject;
   import TopDown.LevelObjects.BaseLevelCollObject;
   import TopDown.LevelObjects.BossToEggeryDoor.BossToEggeryDoorVisuals;
   import TopDown.LevelObjects.BossToEggeryDoor.BossToEggeryDoorWall;
   import TopDown.LevelObjects.ButtonZone;
   import TopDown.LevelObjects.ChatBox.StandardChatBox;
   import TopDown.LevelObjects.CourtyardExitBlockade;
   import TopDown.LevelObjects.EggeryExitBlockade;
   import TopDown.LevelObjects.ElevatorObject;
   import TopDown.LevelObjects.ExpertRoomTransitionObject;
   import TopDown.LevelObjects.ExpertRoomVisualObjectBase;
   import TopDown.LevelObjects.ExpertRoomVisualObjectGlow;
   import TopDown.LevelObjects.FireTorch;
   import TopDown.LevelObjects.GemChest;
   import TopDown.LevelObjects.GemChestTopLayer;
   import TopDown.LevelObjects.GoldChest;
   import TopDown.LevelObjects.GoldChestTopLayer;
   import TopDown.LevelObjects.HealStone;
   import TopDown.LevelObjects.MainChar;
   import TopDown.LevelObjects.RegularKeyDoor;
   import TopDown.LevelObjects.RiverSplashObject;
   import TopDown.LevelObjects.RoomTransitionEntryPointObject;
   import TopDown.LevelObjects.RoomTransitionObject;
   import TopDown.LevelObjects.SoundDistanceObject;
   import TopDown.LevelObjects.TitanVisualsForEgg;
   import TopDown.LevelObjects.VisualLevelObject;
   import TopDown.LevelObjects.VisualLevelObjectWithHeight;
   import TopDown.LevelObjects.VisualsForBossDoor;
   import TopDown.LevelObjects.VisualsForEgg;
   import TopDown.LevelObjects.WallCollObject;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Input;
   import Utilities.Random;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   public class BaseTopDownLevel extends Sprite
   {
       
      
      public var m_visualObjects:Vector.<VisualLevelObject>;
      
      private var m_visualObjectWithHeight:Vector.<VisualLevelObjectWithHeight>;
      
      private var m_collObjects:Vector.<BaseLevelCollObject>;
      
      private var m_wallCollObjects:Vector.<BaseLevelCollObject>;
      
      private var m_interactionObjects:Vector.<BaseInGameInteractionObject>;
      
      private var m_animationObjects:Vector.<FireTorch>;
      
      private var m_soundDistanceObjects:Vector.<SoundDistanceObject>;
      
      private var m_allObjects:Vector.<VisualLevelObject>;
      
      public var m_roomBounds:Sprite;
      
      private var m_isFirstLoad:Boolean;
      
      private var m_xmlFile:Class;
      
      private var m_randomNumberGenerator:Random;
      
      private var m_backgroundMusic:int;
      
      private var m_isBackgroundMusicVolumeLowered:Boolean;
      
      protected var m_displayKeyPress:Boolean;
      
      public var m_initialDirection:int;
      
      private var m_extraHardModeFloors:int;
      
      public function BaseTopDownLevel(param1:Class = null)
      {
         super();
         this.m_visualObjects = new Vector.<VisualLevelObject>();
         this.m_visualObjectWithHeight = new Vector.<VisualLevelObjectWithHeight>();
         this.m_collObjects = new Vector.<BaseLevelCollObject>();
         this.m_wallCollObjects = new Vector.<BaseLevelCollObject>();
         this.m_interactionObjects = new Vector.<BaseInGameInteractionObject>();
         this.m_soundDistanceObjects = new Vector.<SoundDistanceObject>();
         this.m_animationObjects = new Vector.<FireTorch>();
         this.m_allObjects = new Vector.<VisualLevelObject>();
         this.m_roomBounds = new Sprite();
         this.m_isFirstLoad = true;
         this.m_initialDirection = OrientationState.ORIENTATION_UP;
         this.m_xmlFile = param1;
         this.m_extraHardModeFloors = Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
      }
      
      public function AddExtraVarsToObjects() : void
      {
      }
      
      public function CreateObjects() : void
      {
         if(this.m_xmlFile != null)
         {
            this.LoadLevelFromXMLObject();
         }
      }
      
      public function PreLoadSprites() : Boolean
      {
         if(!this.m_isFirstLoad)
         {
            return false;
         }
         this.CreateObjects();
         this.m_isFirstLoad = false;
         return true;
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:int = 0;
         this.m_displayKeyPress = true;
         if(!this.m_isFirstLoad)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.addChild(this.m_roomBounds);
            _loc1_ = 0;
            while(_loc1_ < this.m_allObjects.length)
            {
               this.m_allObjects[_loc1_].AddSprite();
               _loc1_++;
            }
            Singleton.utility.m_soundController.ChangeMusicTrack(this.m_backgroundMusic);
            if(Singleton.dynamicData.m_currRoomOfTower == 0 && Singleton.dynamicData.m_currFloorOfTower == 0)
            {
               Singleton.utility.m_soundController.FadeCurrentMusic(0.1,3);
            }
            else if(this.m_isBackgroundMusicVolumeLowered)
            {
               Singleton.utility.m_soundController.FadeCurrentMusic(0.4,3);
            }
            else
            {
               Singleton.utility.m_soundController.FadeCurrentMusic(1,2);
            }
            if(this.m_backgroundMusic != BackgroundMusicTracks.MUSIC_HALLWAY)
            {
               Singleton.dynamicData.m_prevBackgroundMusic = this.m_backgroundMusic;
            }
         }
         else
         {
            this.CreateObjects();
         }
         this.m_isFirstLoad = false;
         if(Singleton.dynamicData.m_currTransitionID == SpecialRoom.LOBBY_ELEVATOR)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.SetDirectionForStill(OrientationState.ORIENTATION_DOWN);
         }
      }
      
      public function CleanUpSprites() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_allObjects.length)
         {
            this.m_allObjects[_loc1_].Cleanup();
            _loc1_++;
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.removeChild(this.m_roomBounds);
      }
      
      private function LoadLevelFromXMLObject() : void
      {
         var _loc3_:XML = null;
         var _loc1_:ByteArray = new this.m_xmlFile() as ByteArray;
         _loc1_.uncompress();
         var _loc2_:XML = new XML(_loc1_);
         _loc2_.ignoreWhite = true;
         this.m_roomBounds.graphics.beginFill(0);
         this.m_roomBounds.graphics.drawRect(0,0,_loc2_.@width,_loc2_.@height);
         this.m_roomBounds.graphics.endFill();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.addChild(this.m_roomBounds);
         for each(_loc3_ in _loc2_.levelObject)
         {
            this.AddObject(_loc3_.@spriteName,_loc3_.@xPos,_loc3_.@yPos,_loc3_.@xScale,_loc3_.@yScale,_loc3_.@rotation);
         }
      }
      
      protected function AddObject(param1:String, param2:int = 0, param3:int = 0, param4:Number = 1, param5:Number = 1, param6:Number = 0) : Object
      {
         var _loc8_:RoomTransitionObject = null;
         var _loc9_:RoomTransitionEntryPointObject = null;
         var _loc10_:String = null;
         var _loc11_:StandardChatBox = null;
         var _loc7_:Object = null;
         if(param1 == "generalHallway_testTopWall8" || param1 == "test2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "room_teleporterOff")
         {
            this.AddExpertVisualObjectBase(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_river_sparkle1")
         {
            this.AddSplashObject(param1,param2,param3,param4,param5,param6,1,1,false);
         }
         else if(param1 == "plantRoom_river_sparkle2")
         {
            this.AddSplashObject(param1,param2,param3,param4,param5,param6,3,1,false);
         }
         else if(param1 == "plantRoom_river_splash")
         {
            this.AddSplashObject(param1,param2,param3,param4,param5,param6,2,0.6,true);
         }
         else if(param1 == "plantRoom_river_splash2")
         {
            this.AddSplashObject("plantRoom_river_splash",param2,param3,param4,param5,param6,3,0.6,true);
         }
         else if(param1 == "plantRoom_river_splash3")
         {
            this.AddSplashObject("plantRoom_river_splash",param2,param3,param4,param5,param6,4,0.6,true);
         }
         else if(param1 == "generalRoom_gymDoor")
         {
            this.AddBackgroundSoundDistanceObject(param1,param2,param3,param4,param5,param6,575,0.1,0.6);
         }
         else if(param1 == "eggery_fireplace")
         {
            this.AddFireTorch("eggery_fireplaceFire",param2 + 95,param3 + 59,param4,param5,param6,7);
            this.AddBackgroundSoundDistanceObject(param1,param2,param3,param4,param5,param6,1000,0,0.35,BackgroundMusicTracks.MUSIC_FIREPLACE);
         }
         else if(param1 == "sound3D_plantMusic")
         {
            this.AddBackgroundSoundDistanceObject("entryObject",param2,param3,param4,param5,param6,600,0,0.6,BackgroundMusicTracks.MUSIC_GRASS_LEVEL,false);
         }
         else if(param1 == "sound3D_river")
         {
            this.AddBackgroundSoundDistanceObject("entryObject",param2,param3,param4,param5,param6,650,0,0.7,BackgroundMusicTracks.MUSIC_RIVER_FULL,false);
         }
         else if(param1 == "buttonZoneObject")
         {
            _loc7_ = this.AddButtonZoneCollObject("buttonZoneObject",param2,param3,param4,param5,param6);
         }
         else if(param1.slice(0,16) == "buttonZoneObject")
         {
            _loc7_ = this.AddButtonZoneCollObject("buttonZoneObject",param2,param3,param4,param5,param6,int(param1.slice(16)));
         }
         else if(param1 == "collRect")
         {
            this.AddInvisibleWallCollObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "wallRect_eggeryExit")
         {
            this.AddEggeryWallCollObject("collRect",param2,param3,param4,param5,param6);
         }
         else if(param1 == "wallRect_courtyardExit")
         {
            this.AddCourtyardWallCollObject("collRect",param2,param3,param4,param5,param6);
         }
         else if(param1 == "elevatorEntrance")
         {
            this.AddElevatorWallCollObject("roomTransitionObject",param2,param3,param4,param5,param6);
         }
         else if(param1 == "regularDoor")
         {
            _loc7_ = this.AddRegularDoorObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "regularDoor_eggery")
         {
            _loc7_ = this.AddEggeryDoorObject("regularDoor",param2,param3,param4,param5,param6);
         }
         else if(param1 == "expert_roomTransitionObject")
         {
            (_loc8_ = (_loc7_ = this.AddExpertRoomTransitionCollObject("roomTransitionObject",param2,param3,param4,param5,param6)) as RoomTransitionObject).m_transitionID = SpecialRoom.EXPERT_ROOM;
         }
         else if(param1 == "roomTransitionObject_lobbyFromEggery")
         {
            (_loc8_ = (_loc7_ = this.AddRoomTransitionCollObject("roomTransitionObject",param2,param3,param4,param5,param6)) as RoomTransitionObject).m_transitionID = SpecialRoom.LOBBY_START;
         }
         else if(param1 == "roomTransitionObject_startingRoomToLobby" || param1 == "roomTransition_startingRoomToLobby")
         {
            (_loc8_ = (_loc7_ = this.AddRoomTransitionCollObject("roomTransitionObject",param2,param3,param4,param5,param6)) as RoomTransitionObject).m_transitionID = SpecialRoom.LOBBY_ELEVATOR;
            this.m_wallCollObjects.push(_loc8_);
         }
         else if(param1.slice(0,28) == "telport_roomTransitionObject")
         {
            _loc7_ = this.AddRoomTransitionCollObject("roomTransitionObject",param2,param3,param4,param5,param6);
            if(param1.length > 28)
            {
               (_loc8_ = _loc7_ as RoomTransitionObject).m_isTeleportTransitionObject = true;
               _loc8_.m_transitionID = int(param1.slice(28));
            }
         }
         else if(param1.slice(0,29) == "teleport_roomTransitionObject")
         {
            _loc7_ = this.AddRoomTransitionCollObject("roomTransitionObject",param2,param3,param4,param5,param6);
            if(param1.length > 29)
            {
               (_loc8_ = _loc7_ as RoomTransitionObject).m_isTeleportTransitionObject = true;
               _loc8_.m_transitionID = int(param1.slice(29));
            }
         }
         else if(param1.slice(0,20) == "roomTransitionObject")
         {
            _loc7_ = this.AddRoomTransitionCollObject("roomTransitionObject",param2,param3,param4,param5,param6);
            if(param1.length > 20)
            {
               (_loc8_ = _loc7_ as RoomTransitionObject).m_transitionID = int(param1.slice(20));
            }
         }
         else if(param1 == "plantRoom_bridgeTrees_bottomLeft")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_expertStatue")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,-35,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_bridgeTrees_bottomRight")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_bridgeTrees_topLeft")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_bridgeTrees_topRight")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_fountain")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,210,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_titanDoorGaurd1")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_titanDoorGaurd2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_titanStatue")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_goldFloorVase")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_silverFloorVase")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_candelabra")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,26,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_statuePedestal")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,25,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_plantMedallionStatue" || param1 == "generalRoom_fireMedallionStatue" || param1 == "generalRoom_electricMedallionStatue" || param1 == "generalRoom_undeadMedallionStatue" || param1 == "generalRoom_plantWizardMedallionStatue" || param1 == "generalRoom_undeadWizardMedallionStatue")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,-38,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_plantGymStatue" || param1 == "generalRoom_fireGymStatue" || param1 == "generalRoom_electricGymStatue" || param1 == "generalRoom_undeadGymStatue")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,-38,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_gemCombiner")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_minionKeeper")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,40,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_gemSalesman")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_largePillar")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,40,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_barrel")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,12,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_bookshelf")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,12,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_bookshelf_beakers")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,-10,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_bookshelf_books")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,-15,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_crate")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,25,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_beakerSet1")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,25,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_beakerSet2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,30,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_emptyVat")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,30,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_occupiedVat")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,30,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_machine")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,25,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_teslaCoil")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,28,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_junkPile")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,133,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_skull")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,10,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_ribs")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_thornBush")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,4,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_willow")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,15,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_oak")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,23,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_mushrooms")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,4,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_headstones3")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,4,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_headstones2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,4,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_headstones1")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,18,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_grassPatch3")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,8,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_grassPatch4")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,13,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_cattails")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,0,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_bush")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,5,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_altar")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,78,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_berryBushes")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,5,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_boulder")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,35,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_boulderSmall")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,11,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_flowers1")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,0,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_flowers2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,0,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_flowers3")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,0,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_bush")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,10,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_mushrooms")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,12,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_oakTree")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,35,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_oakTree2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,22,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_pineTree1")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,25,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_pineTree2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,10,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_pond")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,160,param2,param3,param4,param5,param6);
            this.AddSplashObject("plantRoom_river_sparkle1",param2 + 170,param3 + 134,0.9,0.9,90,1,2,false);
            this.AddSplashTopObject("plantRoom_river_sparkle1",0,param2 + 170,param3 + 134,0.9,0.9,90,1,2,false);
         }
         else if(param1 == "plantRoom_stump")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,15,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_forestEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_forestEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_forestEnemyBoy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_forestEnemyGirl_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_outdoorEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_outdoorEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_waterEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "plantRoom_waterEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_bossEnemy")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_hardEnemy")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_expertEnemy")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "grassRoom_testTree8")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,42,param2,param3,param4,param5,param6);
         }
         else if(param1 == "room_expertTeleporter_glow")
         {
            this.AddExpertVisualObjectGlow(param1,0,param2,param3,param4,param5,param6,true);
         }
         else if(param1 == "room_generalTeleporter_glow")
         {
            this.AddExpertVisualObjectGlow(param1,0,param2,param3,param4,param5,param6,false);
         }
         else if(param1 == "fireRoom_flowers")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,7,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_groundCover")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,15,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_palmTrees")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_tiki1")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_tiki2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_firePit")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,30,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_gysers")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,30,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_rocks")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_femaleFireEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_femaleFireEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,6,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_musclesEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_musclesEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_voodooEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "fireRoom_voodooEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_cyborgEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_cyborgEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_femaleEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_femaleEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_labcoatEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_labcoatEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "electricRoom_labcoatEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_costumeEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_costumeEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_gothEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_gothEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_necromancerEnemy_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "undeadRoom_necromancerEnemy_side")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_electricGymEnemy")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_fireGymEnemy")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_plantWizard")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_grandWizard")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_plantGymEnemy")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_undeadGymEnemy")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_undeadWizard")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "room_goldChest")
         {
            if(Singleton.dynamicData.GetTotalSageSeals() > 0)
            {
               if(Math.random() * 100 > 50)
               {
                  this.AddGoldChestCollObject(param1,param2,param3,param4,param5,param6);
               }
            }
         }
         else if(param1 == "room_gemChest")
         {
            if(Singleton.dynamicData.GetTotalSageSeals() > 3)
            {
               if(Math.random() * 100 > 70)
               {
                  this.AddGemChestCollObject(param1,param2,param3,param4,param5,param6);
               }
            }
         }
         else if(param1 == "generalRoom_partialWall")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,10,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_rocks2")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,40,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_healStone")
         {
            this.AddHealStoneObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,16,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_specialDoor_open")
         {
            this.AddVisualsForBossDoorObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_eggeryDoor_open")
         {
            this.AddVisualsForEggeryDoorObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "room_expertTeleporter")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "room_generalTeleporter")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,60,param2,param3,param4,param5,param6);
         }
         else if(param1 == "eggery_eggPit_back")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "eggery_eggPit_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,40,param2,param3,param4,param5,param6);
         }
         else if(param1.slice(0,10) == "eggery_egg")
         {
            this.AddEggVisualObject("eggery_egg",40,param2,param3,param4,param5,param6,int(param1.slice(10)));
         }
         else if(param1 == "generalRoom_titanEggPit_back")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_titanEggPit_front")
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            this.AddJustVisualTopObject(param1,40,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_titanEgg")
         {
            this.AddTitanEggVisualObject(param1,40,param2,param3,param4,param5,param6,0);
         }
         else if(param1 == "expert_entryObject")
         {
            (_loc9_ = (_loc7_ = this.AddRoomTransitionGoToPointObject("entryObject",param2,param3,param4,param5,param6)) as RoomTransitionEntryPointObject).m_roomComingFrom = SpecialRoom.EXPERT_ROOM;
         }
         else if(param1 == "entryObject_lobbyFromEggery")
         {
            (_loc9_ = (_loc7_ = this.AddRoomTransitionGoToPointObject("entryObject",param2,param3,param4,param5,param6)) as RoomTransitionEntryPointObject).m_roomComingFrom = SpecialRoom.LOBBY_START;
         }
         else if(param1 == "entryObject_startingRoomToLobby")
         {
            (_loc9_ = (_loc7_ = this.AddRoomTransitionGoToPointObject("entryObject",param2,param3,param4,param5,param6)) as RoomTransitionEntryPointObject).m_roomComingFrom = SpecialRoom.LOBBY_ELEVATOR;
         }
         else if(param1.slice(0,11) == "entryObject")
         {
            _loc7_ = this.AddRoomTransitionGoToPointObject("entryObject",param2,param3,param4,param5,param6);
            if(param1.length > 11)
            {
               (_loc9_ = _loc7_ as RoomTransitionEntryPointObject).m_roomComingFrom = int(param1.slice(11));
            }
            if(param1.length > 13)
            {
               if((_loc10_ = param1.slice(13)) == "left")
               {
                  this.m_initialDirection = OrientationState.ORIENTATION_LEFT;
               }
               else if(_loc10_ == "right")
               {
                  this.m_initialDirection = OrientationState.ORIENTATION_RIGHT;
               }
               else if(_loc10_ == "down")
               {
                  this.m_initialDirection = OrientationState.ORIENTATION_DOWN;
               }
               else if(_loc10_ == "up")
               {
                  this.m_initialDirection = OrientationState.ORIENTATION_UP;
               }
            }
         }
         else if(param1 == "menus_speechBubble")
         {
            this.AddChatBox(param1,param2,param3,param4,param5,param6);
         }
         else if(param1.slice(0,18) == "menus_speechBubble")
         {
            (_loc11_ = this.AddChatBox("menus_speechBubble",param2,param3,param4,param5,param6)).m_chatBoxID = int(param1.slice(18));
         }
         else if(param1 == "plantRoom_groundTile")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_GRASS_LEVEL;
            this.m_isBackgroundMusicVolumeLowered = false;
            if(Singleton.dynamicData.m_currFloorOfTower == 3 || Singleton.dynamicData.m_currFloorOfTower == 3 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(20);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 50)
               {
                  this.AddJustVisualObject("plantRoom_groundTile_dandelion",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 1 || Singleton.dynamicData.m_currFloorOfTower == 1 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 50)
               {
                  this.AddJustVisualObject("plantRoom_groundTile_clover",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 20 || Singleton.dynamicData.m_currFloorOfTower == 20 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 30)
               {
                  this.AddJustVisualObject("plantRoom_groundTile_deadPatches",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 21 || Singleton.dynamicData.m_currFloorOfTower == 21 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 50)
               {
                  this.AddJustVisualObject("plantRoom_groundTile_flowers",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else
            {
               this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            }
         }
         else if(param1 == "fireRoom_groundTile")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_FIRE_LEVEL;
            this.m_isBackgroundMusicVolumeLowered = false;
            if(Singleton.dynamicData.m_currFloorOfTower == 6 || Singleton.dynamicData.m_currFloorOfTower == 6 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("fireRoom_groundTile_foliage",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 7 || Singleton.dynamicData.m_currFloorOfTower == 7 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 5)
               {
                  this.AddJustVisualObject("fireRoom_groundTile_magma",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 8 || Singleton.dynamicData.m_currFloorOfTower == 8 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 50)
               {
                  this.AddJustVisualObject("fireRoom_groundTile_fossils",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 22 || Singleton.dynamicData.m_currFloorOfTower == 22 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("fireRoom_groundTile_foliage",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 23 || Singleton.dynamicData.m_currFloorOfTower == 23 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 50)
               {
                  this.AddJustVisualObject("fireRoom_groundTile_fossils",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else
            {
               this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            }
         }
         else if(param1 == "electricRoom_floorTile")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_ELECTRIC_LEVEL;
            this.m_isBackgroundMusicVolumeLowered = false;
            if(Singleton.dynamicData.m_currFloorOfTower == 11 || Singleton.dynamicData.m_currFloorOfTower == 11 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(15);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 20)
               {
                  this.AddJustVisualObject("electricRoom_floorTile_pipes",param2,param3,param4,param5,param6);
               }
               else if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("electricRoom_floorTile_pipesWithGauge",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 12 || Singleton.dynamicData.m_currFloorOfTower == 12 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("electricRoom_floorTile_blackAndWhite",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 13 || Singleton.dynamicData.m_currFloorOfTower == 13 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("electricRoom_floorTile_metalLitter",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 25 || Singleton.dynamicData.m_currFloorOfTower == 25 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 26 || Singleton.dynamicData.m_currFloorOfTower == 26 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("electricRoom_floorTile_blackAndWhite",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else
            {
               this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            }
         }
         else if(param1 == "undeadRoom_groundTile")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_UNDEAD_LEVEL;
            this.m_isBackgroundMusicVolumeLowered = false;
            if(Singleton.dynamicData.m_currFloorOfTower == 16 || Singleton.dynamicData.m_currFloorOfTower == 16 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("undeadRoom_groundTile_moss",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 17 || Singleton.dynamicData.m_currFloorOfTower == 17 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(15);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 15)
               {
                  this.AddJustVisualObject("undeadRoom_groundTile_purpleCracks",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 18 || Singleton.dynamicData.m_currFloorOfTower == 18 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 50)
               {
                  this.AddJustVisualObject("undeadRoom_groundTile_debris",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 27 || Singleton.dynamicData.m_currFloorOfTower == 27 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("undeadRoom_groundTile_cobwebs",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else if(Singleton.dynamicData.m_currFloorOfTower == 28 || Singleton.dynamicData.m_currFloorOfTower == 28 + this.m_extraHardModeFloors)
            {
               this.CheckForCreateRandomNumberGeneratorWithSeed(10);
               if(this.m_randomNumberGenerator.nextNumber() * 100 > 0)
               {
                  this.AddJustVisualObject("undeadRoom_groundTile_moss",param2,param3,param4,param5,param6);
               }
               else
               {
                  this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
               }
            }
            else
            {
               this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
            }
         }
         else if(param1 == "generalRoom_floorTile")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_HALLWAY;
            this.m_isBackgroundMusicVolumeLowered = true;
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
         }
         else if(param1 == "generalRoom_topTorch")
         {
            this.AddFireTorch("generalRoom_topTorch",param2,param3,param4,param5,param6,7);
         }
         else if(param1 == "generalRoom_sideTorch")
         {
            this.AddFireTorch("generalRoom_sideTorch",param2,param3,param4,param5,param6,6);
         }
         else if(param1 == "generalRoom_bottomTorch")
         {
            this.AddFireTorch("generalRoom_bottomTorch",param2,param3,param4,param5,param6,6);
         }
         else if(param1 == "grass_music_override")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_GRASS_LEVEL;
         }
         else if(param1 == "fire_music_override")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_FIRE_LEVEL;
         }
         else if(param1 == "electric_music_override")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_ELECTRIC_LEVEL;
         }
         else if(param1 == "undead_music_override")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_UNDEAD_LEVEL;
         }
         else if(param1 == "introMusic_music_override")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_RIVER;
         }
         else if(param1 == "riverMusic_music_override")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_RIVER;
         }
         else if(param1 == "mainMenu_music_override")
         {
            this.m_backgroundMusic = BackgroundMusicTracks.MUSIC_TITLE;
         }
         else if(param1 == "halfVolume_music_override")
         {
            this.m_isBackgroundMusicVolumeLowered = true;
         }
         else if(param1 == "fullVolume_music_override")
         {
            this.m_isBackgroundMusicVolumeLowered = false;
         }
         else if(param1 == "generalRoom_genericTapestrySide_plant ")
         {
            this.AddJustVisualObject("generalRoom_genericTapestrySide_plant",param2,param3,param4,param5,param6);
         }
         else
         {
            this.AddJustVisualObject(param1,param2,param3,param4,param5,param6);
         }
         return _loc7_;
      }
      
      protected function AddInvisibleWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:WallCollObject;
         (_loc7_ = new WallCollObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         this.m_wallCollObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddEggeryWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:EggeryExitBlockade;
         (_loc7_ = new EggeryExitBlockade()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         this.m_wallCollObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddCourtyardWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:CourtyardExitBlockade;
         (_loc7_ = new CourtyardExitBlockade()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         this.m_wallCollObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddElevatorWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:ElevatorObject;
         (_loc7_ = new ElevatorObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         this.m_wallCollObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddWallCollVisualObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:WallCollObject;
         (_loc7_ = new WallCollObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_wallCollObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddRegularDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : RegularKeyDoor
      {
         var _loc7_:RegularKeyDoor;
         (_loc7_ = new RegularKeyDoor()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         _loc7_.m_interationID = 2;
         this.m_wallCollObjects.push(_loc7_);
         this.m_interactionObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
         return _loc7_;
      }
      
      protected function AddEggeryDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : BossToEggeryDoorWall
      {
         var _loc7_:BossToEggeryDoorWall;
         (_loc7_ = new BossToEggeryDoorWall()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         _loc7_.m_interationID = 2;
         this.m_wallCollObjects.push(_loc7_);
         this.m_interactionObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
         return _loc7_;
      }
      
      protected function AddJustVisualTopObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:VisualLevelObjectWithHeight;
         (_loc8_ = new VisualLevelObjectWithHeight()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         _loc8_.m_activationHieghtPoint = param2;
         _loc8_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         this.m_visualObjectWithHeight.push(_loc8_);
         this.m_allObjects.push(_loc8_);
      }
      
      protected function AddRoomTransitionCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : RoomTransitionObject
      {
         var _loc7_:RoomTransitionObject;
         (_loc7_ = new RoomTransitionObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         this.m_collObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
         return _loc7_;
      }
      
      protected function AddExpertRoomTransitionCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : ExpertRoomTransitionObject
      {
         var _loc7_:ExpertRoomTransitionObject;
         (_loc7_ = new ExpertRoomTransitionObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         _loc7_.m_transitionID = 1;
         this.m_collObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
         return _loc7_;
      }
      
      protected function AddButtonZoneCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int = 0) : ButtonZone
      {
         var _loc8_:ButtonZone;
         (_loc8_ = new ButtonZone()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         _loc8_.m_buttonZoneID = param7;
         this.m_collObjects.push(_loc8_);
         this.m_allObjects.push(_loc8_);
         return _loc8_;
      }
      
      protected function AddGoldChestCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int = 0) : GoldChest
      {
         var _loc8_:GoldChest;
         (_loc8_ = new GoldChest()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         _loc8_.m_arraySpotOfTopObject = this.m_allObjects.length + 1;
         this.m_collObjects.push(_loc8_);
         this.m_allObjects.push(_loc8_);
         var _loc9_:GoldChestTopLayer;
         (_loc9_ = new GoldChestTopLayer()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         _loc9_.m_activationHieghtPoint = 8;
         _loc9_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         this.m_visualObjectWithHeight.push(_loc9_);
         this.m_allObjects.push(_loc9_);
         return _loc8_;
      }
      
      protected function AddGemChestCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int = 0) : GemChest
      {
         var _loc8_:GemChest;
         (_loc8_ = new GemChest()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         _loc8_.m_arraySpotOfTopObject = this.m_allObjects.length + 1;
         this.m_collObjects.push(_loc8_);
         this.m_allObjects.push(_loc8_);
         var _loc9_:GemChestTopLayer;
         (_loc9_ = new GemChestTopLayer()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         _loc9_.m_activationHieghtPoint = 8;
         _loc9_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         this.m_visualObjectWithHeight.push(_loc9_);
         this.m_allObjects.push(_loc9_);
         return _loc8_;
      }
      
      protected function AddRoomTransitionGoToPointObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : RoomTransitionEntryPointObject
      {
         var _loc7_:RoomTransitionEntryPointObject;
         (_loc7_ = new RoomTransitionEntryPointObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         this.m_visualObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
         return _loc7_;
      }
      
      protected function AddHealStoneObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:HealStone;
         (_loc7_ = new HealStone()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_visualObjects.push(_loc7_);
         this.m_interactionObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddChatBox(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : StandardChatBox
      {
         var _loc7_:StandardChatBox;
         (_loc7_ = new StandardChatBox()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer,false);
         this.m_visualObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
         return _loc7_;
      }
      
      protected function AddExpertVisualObjectBase(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:ExpertRoomVisualObjectBase;
         (_loc7_ = new ExpertRoomVisualObjectBase()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_visualObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddExpertVisualObjectGlow(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:Boolean) : void
      {
         var _loc9_:ExpertRoomVisualObjectGlow;
         (_loc9_ = new ExpertRoomVisualObjectGlow(param8)).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_visualObjects.push(_loc9_);
         this.m_allObjects.push(_loc9_);
         var _loc10_:ExpertRoomVisualObjectGlow;
         (_loc10_ = new ExpertRoomVisualObjectGlow(param8)).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         _loc10_.m_activationHieghtPoint = param2;
         _loc10_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         this.m_visualObjectWithHeight.push(_loc10_);
         this.m_allObjects.push(_loc10_);
      }
      
      protected function AddEggVisualObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int) : void
      {
         var _loc9_:VisualsForEgg;
         (_loc9_ = new VisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         _loc9_.m_eggID = param8;
         this.m_visualObjects.push(_loc9_);
         this.m_allObjects.push(_loc9_);
         var _loc10_:VisualsForEgg;
         (_loc10_ = new VisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         _loc10_.m_activationHieghtPoint = param2;
         _loc10_.m_eggID = param8;
         _loc10_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         this.m_visualObjectWithHeight.push(_loc10_);
         this.m_allObjects.push(_loc10_);
      }
      
      protected function AddTitanEggVisualObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int) : void
      {
         var _loc9_:TitanVisualsForEgg;
         (_loc9_ = new TitanVisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         _loc9_.m_eggID = param8;
         this.m_visualObjects.push(_loc9_);
         this.m_allObjects.push(_loc9_);
         var _loc10_:TitanVisualsForEgg;
         (_loc10_ = new TitanVisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         _loc10_.m_activationHieghtPoint = param2;
         _loc10_.m_eggID = param8;
         _loc10_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         this.m_visualObjectWithHeight.push(_loc10_);
         this.m_allObjects.push(_loc10_);
      }
      
      protected function AddVisualsForBossDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:VisualsForBossDoor;
         (_loc7_ = new VisualsForBossDoor()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_visualObjects.push(_loc7_);
         this.m_interactionObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddVisualsForEggeryDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:BossToEggeryDoorVisuals;
         (_loc7_ = new BossToEggeryDoorVisuals()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_visualObjects.push(_loc7_);
         this.m_interactionObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddBackgroundSoundDistanceObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int, param8:Number, param9:Number, param10:int = -99, param11:Boolean = true) : void
      {
         var _loc12_:SoundDistanceObject;
         (_loc12_ = new SoundDistanceObject(param7,param8,param9,param10)).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         _loc12_.m_isVisible = param11;
         this.m_visualObjects.push(_loc12_);
         this.m_allObjects.push(_loc12_);
         this.m_soundDistanceObjects.push(_loc12_);
      }
      
      protected function AddFireTorch(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int) : void
      {
         var _loc8_:FireTorch;
         (_loc8_ = new FireTorch()).m_numberOfFrames = param7;
         _loc8_.AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_animationObjects.push(_loc8_);
         this.m_visualObjects.push(_loc8_);
         this.m_allObjects.push(_loc8_);
      }
      
      protected function AddJustVisualObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:VisualLevelObject;
         (_loc7_ = new VisualLevelObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         this.m_visualObjects.push(_loc7_);
         this.m_allObjects.push(_loc7_);
      }
      
      protected function AddSplashObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean) : void
      {
         var _loc10_:RiverSplashObject;
         (_loc10_ = new RiverSplashObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         _loc10_.m_initialDelay = param7;
         _loc10_.m_fadeTime = param8;
         _loc10_.m_isImpact = param9;
         this.m_visualObjects.push(_loc10_);
         this.m_allObjects.push(_loc10_);
      }
      
      protected function AddSplashTopObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean) : void
      {
         var _loc11_:RiverSplashObject;
         (_loc11_ = new RiverSplashObject()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         _loc11_.m_activationHieghtPoint = param2;
         _loc11_.m_initialDelay = param8;
         _loc11_.m_fadeTime = param9;
         _loc11_.m_isImpact = param10;
         _loc11_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         this.m_visualObjectWithHeight.push(_loc11_);
         this.m_allObjects.push(_loc11_);
      }
      
      public function CheckForLevelCollisionsWithObject(param1:Sprite) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_collObjects.length)
         {
            if(Singleton.utility.m_collController.RectDisplayObjectCollision(param1,this.m_collObjects[_loc2_].m_currSprite))
            {
               this.m_collObjects[_loc2_].OnColl();
            }
            _loc2_++;
         }
      }
      
      public function CheckForWallCollisionsWithObject(param1:Sprite) : Rectangle
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_wallCollObjects.length)
         {
            if(this.m_wallCollObjects[_loc3_].m_isSolid)
            {
               _loc2_ = Singleton.utility.m_collController.RectDisplayObjectCollisionReturnIntersectRect(param1,this.m_wallCollObjects[_loc3_].m_currSprite);
               if(_loc2_.x != 0 && _loc2_.y != 0 && _loc2_.width != 0 && _loc2_.height != 0)
               {
                  this.m_wallCollObjects[_loc3_].OnColl();
                  return _loc2_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function CheckForHeightCollisionsWithObject(param1:Sprite) : void
      {
         var _loc3_:Rectangle = null;
         var _loc2_:Rectangle = param1.getRect(Singleton.utility.m_stage);
         var _loc4_:int = 0;
         while(_loc4_ < this.m_visualObjectWithHeight.length)
         {
            _loc3_ = this.m_visualObjectWithHeight[_loc4_].m_currSprite.getRect(Singleton.utility.m_stage);
            if(_loc2_.y + _loc2_.height > _loc3_.y + _loc3_.height - this.m_visualObjectWithHeight[_loc4_].m_activationHieghtPoint)
            {
               this.m_visualObjectWithHeight[_loc4_].m_currSprite.visible = false;
               this.m_allObjects[this.m_visualObjectWithHeight[_loc4_].m_arraySpotOfBottomObject].m_currSprite.visible = true;
            }
            else
            {
               this.m_visualObjectWithHeight[_loc4_].m_currSprite.visible = true;
               this.m_allObjects[this.m_visualObjectWithHeight[_loc4_].m_arraySpotOfBottomObject].m_currSprite.visible = false;
            }
            _loc4_++;
         }
      }
      
      public function DoesHaveRoomTransitionObject(param1:int) : Boolean
      {
         var _loc3_:RoomTransitionEntryPointObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc2_] is RoomTransitionEntryPointObject)
            {
               _loc3_ = this.m_visualObjects[_loc2_] as RoomTransitionEntryPointObject;
               if(_loc3_.m_roomComingFrom == param1)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function GetTheGotoPositionForTheRoom() : Point
      {
         var _loc2_:RoomTransitionEntryPointObject = null;
         var _loc3_:MainChar = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc1_] is RoomTransitionEntryPointObject)
            {
               _loc2_ = this.m_visualObjects[_loc1_] as RoomTransitionEntryPointObject;
               if(_loc2_.m_roomComingFrom == Singleton.dynamicData.m_currTransitionID)
               {
                  _loc3_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
                  return new Point(_loc2_.m_currSprite.x - 15,_loc2_.m_currSprite.y - 93 + 27);
               }
            }
            _loc1_++;
         }
         return new Point(1,1);
      }
      
      public function InButtonCollZone(param1:int) : void
      {
         var _loc3_:BaseInGameInteractionObject = null;
         var _loc2_:Boolean = this.m_displayKeyPress;
         var _loc4_:int = 0;
         while(_loc4_ < this.m_interactionObjects.length)
         {
            if(this.m_interactionObjects[_loc4_].m_interationID == param1)
            {
               this.m_interactionObjects[_loc4_].OnPotentialInteration();
               _loc3_ = this.m_interactionObjects[_loc4_];
            }
            _loc4_++;
         }
         if(_loc3_ is HealStone)
         {
            _loc2_ = false;
         }
         if(_loc3_ is RegularKeyDoor)
         {
            if(Singleton.dynamicData.m_hasUnlockedBossDoor || Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
            {
               _loc2_ = false;
            }
         }
         if(_loc3_ is BossToEggeryDoorWall)
         {
            if(Singleton.dynamicData.m_hasUnlockedEggeryDoor)
            {
               _loc2_ = false;
            }
         }
         if(_loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.TryAndReStartAnimation(param1);
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = true;
         }
         if(Input.kp("ENTER","SPACE"))
         {
            _loc4_ = 0;
            while(_loc4_ < this.m_interactionObjects.length)
            {
               if(this.m_interactionObjects[_loc4_].m_interationID == param1)
               {
                  this.m_interactionObjects[_loc4_].OnInteration();
               }
               _loc4_++;
            }
            this.PreformButtonAction(param1);
         }
      }
      
      public function GetChatBoxForButtonZone(param1:int) : StandardChatBox
      {
         var _loc3_:StandardChatBox = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc2_] is StandardChatBox)
            {
               _loc3_ = this.m_visualObjects[_loc2_] as StandardChatBox;
               if(_loc3_.m_chatBoxID == param1)
               {
                  return _loc3_;
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      public function GetEggForButtonZone(param1:int) : VisualsForEgg
      {
         var _loc3_:VisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc2_] is VisualsForEgg)
            {
               _loc3_ = this.m_visualObjects[_loc2_] as VisualsForEgg;
               if(_loc3_.m_eggID == param1)
               {
                  return _loc3_;
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      public function GetEggOnTopLayerForButtonZone(param1:int) : VisualsForEgg
      {
         var _loc3_:VisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjectWithHeight.length)
         {
            if(this.m_visualObjectWithHeight[_loc2_] is VisualsForEgg)
            {
               _loc3_ = this.m_visualObjectWithHeight[_loc2_] as VisualsForEgg;
               if(_loc3_.m_eggID == param1)
               {
                  return _loc3_;
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      public function GetTitanEggForButtonZone(param1:int) : TitanVisualsForEgg
      {
         var _loc3_:TitanVisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc2_] is TitanVisualsForEgg)
            {
               _loc3_ = this.m_visualObjects[_loc2_] as TitanVisualsForEgg;
               if(_loc3_.m_eggID == param1)
               {
                  return _loc3_;
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      public function GetTitanEggOnTopLayerForButtonZone(param1:int) : TitanVisualsForEgg
      {
         var _loc3_:TitanVisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjectWithHeight.length)
         {
            if(this.m_visualObjectWithHeight[_loc2_] is TitanVisualsForEgg)
            {
               _loc3_ = this.m_visualObjectWithHeight[_loc2_] as TitanVisualsForEgg;
               if(_loc3_.m_eggID == param1)
               {
                  return _loc3_;
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      public function UpdateSoundDistanceObjects(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.m_soundDistanceObjects.length)
         {
            this.m_soundDistanceObjects[_loc3_].OnCharMovement(param1,param2);
            _loc3_++;
         }
      }
      
      public function UpdateChatBoxes() : void
      {
         var _loc2_:StandardChatBox = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc1_] is StandardChatBox)
            {
               _loc2_ = this.m_visualObjects[_loc1_] as StandardChatBox;
               _loc2_.Update();
            }
            _loc1_++;
         }
      }
      
      public function UpdateAnimationObjects() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_animationObjects.length)
         {
            this.m_animationObjects[_loc1_].Update();
            _loc1_++;
         }
      }
      
      protected function PreformButtonAction(param1:int) : void
      {
         var _loc2_:TrainerDataObject = null;
         var _loc3_:StandardChatBox = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            Singleton.utility.m_soundController.FadeCurrentMusic(0.5,0.5);
            _loc2_ = Singleton.staticData.m_trainerSystem.LoadTrianer(Singleton.dynamicData.m_currFloorOfTower,Singleton.dynamicData.m_currRoomOfTower);
            _loc3_ = this.GetChatBoxForButtonZone(param1);
            if(_loc2_.m_trainerType == TrainerType.HARD_TRAINER && Singleton.dynamicData.m_currFloorOfTower < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
            {
               if(Singleton.dynamicData.IsMapUnlocked())
               {
                  _loc3_.SetFunctions(this.BringTheMusicVolumeBackup);
                  _loc3_.BringInWithText("Use the map well.","Qui-tel Trainer");
               }
               else
               {
                  _loc3_.SetFunctions(this.GiveMap);
                  _loc3_.BringInWithText("Here is a map to help you with this floor.","Qui-tel Trainer");
               }
               return;
            }
            if(!Singleton.dynamicData.HasBeatenCurrentTrainer())
            {
               _loc3_.SetFunctions(this.GotoTheBattleScreen);
               _loc3_.BringInWithText(_loc2_.m_whatTrainerSaysAtStart_notBeaten,_loc2_.m_trainerName);
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_returnChatBox = _loc3_;
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_returnTrianerForChatBox = _loc2_;
            }
            else
            {
               _loc3_.SetFunctions(null,this.GotoTheBattleScreen,this.BringTheMusicVolumeBackup);
               if((_loc4_ = Singleton.dynamicData.GetStarsForCurrentFloorAndRoom()) == 3)
               {
                  _loc3_.BringInWithText("You already beat me!   Replay me for exp?",_loc2_.m_trainerName);
               }
               else
               {
                  _loc3_.BringInWithText(_loc2_.m_whatTrainerSaysAtStart_alreadyBeaten,_loc2_.m_trainerName);
               }
               _loc3_.SetNumOfStars(_loc4_);
            }
         }
      }
      
      private function GiveMap() : void
      {
         Singleton.dynamicData.SetIsMapUnlocked(true);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheMiniMap();
         this.BringTheMusicVolumeBackup();
         Singleton.utility.m_soundController.PlaySound("tower_gettingMap");
      }
      
      private function BringTheMusicVolumeBackup() : void
      {
         Singleton.utility.m_soundController.FadeCurrentMusic(1,0.5);
      }
      
      private function GotoTheBattleScreen() : void
      {
         Singleton.utility.m_soundController.FadeCurrentMusic(0,0.5);
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.BATTLE_SCREEN,true);
      }
      
      public function GetLevelObjectAt(param1:int) : VisualLevelObject
      {
         return this.m_allObjects[param1];
      }
      
      private function CheckForCreateRandomNumberGeneratorWithSeed(param1:int) : void
      {
         if(this.m_randomNumberGenerator == null)
         {
            this.m_randomNumberGenerator = new Random(param1);
         }
      }
   }
}
