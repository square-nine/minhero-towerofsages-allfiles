package BattleSystems.WinScreen
{
   import BattleSystems.Visuals.BattleScreenMinionVisual;
   import Minions.BaseMinion;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.BattleScreenStates;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class EvolvingPopup extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_closeButton:TCButton;
      
      private var m_minionOldIcon:Sprite;
      
      private var m_minionNewIcon:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_oldBaseMinion:BaseMinion;
      
      private var m_newBaseMinion:BaseMinion;
      
      private var m_newMinionCoverBackground:Sprite;
      
      private var m_oldMinionMaskBackground:Sprite;
      
      private var m_whatsHappeningText:TextField;
      
      public function EvolvingPopup()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_evolution_popUp");
         this.m_background.x = 9;
         this.m_background.y = 5;
         addChild(this.m_background);
         this.m_closeButton = new TCButton(this.CloseButtonPressed,"battleScreenMenus_evolution_closeButton");
         this.m_closeButton.x = 323;
         this.m_closeButton.y = 7;
         addChild(this.m_closeButton);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16382457;
         _loc1_.size = 17;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         this.m_whatsHappeningText = new TextField();
         this.m_whatsHappeningText.embedFonts = true;
         this.m_whatsHappeningText.x = 31;
         this.m_whatsHappeningText.y = 244;
         this.m_whatsHappeningText.defaultTextFormat = _loc1_;
         this.m_whatsHappeningText.text = "Cactilla is growing...";
         this.m_whatsHappeningText.width = 350;
         this.m_whatsHappeningText.selectable = false;
         addChild(this.m_whatsHappeningText);
         this.visible = false;
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_closeButton.m_isActive = true;
      }
      
      private function CloseButtonPressed(param1:MouseEvent) : void
      {
         TweenLite.killTweensOf(this);
         TweenLite.killTweensOf(this.m_minionOldIcon);
         TweenLite.killTweensOf(this.m_minionNewIcon);
         this.ExitOut();
      }
      
      public function BringInForMinion(param1:OwnedMinion) : void
      {
         this.m_currMinion = param1;
         this.visible = true;
         this.alpha = 0;
         TweenLite.to(this,0.5,{"alpha":1});
         this.m_newBaseMinion = Singleton.staticData.GetBaseMinion(param1.m_minionDexID + 1);
         this.m_minionNewIcon = Singleton.utility.m_spriteHandler.CreateSprite(this.m_newBaseMinion.m_minionBattleSprite);
         addChild(this.m_minionNewIcon);
         this.m_minionNewIcon.x = 96 - this.m_minionNewIcon.width / 2;
         this.m_minionNewIcon.y = 169 - this.m_minionNewIcon.height;
         this.m_newMinionCoverBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_evolution_mask");
         this.m_newMinionCoverBackground.x = 13;
         this.m_newMinionCoverBackground.y = 7;
         addChild(this.m_newMinionCoverBackground);
         this.m_oldBaseMinion = param1.m_baseMinion;
         this.m_minionOldIcon = Singleton.utility.m_spriteHandler.CreateSprite(param1.m_baseMinion.m_minionBattleSprite);
         addChild(this.m_minionOldIcon);
         this.m_minionOldIcon.cacheAsBitmap = true;
         this.m_minionOldIcon.x = 96 - this.m_minionOldIcon.width / 2;
         this.m_minionOldIcon.y = 169 - this.m_minionOldIcon.height;
         this.m_oldMinionMaskBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_evolution_mask");
         this.m_oldMinionMaskBackground.x = 13;
         this.m_oldMinionMaskBackground.y = 7;
         addChild(this.m_oldMinionMaskBackground);
         this.m_oldMinionMaskBackground.cacheAsBitmap = true;
         this.m_minionOldIcon.mask = this.m_oldMinionMaskBackground;
         this.m_whatsHappeningText.text = param1.m_baseMinion.m_baseMinionName + " is growing...";
         this.m_closeButton.visible = true;
         TweenLite.to(this.m_minionOldIcon,2.5,{
            "delay":2,
            "x":"173"
         });
         TweenLite.to(this.m_minionNewIcon,2.5,{
            "delay":2,
            "x":"173",
            "onComplete":this.FinishEvolution
         });
         TweenLite.to(this,2,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_whoosh_magic2"]
         });
         TweenLite.to(this,3.7,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_levelUp",0.2]
         });
      }
      
      private function FinishEvolution() : void
      {
         var _loc2_:BattleScreenMinionVisual = null;
         var _loc3_:BattleScreenMinionVisual = null;
         var _loc1_:* = this.m_currMinion.m_minionName == this.m_currMinion.m_baseMinion.m_baseMinionName;
         ++this.m_currMinion.m_minionDexID;
         if(_loc1_)
         {
            this.m_currMinion.m_minionName = this.m_currMinion.m_baseMinion.m_baseMinionName;
         }
         _loc2_ = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_currMinion);
         _loc2_.Cleanup();
         _loc2_.SetNewMinion(this.m_currMinion,true);
         _loc2_.alpha = 1;
         _loc2_.visible = true;
         _loc2_.TurnOffInterface();
         _loc3_ = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(this.m_currMinion);
         _loc3_.Cleanup();
         _loc2_.alpha = 1;
         _loc2_.visible = true;
         _loc3_.SetNewMinion(this.m_currMinion,true);
         this.m_whatsHappeningText.text = this.m_oldBaseMinion.m_baseMinionName + " has grown into a " + this.m_newBaseMinion.m_baseMinionName + "!";
         this.m_closeButton.visible = false;
         Singleton.dynamicData.SetHasMinionBeenSeen(this.m_newBaseMinion.m_minionDexID,true);
         Singleton.dynamicData.SetIsMinionOwned(this.m_newBaseMinion.m_minionDexID,true);
         TweenLite.to(this,1.5,{"onComplete":this.ExitOut});
      }
      
      public function ExitOut() : void
      {
         TweenLite.to(this,0.5,{
            "alpha":0,
            "onComplete":this.FinishExitOut
         });
      }
      
      private function FinishExitOut() : void
      {
         visible = false;
         this.m_minionOldIcon.mask = null;
         this.m_minionOldIcon.parent.removeChild(this.m_minionOldIcon);
         this.m_minionNewIcon.parent.removeChild(this.m_minionNewIcon);
         if(Singleton.utility.m_screenControllers.m_battleScreen.m_currState == BattleScreenStates.BSS_VICTORY_MENUS)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_winScreen.ExitEvolutionScreen();
         }
         else
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_loseScreen.ExitEvolutionScreen();
         }
      }
   }
}
