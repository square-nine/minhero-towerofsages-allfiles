package LevelSelect
{
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class FloorDisplayObject extends Sprite
   {
       
      
      public var m_background:Sprite;
      
      public var m_floorText:TextFromSprites;
      
      public var m_floor:int;
      
      public var m_sageSeal:Sprite;
      
      public var m_levelOverlay:Sprite;
      
      public var m_lockIcon:Sprite;
      
      public function FloorDisplayObject(param1:int)
      {
         super();
         this.m_floor = param1;
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:String = "roomSelect_plantRoom";
         if(this.m_floor > 29)
         {
            _loc1_ = "roomSelect_towerTop";
         }
         else if(this.m_floor > 26)
         {
            _loc1_ = "roomSelect_undeadRoom";
         }
         else if(this.m_floor > 24)
         {
            _loc1_ = "roomSelect_electricRoom";
         }
         else if(this.m_floor > 23)
         {
            _loc1_ = "roomSelect_plantRoom";
         }
         else if(this.m_floor > 21)
         {
            _loc1_ = "roomSelect_fireRoom";
         }
         else if(this.m_floor > 19)
         {
            _loc1_ = "roomSelect_plantRoom";
         }
         else if(this.m_floor > 14)
         {
            _loc1_ = "roomSelect_undeadRoom";
         }
         else if(this.m_floor > 9)
         {
            _loc1_ = "roomSelect_electricRoom";
         }
         else if(this.m_floor > 4)
         {
            _loc1_ = "roomSelect_fireRoom";
         }
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite(_loc1_);
         addChild(this.m_background);
         this.m_floorText = new TextFromSprites();
         this.m_floorText.y = 28;
         addChild(this.m_floorText);
      }
      
      public function SetFloor(param1:int) : void
      {
         var _loc2_:int = param1 / 5 + 1;
         param1 = param1 % 5 + 1;
         var _loc3_:Array = ["generalRoom_plantMedallionStatue","generalRoom_fireMedallionStatue","generalRoom_electricMedallionStatue","generalRoom_undeadMedallionStatue","generalRoom_plantWizardMedallionStatue","generalRoom_undeadWizardMedallionStatue"];
         var _loc4_:Array = ["roomSelect_grassRares","roomSelect_fireRares","roomSelect_electricRares","roomSelect_undeadRares"];
         if(_loc2_ == 7)
         {
            this.m_sageSeal = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_grandSageIcon");
            this.m_sageSeal.x = 52;
            this.m_sageSeal.y = -26;
            addChild(this.m_sageSeal);
         }
         else if(param1 == 5)
         {
            this.m_sageSeal = Singleton.utility.m_spriteHandler.CreateSprite(_loc3_[_loc2_ - 1]);
            this.m_sageSeal.scaleX = 0.8;
            this.m_sageSeal.scaleY = this.m_sageSeal.scaleX;
            this.m_sageSeal.x = 80;
            this.m_sageSeal.y = 32;
            addChild(this.m_sageSeal);
         }
         else if(param1 == 4 && _loc2_ < 5)
         {
            this.m_sageSeal = Singleton.utility.m_spriteHandler.CreateSprite(_loc4_[_loc2_ - 1]);
            this.m_sageSeal.scaleX = 0.8;
            this.m_sageSeal.scaleY = this.m_sageSeal.scaleX;
            this.m_sageSeal.x = 26;
            this.m_sageSeal.y = 20;
            addChild(this.m_sageSeal);
         }
         else
         {
            this.m_floorText.scaleX = 0.9;
            this.m_floorText.scaleY = 0.9;
            this.m_floorText.SetText("" + _loc2_ + "z" + param1);
            this.m_floorText.x = 105 - this.m_floorText.width / 2;
         }
         this.m_levelOverlay = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_towerCovered");
         this.m_levelOverlay.x = 25;
         this.m_levelOverlay.y = 8;
         this.m_levelOverlay.scaleY = 0.99;
         addChild(this.m_levelOverlay);
         this.m_lockIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_towerCoveredLock");
         this.m_lockIcon.x = 83;
         this.m_lockIcon.y = 16;
         addChild(this.m_lockIcon);
         this.m_levelOverlay.visible = true;
         this.m_floorText.visible = false;
      }
      
      public function UpdateFloor(param1:int, param2:Boolean) : void
      {
         if(param1 > 29 || param2)
         {
            this.m_levelOverlay.visible = false;
            this.m_floorText.visible = true;
            this.m_lockIcon.visible = false;
         }
         else if(Singleton.dynamicData.GetHighestStarCount(param1) == 0 && Singleton.dynamicData.GetHasUnlockedFloor(param1))
         {
            TweenLite.to(this,0.1,{
               "delay":2,
               "onComplete":Singleton.utility.m_soundController.PlaySound,
               "onCompleteParams":["tower_doorUnlock",1]
            });
            this.m_levelOverlay.visible = true;
            this.m_levelOverlay.scaleY = 0.99;
            TweenLite.to(this.m_levelOverlay,0.9,{
               "delay":2.7,
               "scaleY":0
            });
            this.m_lockIcon.visible = true;
            this.m_lockIcon.alpha = 1;
            TweenLite.to(this.m_lockIcon,0.5,{
               "delay":2.2,
               "alpha":0
            });
            this.m_floorText.visible = true;
            this.m_floorText.alpha = 0;
            TweenLite.to(this.m_floorText,0.9,{
               "delay":3.3,
               "alpha":1
            });
         }
         else if(Singleton.dynamicData.GetHighestStarCount(param1) > 0)
         {
            this.m_levelOverlay.visible = false;
            this.m_floorText.visible = true;
            this.m_lockIcon.visible = false;
         }
      }
   }
}
