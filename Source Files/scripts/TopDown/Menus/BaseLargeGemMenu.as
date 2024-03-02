package TopDown.Menus
{
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.Gems.GemSelector;
   import States.TopDownStates;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BaseLargeGemMenu extends Sprite
   {
       
      
      protected var m_ad:Sprite;
      
      private var m_moreGamesButton:TCButton;
      
      protected var m_background:Sprite;
      
      protected var m_returnButton:TCButton;
      
      protected var m_gemSelector:GemSelector;
      
      protected var m_npcsGemsBackground:Sprite;
      
      protected var m_playerDetailsBackground:Sprite;
      
      protected var m_playerIcon:Sprite;
      
      protected var m_moneyText:TextField;
      
      protected var m_playersMoneyText:TextField;
      
      public function BaseLargeGemMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         _loc1_.addChild(this.m_background);
         this.m_ad = Singleton.utility.m_spriteHandler.CreateSprite("menus_sponsorMoreGames_background");
         this.m_ad.x = 23;
         this.m_ad.y = 20;
         this.m_background.addChild(this.m_ad);
         this.m_moreGamesButton = new TCButton(this.MoreGamesButtonHasBeenPressed,"menus_sponsorMoreGames_button");
         this.m_moreGamesButton.x = 116;
         this.m_moreGamesButton.y = 197;
         this.m_background.addChild(this.m_moreGamesButton);
         this.m_playerDetailsBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_characterDetailsBackground");
         this.m_playerDetailsBackground.x = 20;
         this.m_playerDetailsBackground.y = 277;
         this.m_background.addChild(this.m_playerDetailsBackground);
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         this.m_returnButton.x = 3;
         this.m_returnButton.y = 409;
         this.m_background.addChild(this.m_returnButton);
         this.m_gemSelector = new GemSelector();
         this.m_gemSelector.LoadSprites();
         this.m_gemSelector.x = 332;
         this.m_gemSelector.y = 15;
         this.m_background.addChild(this.m_gemSelector);
         this.m_npcsGemsBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_npcsGemsBackground");
         this.m_npcsGemsBackground.x = 334;
         this.m_npcsGemsBackground.y = 278;
         this.m_background.addChild(this.m_npcsGemsBackground);
         this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_maleBust_icon");
         this.m_playerIcon.x = 27;
         this.m_playerIcon.y = 302;
         this.m_playerIcon.scaleX = 0.7;
         this.m_playerIcon.scaleY = 0.7;
         this.m_background.addChild(this.m_playerIcon);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 15790320;
         _loc2_.size = 24;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         this.m_moneyText = new TextField();
         this.m_moneyText.embedFonts = true;
         this.m_moneyText.defaultTextFormat = _loc2_;
         this.m_moneyText.wordWrap = true;
         this.m_moneyText.autoSize = TextFieldAutoSize.CENTER;
         this.m_moneyText.text = "Money:";
         this.m_moneyText.x = 109;
         this.m_moneyText.y = 323;
         this.m_moneyText.width = 150;
         this.m_moneyText.selectable = false;
         this.m_background.addChild(this.m_moneyText);
         this.m_playersMoneyText = new TextField();
         this.m_playersMoneyText.embedFonts = true;
         this.m_playersMoneyText.defaultTextFormat = _loc2_;
         this.m_playersMoneyText.wordWrap = true;
         this.m_playersMoneyText.autoSize = TextFieldAutoSize.CENTER;
         this.m_playersMoneyText.text = "$999.99";
         this.m_playersMoneyText.x = 198;
         this.m_playersMoneyText.y = 323;
         this.m_playersMoneyText.width = 150;
         this.m_playersMoneyText.selectable = false;
         this.m_background.addChild(this.m_playersMoneyText);
         this.visible = false;
      }
      
      public function BringIn() : void
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
         this.m_playerIcon.x = 27;
         this.m_playerIcon.y = 302;
         this.m_playerIcon.scaleX = 0.7;
         this.m_playerIcon.scaleY = 0.7;
         this.m_background.addChild(this.m_playerIcon);
         this.m_gemSelector.BringIn();
         this.UpdateAllTheInterfacePieces();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheActionIcon();
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheActionIcon();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
      }
      
      protected function UpdateAllTheInterfacePieces() : void
      {
      }
      
      public function Update() : void
      {
         this.m_returnButton.m_isActive = true;
         this.m_moreGamesButton.m_isActive = true;
         this.m_gemSelector.Update();
      }
      
      private function MoreGamesButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:StaticData = Singleton.staticData;
         var _loc3_:String = _loc2_.m_sponsorURL_part1 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5;
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         navigateToURL(_loc4_);
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
      }
   }
}
