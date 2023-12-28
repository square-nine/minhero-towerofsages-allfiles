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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               this.m_visualObjects = new Vector.<VisualLevelObject>();
               this.m_visualObjectWithHeight = new Vector.<VisualLevelObjectWithHeight>();
               this.m_collObjects = new Vector.<BaseLevelCollObject>();
               this.m_wallCollObjects = new Vector.<BaseLevelCollObject>();
               if(!_loc2_)
               {
                  this.m_interactionObjects = new Vector.<BaseInGameInteractionObject>();
                  this.m_soundDistanceObjects = new Vector.<SoundDistanceObject>();
                  if(_loc3_ || Boolean(param1))
                  {
                     addr72:
                     this.m_animationObjects = new Vector.<FireTorch>();
                  }
                  this.m_allObjects = new Vector.<VisualLevelObject>();
                  if(_loc3_ || Boolean(param1))
                  {
                     addr98:
                     this.m_roomBounds = new Sprite();
                     this.m_isFirstLoad = true;
                     this.m_initialDirection = OrientationState.ORIENTATION_UP;
                     this.m_xmlFile = param1;
                  }
                  this.m_extraHardModeFloors = Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
                  return;
               }
            }
            §§goto(addr72);
         }
         §§goto(addr98);
      }
      
      public function AddExtraVarsToObjects() : void
      {
      }
      
      public function CreateObjects() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.m_xmlFile != null)
            {
               if(_loc2_ || _loc1_)
               {
                  addr39:
                  this.LoadLevelFromXMLObject();
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function PreLoadSprites() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.m_isFirstLoad);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr35:
                     §§push(false);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                     §§goto(addr66);
                  }
                  else
                  {
                     addr62:
                     this.m_isFirstLoad = false;
                  }
                  §§goto(addr66);
               }
               else
               {
                  this.CreateObjects();
                  if(_loc2_)
                  {
                     §§goto(addr62);
                  }
               }
               §§push(true);
            }
            addr66:
            return §§pop();
         }
         §§goto(addr35);
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            this.m_displayKeyPress = true;
            if(!_loc3_)
            {
               addr27:
               if(!this.m_isFirstLoad)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.addChild(this.m_roomBounds);
                     if(_loc2_)
                     {
                        _loc1_ = 0;
                        addr50:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(§§pop() >= this.m_allObjects.length)
                              {
                                 §§push(Singleton.utility);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().m_soundController);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(this.m_backgroundMusic);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§pop().ChangeMusicTrack(§§pop());
                                          §§push(Singleton.dynamicData);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop().m_currRoomOfTower);
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr258);
                                       }
                                       addr233:
                                       §§pop().FadeCurrentMusic(§§pop(),2);
                                       §§goto(addr235);
                                    }
                                    addr218:
                                    §§pop().FadeCurrentMusic(0.4,3);
                                    if(_loc2_)
                                    {
                                       addr235:
                                       §§push(this.m_backgroundMusic);
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          addr244:
                                          §§push(BackgroundMusicTracks.MUSIC_HALLWAY);
                                          if(_loc2_)
                                          {
                                             addr248:
                                             if(§§pop() != §§pop())
                                             {
                                                addr249:
                                                §§push(Singleton.dynamicData);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr258:
                                                   §§pop().m_prevBackgroundMusic = this.m_backgroundMusic;
                                                   this.m_isFirstLoad = false;
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr289);
                                                   addr261:
                                                }
                                                addr278:
                                                §§goto(addr281);
                                             }
                                             §§goto(addr261);
                                          }
                                          addr281:
                                          §§goto(addr279);
                                       }
                                       addr279:
                                       §§goto(addr276);
                                    }
                                    §§goto(addr249);
                                 }
                                 addr231:
                                 §§goto(addr233);
                                 §§push(§§pop().m_soundController);
                                 §§push(1);
                              }
                              else
                              {
                                 this.m_allObjects[_loc1_].AddSprite();
                                 _loc1_++;
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                              }
                              addr276:
                              if(Singleton.dynamicData.m_currTransitionID == SpecialRoom.LOBBY_ELEVATOR)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr291:
                                    Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.SetDirectionForStill(OrientationState.ORIENTATION_DOWN);
                                    addr289:
                                 }
                              }
                              return;
                           }
                           break;
                        }
                        §§push(0);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§pop();
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§push(Singleton.dynamicData);
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          §§push(§§pop().m_currFloorOfTower);
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             §§push(0);
                                             if(_loc2_)
                                             {
                                                addr151:
                                                §§push(§§pop() == §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr154:
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || Boolean(_loc1_))
                                                      {
                                                         §§push(Singleton.utility);
                                                         if(_loc2_ || Boolean(_loc1_))
                                                         {
                                                            §§push(§§pop().m_soundController);
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               §§push(0.1);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(3);
                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§pop().FadeCurrentMusic(§§pop(),§§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr193:
                                                                        §§goto(addr233);
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr218);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr218);
                                                               }
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   else
                                                   {
                                                      addr196:
                                                      if(this.m_isBackgroundMusicVolumeLowered)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§push(Singleton.utility);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               §§push(§§pop().m_soundController);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr231);
                                                            }
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      else
                                                      {
                                                         §§push(Singleton.utility);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§goto(addr231);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr248);
                                          }
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr193);
                                 }
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr50);
               }
               else
               {
                  this.CreateObjects();
               }
               §§goto(addr258);
            }
            §§goto(addr50);
         }
         §§goto(addr27);
      }
      
      public function CleanUpSprites() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.m_allObjects.length)
            {
               if(_loc3_)
               {
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.removeChild(this.m_roomBounds);
                  break;
               }
               break;
            }
            this.m_allObjects[_loc1_].Cleanup();
            if(_loc2_ && _loc3_)
            {
               break;
            }
            _loc1_++;
            if(!_loc3_)
            {
               break;
            }
         }
      }
      
      private function LoadLevelFromXMLObject() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc1_:ByteArray = new this.m_xmlFile() as ByteArray;
         if(_loc7_)
         {
            _loc1_.uncompress();
         }
         var _loc2_:XML = new XML(_loc1_);
         if(_loc7_)
         {
            _loc2_.ignoreWhite = true;
            if(!(_loc6_ && Boolean(this)))
            {
               addr44:
               this.m_roomBounds.graphics.beginFill(0);
               if(_loc7_ || Boolean(this))
               {
                  this.m_roomBounds.graphics.drawRect(0,0,_loc2_.@width,_loc2_.@height);
                  §§goto(addr56);
               }
               §§goto(addr86);
            }
            addr56:
            if(_loc7_ || Boolean(_loc3_))
            {
               this.m_roomBounds.graphics.endFill();
               if(!_loc6_)
               {
                  addr86:
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.addChild(this.m_roomBounds);
               }
            }
            for each(_loc3_ in _loc2_.levelObject)
            {
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  this.AddObject(_loc3_.@spriteName,_loc3_.@xPos,_loc3_.@yPos,_loc3_.@xScale,_loc3_.@yScale,_loc3_.@rotation);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function AddObject(param1:String, param2:int = 0, param3:int = 0, param4:Number = 1, param5:Number = 1, param6:Number = 0) : Object
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 6857
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      protected function AddInvisibleWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:WallCollObject;
         (_loc7_ = new WallCollObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(_loc9_ || Boolean(param2))
         {
            this.m_wallCollObjects.push(_loc7_);
            if(!(_loc8_ && Boolean(param3)))
            {
               addr65:
               this.m_allObjects.push(_loc7_);
            }
            return;
         }
         §§goto(addr65);
      }
      
      protected function AddEggeryWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:EggeryExitBlockade;
         (_loc7_ = new EggeryExitBlockade()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(_loc9_)
         {
            this.m_wallCollObjects.push(_loc7_);
            if(!_loc8_)
            {
               this.m_allObjects.push(_loc7_);
            }
         }
      }
      
      protected function AddCourtyardWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:CourtyardExitBlockade;
         (_loc7_ = new CourtyardExitBlockade()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(!_loc8_)
         {
            this.m_wallCollObjects.push(_loc7_);
            if(!(_loc8_ && Boolean(this)))
            {
               addr60:
               this.m_allObjects.push(_loc7_);
            }
            return;
         }
         §§goto(addr60);
      }
      
      protected function AddElevatorWallCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:ElevatorObject;
         (_loc7_ = new ElevatorObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(!(_loc8_ && Boolean(this)))
         {
            this.m_wallCollObjects.push(_loc7_);
            if(!_loc8_)
            {
               addr60:
               this.m_allObjects.push(_loc7_);
            }
            return;
         }
         §§goto(addr60);
      }
      
      protected function AddWallCollVisualObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:WallCollObject;
         (_loc7_ = new WallCollObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(_loc8_ || Boolean(param2))
         {
            this.m_wallCollObjects.push(_loc7_);
            if(!_loc9_)
            {
               this.m_allObjects.push(_loc7_);
            }
         }
      }
      
      protected function AddRegularDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : RegularKeyDoor
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:RegularKeyDoor;
         (_loc7_ = new RegularKeyDoor()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(_loc9_)
         {
            _loc7_.m_interationID = 2;
            if(_loc9_)
            {
               this.m_wallCollObjects.push(_loc7_);
               if(_loc9_ || Boolean(this))
               {
                  this.m_interactionObjects.push(_loc7_);
                  if(_loc9_ || Boolean(param3))
                  {
                     this.m_allObjects.push(_loc7_);
                  }
               }
            }
         }
         return _loc7_;
      }
      
      protected function AddEggeryDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : BossToEggeryDoorWall
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:BossToEggeryDoorWall;
         (_loc7_ = new BossToEggeryDoorWall()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(!(_loc8_ && Boolean(this)))
         {
            _loc7_.m_interationID = 2;
            if(!_loc8_)
            {
               this.m_wallCollObjects.push(_loc7_);
               if(_loc9_ || Boolean(param3))
               {
                  this.m_interactionObjects.push(_loc7_);
                  if(!(_loc8_ && Boolean(param2)))
                  {
                     addr81:
                     this.m_allObjects.push(_loc7_);
                  }
               }
               §§goto(addr81);
            }
            return _loc7_;
         }
         §§goto(addr81);
      }
      
      protected function AddJustVisualTopObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:VisualLevelObjectWithHeight;
         (_loc8_ = new VisualLevelObjectWithHeight()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         if(!(_loc9_ && Boolean(param1)))
         {
            _loc8_.m_activationHieghtPoint = param2;
            if(_loc10_ || Boolean(param1))
            {
               addr63:
               _loc8_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
               if(_loc10_)
               {
                  this.m_visualObjectWithHeight.push(_loc8_);
                  if(_loc10_ || Boolean(this))
                  {
                  }
                  §§goto(addr86);
               }
               this.m_allObjects.push(_loc8_);
            }
            addr86:
            return;
         }
         §§goto(addr63);
      }
      
      protected function AddRoomTransitionCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : RoomTransitionObject
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:RoomTransitionObject;
         (_loc7_ = new RoomTransitionObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(!(_loc9_ && Boolean(param1)))
         {
            this.m_collObjects.push(_loc7_);
            if(_loc8_)
            {
               addr59:
               this.m_allObjects.push(_loc7_);
            }
            return _loc7_;
         }
         §§goto(addr59);
      }
      
      protected function AddExpertRoomTransitionCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : ExpertRoomTransitionObject
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:ExpertRoomTransitionObject;
         (_loc7_ = new ExpertRoomTransitionObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(_loc9_ || Boolean(param2))
         {
            _loc7_.m_transitionID = 1;
            if(!(_loc8_ && Boolean(param1)))
            {
               this.m_collObjects.push(_loc7_);
               if(!_loc8_)
               {
                  addr70:
                  this.m_allObjects.push(_loc7_);
               }
               return _loc7_;
            }
         }
         §§goto(addr70);
      }
      
      protected function AddButtonZoneCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int = 0) : ButtonZone
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:ButtonZone;
         (_loc8_ = new ButtonZone()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(!(_loc9_ && Boolean(param1)))
         {
            _loc8_.m_buttonZoneID = param7;
            if(_loc10_)
            {
               this.m_collObjects.push(_loc8_);
               if(_loc9_)
               {
               }
               §§goto(addr69);
            }
            this.m_allObjects.push(_loc8_);
         }
         addr69:
         return _loc8_;
      }
      
      protected function AddGoldChestCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int = 0) : GoldChest
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc8_:GoldChest;
         (_loc8_ = new GoldChest()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(_loc10_)
         {
            _loc8_.m_arraySpotOfTopObject = this.m_allObjects.length + 1;
            if(!(_loc11_ && Boolean(param2)))
            {
               this.m_collObjects.push(_loc8_);
               if(!(_loc11_ && Boolean(this)))
               {
                  addr65:
                  this.m_allObjects.push(_loc8_);
               }
            }
            var _loc9_:GoldChestTopLayer;
            (_loc9_ = new GoldChestTopLayer()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
            if(!_loc11_)
            {
               _loc9_.m_activationHieghtPoint = 8;
               if(!(_loc11_ && Boolean(param3)))
               {
                  addr106:
                  _loc9_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
                  if(!_loc11_)
                  {
                     §§goto(addr114);
                  }
                  §§goto(addr120);
               }
               addr114:
               this.m_visualObjectWithHeight.push(_loc9_);
               if(!_loc11_)
               {
                  addr120:
                  this.m_allObjects.push(_loc9_);
               }
               return _loc8_;
            }
            §§goto(addr106);
         }
         §§goto(addr65);
      }
      
      protected function AddGemChestCollObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int = 0) : GemChest
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc8_:GemChest;
         (_loc8_ = new GemChest()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(!_loc10_)
         {
            _loc8_.m_arraySpotOfTopObject = this.m_allObjects.length + 1;
            if(_loc11_ || Boolean(this))
            {
               this.m_collObjects.push(_loc8_);
               if(_loc10_)
               {
               }
               §§goto(addr65);
            }
            this.m_allObjects.push(_loc8_);
         }
         addr65:
         var _loc9_:GemChestTopLayer;
         (_loc9_ = new GemChestTopLayer()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         if(_loc11_ || Boolean(this))
         {
            _loc9_.m_activationHieghtPoint = 8;
            if(!(_loc10_ && Boolean(this)))
            {
               _loc9_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
               if(_loc10_ && Boolean(this))
               {
               }
               §§goto(addr130);
            }
            this.m_visualObjectWithHeight.push(_loc9_);
            if(_loc11_)
            {
               this.m_allObjects.push(_loc9_);
            }
         }
         addr130:
         return _loc8_;
      }
      
      protected function AddRoomTransitionGoToPointObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : RoomTransitionEntryPointObject
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:RoomTransitionEntryPointObject;
         (_loc7_ = new RoomTransitionEntryPointObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer,false);
         if(_loc9_)
         {
            this.m_visualObjects.push(_loc7_);
            if(_loc9_ || Boolean(param2))
            {
               addr60:
               this.m_allObjects.push(_loc7_);
            }
            return _loc7_;
         }
         §§goto(addr60);
      }
      
      protected function AddHealStoneObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:HealStone;
         (_loc7_ = new HealStone()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(!(_loc8_ && Boolean(param1)))
         {
            this.m_visualObjects.push(_loc7_);
            if(_loc9_ || Boolean(this))
            {
               this.m_interactionObjects.push(_loc7_);
               if(!(_loc8_ && Boolean(param3)))
               {
                  this.m_allObjects.push(_loc7_);
               }
            }
         }
      }
      
      protected function AddChatBox(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : StandardChatBox
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:StandardChatBox;
         (_loc7_ = new StandardChatBox()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer,false);
         if(_loc8_ || Boolean(this))
         {
            this.m_visualObjects.push(_loc7_);
            if(!_loc9_)
            {
               this.m_allObjects.push(_loc7_);
            }
         }
         return _loc7_;
      }
      
      protected function AddExpertVisualObjectBase(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:ExpertRoomVisualObjectBase;
         (_loc7_ = new ExpertRoomVisualObjectBase()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(_loc9_ || Boolean(this))
         {
            this.m_visualObjects.push(_loc7_);
            if(_loc9_ || Boolean(this))
            {
               this.m_allObjects.push(_loc7_);
            }
         }
      }
      
      protected function AddExpertVisualObjectGlow(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:Boolean) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:ExpertRoomVisualObjectGlow;
         (_loc9_ = new ExpertRoomVisualObjectGlow(param8)).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(!_loc11_)
         {
            this.m_visualObjects.push(_loc9_);
            if(!(_loc11_ && Boolean(this)))
            {
               this.m_allObjects.push(_loc9_);
            }
         }
         var _loc10_:ExpertRoomVisualObjectGlow;
         (_loc10_ = new ExpertRoomVisualObjectGlow(param8)).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         if(_loc12_)
         {
            _loc10_.m_activationHieghtPoint = param2;
            if(!_loc11_)
            {
               _loc10_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
               if(!_loc11_)
               {
                  this.m_visualObjectWithHeight.push(_loc10_);
                  if(!(_loc11_ && Boolean(param3)))
                  {
                     addr109:
                     this.m_allObjects.push(_loc10_);
                  }
               }
               return;
            }
         }
         §§goto(addr109);
      }
      
      protected function AddEggVisualObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:VisualsForEgg;
         (_loc9_ = new VisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(_loc12_)
         {
            _loc9_.m_eggID = param8;
            if(_loc12_)
            {
               §§goto(addr39);
            }
            §§goto(addr45);
         }
         addr39:
         this.m_visualObjects.push(_loc9_);
         if(!_loc11_)
         {
            addr45:
            this.m_allObjects.push(_loc9_);
         }
         var _loc10_:VisualsForEgg;
         (_loc10_ = new VisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         if(!(_loc11_ && Boolean(this)))
         {
            _loc10_.m_activationHieghtPoint = param2;
            if(_loc12_)
            {
               _loc10_.m_eggID = param8;
               if(_loc12_ || Boolean(param3))
               {
               }
               §§goto(addr121);
            }
            _loc10_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
            if(_loc12_)
            {
               this.m_visualObjectWithHeight.push(_loc10_);
               if(_loc12_)
               {
               }
               §§goto(addr121);
            }
            this.m_allObjects.push(_loc10_);
         }
         addr121:
      }
      
      protected function AddTitanEggVisualObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:TitanVisualsForEgg;
         (_loc9_ = new TitanVisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(_loc11_)
         {
            _loc9_.m_eggID = param8;
            if(!_loc12_)
            {
               addr38:
               this.m_visualObjects.push(_loc9_);
               if(!_loc12_)
               {
                  addr44:
                  this.m_allObjects.push(_loc9_);
               }
               var _loc10_:TitanVisualsForEgg;
               (_loc10_ = new TitanVisualsForEgg()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
               if(!_loc12_)
               {
                  _loc10_.m_activationHieghtPoint = param2;
                  if(!(_loc12_ && Boolean(param3)))
                  {
                     _loc10_.m_eggID = param8;
                     if(!_loc12_)
                     {
                        _loc10_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
                        if(!(_loc12_ && Boolean(this)))
                        {
                           addr110:
                           this.m_visualObjectWithHeight.push(_loc10_);
                           if(_loc12_)
                           {
                           }
                           §§goto(addr120);
                        }
                        this.m_allObjects.push(_loc10_);
                     }
                     addr120:
                     return;
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr44);
         }
         §§goto(addr38);
      }
      
      protected function AddVisualsForBossDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:VisualsForBossDoor;
         (_loc7_ = new VisualsForBossDoor()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(_loc9_ || Boolean(param3))
         {
            this.m_visualObjects.push(_loc7_);
            if(!(_loc8_ && Boolean(this)))
            {
               §§goto(addr64);
            }
            §§goto(addr70);
         }
         addr64:
         this.m_interactionObjects.push(_loc7_);
         if(!_loc8_)
         {
            addr70:
            this.m_allObjects.push(_loc7_);
         }
      }
      
      protected function AddVisualsForEggeryDoorObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:BossToEggeryDoorVisuals;
         (_loc7_ = new BossToEggeryDoorVisuals()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(!_loc9_)
         {
            this.m_visualObjects.push(_loc7_);
            if(_loc8_ || Boolean(this))
            {
               this.m_interactionObjects.push(_loc7_);
               if(_loc9_)
               {
               }
               §§goto(addr68);
            }
            this.m_allObjects.push(_loc7_);
         }
         addr68:
      }
      
      protected function AddBackgroundSoundDistanceObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int, param8:Number, param9:Number, param10:int = -99, param11:Boolean = true) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc12_:SoundDistanceObject;
         (_loc12_ = new SoundDistanceObject(param7,param8,param9,param10)).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(_loc14_ || Boolean(this))
         {
            _loc12_.m_isVisible = param11;
            if(_loc14_)
            {
               this.m_visualObjects.push(_loc12_);
               if(!(_loc13_ && Boolean(param3)))
               {
                  this.m_allObjects.push(_loc12_);
                  if(!_loc13_)
                  {
                     this.m_soundDistanceObjects.push(_loc12_);
                  }
               }
            }
         }
      }
      
      protected function AddFireTorch(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:FireTorch;
         (_loc8_ = new FireTorch()).m_numberOfFrames = param7;
         if(_loc10_ || Boolean(param2))
         {
            _loc8_.AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
            if(!_loc9_)
            {
               addr58:
               this.m_animationObjects.push(_loc8_);
               if(!_loc9_)
               {
                  this.m_visualObjects.push(_loc8_);
                  if(!(_loc9_ && Boolean(param3)))
                  {
                     addr75:
                     this.m_allObjects.push(_loc8_);
                  }
                  return;
               }
            }
            §§goto(addr75);
         }
         §§goto(addr58);
      }
      
      protected function AddJustVisualObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:VisualLevelObject;
         (_loc7_ = new VisualLevelObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(!_loc9_)
         {
            this.m_visualObjects.push(_loc7_);
            if(_loc8_)
            {
               addr46:
               this.m_allObjects.push(_loc7_);
            }
            return;
         }
         §§goto(addr46);
      }
      
      protected function AddSplashObject(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:RiverSplashObject;
         (_loc10_ = new RiverSplashObject()).AddSpriteFirstTime(param1,param2,param3,param4,param5,param6,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer);
         if(!(_loc12_ && Boolean(param1)))
         {
            _loc10_.m_initialDelay = param7;
            if(_loc11_ || Boolean(param1))
            {
               _loc10_.m_fadeTime = param8;
               if(_loc11_ || Boolean(param1))
               {
               }
               §§goto(addr88);
            }
            _loc10_.m_isImpact = param9;
            if(!_loc12_)
            {
               this.m_visualObjects.push(_loc10_);
               if(_loc11_ || Boolean(param3))
               {
                  §§goto(addr88);
               }
            }
            §§goto(addr88);
         }
         addr88:
         this.m_allObjects.push(_loc10_);
      }
      
      protected function AddSplashTopObject(param1:String, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc11_:RiverSplashObject;
         (_loc11_ = new RiverSplashObject()).AddSpriteFirstTime(param1,param3,param4,param5,param6,param7,Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer);
         if(!(_loc12_ && Boolean(param1)))
         {
            _loc11_.m_activationHieghtPoint = param2;
            _loc11_.m_initialDelay = param8;
            _loc11_.m_fadeTime = param9;
            _loc11_.m_isImpact = param10;
         }
         _loc11_.m_arraySpotOfBottomObject = this.m_allObjects.length - 1;
         if(_loc13_)
         {
            this.m_visualObjectWithHeight.push(_loc11_);
         }
         this.m_allObjects.push(_loc11_);
      }
      
      public function CheckForLevelCollisionsWithObject(param1:Sprite) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon.visible = false;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_collObjects.length)
         {
            if(Singleton.utility.m_collController.RectDisplayObjectCollision(param1,this.m_collObjects[_loc2_].m_currSprite))
            {
               if(_loc3_)
               {
                  this.m_collObjects[_loc2_].OnColl();
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
            }
            _loc2_++;
            if(_loc4_)
            {
               break;
            }
         }
      }
      
      public function CheckForWallCollisionsWithObject(param1:Sprite) : Rectangle
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ < this.m_wallCollObjects.length)
            {
               if(this.m_wallCollObjects[_loc3_].m_isSolid)
               {
                  if(_loc4_ && Boolean(param1))
                  {
                     continue;
                  }
                  _loc2_ = Singleton.utility.m_collController.RectDisplayObjectCollisionReturnIntersectRect(param1,this.m_wallCollObjects[_loc3_].m_currSprite);
                  §§push(_loc2_.x == 0);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(!§§pop());
                     if(_loc5_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           if(§§pop())
                           {
                              addr81:
                              §§pop();
                              §§push(_loc2_.y != 0);
                              if(!_loc4_)
                              {
                                 addr89:
                                 §§push(§§pop());
                                 if(_loc5_)
                                 {
                                    addr92:
                                    if(§§pop())
                                    {
                                       addr124:
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§pop();
                                          addr105:
                                          §§push(_loc2_.width != 0);
                                       }
                                       if(!§§pop())
                                       {
                                          addr126:
                                          this.m_wallCollObjects[_loc3_].OnColl();
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          addr135:
                                          _loc3_++;
                                          if(!_loc5_)
                                          {
                                             §§goto(addr143);
                                          }
                                          continue;
                                       }
                                       §§goto(addr135);
                                    }
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          §§goto(addr124);
                                          §§push(_loc2_.height == 0);
                                       }
                                       §§goto(addr126);
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr124);
               }
               §§goto(addr135);
            }
            addr143:
            return null;
         }
         return _loc2_;
      }
      
      public function CheckForHeightCollisionsWithObject(param1:Sprite) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc2_:Rectangle = param1.getRect(Singleton.utility.m_stage);
         var _loc4_:int = 0;
         while(_loc4_ < this.m_visualObjectWithHeight.length)
         {
            _loc3_ = this.m_visualObjectWithHeight[_loc4_].m_currSprite.getRect(Singleton.utility.m_stage);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               if(_loc2_.y + _loc2_.height > _loc3_.y + _loc3_.height - this.m_visualObjectWithHeight[_loc4_].m_activationHieghtPoint)
               {
                  addr69:
                  this.m_visualObjectWithHeight[_loc4_].m_currSprite.visible = false;
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     this.m_allObjects[this.m_visualObjectWithHeight[_loc4_].m_arraySpotOfBottomObject].m_currSprite.visible = true;
                     if(!(_loc5_ || Boolean(this)))
                     {
                        this.m_allObjects[this.m_visualObjectWithHeight[_loc4_].m_arraySpotOfBottomObject].m_currSprite.visible = false;
                        addr109:
                        if(!(_loc5_ || Boolean(_loc3_)))
                        {
                           continue;
                        }
                     }
                  }
                  _loc4_++;
                  continue;
               }
               this.m_visualObjectWithHeight[_loc4_].m_currSprite.visible = true;
               §§goto(addr109);
            }
            §§goto(addr69);
         }
      }
      
      public function DoesHaveRoomTransitionObject(param1:int) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:RoomTransitionEntryPointObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            §§push(this.m_visualObjects[_loc2_] is RoomTransitionEntryPointObject);
            if(!_loc5_)
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!(_loc5_ || Boolean(this)))
               {
                  continue;
               }
               _loc3_ = this.m_visualObjects[_loc2_] as RoomTransitionEntryPointObject;
               if(!(_loc4_ && Boolean(param1)))
               {
                  if(_loc3_.m_roomComingFrom == param1)
                  {
                     if(_loc5_)
                     {
                        return true;
                     }
                  }
               }
            }
            _loc2_++;
            if(!(_loc5_ || Boolean(this)))
            {
               break;
            }
         }
         §§goto(addr88);
         §§push(false);
      }
      
      public function GetTheGotoPositionForTheRoom() : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:RoomTransitionEntryPointObject = null;
         var _loc3_:MainChar = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc1_] is RoomTransitionEntryPointObject)
            {
               if(!(_loc4_ || Boolean(_loc1_)))
               {
                  break;
               }
               _loc2_ = this.m_visualObjects[_loc1_] as RoomTransitionEntryPointObject;
               if(_loc4_ || Boolean(_loc3_))
               {
                  if(_loc2_.m_roomComingFrom != Singleton.dynamicData.m_currTransitionID)
                  {
                     continue;
                  }
               }
               _loc3_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
               if(!_loc5_)
               {
                  return new Point(_loc2_.m_currSprite.x - 15,_loc2_.m_currSprite.y - 93 + 27);
               }
            }
            _loc1_++;
            if(!_loc4_)
            {
               break;
            }
         }
         return new Point(1,1);
      }
      
      public function InButtonCollZone(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:BaseInGameInteractionObject = null;
         §§push(this.m_displayKeyPress);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc4_:* = 0;
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc5_ && Boolean(param1)))
            {
               if(§§pop() >= this.m_interactionObjects.length)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(_loc3_ is HealStone);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              _loc2_ = false;
                              addr82:
                              §§push(_loc3_ is RegularKeyDoor);
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || Boolean(this))
                                    {
                                       §§push(Singleton.dynamicData);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop().m_hasUnlockedBossDoor);
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                if(!§§pop())
                                                {
                                                   addr117:
                                                   §§pop();
                                                   §§push(Singleton.dynamicData);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().m_currFloorOfTower);
                                                      if(_loc6_ || Boolean(this))
                                                      {
                                                         break;
                                                      }
                                                      addr233:
                                                      _loc4_ = §§pop();
                                                      §§goto(addr234);
                                                   }
                                                   addr157:
                                                   §§push(§§pop().m_hasUnlockedEggeryDoor);
                                                   if(!_loc5_)
                                                   {
                                                      addr160:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc5_ && Boolean(this)))
                                                         {
                                                            addr169:
                                                            _loc2_ = false;
                                                         }
                                                         addr234:
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            addr259:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= this.m_interactionObjects.length)
                                                               {
                                                                  if(!(_loc5_ && Boolean(_loc3_)))
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               if(this.m_interactionObjects[_loc4_].m_interationID == param1)
                                                               {
                                                                  this.m_interactionObjects[_loc4_].OnInteration();
                                                                  if(!_loc6_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         this.PreformButtonAction(param1);
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                addr141:
                                                if(§§pop())
                                                {
                                                   addr143:
                                                   _loc2_ = false;
                                                   addr144:
                                                   §§push(_loc3_ is BossToEggeryDoorWall);
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr155:
                                                         §§goto(addr157);
                                                         §§push(Singleton.dynamicData);
                                                      }
                                                      addr170:
                                                      §§push(_loc2_);
                                                      if(!(_loc5_ && Boolean(_loc3_)))
                                                      {
                                                         addr178:
                                                         if(§§pop())
                                                         {
                                                            §§push(Singleton.utility);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop().m_screenControllers);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop().m_topDownScreen);
                                                                  if(_loc6_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop().m_topDownMovementScreen);
                                                                     if(_loc6_ || Boolean(param1))
                                                                     {
                                                                        §§push(§§pop().m_actionIcon);
                                                                        if(!(_loc5_ && Boolean(param1)))
                                                                        {
                                                                           §§pop().TryAndReStartAnimation(param1);
                                                                           addr217:
                                                                           §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon);
                                                                        }
                                                                        §§pop().visible = true;
                                                                        §§goto(addr220);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr160);
                                                   addr142:
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr117);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr142);
               }
               else
               {
                  if(this.m_interactionObjects[_loc4_].m_interationID != param1)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     this.m_interactionObjects[_loc4_].OnPotentialInteration();
                     _loc3_ = this.m_interactionObjects[_loc4_];
                     continue;
                  }
               }
               addr220:
               if(Input.kp("ENTER","SPACE"))
               {
                  §§push(0);
                  if(_loc6_ || Boolean(this))
                  {
                     §§goto(addr233);
                  }
                  §§goto(addr259);
               }
               addr273:
               return;
            }
            break;
         }
         §§goto(addr141);
         §§push(§§pop() >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
      }
      
      public function GetChatBoxForButtonZone(param1:int) : StandardChatBox
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:StandardChatBox = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc2_] is StandardChatBox)
            {
               if(_loc4_)
               {
                  continue;
               }
               _loc3_ = this.m_visualObjects[_loc2_] as StandardChatBox;
               if(_loc5_)
               {
                  if(_loc3_.m_chatBoxID == param1)
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            _loc2_++;
            if(!(_loc5_ || Boolean(_loc3_)))
            {
               break;
            }
         }
         return null;
      }
      
      public function GetEggForButtonZone(param1:int) : VisualsForEgg
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:VisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc2_] is VisualsForEgg)
            {
               if(!_loc5_)
               {
                  _loc3_ = this.m_visualObjects[_loc2_] as VisualsForEgg;
                  if(!_loc5_)
                  {
                     if(_loc3_.m_eggID != param1)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  return _loc3_;
               }
               break;
            }
            _loc2_++;
            if(!_loc4_)
            {
               break;
            }
         }
         return null;
      }
      
      public function GetEggOnTopLayerForButtonZone(param1:int) : VisualsForEgg
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:VisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjectWithHeight.length)
         {
            if(this.m_visualObjectWithHeight[_loc2_] is VisualsForEgg)
            {
               if(_loc4_)
               {
                  continue;
               }
               _loc3_ = this.m_visualObjectWithHeight[_loc2_] as VisualsForEgg;
               if(!(_loc4_ && Boolean(param1)))
               {
                  if(_loc3_.m_eggID == param1)
                  {
                     if(!_loc4_)
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            _loc2_++;
            if(!(_loc5_ || Boolean(_loc3_)))
            {
               break;
            }
         }
         return null;
      }
      
      public function GetTitanEggForButtonZone(param1:int) : TitanVisualsForEgg
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TitanVisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc2_] is TitanVisualsForEgg)
            {
               if(_loc4_)
               {
                  break;
               }
               _loc3_ = this.m_visualObjects[_loc2_] as TitanVisualsForEgg;
               if(_loc5_)
               {
                  if(_loc3_.m_eggID == param1)
                  {
                     if(!_loc4_)
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            _loc2_++;
            if(_loc4_)
            {
               break;
            }
         }
         return null;
      }
      
      public function GetTitanEggOnTopLayerForButtonZone(param1:int) : TitanVisualsForEgg
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TitanVisualsForEgg = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualObjectWithHeight.length)
         {
            if(this.m_visualObjectWithHeight[_loc2_] is TitanVisualsForEgg)
            {
               if(_loc4_ && Boolean(this))
               {
                  break;
               }
               _loc3_ = this.m_visualObjectWithHeight[_loc2_] as TitanVisualsForEgg;
               if(_loc5_)
               {
                  if(_loc3_.m_eggID == param1)
                  {
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            _loc2_++;
            if(!(_loc5_ || Boolean(param1)))
            {
               break;
            }
         }
         return null;
      }
      
      public function UpdateSoundDistanceObjects(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_soundDistanceObjects.length)
         {
            this.m_soundDistanceObjects[_loc3_].OnCharMovement(param1,param2);
            if(!_loc4_)
            {
               _loc3_++;
               if(!_loc5_)
               {
                  break;
               }
            }
         }
      }
      
      public function UpdateChatBoxes() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:StandardChatBox = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_visualObjects.length)
         {
            if(this.m_visualObjects[_loc1_] is StandardChatBox)
            {
               if(_loc3_)
               {
                  continue;
               }
               _loc2_ = this.m_visualObjects[_loc1_] as StandardChatBox;
               if(_loc4_)
               {
                  _loc2_.Update();
               }
            }
            _loc1_++;
            if(_loc3_ && Boolean(_loc1_))
            {
               break;
            }
         }
      }
      
      public function UpdateAnimationObjects() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_animationObjects.length)
         {
            this.m_animationObjects[_loc1_].Update();
            if(!_loc2_)
            {
               _loc1_++;
               if(!_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      protected function PreformButtonAction(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc3_:StandardChatBox = null;
         var _loc4_:* = 0;
         if(_loc5_ || Boolean(this))
         {
            if(param1 == 0)
            {
               if(!_loc6_)
               {
                  addr33:
                  Singleton.utility.m_soundController.FadeCurrentMusic(0.5,0.5);
               }
               _loc2_ = Singleton.staticData.m_trainerSystem.LoadTrianer(Singleton.dynamicData.m_currFloorOfTower,Singleton.dynamicData.m_currRoomOfTower);
               _loc3_ = this.GetChatBoxForButtonZone(param1);
               §§push(_loc2_.m_trainerType);
               if(!_loc6_)
               {
                  §§push(TrainerType.HARD_TRAINER);
                  if(_loc5_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || Boolean(this))
                           {
                              §§pop();
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§push(Singleton.dynamicData);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    §§push(§§pop().m_currFloorOfTower);
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       §§push(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             addr119:
                                             if(§§pop())
                                             {
                                                §§push(Singleton.dynamicData);
                                                if(_loc5_)
                                                {
                                                   addr124:
                                                   §§push(§§pop().IsMapUnlocked());
                                                   if(!(_loc6_ && Boolean(param1)))
                                                   {
                                                      addr132:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            _loc3_.SetFunctions(this.BringTheMusicVolumeBackup);
                                                            if(_loc5_)
                                                            {
                                                               _loc3_.BringInWithText("Use the map well.","Qui-tel Trainer");
                                                               §§goto(addr163);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr175:
                                                            _loc3_.SetFunctions(this.GotoTheBattleScreen);
                                                            _loc3_.BringInWithText(_loc2_.m_whatTrainerSaysAtStart_notBeaten,_loc2_.m_trainerName);
                                                            §§push(Singleton.utility);
                                                            if(!(_loc6_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(§§pop().m_screenControllers);
                                                               if(_loc5_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(§§pop().m_topDownScreen);
                                                                  if(_loc5_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop().m_topDownMovementScreen);
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        §§pop().m_returnChatBox = _loc3_;
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr227:
                                                                           Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_returnTrianerForChatBox = _loc2_;
                                                                           if(_loc5_ || Boolean(this))
                                                                           {
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                        addr275:
                                                                        _loc3_.BringInWithText("You already beat me!   Replay me for exp?",_loc2_.m_trainerName);
                                                                        _loc3_.SetNumOfStars(_loc4_);
                                                                        addr290:
                                                                        return;
                                                                        addr280:
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc3_.SetFunctions(this.GiveMap);
                                                         if(_loc5_)
                                                         {
                                                            _loc3_.BringInWithText("Here is a map to help you with this floor.","Qui-tel Trainer");
                                                            addr163:
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   else
                                                   {
                                                      addr174:
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr175);
                                                      }
                                                      else
                                                      {
                                                         _loc3_.SetFunctions(null,this.GotoTheBattleScreen,this.BringTheMusicVolumeBackup);
                                                         addr246:
                                                         §§push(Singleton.dynamicData.GetStarsForCurrentFloorAndRoom());
                                                         if(!(_loc6_ && Boolean(param1)))
                                                         {
                                                            addr254:
                                                            §§push(§§pop());
                                                            if(!_loc6_)
                                                            {
                                                               addr257:
                                                               §§push(§§pop());
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  addr272:
                                                                  _loc4_ = §§pop();
                                                               }
                                                               addr274:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  §§goto(addr275);
                                                               }
                                                               else
                                                               {
                                                                  _loc3_.BringInWithText(_loc2_.m_whatTrainerSaysAtStart_alreadyBeaten,_loc2_.m_trainerName);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr274);
                                                            §§push(3);
                                                         }
                                                         §§goto(addr257);
                                                      }
                                                   }
                                                   §§goto(addr175);
                                                }
                                                else
                                                {
                                                   addr173:
                                                   §§goto(addr174);
                                                   §§push(§§pop().HasBeatenCurrentTrainer());
                                                }
                                                §§goto(addr174);
                                             }
                                             else
                                             {
                                                addr164:
                                                §§push(Singleton.dynamicData);
                                                if(!(_loc6_ && Boolean(_loc2_)))
                                                {
                                                   §§goto(addr173);
                                                }
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr272);
               }
               §§goto(addr257);
            }
            §§goto(addr290);
         }
         §§goto(addr33);
      }
      
      private function GiveMap() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            Singleton.dynamicData.SetIsMapUnlocked(true);
            if(!(_loc1_ && Boolean(this)))
            {
               addr39:
               §§push(Singleton.utility);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§pop().m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheMiniMap();
                  if(!_loc1_)
                  {
                     this.BringTheMusicVolumeBackup();
                     if(_loc2_ || _loc1_)
                     {
                        addr72:
                        Singleton.utility.m_soundController.PlaySound("tower_gettingMap");
                        addr70:
                     }
                     return;
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr39);
      }
      
      private function BringTheMusicVolumeBackup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            Singleton.utility.m_soundController.FadeCurrentMusic(1,0.5);
         }
      }
      
      private function GotoTheBattleScreen() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Singleton.utility);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().m_soundController.FadeCurrentMusic(0,0.5);
               §§goto(addr50);
            }
            §§pop().m_screenControllers.SetSceneTo(GameState.BATTLE_SCREEN,true);
         }
         addr50:
         if(_loc2_ || _loc2_)
         {
            §§push(Singleton.utility);
         }
      }
      
      public function GetLevelObjectAt(param1:int) : VisualLevelObject
      {
         return this.m_allObjects[param1];
      }
      
      private function CheckForCreateRandomNumberGeneratorWithSeed(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            if(this.m_randomNumberGenerator == null)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr38:
                  this.m_randomNumberGenerator = new Random(param1);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
