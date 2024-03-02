package BattleSystems.WinScreen
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class VictoryPopup extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_playerIcon:Sprite;
      
      private var m_stars:Vector.<Sprite>;
      
      public function VictoryPopup()
      {
         super();
         this.m_stars = new Vector.<Sprite>();
      }
      
      public function LoadSprite() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryBackground");
         this.m_background.alpha = 0;
         addChild(this.m_background);
         this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_maleBust_icon");
         this.m_playerIcon.x = 29;
         this.m_playerIcon.y = 112;
         this.m_background.addChild(this.m_playerIcon);
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this.m_stars[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryStar");
            this.m_stars[_loc1_].x = 19 + _loc1_ * 58;
            this.m_stars[_loc1_].y = 66;
            this.m_background.addChild(this.m_stars[_loc1_]);
            _loc1_++;
         }
      }
      
      public function BringInVictoryPopup() : void
      {
         this.m_background.removeChild(this.m_playerIcon);
         if(Singleton.dynamicData.m_isMale)
         {
            this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_maleBust_icon");
         }
         else
         {
            this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_femaleBust_icon");
         }
         this.m_playerIcon.x = 29;
         this.m_playerIcon.y = 112;
         this.m_background.addChild(this.m_playerIcon);
         this.m_background.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_background,0.3,{}));
         _loc1_.append(new TweenLite(this.m_background,0.5,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_background,2.1,{"onComplete":this.CloseOutPopup}));
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            this.m_stars[_loc2_].alpha = 0;
            this.m_stars[_loc2_].scaleX = 0.8;
            this.m_stars[_loc2_].scaleY = 0.8;
            this.m_stars[_loc2_].x = 21 + _loc2_ * 60;
            this.m_stars[_loc2_].y = 66;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < Singleton.dynamicData.GetNumberOfStarsEarnedForTheCurrentTrainer())
         {
            _loc1_ = new TimelineLite();
            _loc1_.append(new TweenLite(this.m_stars[_loc2_],0.8 + _loc2_ * 0.5,{}));
            _loc1_.append(new TweenLite(this.m_stars[_loc2_],0.4,{"transformAroundCenter":{
               "alpha":1,
               "scaleX":1,
               "scaleY":1
            }}));
            _loc2_++;
         }
      }
      
      public function CloseOutPopup() : void
      {
         TweenLite.to(this.m_background,0.5,{"alpha":0});
      }
      
      public function DeActivate() : void
      {
         this.m_background.alpha = 0;
      }
   }
}
