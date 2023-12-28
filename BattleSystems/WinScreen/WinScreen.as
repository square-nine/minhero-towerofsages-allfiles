package BattleSystems.WinScreen
{
   import BattleSystems.Other.BaseBattleFinishScreen;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class WinScreen extends BaseBattleFinishScreen
   {
       
      
      public var m_victoryPopup:VictoryPopup;
      
      public function WinScreen()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               addr24:
               this.m_victoryPopup = new VictoryPopup();
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function LoadSprites(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.m_victoryPopup);
            if(_loc3_ || _loc3_)
            {
               §§pop().LoadSprite();
               if(_loc3_ || Boolean(param1))
               {
                  §§goto(addr45);
               }
               §§goto(addr78);
            }
            §§goto(addr70);
         }
         addr45:
         §§push(this.m_victoryPopup);
         if(_loc3_ || Boolean(this))
         {
            §§push(504);
            if(_loc3_)
            {
               §§pop().x = §§pop();
               if(_loc3_)
               {
                  §§goto(addr70);
               }
               §§goto(addr78);
            }
            addr70:
            this.m_victoryPopup.y = 105;
            §§goto(addr69);
         }
         addr69:
         if(_loc3_ || Boolean(param1))
         {
            addr78:
            param1.addChild(this.m_victoryPopup);
            if(_loc3_)
            {
            }
            §§goto(addr87);
         }
         super.LoadSprites(param1);
         addr87:
      }
      
      override public function DeActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.m_victoryPopup.DeActivate();
         }
      }
      
      override public function BringInScreen(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            TweenLite.to(Singleton.utility.m_stage,0.4,{"onComplete":this.PlayVictory});
            if(!(_loc2_ && param1))
            {
               addr40:
               super.BringInScreen(param1);
            }
            return;
         }
         §§goto(addr40);
      }
      
      private function PlayVictory() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            Singleton.utility.m_soundController.PlaySound("battle_victory",0.35);
            if(!_loc2_)
            {
               addr30:
               TweenLite.to(Singleton.utility.m_stage,6,{"onComplete":this.BringBackInBackgroundMusic});
            }
            return;
         }
         §§goto(addr30);
      }
      
      private function BringBackInBackgroundMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            Singleton.utility.m_soundController.FadeCurrentMusic(0.2,0.5);
         }
      }
   }
}
