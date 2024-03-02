package TopDown.Menus
{
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class EggeryMinionDetailsObject extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_minionNameAndLevelText:TextField;
      
      private var m_minionSprite:Sprite;
      
      private var m_minionStatBonusIcon:Sprite;
      
      public function EggeryMinionDetailsObject()
      {
         super();
      }
      
      private function AddMinionSprite(param1:String) : void
      {
         this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite(param1);
         this.m_minionSprite.scaleX = -1;
         this.m_minionSprite.scaleX *= 0.85;
         this.m_minionSprite.scaleY *= 0.85;
         this.m_minionSprite.x = 83 + this.m_minionSprite.width / 2;
         this.m_minionSprite.y = 145 - this.m_minionSprite.height;
         addChild(this.m_minionSprite);
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("eggery_minionDetailsBackground");
         addChild(this.m_background);
         this.AddMinionSprite("fireMage");
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 10464964;
         _loc1_.size = 16;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         this.m_minionNameAndLevelText = new TextField();
         this.m_minionNameAndLevelText.x = 14;
         this.m_minionNameAndLevelText.y = 9;
         this.m_minionNameAndLevelText.embedFonts = true;
         this.m_minionNameAndLevelText.defaultTextFormat = _loc1_;
         this.m_minionNameAndLevelText.text = "lv. 99";
         this.m_minionNameAndLevelText.width = 75;
         this.m_minionNameAndLevelText.selectable = false;
         addChild(this.m_minionNameAndLevelText);
         this.m_minionStatBonusIcon = Singleton.utility.m_spriteHandler.CreateSprite("hud_statBonus_0");
         this.m_minionStatBonusIcon.x = 144;
         this.m_minionStatBonusIcon.y = 144;
         addChild(this.m_minionStatBonusIcon);
         visible = false;
      }
      
      public function BringInWithMinion(param1:OwnedMinion) : void
      {
         removeChild(this.m_minionSprite);
         this.AddMinionSprite(param1.m_baseMinion.m_minionBattleSprite);
         this.m_minionNameAndLevelText.text = "lv. " + param1.m_currLevel;
         visible = true;
         alpha = 0;
         scaleX = 0.9;
         scaleY = 0.9;
         TweenLite.to(this,0.2,{"alpha":1});
         removeChild(this.m_minionStatBonusIcon);
         this.m_minionStatBonusIcon = Singleton.utility.m_spriteHandler.CreateSprite("hud_statBonus_" + param1.m_statBonus);
         this.m_minionStatBonusIcon.x = 144;
         this.m_minionStatBonusIcon.y = 144;
         addChild(this.m_minionStatBonusIcon);
      }
      
      public function ExitOut() : void
      {
         TweenLite.to(this,0.2,{
            "alpha":0,
            "onComplete":this.FinishExitOut
         });
      }
      
      private function FinishExitOut() : void
      {
         visible = false;
      }
   }
}
