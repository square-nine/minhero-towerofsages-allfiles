package TopDown.Menus.MiniMap
{
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class MiniMap extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_scalerSprite:Sprite;
      
      private var m_mapPieces:Vector.<Sprite>;
      
      private var m_miniMapData:Vector.<MiniMapDataObject>;
      
      private var m_eggeryOverlay:Sprite;
      
      public function MiniMap()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               this.m_mapPieces = new Vector.<Sprite>();
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("miniMap_background");
         addChild(this.m_background);
         this.m_scalerSprite = new Sprite();
         addChild(this.m_scalerSprite);
         this.m_eggeryOverlay = Singleton.utility.m_spriteHandler.CreateSprite("miniMap_eggeryOverlay");
         this.m_scalerSprite.addChild(this.m_eggeryOverlay);
      }
      
      public function CreateMap() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            this.m_miniMapData = Singleton.staticData.GetMiniMapDataForCurrFloor();
            if(_loc2_)
            {
               addr27:
               this.m_scalerSprite.scaleX = Singleton.staticData.GetMiniMapScaleForCurrFloor();
               if(_loc2_)
               {
                  this.m_scalerSprite.scaleY = this.m_scalerSprite.scaleX;
                  if(_loc2_)
                  {
                     addr43:
                     this.m_scalerSprite.x = Singleton.staticData.GetMiniMapPositionForCurrFloor().x + 7;
                     if(_loc2_)
                     {
                        addr54:
                        this.m_scalerSprite.y = Singleton.staticData.GetMiniMapPositionForCurrFloor().y + 7;
                     }
                  }
                  var _loc1_:* = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        if(§§pop() >= this.m_mapPieces.length)
                        {
                           this.m_mapPieces = new Vector.<Sprite>(this.m_miniMapData.length);
                           addr103:
                           §§push(0);
                           if(_loc2_)
                           {
                              _loc1_ = §§pop();
                           }
                           break;
                        }
                        this.m_mapPieces[_loc1_].parent.removeChild(this.m_mapPieces[_loc1_]);
                        if(_loc3_)
                        {
                           while(true)
                           {
                              if(this.m_miniMapData[_loc1_].m_isEggery)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.m_scalerSprite.removeChild(this.m_eggeryOverlay);
                                    if(!_loc3_)
                                    {
                                       this.m_scalerSprite.addChild(this.m_eggeryOverlay);
                                       this.m_eggeryOverlay.x = this.m_miniMapData[_loc1_].m_xPosition;
                                       this.m_eggeryOverlay.y = this.m_miniMapData[_loc1_].m_yPosition;
                                       addr217:
                                       _loc1_++;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr225:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             break loop0;
                                             §§goto(addr217);
                                          }
                                          addr225:
                                       }
                                       break;
                                    }
                                    break;
                                 }
                                 addr230:
                                 this.EnteredNewRoom();
                                 break;
                              }
                              §§goto(addr217);
                           }
                           return;
                           addr169:
                        }
                        continue;
                        §§goto(addr225);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() < this.m_mapPieces.length)
                     {
                        this.m_mapPieces[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_miniMapData[_loc1_].m_spriteName);
                        this.m_mapPieces[_loc1_].x = this.m_miniMapData[_loc1_].m_xPosition;
                        this.m_mapPieces[_loc1_].y = this.m_miniMapData[_loc1_].m_yPosition;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           this.m_mapPieces[_loc1_].alpha = 0.8;
                           this.m_scalerSprite.addChild(this.m_mapPieces[_loc1_]);
                           §§goto(addr169);
                        }
                        break;
                     }
                     break;
                     §§goto(addr225);
                  }
                  §§goto(addr230);
               }
               §§goto(addr54);
            }
            §§goto(addr43);
         }
         §§goto(addr27);
      }
      
      public function EnteredNewRoom() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(0.5);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_groupID;
         if(!_loc4_)
         {
            if(this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_overrideScale != -99)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  TweenLite.to(this.m_scalerSprite,0.05,{
                     "delay":_loc1_,
                     "scaleX":this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_overrideScale,
                     "scaleY":this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_overrideScale
                  });
                  if(!_loc4_)
                  {
                     addr72:
                  }
               }
               §§goto(addr72);
            }
            else
            {
               TweenLite.to(this.m_scalerSprite,0.05,{
                  "delay":_loc1_,
                  "scaleX":Singleton.staticData.GetMiniMapScaleForCurrFloor(),
                  "scaleY":Singleton.staticData.GetMiniMapScaleForCurrFloor()
               });
            }
            var _loc3_:int = 0;
            while(_loc3_ < this.m_mapPieces.length)
            {
               TweenLite.to(this.m_mapPieces[_loc3_],0.05,{
                  "delay":_loc1_,
                  "removeTint":true
               });
               if(this.m_miniMapData[_loc3_].m_groupID != _loc2_)
               {
                  TweenLite.to(this.m_mapPieces[_loc3_],0.05,{
                     "delay":_loc1_,
                     "alpha":0
                  });
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     if(this.m_miniMapData[_loc3_].m_isEggery)
                     {
                        if(_loc4_ && _loc1_)
                        {
                           break;
                        }
                        TweenLite.to(this.m_eggeryOverlay,0.05,{
                           "delay":_loc1_,
                           "alpha":0
                        });
                     }
                  }
                  break;
               }
               if(_loc5_)
               {
                  TweenLite.to(this.m_mapPieces[_loc3_],0.05,{
                     "delay":_loc1_,
                     "alpha":1
                  });
                  if(!(_loc5_ || Boolean(this)))
                  {
                     continue;
                  }
                  if(this.m_miniMapData[_loc3_].m_isEggery)
                  {
                     TweenLite.to(this.m_eggeryOverlay,0.05,{
                        "delay":_loc1_,
                        "alpha":1
                     });
                     if(!(_loc5_ || _loc1_))
                     {
                        continue;
                     }
                  }
               }
               _loc3_++;
            }
            TweenLite.to(this.m_mapPieces[Singleton.dynamicData.m_currRoomOfTower],0.05,{
               "delay":_loc1_ + 0.05,
               "tint":3381759
            });
            return;
         }
         §§goto(addr72);
      }
   }
}
