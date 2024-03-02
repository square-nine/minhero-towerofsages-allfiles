package BattleSystems.Visuals.Backgrounds
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BattleBackground
   {
       
      
      private var m_skyBackground:Sprite;
      
      private var m_mountainsBackground:Sprite;
      
      private var m_clouds:Vector.<Sprite>;
      
      private var m_cloudMoveSpeeds:Vector.<Number>;
      
      private var m_cloudXPositions:Vector.<Number>;
      
      private var m_battleTower:Sprite;
      
      private var m_battleTowerHieght:int;
      
      private var m_goldenCity:Sprite;
      
      private var m_otherIslands:Vector.<Sprite>;
      
      private var m_goldenCityPosition:int;
      
      private var m_otherIslandsPositions:Vector.<int>;
      
      private var m_foregroundCloud:Sprite;
      
      private var m_isForegroundCloundActive:Boolean;
      
      private var m_arenaFloor:Sprite;
      
      private var m_arenaGlow:Sprite;
      
      private var m_backgroundPosition:Number;
      
      private var m_currDirection:Number;
      
      public function BattleBackground()
      {
         super();
      }
      
      public function AddBackground(param1:Sprite) : void
      {
         this.m_skyBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_sky");
         param1.addChild(this.m_skyBackground);
         this.m_clouds = new Vector.<Sprite>(5);
         this.m_cloudMoveSpeeds = new Vector.<Number>(this.m_clouds.length);
         this.m_cloudXPositions = new Vector.<Number>(this.m_clouds.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_clouds.length)
         {
            this.m_clouds[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_clouds");
            param1.addChild(this.m_clouds[_loc2_]);
            _loc2_++;
         }
         this.m_cloudXPositions[0] = 0.3;
         this.m_cloudXPositions[1] = 0.6;
         this.m_cloudXPositions[2] = 0.1;
         this.m_cloudXPositions[3] = 0.7;
         this.m_cloudXPositions[4] = 0.9;
         this.m_cloudMoveSpeeds[0] = 1.2;
         this.m_cloudMoveSpeeds[1] = 1;
         this.m_cloudMoveSpeeds[2] = 1;
         this.m_cloudMoveSpeeds[3] = 1.2;
         this.m_cloudMoveSpeeds[4] = 2;
         this.m_mountainsBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_horizon");
         this.m_mountainsBackground.x = -32;
         param1.addChild(this.m_mountainsBackground);
         this.m_otherIslands = new Vector.<Sprite>(2);
         this.m_otherIslandsPositions = new Vector.<int>(2);
         this.m_otherIslands[0] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_smallIsland");
         param1.addChild(this.m_otherIslands[0]);
         this.m_goldenCity = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_city");
         param1.addChild(this.m_goldenCity);
         this.m_otherIslands[1] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_smallIsland");
         param1.addChild(this.m_otherIslands[1]);
         this.m_battleTower = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_mountain");
         param1.addChild(this.m_battleTower);
         this.m_foregroundCloud = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_clouds");
         this.m_foregroundCloud.scaleX = 2;
         this.m_foregroundCloud.scaleY = this.m_foregroundCloud.scaleX;
         this.m_foregroundCloud.x = -380;
         this.m_foregroundCloud.y = -180;
         this.m_foregroundCloud.alpha = 0.7;
         param1.addChild(this.m_foregroundCloud);
         this.m_arenaFloor = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_island");
         this.m_arenaFloor.x = -169;
         this.m_arenaFloor.y = 116;
         param1.addChild(this.m_arenaFloor);
         this.m_arenaGlow = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_lanternGlow");
         this.m_arenaGlow.x = 302;
         this.m_arenaGlow.y = 178;
         param1.addChild(this.m_arenaGlow);
         this.m_backgroundPosition = -55;
      }
      
      public function ShakeScreen(param1:Number, param2:int, param3:Number) : void
      {
         var _loc4_:TimelineLite = new TimelineLite();
         var _loc5_:int = 0;
         while(_loc5_ < param2)
         {
            _loc4_.append(new TweenLite(this.m_arenaFloor,0.05 + param1 * (_loc5_ * 0.5),{"x":"" + param3}));
            _loc4_.append(new TweenLite(this.m_arenaFloor,0.05 + param1 * (_loc5_ * 0.5),{"x":"-" + param3}));
            _loc5_++;
         }
         _loc4_ = new TimelineLite();
         _loc5_ = 0;
         while(_loc5_ < param2)
         {
            _loc4_.append(new TweenLite(this.m_arenaGlow,0.05 + param1 * (_loc5_ * 0.5),{"x":"" + param3}));
            _loc4_.append(new TweenLite(this.m_arenaGlow,0.05 + param1 * (_loc5_ * 0.5),{"x":"-" + param3}));
            _loc5_++;
         }
      }
      
      public function StartTheBringInAnimation() : void
      {
         this.m_currDirection = -1;
         this.GenerateNewRandomPositions();
         this.SetBackgroundPosition(this.m_backgroundPosition);
         this.AnimateGlow();
      }
      
      private function AnimateGlow() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_arenaGlow,1.2,{"alpha":0.5}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,1.2,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,1,{"alpha":0.6}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,1,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,1.8,{"alpha":0.5}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,1.8,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,1,{"alpha":0.5}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,1,{
            "alpha":1,
            "onComplete":this.AnimateGlow
         }));
      }
      
      private function SetBackgroundPosition(param1:Number, param2:int = 0) : void
      {
         this.m_battleTower.x = this.GetActualPosition(this.m_battleTower,-1000,this.m_battleTowerHieght,param1,1.6,0.5,2000);
         var _loc3_:Number = Math.abs(this.m_battleTower.x) / 1000;
         this.m_mountainsBackground.y = 154 - _loc3_ * 15;
         this.m_otherIslands[0].x = this.GetActualPosition(this.m_otherIslands[0],-1250,this.m_otherIslandsPositions[0],param1 * 0.5,1.5 * _loc3_,0.8,2000);
         this.m_otherIslands[0].scaleX *= 0.7;
         this.m_otherIslands[0].scaleY = this.m_otherIslands[0].scaleX;
         this.m_otherIslands[1].x = this.GetActualPosition(this.m_otherIslands[1],-1250,this.m_otherIslandsPositions[1],param1 * 1.1,1.5 * _loc3_,0.8,2000);
         this.m_goldenCity.x = this.GetActualPosition(this.m_goldenCity,-1180,this.m_goldenCityPosition,param1 * 0.3,1.5 * _loc3_,0.8,2000);
         var _loc4_:int = 0;
         while(_loc4_ < this.m_clouds.length)
         {
            this.m_clouds[_loc4_].x = this.GetActualPosition(this.m_clouds[_loc4_],-700,-99,param1 * this.m_cloudMoveSpeeds[_loc4_],-99,this.m_cloudXPositions[_loc4_],1200);
            _loc4_++;
         }
         this.m_foregroundCloud.visible = this.m_isForegroundCloundActive;
         if(this.m_foregroundCloud.visible)
         {
            this.m_foregroundCloud.x = this.GetActualPosition(this.m_foregroundCloud,-700,-99,param1 * 1.1,-99,0.1,3000);
         }
      }
      
      private function GetActualPosition(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number = -99, param6:Number = 0.5, param7:Number = 2000) : Number
      {
         var _loc8_:Number = int(param4 / 360);
         var _loc9_:Number;
         if((_loc9_ = param4 + 360 * param6 - _loc8_ * 360) > 360)
         {
            _loc9_ -= 360;
         }
         if(param5 != -99)
         {
            param5 = 1 + Math.abs(param5 * ((_loc9_ - 180) / 360));
            param5 = int(param5 * 800) / 800;
            param1.scaleX = param5;
            param1.scaleY = param1.scaleX;
            param1.y = param3 + (437 - param1.height) / 2;
         }
         return this.m_currDirection * param2 + this.m_currDirection * (_loc9_ * (param7 / 360));
      }
      
      public function GenerateNewRandomPositions() : void
      {
         var _loc1_:Array = new Array(1,0.8,0.6);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_clouds.length)
         {
            this.m_clouds[_loc2_].y = -59 + Math.random() * 129;
            this.m_clouds[_loc2_].scaleX = _loc1_[int(Math.random() * 3)];
            this.m_clouds[_loc2_].scaleY = this.m_clouds[_loc2_].scaleX;
            _loc2_++;
         }
         this.m_goldenCityPosition = 5 - Math.random() * 150;
         this.m_otherIslandsPositions[0] = -22 - Math.random() * 140;
         this.m_otherIslandsPositions[1] = -22 - Math.random() * 140;
         this.m_battleTowerHieght = -40 - Math.random() * 112;
         this.m_isForegroundCloundActive = Math.random() * 100 < 70;
      }
      
      public function Update() : void
      {
         this.m_backgroundPosition += 0.1;
         this.SetBackgroundPosition(this.m_backgroundPosition);
      }
   }
}
