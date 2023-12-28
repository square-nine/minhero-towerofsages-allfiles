package TopDown.Levels.Grass.Floor1_1
{
   import TopDown.LevelObjects.BaseInGameInteractionObject;
   import TopDown.LevelObjects.ButtonZone;
   import TopDown.LevelObjects.RoomTransitionEntryPointObject;
   import TopDown.LevelObjects.RoomTransitionObject;
   import TopDown.Levels.BaseTopDownLevel;
   import Utilities.Singleton;
   
   public class Room1_1_expertRoom extends BaseTopDownLevel
   {
       
      
      public function Room1_1_expertRoom()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function CreateObjects() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:RoomTransitionObject = null;
         var _loc2_:RoomTransitionEntryPointObject = null;
         var _loc3_:ButtonZone = null;
         var _loc4_:BaseInGameInteractionObject = null;
         if(!_loc5_)
         {
            m_roomBounds.graphics.beginFill(0);
            if(_loc6_ || Boolean(this))
            {
               m_roomBounds.graphics.drawRect(0,0,695.3,676.25);
               if(!_loc5_)
               {
                  m_roomBounds.graphics.endFill();
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.addChild(m_roomBounds);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     AddObject("generalRoom_floorTile",53,546.5,1,1,0);
                     if(_loc6_)
                     {
                        AddObject("generalRoom_floorTile",173,546.5,1,1,0);
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           AddObject("generalRoom_floorTile",293,546.5,1,1,0);
                           AddObject("generalRoom_floorTile",413,546.5,1,1,0);
                           AddObject("generalRoom_floorTile",533,546.5,1,1,0);
                           AddObject("generalRoom_floorTile",73,426.5,1,1,0);
                           addr123:
                           AddObject("generalRoom_floorTile",193,426.5,1,1,0);
                           AddObject("generalRoom_floorTile",313,426.5,1,1,0);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              AddObject("generalRoom_floorTile",433,426.5,1,1,0);
                              if(!_loc5_)
                              {
                                 AddObject("generalRoom_floorTile",553,426.5,0.7868804931640625,1,0);
                                 AddObject("generalRoom_floorTile",57,306.5,1,1,0);
                                 AddObject("generalRoom_floorTile",177,306.5,1,1,0);
                                 AddObject("generalRoom_floorTile",297,306.5,1,1,0);
                                 AddObject("generalRoom_floorTile",417,306.5,1,1,0);
                                 if(_loc6_)
                                 {
                                    AddObject("generalRoom_floorTile",537,306.5,1,1,0);
                                    if(_loc6_ || Boolean(this))
                                    {
                                       AddObject("generalRoom_floorTile",77,186.5,1,1,0);
                                       if(_loc6_)
                                       {
                                          AddObject("generalRoom_floorTile",197,186.5,1,1,0);
                                          if(_loc6_ || Boolean(_loc3_))
                                          {
                                             AddObject("generalRoom_upperLeftCorner",5.55,0,1,1,0);
                                             if(!(_loc5_ && Boolean(_loc3_)))
                                             {
                                                AddObject("generalRoom_floorTile",317,186.5,1,1,0);
                                                addr261:
                                                AddObject("generalRoom_topWall",136.5,-0.05,1,1,0);
                                                if(_loc6_ || Boolean(_loc2_))
                                                {
                                                   addr276:
                                                   AddObject("generalRoom_floorTile",437,186.5,1,1,0);
                                                   AddObject("generalRoom_floorTile",557,186.5,0.7704925537109375,1,0);
                                                   if(!_loc5_)
                                                   {
                                                      AddObject("generalRoom_sideWall",611.5,229,1,0.6888427734375,0);
                                                      AddObject("generalRoom_upperRightCorner",567.5,0.5,1,1,0);
                                                      AddObject("generalRoom_lowerRightCorner",568,508,1,1,0);
                                                      AddObject("generalRoom_bottomWall",133,605.2,1.021575927734375,1,0);
                                                      if(!(_loc5_ && Boolean(_loc2_)))
                                                      {
                                                         AddObject("generalRoom_lowerLeftCorner",4.7,507.65,1,1,0);
                                                      }
                                                      AddObject("generalRoom_sideWall",92.55,229.2,-1,0.6888427734375,0);
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         AddObject("generalRoom_bottomWall",339,605.2,1.138671875,1,0);
                                                         addr364:
                                                         AddObject("generalRoom_topWall",337,-0.05,1.1484222412109375,1,0);
                                                         if(_loc6_ || Boolean(_loc3_))
                                                         {
                                                            AddObject("generalRoom_sideWall",611.5,366,1,0.7140655517578125,0);
                                                            addr379:
                                                            if(_loc6_)
                                                            {
                                                               AddObject("generalRoom_sideWall",92.55,366.2,-1,0.7140655517578125,0);
                                                               if(_loc6_)
                                                               {
                                                                  AddObject("generalRoom_green_floorRunnerTop",258,308,1,1,0);
                                                                  AddObject("generalRoom_green_floorRunnerTop",460,497,1,1,180);
                                                                  if(_loc6_ || Boolean(_loc2_))
                                                                  {
                                                                     AddObject("generalRoom_green_floorRunner_rotationConnect",259,400,1,1,0);
                                                                     addr437:
                                                                     AddObject("generalRoom_genericTapestry_plant",431.5,40,1,1,0);
                                                                     if(!_loc5_)
                                                                     {
                                                                        AddObject("generalRoom_candelabra",537,43.5,1,1,0);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr457:
                                                                           AddObject("generalRoom_detailTapestry_plant",288,41,1,1,0);
                                                                           AddObject("generalRoom_statuePedestal",443.5,220.5,1,1,0);
                                                                           if(!(_loc5_ && Boolean(_loc3_)))
                                                                           {
                                                                              AddObject("generalRoom_genericTapestry_plant",143.5,40,1,1,0);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 AddObject("generalRoom_candelabra",76,43.5,1,1,0);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr500:
                                                                                    AddObject("generalRoom_statuePedestal",183.5,220.5,1,1,0);
                                                                                    AddObject("generalRoom_expertStatue",185.5,184,1,1,0);
                                                                                    if(_loc6_ || Boolean(_loc1_))
                                                                                    {
                                                                                       §§goto(addr523);
                                                                                    }
                                                                                    §§goto(addr546);
                                                                                 }
                                                                                 §§goto(addr652);
                                                                              }
                                                                              §§goto(addr636);
                                                                           }
                                                                           §§goto(addr556);
                                                                        }
                                                                        §§goto(addr500);
                                                                     }
                                                                     §§goto(addr695);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr457);
                                                         }
                                                         §§goto(addr677);
                                                      }
                                                      addr523:
                                                      AddObject("generalRoom_expertStatue",445.5,184,1,1,0);
                                                      AddObject("room_teleporterOff",288.5,499,1,1,0);
                                                      if(!(_loc5_ && Boolean(_loc2_)))
                                                      {
                                                         addr546:
                                                         AddObject("room_expertTeleporter_glow",293,367,1,1,0);
                                                         if(!_loc5_)
                                                         {
                                                            addr556:
                                                            AddObject("generalRoom_sideTorch_plant",611,253,1,1,0);
                                                            if(!(_loc5_ && Boolean(_loc1_)))
                                                            {
                                                               AddObject("generalRoom_sideTorch_plant",611,423,1,1,0);
                                                               AddObject("generalRoom_sideTorch_plant",93,424,-1,1,0);
                                                               AddObject("generalRoom_sideTorch_plant",93,254,-1,1,0);
                                                            }
                                                            §§goto(addr610);
                                                         }
                                                         AddObject("generalRoom_bottomTorch_plant",493,590.5,1,1,0);
                                                         if(_loc6_ || Boolean(_loc1_))
                                                         {
                                                            §§goto(addr610);
                                                         }
                                                         §§goto(addr644);
                                                      }
                                                      addr610:
                                                      AddObject("generalRoom_bottomTorch_plant",133,590.5,1,1,0);
                                                      AddObject("generalRoom_expertEnemy",308,187,1,1,0);
                                                      if(!_loc5_)
                                                      {
                                                         addr628:
                                                         AddObject("collRect",72,169,5.5099945068359375,0.3600006103515625,0);
                                                         addr636:
                                                         AddObject("collRect",567,185,0.3204193115234375,0.55999755859375,0);
                                                         addr644:
                                                         AddObject("collRect",107,185,0.3204193115234375,0.55999755859375,0);
                                                         addr652:
                                                         AddObject("collRect",613,180,0.32000732421875,8.671630859375,0);
                                                         if(_loc6_ || Boolean(_loc2_))
                                                         {
                                                            addr667:
                                                            AddObject("collRect",59,180,0.32000732421875,8.8153076171875,0);
                                                            if(_loc6_)
                                                            {
                                                               addr677:
                                                               AddObject("collRect",82,605,5.5099945068359375,0.55999755859375,0);
                                                            }
                                                         }
                                                         AddObject("collRect",449,269,0.8000030517578125,0.720001220703125,0);
                                                         if(_loc6_)
                                                         {
                                                            addr695:
                                                            AddObject("collRect",189,269,0.8000030517578125,0.720001220703125,0);
                                                         }
                                                      }
                                                      _loc3_ = AddObject("buttonZoneObject",280.05,186,1.5694580078125,1.809295654296875,0) as ButtonZone;
                                                      if(!(_loc5_ && Boolean(_loc3_)))
                                                      {
                                                         _loc3_.m_buttonZoneID = 0;
                                                      }
                                                      AddObject("collRect",328,269.5,0.6199951171875,0.2599945068359375,0);
                                                      if(!(_loc5_ && Boolean(_loc1_)))
                                                      {
                                                         AddObject("expert_entryObject",341,425,1,1,0);
                                                      }
                                                      AddObject("expert_roomTransitionObject",345,517,0.477447509765625,0.477447509765625,0);
                                                      if(!_loc5_)
                                                      {
                                                         AddObject("menus_speechBubble",232,117.5,1,1,0);
                                                      }
                                                      AddObject("grass_music_override",53,581.5,1,1,0);
                                                      return;
                                                   }
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr677);
                                             }
                                             §§goto(addr628);
                                          }
                                          §§goto(addr364);
                                       }
                                       §§goto(addr437);
                                    }
                                    §§goto(addr457);
                                 }
                                 §§goto(addr500);
                              }
                              §§goto(addr628);
                           }
                           §§goto(addr276);
                        }
                        §§goto(addr667);
                     }
                     §§goto(addr628);
                  }
                  §§goto(addr500);
               }
               §§goto(addr261);
            }
            §§goto(addr457);
         }
         §§goto(addr123);
      }
   }
}
