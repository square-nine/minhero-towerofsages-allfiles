package BattleSystems.Visuals.BattleMods
{
   import States.ModStoneTypes;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class ShieldModVisuals extends Sprite
   {
       
      
      private var m_playerStone:Sprite;
      
      private var m_playerShieldIcons:Vector.<Sprite>;
      
      private var m_enemyStone:Sprite;
      
      private var m_enemyShieldIcons:Vector.<Sprite>;
      
      public function ShieldModVisuals()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_playerStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStone");
         this.m_playerStone.x = -164;
         this.m_playerStone.y = -116;
         addChild(this.m_playerStone);
         this.m_enemyStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStone");
         this.m_enemyStone.x = 185;
         this.m_enemyStone.y = -112;
         addChild(this.m_enemyStone);
         this.m_playerShieldIcons = new Vector.<Sprite>(3);
         this.m_enemyShieldIcons = new Vector.<Sprite>(3);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_playerShieldIcons.length)
         {
            this.m_playerShieldIcons[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStoneCounterIcon");
            this.m_playerShieldIcons[_loc1_].x = -132;
            this.m_playerShieldIcons[_loc1_].y = -97 + _loc1_ * 23;
            addChild(this.m_playerShieldIcons[_loc1_]);
            this.m_enemyShieldIcons[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStoneCounterIcon");
            this.m_enemyShieldIcons[_loc1_].x = 217;
            this.m_enemyShieldIcons[_loc1_].y = -93 + _loc1_ * 23;
            addChild(this.m_enemyShieldIcons[_loc1_]);
            _loc1_++;
         }
      }
      
      public function StopAndResetAnimations() : void
      {
         TweenLite.killTweensOf(this);
         TweenLite.killTweensOf(this.m_playerStone);
         this.m_playerStone.x = -164;
         this.m_playerStone.y = -116;
         TweenLite.killTweensOf(this.m_enemyStone);
         this.m_enemyStone.x = 185;
         this.m_enemyStone.y = -112;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_playerShieldIcons.length)
         {
            TweenLite.killTweensOf(this.m_playerShieldIcons[_loc1_]);
            this.m_playerShieldIcons[_loc1_].x = -132;
            this.m_playerShieldIcons[_loc1_].y = -97 + _loc1_ * 23;
            TweenLite.killTweensOf(this.m_enemyShieldIcons[_loc1_]);
            this.m_enemyShieldIcons[_loc1_].x = 217;
            this.m_enemyShieldIcons[_loc1_].y = -93 + _loc1_ * 23;
            _loc1_++;
         }
      }
      
      public function PlayPlayerAnimation() : void
      {
         this.ApplyAnimation(this.m_playerStone);
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this.ApplyAnimation(this.m_playerShieldIcons[_loc1_]);
            _loc1_++;
         }
         TweenLite.to(this,3.5,{"onComplete":this.PlayPlayerAnimation});
      }
      
      public function PlayOpponentAnimation() : void
      {
         this.ApplyAnimation(this.m_enemyStone);
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this.ApplyAnimation(this.m_enemyShieldIcons[_loc1_]);
            _loc1_++;
         }
         TweenLite.to(this,3.5,{"onComplete":this.PlayOpponentAnimation});
      }
      
      private function ApplyAnimation(param1:Sprite) : void
      {
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(param1,0.8,{"y":"5"}));
         _loc2_.append(new TweenLite(param1,0.9,{"y":"-5"}));
         _loc2_.append(new TweenLite(param1,0.8,{"y":"5"}));
         _loc2_.append(new TweenLite(param1,0.9,{"y":"-5"}));
      }
      
      public function CheckForActivation() : void
      {
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_SHIELD))
         {
            visible = true;
            this.StopAndResetAnimations();
            this.PlayPlayerAnimation();
            TweenLite.to(this,0.1,{"onComplete":this.PlayOpponentAnimation});
            var _loc1_:int = 0;
            while(_loc1_ < this.m_playerShieldIcons.length)
            {
               this.m_playerShieldIcons[_loc1_].visible = Singleton.dynamicData.m_currTrainerData.m_numOfPlayerShields > _loc1_;
               this.m_enemyShieldIcons[_loc1_].visible = Singleton.dynamicData.m_currTrainerData.m_numOfEnemyShields > _loc1_;
               _loc1_++;
            }
            return;
         }
         visible = false;
         this.StopAndResetAnimations();
      }
   }
}
