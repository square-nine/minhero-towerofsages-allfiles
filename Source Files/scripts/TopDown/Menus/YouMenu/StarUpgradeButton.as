package TopDown.Menus.YouMenu
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class StarUpgradeButton extends Sprite
   {
       
      
      public var m_starUpgradeButton:TCButton;
      
      private var m_starIcon:Sprite;
      
      private var m_starsText:TextField;
      
      private var m_rankText:TextField;
      
      private var m_position:int;
      
      public function StarUpgradeButton(param1:Function = null, param2:int = 0, param3:String = "menus_youMenu_starUpgradeButtonAttack")
      {
         super();
         this.m_starUpgradeButton = new TCButton(param1,param3);
         this.m_starUpgradeButton.ActivateTooltip("" + param2);
         this.m_position = param2;
      }
      
      public function LoadSprites() : void
      {
         addChild(this.m_starUpgradeButton);
         this.m_starIcon = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryStar");
         this.m_starIcon.x = 41;
         this.m_starIcon.y = 65;
         this.m_starIcon.scaleX = 0.35;
         this.m_starIcon.scaleY = 0.35;
         addChild(this.m_starIcon);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16382457;
         _loc1_.size = 15;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.RIGHT;
         this.m_starsText = new TextField();
         this.m_starsText.embedFonts = true;
         this.m_starsText.defaultTextFormat = _loc1_;
         this.m_starsText.wordWrap = true;
         this.m_starsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_starsText.text = "999";
         this.m_starsText.width = 50;
         this.m_starsText.x = -8;
         this.m_starsText.y = 62;
         this.m_starsText.selectable = false;
         addChild(this.m_starsText);
         this.m_rankText = new TextField();
         this.m_rankText.embedFonts = true;
         _loc1_.size = 13;
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_rankText.defaultTextFormat = _loc1_;
         this.m_rankText.wordWrap = true;
         this.m_rankText.autoSize = TextFieldAutoSize.CENTER;
         this.m_rankText.text = "Rank 99";
         this.m_rankText.width = 70;
         this.m_rankText.x = 3;
         this.m_rankText.y = -18;
         this.m_rankText.selectable = false;
         addChild(this.m_rankText);
      }
      
      public function UpdateInformationNeeded(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array("Increase all your minions health to","Increase all your minions energy to","Increase all your minions attack to","Increase all your minions healing to","Increase all your minions speed to","Increase your movement speed to","Increase your exp to","Extra money is given out");
         var _loc4_:Array = new Array(2,2,2,4,2,10,5,2);
         if(this.m_position == 7)
         {
            this.m_starUpgradeButton.SetPopupText(_loc3_[this.m_position]);
         }
         else
         {
            this.m_starUpgradeButton.SetPopupText(_loc3_[this.m_position] + " " + _loc4_[this.m_position] * (param2 + 1) + "%");
         }
         this.m_starsText.text = "" + param1;
         if(param2 == 0)
         {
            this.m_rankText.text = "";
         }
         else
         {
            this.m_rankText.text = "Rank " + param2;
         }
      }
   }
}
