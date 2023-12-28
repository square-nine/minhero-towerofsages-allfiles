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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.m_playerStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStone");
         if(_loc3_)
         {
            this.m_playerStone.x = -164;
            this.m_playerStone.y = -116;
            addChild(this.m_playerStone);
            this.m_enemyStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStone");
            this.m_enemyStone.x = 185;
            this.m_enemyStone.y = -112;
         }
         addChild(this.m_enemyStone);
         if(!_loc2_)
         {
            this.m_playerShieldIcons = new Vector.<Sprite>(3);
         }
         this.m_enemyShieldIcons = new Vector.<Sprite>(3);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_playerShieldIcons.length)
         {
            this.m_playerShieldIcons[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStoneCounterIcon");
            if(!(_loc2_ && _loc3_))
            {
               this.m_playerShieldIcons[_loc1_].x = -132;
               this.m_playerShieldIcons[_loc1_].y = -97 + _loc1_ * 23;
               addChild(this.m_playerShieldIcons[_loc1_]);
               if(_loc3_)
               {
                  this.m_enemyShieldIcons[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStoneCounterIcon");
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               this.m_enemyShieldIcons[_loc1_].x = 217;
               if(!_loc2_)
               {
                  this.m_enemyShieldIcons[_loc1_].y = -93 + _loc1_ * 23;
               }
               addChild(this.m_enemyShieldIcons[_loc1_]);
               _loc1_++;
            }
         }
      }
      
      public function StopAndResetAnimations() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         TweenLite.killTweensOf(this);
         if(_loc3_ || _loc1_)
         {
            TweenLite.killTweensOf(this.m_playerStone);
            if(!(_loc2_ && _loc3_))
            {
               this.m_playerStone.x = -164;
               this.m_playerStone.y = -116;
            }
            TweenLite.killTweensOf(this.m_enemyStone);
            if(_loc3_)
            {
               this.m_enemyStone.x = 185;
            }
            this.m_enemyStone.y = -112;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_playerShieldIcons.length)
         {
            TweenLite.killTweensOf(this.m_playerShieldIcons[_loc1_]);
            if(_loc3_)
            {
               this.m_playerShieldIcons[_loc1_].x = -132;
               this.m_playerShieldIcons[_loc1_].y = -97 + _loc1_ * 23;
               if(_loc3_ || Boolean(this))
               {
                  TweenLite.killTweensOf(this.m_enemyShieldIcons[_loc1_]);
                  if(_loc3_)
                  {
                     this.m_enemyShieldIcons[_loc1_].x = 217;
                     addr107:
                  }
                  this.m_enemyShieldIcons[_loc1_].y = -93 + _loc1_ * 23;
                  if(!_loc2_)
                  {
                     addr132:
                     _loc1_++;
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr107);
            }
            §§goto(addr132);
         }
      }
      
      public function PlayPlayerAnimation() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.ApplyAnimation(this.m_playerStone);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= 3)
            {
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr67);
            }
            this.ApplyAnimation(this.m_playerShieldIcons[_loc1_]);
            if(_loc2_)
            {
               break;
            }
            _loc1_++;
            if(_loc3_ || _loc2_)
            {
               continue;
            }
            §§goto(addr67);
         }
         TweenLite.to(this,3.5,{"onComplete":this.PlayPlayerAnimation});
         addr67:
      }
      
      public function PlayOpponentAnimation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.ApplyAnimation(this.m_enemyStone);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= 3)
            {
               if(_loc2_)
               {
                  addr58:
                  TweenLite.to(this,3.5,{"onComplete":this.PlayOpponentAnimation});
                  break;
               }
               break;
            }
            this.ApplyAnimation(this.m_enemyShieldIcons[_loc1_]);
            if(!_loc2_)
            {
               break;
            }
            _loc1_++;
            if(_loc2_ || _loc3_)
            {
               continue;
            }
            §§goto(addr58);
         }
      }
      
      private function ApplyAnimation(param1:Sprite) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TimelineLite = new TimelineLite();
         if(!_loc4_)
         {
            _loc2_.append(new TweenLite(param1,0.8,{"y":"5"}));
            if(!_loc4_)
            {
               _loc2_.append(new TweenLite(param1,0.9,{"y":"-5"}));
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§goto(addr60);
               }
            }
            §§goto(addr71);
         }
         addr60:
         _loc2_.append(new TweenLite(param1,0.8,{"y":"5"}));
         if(_loc3_)
         {
            addr71:
            _loc2_.append(new TweenLite(param1,0.9,{"y":"-5"}));
         }
      }
      
      public function CheckForActivation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(Singleton.dynamicData.m_currTrainerData.IsModActive(ModStoneTypes.MOD_STONE_SHIELD))
         {
            if(!_loc3_)
            {
               visible = true;
            }
            this.StopAndResetAnimations();
            this.PlayPlayerAnimation();
            if(_loc2_)
            {
               TweenLite.to(this,0.1,{"onComplete":this.PlayOpponentAnimation});
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.m_playerShieldIcons.length)
            {
               this.m_playerShieldIcons[_loc1_].visible = Singleton.dynamicData.m_currTrainerData.m_numOfPlayerShields > _loc1_;
               if(_loc2_)
               {
                  this.m_enemyShieldIcons[_loc1_].visible = Singleton.dynamicData.m_currTrainerData.m_numOfEnemyShields > _loc1_;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               _loc1_++;
               if(!_loc2_)
               {
                  break;
               }
            }
            return;
         }
         visible = false;
         this.StopAndResetAnimations();
      }
   }
}
