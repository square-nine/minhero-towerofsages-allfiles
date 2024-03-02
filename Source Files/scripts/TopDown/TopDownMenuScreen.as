package TopDown
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownMenuState;
   import TopDown.Menus.GemMenu;
   import TopDown.Menus.MinionDetails.MinionDetailsScreen;
   import TopDown.Menus.MinionPedia.MinionPediaMenu;
   import TopDown.Menus.MinionSelectMenu;
   import TopDown.Menus.MinionSelectOptionsMenu;
   import TopDown.Menus.MinionTypeSelectMenu;
   import TopDown.Menus.RootTopDownMenu;
   import TopDown.Menus.SaveMenu;
   import TopDown.Menus.SettingsMenu;
   import TopDown.Menus.TopDownTalentTreeWrapper;
   import TopDown.Menus.YouMenu.YouMenu;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class TopDownMenuScreen
   {
       
      
      public var m_blackBackground:Sprite;
      
      public var m_rootTopDownMenu:RootTopDownMenu;
      
      public var m_minionSelectMenu:MinionSelectMenu;
      
      public var m_minionSelectOptionsMenu:MinionSelectOptionsMenu;
      
      public var m_minionDetailsScreen:MinionDetailsScreen;
      
      public var m_talentTreeScreen:TopDownTalentTreeWrapper;
      
      public var m_gemMenu:GemMenu;
      
      public var m_youMenu:YouMenu;
      
      public var m_minionPedia:MinionPediaMenu;
      
      public var m_settingsMenu:SettingsMenu;
      
      public var m_saveMenu:SaveMenu;
      
      public var m_minionTypeSelectMenu:MinionTypeSelectMenu;
      
      public var m_backgroundNormalSize:Sprite;
      
      private var m_closeButton:TCButton;
      
      public var m_menuState:int;
      
      public function TopDownMenuScreen()
      {
         super();
         this.m_rootTopDownMenu = new RootTopDownMenu();
         this.m_minionSelectMenu = new MinionSelectMenu();
         this.m_minionSelectOptionsMenu = new MinionSelectOptionsMenu();
         this.m_minionDetailsScreen = new MinionDetailsScreen();
         this.m_talentTreeScreen = new TopDownTalentTreeWrapper();
         this.m_gemMenu = new GemMenu();
         this.m_youMenu = new YouMenu();
         this.m_minionPedia = new MinionPediaMenu();
         this.m_settingsMenu = new SettingsMenu();
         this.m_saveMenu = new SaveMenu();
         this.m_minionTypeSelectMenu = new MinionTypeSelectMenu();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Sprite = null;
         _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen;
         this.m_blackBackground = new Sprite();
         this.m_blackBackground.graphics.beginFill(0);
         this.m_blackBackground.graphics.drawRect(0,0,700,525);
         this.m_blackBackground.graphics.endFill();
         this.m_blackBackground.visible = false;
         _loc1_.addChild(this.m_blackBackground);
         this.m_rootTopDownMenu.LoadSprites();
         this.m_rootTopDownMenu.x = 483;
         this.m_rootTopDownMenu.y = 177;
         _loc1_.addChild(this.m_rootTopDownMenu);
         this.m_backgroundNormalSize = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
         this.m_backgroundNormalSize.x = 186 - 18;
         this.m_backgroundNormalSize.y = 77;
         _loc1_.addChild(this.m_backgroundNormalSize);
         this.m_backgroundNormalSize.visible = false;
         this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
         this.m_closeButton.x = 296;
         this.m_closeButton.y = -22;
         this.m_backgroundNormalSize.addChild(this.m_closeButton);
         this.m_minionSelectMenu.LoadSprites();
         this.m_backgroundNormalSize.addChild(this.m_minionSelectMenu);
         this.m_minionSelectOptionsMenu.LoadSprites();
         this.m_minionSelectOptionsMenu.x = 515;
         _loc1_.addChild(this.m_minionSelectOptionsMenu);
         this.m_minionDetailsScreen.LoadSprites();
         this.m_backgroundNormalSize.addChild(this.m_minionDetailsScreen);
         this.m_talentTreeScreen.LoadSprites();
         this.m_backgroundNormalSize.addChild(this.m_talentTreeScreen);
         this.m_gemMenu.LoadSprites();
         this.m_gemMenu.x = 44;
         this.m_gemMenu.y = 102;
         _loc1_.addChild(this.m_gemMenu);
         this.m_youMenu.LoadSprites();
         this.m_youMenu.x = 5;
         this.m_youMenu.y = 41;
         _loc1_.addChild(this.m_youMenu);
         this.m_minionPedia.LoadSprites();
         this.m_minionPedia.x = 5;
         this.m_minionPedia.y = 13;
         _loc1_.addChild(this.m_minionPedia);
         this.m_settingsMenu.LoadSprites();
         this.m_settingsMenu.x = 148;
         this.m_settingsMenu.y = 56;
         _loc1_.addChild(this.m_settingsMenu);
         this.m_saveMenu.LoadSprites();
         this.m_saveMenu.x = 245;
         this.m_saveMenu.y = 156;
         _loc1_.addChild(this.m_saveMenu);
         this.m_minionTypeSelectMenu.LoadSprites();
         _loc1_.addChild(this.m_minionTypeSelectMenu);
      }
      
      public function OpenMenus() : void
      {
         this.m_blackBackground.visible = true;
         this.m_blackBackground.alpha = 0;
         TweenLite.to(this.m_blackBackground,1,{
            "alpha":0.65,
            "onComplete":this.FinishOpeningMenus
         });
         this.m_rootTopDownMenu.BringIn();
         this.m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
      }
      
      private function FinishOpeningMenus() : void
      {
      }
      
      public function BringInBackgroundNormalSized() : void
      {
         this.ApplyMenuBringInAnimation(this.m_backgroundNormalSize);
      }
      
      public function ExitOutBackgroundNormalSized() : void
      {
         this.ApplyMenuExitOutAnimation(this.m_backgroundNormalSize);
      }
      
      public function ApplyMenuBringInAnimation(param1:Sprite) : void
      {
         param1.visible = true;
         param1.alpha = 0;
         param1.scaleX = 0.9;
         param1.scaleY = 0.9;
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(param1,0.1,{}));
         _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         }}));
      }
      
      public function ApplyMenuExitOutAnimation(param1:Sprite) : void
      {
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{
            "alpha":0,
            "scaleX":0.9,
            "scaleY":0.9
         }}));
         _loc2_.append(new TweenLite(param1,0.1,{
            "onComplete":this.NormalTabExitOutFinishAnimation,
            "onCompleteParams":[param1]
         }));
      }
      
      public function ApplyMenuBringInAnimationJustFade(param1:Sprite) : void
      {
         param1.visible = true;
         param1.alpha = 0;
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(param1,0.1,{}));
         _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{"alpha":1}}));
      }
      
      public function ApplyMenuExitOutAnimationJustFade(param1:Sprite) : void
      {
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{"alpha":0}}));
         _loc2_.append(new TweenLite(param1,0.1,{
            "onComplete":this.NormalTabExitOutFinishAnimation,
            "onCompleteParams":[param1]
         }));
      }
      
      private function NormalTabExitOutFinishAnimation(param1:Sprite) : void
      {
         param1.visible = false;
      }
      
      public function CloseButtonPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
      }
      
      public function CloseMenus() : void
      {
         if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_ROOT)
         {
            this.m_rootTopDownMenu.ExitOut();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW)
         {
            this.m_minionSelectMenu.ExitOut();
            this.ExitOutBackgroundNormalSized();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW_POPUP_MENU)
         {
            this.m_minionSelectMenu.ExitOut();
            this.m_minionSelectOptionsMenu.ExitOut();
            this.ExitOutBackgroundNormalSized();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_STATS || this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES || this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS)
         {
            this.m_minionDetailsScreen.ExitOut();
            this.ExitOutBackgroundNormalSized();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_TALENT_TREE)
         {
            this.m_talentTreeScreen.ExitOut();
            this.ExitOutBackgroundNormalSized();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT)
         {
            this.m_gemMenu.ExitOut();
            this.ExitOutBackgroundNormalSized();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_PEDIA_MENU)
         {
            this.m_minionPedia.ExitOut();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_YOU_MENU)
         {
            this.m_youMenu.ExitOut();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_SETTINGS_MENU)
         {
            this.m_settingsMenu.ExitOut();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS)
         {
            this.m_gemMenu.ExitOut();
            this.m_minionDetailsScreen.ExitOut();
            this.ExitOutBackgroundNormalSized();
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_blackBackground,1,{
            "alpha":0,
            "onComplete":this.FinishClosingMenus
         }));
      }
      
      private function FinishClosingMenus() : void
      {
         this.m_blackBackground.visible = false;
      }
      
      public function UpdateFullFrames() : void
      {
         if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_ROOT)
         {
            this.m_rootTopDownMenu.UpdateFullFrames();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW)
         {
            this.m_minionSelectMenu.UpdateFullFrames();
            this.m_closeButton.m_isActive = true;
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW_POPUP_MENU)
         {
            this.m_minionSelectMenu.UpdateFullFrames();
            this.m_closeButton.m_isActive = true;
            this.m_minionSelectOptionsMenu.UpdateFullFrames();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_STATS || this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES || this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS)
         {
            this.m_minionDetailsScreen.UpdateFullFrames();
            this.m_closeButton.m_isActive = true;
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_TALENT_TREE)
         {
            this.m_talentTreeScreen.UpdateFullFrames();
            this.m_closeButton.m_isActive = true;
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_YOU_MENU)
         {
            this.m_youMenu.Update();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_PEDIA_MENU)
         {
            this.m_minionPedia.Update();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_SETTINGS_MENU)
         {
            this.m_settingsMenu.Update();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS)
         {
            this.m_gemMenu.UpdateFullFrames();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_SAVE_MENU)
         {
            this.m_saveMenu.UpdateFullFrames();
         }
         if(this.m_closeButton.m_isActive && Input.kp("ESC"))
         {
            this.CloseButtonPressed(null);
         }
      }
   }
}
