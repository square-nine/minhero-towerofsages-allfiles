package TopDown.Menus.YouMenu
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class YouMenu extends Sprite
   {
       
      
      protected var m_background:Sprite;
      
      protected var m_informationBackgroundLeft:Sprite;
      
      protected var m_informationBackgroundRight:Sprite;
      
      protected var m_gemBackground:Sprite;
      
      protected var m_pendantBackground:Sprite;
      
      protected var m_charIcon:Sprite;
      
      private var m_charTextDisplays:Vector.<TextField>;
      
      private var m_charTextInformation:Vector.<TextField>;
      
      private var m_badgesTitle:TextField;
      
      protected var m_gemBadges:Vector.<Sprite>;
      
      protected var m_returnButton:TCButton;
      
      private var m_closeButton:TCButton;
      
      private var m_resetButton:TCButton;
      
      private var m_starIcon:Sprite;
      
      private var m_starsText:TextField;
      
      private var m_starUpgradeButtons:Vector.<StarUpgradeButton>;
      
      public function YouMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         _loc1_.addChild(this.m_background);
         this.m_informationBackgroundLeft = Singleton.utility.m_spriteHandler.CreateSprite("menus_youMenu_yourInformationBackground");
         this.m_informationBackgroundLeft.x = 341 + 3;
         this.m_informationBackgroundLeft.y = 18 + 2;
         _loc1_.addChild(this.m_informationBackgroundLeft);
         this.m_informationBackgroundRight = Singleton.utility.m_spriteHandler.CreateSprite("menus_youMenu_yourInformationBackground");
         this.m_informationBackgroundRight.x = 17 + 3;
         this.m_informationBackgroundRight.y = 18 + 2;
         _loc1_.addChild(this.m_informationBackgroundRight);
         this.m_pendantBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_pendant");
         this.m_pendantBackground.x = 386;
         this.m_pendantBackground.y = 20;
         _loc1_.addChild(this.m_pendantBackground);
         this.m_gemBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_youMenu_gemBackground");
         this.m_gemBackground.x = 15 + 3;
         this.m_gemBackground.y = 149 + 2;
         _loc1_.addChild(this.m_gemBackground);
         this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_male_charIcon");
         this.m_charIcon.x = 35;
         this.m_charIcon.y = 42;
         _loc1_.addChild(this.m_charIcon);
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         this.m_returnButton.x = 3;
         this.m_returnButton.y = 409;
         _loc1_.addChild(this.m_returnButton);
         this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
         this.m_closeButton.x = 624;
         this.m_closeButton.y = -23;
         _loc1_.addChild(this.m_closeButton);
         this.m_resetButton = new TCButton(this.ResetButtonPressed,"menus_youMenu_resetButton");
         this.m_resetButton.x = 493;
         this.m_resetButton.y = 287;
         _loc1_.addChild(this.m_resetButton);
         this.m_starIcon = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryStar");
         this.m_starIcon.x = 546;
         this.m_starIcon.y = 223;
         _loc1_.addChild(this.m_starIcon);
         this.m_charTextDisplays = new Vector.<TextField>(3);
         this.m_charTextInformation = new Vector.<TextField>(3);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 16382457;
         _loc2_.size = 20;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            _loc2_.align = TextFormatAlign.LEFT;
            this.m_charTextDisplays[_loc3_] = new TextField();
            this.m_charTextDisplays[_loc3_].embedFonts = true;
            this.m_charTextDisplays[_loc3_].defaultTextFormat = _loc2_;
            this.m_charTextDisplays[_loc3_].wordWrap = true;
            this.m_charTextDisplays[_loc3_].autoSize = TextFieldAutoSize.CENTER;
            this.m_charTextDisplays[_loc3_].text = "temp";
            this.m_charTextDisplays[_loc3_].width = 150;
            this.m_charTextDisplays[_loc3_].x = 115;
            this.m_charTextDisplays[_loc3_].y = 38 + _loc3_ * 30;
            this.m_charTextDisplays[_loc3_].selectable = false;
            _loc1_.addChild(this.m_charTextDisplays[_loc3_]);
            _loc2_.align = TextFormatAlign.CENTER;
            this.m_charTextInformation[_loc3_] = new TextField();
            this.m_charTextInformation[_loc3_].embedFonts = true;
            this.m_charTextInformation[_loc3_].defaultTextFormat = _loc2_;
            this.m_charTextInformation[_loc3_].wordWrap = true;
            this.m_charTextInformation[_loc3_].autoSize = TextFieldAutoSize.CENTER;
            this.m_charTextInformation[_loc3_].text = "temp";
            this.m_charTextInformation[_loc3_].width = 150;
            this.m_charTextInformation[_loc3_].x = 213;
            this.m_charTextInformation[_loc3_].y = 38 + _loc3_ * 30;
            this.m_charTextInformation[_loc3_].selectable = false;
            _loc1_.addChild(this.m_charTextInformation[_loc3_]);
            _loc3_++;
         }
         this.m_charTextDisplays[0].text = "Name";
         this.m_charTextDisplays[1].text = "Money";
         this.m_charTextDisplays[2].text = "Minion-Pedia";
         this.m_charTextInformation[0].text = "(name)";
         this.m_charTextInformation[1].text = "$100";
         this.m_charTextInformation[2].text = "0";
         this.m_badgesTitle = new TextField();
         this.m_badgesTitle.embedFonts = true;
         this.m_badgesTitle.defaultTextFormat = _loc2_;
         this.m_badgesTitle.wordWrap = true;
         this.m_badgesTitle.autoSize = TextFieldAutoSize.CENTER;
         this.m_badgesTitle.text = "Your Seals";
         this.m_badgesTitle.width = 150;
         this.m_badgesTitle.x = 328;
         this.m_badgesTitle.y = 22;
         this.m_badgesTitle.selectable = false;
         _loc1_.addChild(this.m_badgesTitle);
         this.m_starsText = new TextField();
         this.m_starsText.embedFonts = true;
         _loc2_.size = 40;
         _loc2_.align = TextFormatAlign.RIGHT;
         this.m_starsText.defaultTextFormat = _loc2_;
         this.m_starsText.wordWrap = true;
         this.m_starsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_starsText.text = "999";
         this.m_starsText.width = 150;
         this.m_starsText.x = 395;
         this.m_starsText.y = 226;
         this.m_starsText.selectable = false;
         _loc1_.addChild(this.m_starsText);
         this.m_gemBadges = new Vector.<Sprite>(6);
         var _loc4_:Array = new Array("menus_plantMedallion","menus_fireMedallion","menus_electricMedallion","menus_undeadMedallion","menus_plantWizardMedallion","menus_undeadWizardMedallion");
         var _loc5_:int = 0;
         while(_loc5_ < 6)
         {
            this.m_gemBadges[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(_loc4_[_loc5_]);
            this.m_gemBadges[_loc5_].x = 396 + 28 * _loc5_;
            this.m_gemBadges[_loc5_].y = 62;
            _loc1_.addChild(this.m_gemBadges[_loc5_]);
            _loc5_++;
         }
         this.m_starUpgradeButtons = new Vector.<StarUpgradeButton>(8);
         var _loc6_:Array = new Array(this.StarUpgradeButtonPressed1,this.StarUpgradeButtonPressed2,this.StarUpgradeButtonPressed3,this.StarUpgradeButtonPressed4,this.StarUpgradeButtonPressed5,this.StarUpgradeButtonPressed6,this.StarUpgradeButtonPressed7,this.StarUpgradeButtonPressed8);
         var _loc7_:Array = new Array("menus_youMenu_starUpgradeButtonHealth","menus_youMenu_starUpgradeButtonEnergy","menus_youMenu_starUpgradeButtonAttack","menus_youMenu_starUpgradeButtonHealing","menus_youMenu_starUpgradeButtonMinionSpeed","menus_youMenu_starUpgradeButtonWalkSpeed","menus_youMenu_starUpgradeButtonXP","menus_youMenu_starUpgradeButtonExtraMoney");
         var _loc8_:int = 0;
         while(_loc8_ < 8)
         {
            this.m_starUpgradeButtons[_loc8_] = new StarUpgradeButton(_loc6_[_loc8_],_loc8_,_loc7_[_loc8_]);
            this.m_starUpgradeButtons[_loc8_].LoadSprites();
            _loc1_.addChild(this.m_starUpgradeButtons[_loc8_]);
            if(_loc8_ < 4)
            {
               this.m_starUpgradeButtons[_loc8_].x = 63 + 90 * _loc8_;
               this.m_starUpgradeButtons[_loc8_].y = 182;
            }
            else
            {
               this.m_starUpgradeButtons[_loc8_].x = 63 + 90 * (_loc8_ - 4);
               this.m_starUpgradeButtons[_loc8_].y = 192 + 100;
            }
            _loc8_++;
         }
         this.visible = false;
      }
      
      public function BringIn() : void
      {
         this.removeChild(this.m_charIcon);
         if(Singleton.dynamicData.m_isMale)
         {
            this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_male_charIcon");
         }
         else
         {
            this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_female_charIcon");
         }
         this.m_charIcon.x = 23;
         this.m_charIcon.y = 22;
         this.addChild(this.m_charIcon);
         this.m_charTextInformation[1].text = "$" + Singleton.dynamicData.m_currMoney;
         this.m_charTextInformation[0].text = Singleton.dynamicData.m_characterName;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_YOU_MENU;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
         Singleton.dynamicData.CalculateTotatNumberOfAvailbleStars();
         this.UpdateStars();
         var _loc1_:int = 0;
         while(_loc1_ < 6)
         {
            this.m_gemBadges[_loc1_].visible = false;
            if(_loc1_ < Singleton.dynamicData.GetTotalSageSeals())
            {
               this.m_gemBadges[_loc1_].visible = true;
            }
            _loc1_++;
         }
      }
      
      private function UpdateStars() : void
      {
         this.m_starsText.text = "" + Singleton.dynamicData.m_numOfAvailbleStars;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_starUpgradeButtons.length)
         {
            this.m_starUpgradeButtons[_loc1_].UpdateInformationNeeded(Singleton.dynamicData.GetStarUpgradeCost(_loc1_),Singleton.dynamicData.GetStarUpgradeAmount(_loc1_));
            _loc1_++;
         }
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
      }
      
      public function Update() : void
      {
         this.m_closeButton.m_isActive = true;
         this.m_returnButton.m_isActive = true;
         this.m_resetButton.m_isActive = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_starUpgradeButtons.length)
         {
            this.m_starUpgradeButtons[_loc1_].m_starUpgradeButton.m_isActive = true;
            if(Singleton.dynamicData.m_numOfAvailbleStars >= Singleton.dynamicData.GetStarUpgradeCost(_loc1_))
            {
               this.m_starUpgradeButtons[_loc1_].alpha = 1;
            }
            else
            {
               this.m_starUpgradeButtons[_loc1_].alpha = 0.5;
            }
            _loc1_++;
         }
      }
      
      public function CloseButtonPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_rootTopDownMenu.BringIn();
      }
      
      public function ResetButtonPressed(param1:MouseEvent) : void
      {
         Singleton.dynamicData.ResetStarUpgradeAmounts();
         Singleton.dynamicData.CalculateTotatNumberOfAvailbleStars();
         this.UpdateStars();
      }
      
      public function StarUpgradePressed(param1:int) : void
      {
         if(Singleton.dynamicData.m_numOfAvailbleStars < Singleton.dynamicData.GetStarUpgradeCost(param1))
         {
            return;
         }
         Singleton.dynamicData.m_numOfSpentStars += Singleton.dynamicData.GetStarUpgradeCost(param1);
         Singleton.dynamicData.AddOneToStarUpgradeAmount(param1);
         this.UpdateStars();
      }
      
      public function StarUpgradeButtonPressed1(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(0);
      }
      
      public function StarUpgradeButtonPressed2(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(1);
      }
      
      public function StarUpgradeButtonPressed3(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(2);
      }
      
      public function StarUpgradeButtonPressed4(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(3);
      }
      
      public function StarUpgradeButtonPressed5(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(4);
      }
      
      public function StarUpgradeButtonPressed6(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(5);
      }
      
      public function StarUpgradeButtonPressed7(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(6);
      }
      
      public function StarUpgradeButtonPressed8(param1:MouseEvent) : void
      {
         this.StarUpgradePressed(7);
      }
   }
}
