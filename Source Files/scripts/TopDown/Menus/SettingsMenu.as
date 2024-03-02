package TopDown.Menus
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseInterfacePieces.ToggleButton;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class SettingsMenu extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_innerBackground:Sprite;
      
      private var m_returnButton:TCButton;
      
      private var m_closeButton:TCButton;
      
      private var m_settingsTitle:TextField;
      
      private var m_settingTexts:Vector.<TextField>;
      
      private var m_toggleButtons:Vector.<ToggleButton>;
      
      private var m_graphicSettingIcons:Vector.<Sprite>;
      
      private var m_nextGraphicSettingButton:TCButton;
      
      private var m_prevGraphicSettingButton:TCButton;
      
      public function SettingsMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
         addChild(this.m_background);
         this.m_innerBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_background");
         this.m_innerBackground.x = 17;
         this.m_innerBackground.y = 21;
         addChild(this.m_innerBackground);
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         this.m_returnButton.x = 2;
         this.m_returnButton.y = 356;
         addChild(this.m_returnButton);
         this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
         this.m_closeButton.x = 296;
         this.m_closeButton.y = -22;
         addChild(this.m_closeButton);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16448250;
         _loc1_.size = 28;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_settingsTitle = new TextField();
         this.m_settingsTitle.embedFonts = true;
         this.m_settingsTitle.defaultTextFormat = _loc1_;
         this.m_settingsTitle.wordWrap = true;
         this.m_settingsTitle.autoSize = TextFieldAutoSize.CENTER;
         this.m_settingsTitle.text = "Settings";
         this.m_settingsTitle.width = 150;
         this.m_settingsTitle.x = 107;
         this.m_settingsTitle.y = 40;
         this.m_settingsTitle.selectable = false;
         addChild(this.m_settingsTitle);
         var _loc2_:Array = new Array("Sound","Music","Tips","Quality");
         var _loc3_:Array = new Array(this.SoundButtonToggled,this.MusicButtonToggled,this.TutorialsButtonToggled);
         this.m_settingTexts = new Vector.<TextField>(4);
         this.m_toggleButtons = new Vector.<ToggleButton>(3);
         var _loc4_:int = 0;
         while(_loc4_ < this.m_settingTexts.length)
         {
            this.m_settingTexts[_loc4_] = new TextField();
            this.m_settingTexts[_loc4_].embedFonts = true;
            _loc1_.size = 22;
            _loc1_.align = TextFormatAlign.LEFT;
            this.m_settingTexts[_loc4_].defaultTextFormat = _loc1_;
            this.m_settingTexts[_loc4_].wordWrap = true;
            this.m_settingTexts[_loc4_].autoSize = TextFieldAutoSize.LEFT;
            this.m_settingTexts[_loc4_].text = _loc2_[_loc4_];
            this.m_settingTexts[_loc4_].width = 150;
            this.m_settingTexts[_loc4_].x = 86;
            this.m_settingTexts[_loc4_].y = 84 + _loc4_ * 38;
            this.m_settingTexts[_loc4_].selectable = false;
            addChild(this.m_settingTexts[_loc4_]);
            if(_loc4_ < this.m_toggleButtons.length)
            {
               this.m_toggleButtons[_loc4_] = new ToggleButton(_loc3_[_loc4_],"menus_settings_onButton","menus_settings_offButton");
               this.m_toggleButtons[_loc4_].x = 200;
               this.m_toggleButtons[_loc4_].y = 90 + _loc4_ * 38;
               addChild(this.m_toggleButtons[_loc4_]);
            }
            _loc4_++;
         }
         var _loc5_:Array = new Array("menus_settings_graphicSetting_low","menus_settings_graphicSetting_mid","menus_settings_graphicSetting_high");
         this.m_graphicSettingIcons = new Vector.<Sprite>(3);
         var _loc6_:int = 0;
         while(_loc6_ < this.m_graphicSettingIcons.length)
         {
            this.m_graphicSettingIcons[_loc6_] = Singleton.utility.m_spriteHandler.CreateSprite(_loc5_[_loc6_]);
            this.m_graphicSettingIcons[_loc6_].x = 209;
            this.m_graphicSettingIcons[_loc6_].y = 202;
            addChild(this.m_graphicSettingIcons[_loc6_]);
            _loc6_++;
         }
         this.m_nextGraphicSettingButton = new TCButton(this.NextGraphicSetting,"menus_settings_nextGraphicSetting");
         this.m_nextGraphicSettingButton.x = 262;
         this.m_nextGraphicSettingButton.y = 203;
         addChild(this.m_nextGraphicSettingButton);
         this.m_prevGraphicSettingButton = new TCButton(this.PrevGraphicSetting,"menus_settings_nextGraphicSetting");
         this.m_prevGraphicSettingButton.x = 207;
         this.m_prevGraphicSettingButton.y = 203;
         this.m_prevGraphicSettingButton.scaleX = -1;
         addChild(this.m_prevGraphicSettingButton);
         visible = false;
      }
      
      public function BringIn() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_SETTINGS_MENU;
         this.m_toggleButtons[0].m_isToggleOn = Singleton.dynamicData.m_isSoundOn;
         this.m_toggleButtons[1].m_isToggleOn = Singleton.dynamicData.m_isMusicOn;
         this.m_toggleButtons[2].m_isToggleOn = Singleton.dynamicData.m_areTutorialsOn;
         this.UpdateGraphicAdjuster();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
      }
      
      public function Update() : void
      {
         this.m_closeButton.m_isActive = true;
         this.m_returnButton.m_isActive = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_toggleButtons.length)
         {
            this.m_toggleButtons[_loc1_].Update();
            _loc1_++;
         }
         if(this.m_nextGraphicSettingButton.visible)
         {
            this.m_nextGraphicSettingButton.m_isActive = true;
         }
         if(this.m_prevGraphicSettingButton.visible)
         {
            this.m_prevGraphicSettingButton.m_isActive = true;
         }
      }
      
      public function SoundButtonToggled() : void
      {
         Singleton.dynamicData.m_isSoundOn = this.m_toggleButtons[0].m_isToggleOn;
      }
      
      public function MusicButtonToggled() : void
      {
         Singleton.dynamicData.m_isMusicOn = this.m_toggleButtons[1].m_isToggleOn;
      }
      
      public function TutorialsButtonToggled() : void
      {
         Singleton.dynamicData.m_areTutorialsOn = this.m_toggleButtons[2].m_isToggleOn;
      }
      
      public function NextGraphicSetting(param1:MouseEvent) : void
      {
         ++Singleton.dynamicData.m_graphicsLevel;
         this.UpdateGraphicAdjuster();
      }
      
      public function PrevGraphicSetting(param1:MouseEvent) : void
      {
         --Singleton.dynamicData.m_graphicsLevel;
         this.UpdateGraphicAdjuster();
      }
      
      private function UpdateGraphicAdjuster() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_graphicSettingIcons.length)
         {
            this.m_graphicSettingIcons[_loc1_].visible = false;
            _loc1_++;
         }
         this.m_graphicSettingIcons[Singleton.dynamicData.m_graphicsLevel].visible = true;
         if(Singleton.dynamicData.m_graphicsLevel == 2)
         {
            this.m_nextGraphicSettingButton.visible = false;
         }
         else
         {
            this.m_nextGraphicSettingButton.visible = true;
         }
         if(Singleton.dynamicData.m_graphicsLevel == 0)
         {
            this.m_prevGraphicSettingButton.visible = false;
         }
         else
         {
            this.m_prevGraphicSettingButton.visible = true;
         }
         switch(Singleton.dynamicData.m_graphicsLevel)
         {
            case 0:
               Singleton.utility.m_stage.quality = "low";
               break;
            case 1:
               Singleton.utility.m_stage.quality = "medium";
               break;
            default:
               Singleton.utility.m_stage.quality = "high";
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
   }
}
