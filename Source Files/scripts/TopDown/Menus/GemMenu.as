package TopDown.Menus
{
   import Minions.OwnedMinion;
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.Gems.GemSelector;
   import SharedObjects.Gems.GemVisuals;
   import SharedObjects.Gems.OwnedGem;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import TopDown.Menus.MinionDetails.MinionDetailsScreen;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class GemMenu extends GameObject
   {
       
      
      public var m_blackBackground:Sprite;
      
      private var m_ad:Sprite;
      
      private var m_moreGamesButton:TCButton;
      
      private var m_background:Sprite;
      
      private var m_closeButton:TCButton;
      
      private var m_returnButton:TCButton;
      
      private var m_equipButton:TCButton;
      
      private var m_unEquipButton:TCButton;
      
      private var m_currGemVisuals:GemVisuals;
      
      private var m_currGemButton:TCButton;
      
      private var m_gemSelector:GemSelector;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_currGemPosition:int;
      
      private var m_minionDetailsScreen:MinionDetailsScreen;
      
      public function GemMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_blackBackground = new Sprite();
         this.m_blackBackground.graphics.beginFill(0);
         this.m_blackBackground.graphics.drawRect(0,0,700,525);
         this.m_blackBackground.graphics.endFill();
         this.m_blackBackground.visible = false;
         Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_blackBackground);
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemMenuBackground");
         addChild(this.m_background);
         this.m_ad = Singleton.utility.m_spriteHandler.CreateSprite("menus_sponsorMoreGames_background");
         this.m_ad.x = 23;
         this.m_ad.y = 23;
         this.m_background.addChild(this.m_ad);
         this.m_moreGamesButton = new TCButton(this.MoreGamesButtonHasBeenPressed,"menus_sponsorMoreGames_button");
         this.m_moreGamesButton.x = 111;
         this.m_moreGamesButton.y = 197;
         this.m_background.addChild(this.m_moreGamesButton);
         this.m_gemSelector = new GemSelector();
         this.m_gemSelector.LoadSprites();
         this.m_gemSelector.x = 332;
         this.m_gemSelector.y = 18;
         this.m_background.addChild(this.m_gemSelector);
         this.m_closeButton = new TCButton(this.CloseButtonHasBeenPressed,"menus_exitButton");
         this.m_closeButton.x = 624;
         this.m_closeButton.y = -22;
         this.m_background.addChild(this.m_closeButton);
         this.m_equipButton = new TCButton(this.EquipHasBeenPressed,"menus_gemMenu_equipButton");
         this.m_equipButton.x = 555;
         this.m_equipButton.y = 284;
         this.m_background.addChild(this.m_equipButton);
         this.m_unEquipButton = new TCButton(this.UnEquipHasBeenPressed,"menus_gemMenu_unEquipButton");
         this.m_unEquipButton.x = 325;
         this.m_unEquipButton.y = 287;
         this.m_background.addChild(this.m_unEquipButton);
         this.m_currGemButton = new TCButton(this.NothingFunctionForTooltip,"menus_emptyGemSocket");
         this.m_currGemButton.x = 280;
         this.m_currGemButton.y = 284;
         this.m_currGemButton.ActivateTooltip();
         this.m_currGemButton.visible = false;
         this.m_currGemButton.scaleX = 0.7;
         this.m_currGemButton.scaleY = 0.7;
         this.m_background.addChild(this.m_currGemButton);
         this.m_currGemVisuals = new GemVisuals();
         this.m_currGemVisuals.x = this.m_currGemButton.x;
         this.m_currGemVisuals.y = this.m_currGemButton.y;
         this.m_currGemVisuals.scaleX = this.m_currGemButton.scaleX;
         this.m_currGemVisuals.scaleY = this.m_currGemButton.scaleY;
         this.m_background.addChild(this.m_currGemVisuals);
         this.m_returnButton = new TCButton(this.ReturnButtonHasBeenPressed,"menus_returnButton");
         this.m_returnButton.x = 3;
         this.m_returnButton.y = 291;
         this.m_background.addChild(this.m_returnButton);
         this.m_background.visible = false;
      }
      
      public function BringIn(param1:MinionDetailsScreen, param2:int, param3:OwnedMinion = null, param4:int = -99) : void
      {
         var _loc5_:OwnedGem = null;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = param2;
         this.m_minionDetailsScreen = param1;
         this.m_currMinion = param3;
         this.m_currGemPosition = param4;
         if(this.m_currMinion != null)
         {
            this.m_equipButton.visible = true;
            this.m_blackBackground.visible = true;
            this.m_blackBackground.alpha = 0;
            TweenLite.to(this.m_blackBackground,0.5,{"alpha":0.3});
            this.m_closeButton.visible = false;
         }
         else
         {
            this.m_equipButton.visible = false;
            this.m_blackBackground.visible = false;
            this.m_closeButton.visible = true;
         }
         if(this.m_currGemPosition != -99)
         {
            _loc5_ = this.m_currMinion.GetGemAt(this.m_currGemPosition);
         }
         if(_loc5_ != null)
         {
            this.m_unEquipButton.visible = true;
            this.m_currGemVisuals.visible = true;
            this.m_currGemVisuals.SetGem(_loc5_);
            this.m_currGemButton.SetNewPopupSprite(_loc5_.GetTooltip());
         }
         else
         {
            this.m_unEquipButton.visible = false;
            this.m_currGemVisuals.visible = false;
         }
         this.m_gemSelector.BringIn();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimation(this.m_background);
         if(this.m_currMinion != null)
         {
            TweenLite.to(this.m_blackBackground,0.5,{"alpha":0});
         }
      }
      
      private function NothingFunctionForTooltip(param1:MouseEvent) : void
      {
      }
      
      private function UnEquipHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.dynamicData.AddToOwnedGems(this.m_currMinion.GetGemAt(this.m_currGemPosition));
         this.m_currMinion.SetGemAt(null,this.m_currGemPosition);
         this.ReturnButtonHasBeenPressed(null);
         this.m_minionDetailsScreen.SnapIn(this.m_currMinion);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.JustCallMinionUpdates();
      }
      
      private function EquipHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:int = Singleton.dynamicData.GetGemPosition(this.m_gemSelector.m_selectedGem);
         var _loc3_:OwnedGem = this.m_currMinion.GetGemAt(this.m_currGemPosition);
         this.m_currMinion.SetGemAt(this.m_gemSelector.m_selectedGem,this.m_currGemPosition);
         Singleton.dynamicData.SetGemAt(_loc3_,_loc2_);
         this.ReturnButtonHasBeenPressed(null);
         this.m_minionDetailsScreen.SnapIn(this.m_currMinion);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.JustCallMinionUpdates();
         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS,true);
      }
      
      private function MoreGamesButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:StaticData = Singleton.staticData;
         var _loc3_:String = _loc2_.m_sponsorURL_part1 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5;
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         navigateToURL(_loc4_);
      }
      
      private function CloseButtonHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
      }
      
      private function ReturnButtonHasBeenPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
         if(this.m_currMinion == null)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_rootTopDownMenu.BringIn();
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
         }
         else if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
         }
         else
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS;
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_gemSelector.Update();
         this.m_returnButton.m_isActive = true;
         this.m_moreGamesButton.m_isActive = true;
         if(this.m_currMinion != null)
         {
            if(this.m_gemSelector.m_selectedGem != null)
            {
               this.m_equipButton.m_isActive = true;
               this.m_equipButton.alpha = 1;
            }
            else
            {
               this.m_equipButton.alpha = 0.3;
            }
            if(this.m_currMinion.GetGemAt(this.m_currGemPosition) != null)
            {
               this.m_unEquipButton.m_isActive = true;
               this.m_currGemButton.m_isActive = true;
            }
         }
         else
         {
            this.m_closeButton.m_isActive = true;
         }
      }
   }
}
