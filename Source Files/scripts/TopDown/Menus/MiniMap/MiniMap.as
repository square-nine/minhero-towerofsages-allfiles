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
         super();
         this.m_mapPieces = new Vector.<Sprite>();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("miniMap_background");
         addChild(this.m_background);
         this.m_scalerSprite = new Sprite();
         addChild(this.m_scalerSprite);
         this.m_eggeryOverlay = Singleton.utility.m_spriteHandler.CreateSprite("miniMap_eggeryOverlay");
         this.m_scalerSprite.addChild(this.m_eggeryOverlay);
      }
      
      public function CreateMap() : void
      {
         this.m_miniMapData = Singleton.staticData.GetMiniMapDataForCurrFloor();
         this.m_scalerSprite.scaleX = Singleton.staticData.GetMiniMapScaleForCurrFloor();
         this.m_scalerSprite.scaleY = this.m_scalerSprite.scaleX;
         this.m_scalerSprite.x = Singleton.staticData.GetMiniMapPositionForCurrFloor().x + 7;
         this.m_scalerSprite.y = Singleton.staticData.GetMiniMapPositionForCurrFloor().y + 7;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_mapPieces.length)
         {
            this.m_mapPieces[_loc1_].parent.removeChild(this.m_mapPieces[_loc1_]);
            _loc1_++;
         }
         this.m_mapPieces = new Vector.<Sprite>(this.m_miniMapData.length);
         _loc1_ = 0;
         while(_loc1_ < this.m_mapPieces.length)
         {
            this.m_mapPieces[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite(this.m_miniMapData[_loc1_].m_spriteName);
            this.m_mapPieces[_loc1_].x = this.m_miniMapData[_loc1_].m_xPosition;
            this.m_mapPieces[_loc1_].y = this.m_miniMapData[_loc1_].m_yPosition;
            this.m_mapPieces[_loc1_].alpha = 0.8;
            this.m_scalerSprite.addChild(this.m_mapPieces[_loc1_]);
            if(this.m_miniMapData[_loc1_].m_isEggery)
            {
               this.m_scalerSprite.removeChild(this.m_eggeryOverlay);
               this.m_scalerSprite.addChild(this.m_eggeryOverlay);
               this.m_eggeryOverlay.x = this.m_miniMapData[_loc1_].m_xPosition;
               this.m_eggeryOverlay.y = this.m_miniMapData[_loc1_].m_yPosition;
            }
            _loc1_++;
         }
         this.EnteredNewRoom();
      }
      
      public function EnteredNewRoom() : void
      {
         var _loc2_:int = this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_groupID;
         if(this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_overrideScale != -99)
         {
            TweenLite.to(this.m_scalerSprite,0.05,{
               "delay":0.5,
               "scaleX":this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_overrideScale,
               "scaleY":this.m_miniMapData[Singleton.dynamicData.m_currRoomOfTower].m_overrideScale
            });
         }
         else
         {
            TweenLite.to(this.m_scalerSprite,0.05,{
               "delay":0.5,
               "scaleX":Singleton.staticData.GetMiniMapScaleForCurrFloor(),
               "scaleY":Singleton.staticData.GetMiniMapScaleForCurrFloor()
            });
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_mapPieces.length)
         {
            TweenLite.to(this.m_mapPieces[_loc3_],0.05,{
               "delay":0.5,
               "removeTint":true
            });
            if(this.m_miniMapData[_loc3_].m_groupID == _loc2_)
            {
               TweenLite.to(this.m_mapPieces[_loc3_],0.05,{
                  "delay":0.5,
                  "alpha":1
               });
               if(this.m_miniMapData[_loc3_].m_isEggery)
               {
                  TweenLite.to(this.m_eggeryOverlay,0.05,{
                     "delay":0.5,
                     "alpha":1
                  });
               }
            }
            else
            {
               TweenLite.to(this.m_mapPieces[_loc3_],0.05,{
                  "delay":0.5,
                  "alpha":0
               });
               if(this.m_miniMapData[_loc3_].m_isEggery)
               {
                  TweenLite.to(this.m_eggeryOverlay,0.05,{
                     "delay":0.5,
                     "alpha":0
                  });
               }
            }
            _loc3_++;
         }
         TweenLite.to(this.m_mapPieces[Singleton.dynamicData.m_currRoomOfTower],0.05,{
            "delay":0.5 + 0.05,
            "tint":3381759
         });
      }
   }
}
