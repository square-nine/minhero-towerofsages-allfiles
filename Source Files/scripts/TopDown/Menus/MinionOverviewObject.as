package TopDown.Menus
{
   import Minions.BaseMinion;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import SharedObjects.TutorialPopup;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionOverviewObject extends GameObject
   {
       
      
      public var m_backgoundButton:TCButton;
      
      private var m_iconBackground:Sprite;
      
      private var m_minionIcon:Sprite;
      
      private var m_iconMask:Sprite;
      
      private var m_minionNameText:TextField;
      
      private var m_lvText:TextField;
      
      private var m_minionLevelText:TextField;
      
      private var m_textFieldFormat:TextFormat;
      
      private var m_currGems:Vector.<Sprite>;
      
      private var m_currStatBonusIcon:Sprite;
      
      private var m_healthBar:InterfaceBar;
      
      private var m_energyBar:InterfaceBar;
      
      public var m_currMinion:OwnedMinion;
      
      public var m_unspentTalentPointsPopup:TutorialPopup;
      
      private var m_renameButton:TCButton;
      
      private var m_okButton:TCButton;
      
      public function MinionOverviewObject(param1:Function)
      {
         super();
         this.m_backgoundButton = new TCButton(param1,"menus_minionInfo_background");
         addChild(this.m_backgoundButton);
         this.m_healthBar = new InterfaceBar("menus_minionInfo_healthBar_full","menus_minionInfo_healthBar_cap");
         this.m_healthBar.x = 72;
         this.m_healthBar.y = 29;
         addChild(this.m_healthBar);
         this.m_energyBar = new InterfaceBar("menus_minionInfo_energyBar_full","menus_minionInfo_energyBar_cap");
         this.m_energyBar.x = 72;
         this.m_energyBar.y = 42;
         addChild(this.m_energyBar);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 15461355;
         _loc2_.size = 18;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.LEFT;
         this.m_minionNameText = new TextField();
         this.m_minionNameText.x = 72;
         this.m_minionNameText.y = -1;
         this.m_minionNameText.embedFonts = true;
         this.m_minionNameText.defaultTextFormat = _loc2_;
         this.m_minionNameText.text = "temp";
         this.m_minionNameText.width = 180;
         this.m_minionNameText.height = 32;
         this.m_minionNameText.selectable = false;
         addChild(this.m_minionNameText);
         this.m_lvText = new TextField();
         this.m_lvText.x = 286;
         this.m_lvText.y = 56;
         this.m_lvText.embedFonts = true;
         _loc2_.size = 10;
         this.m_lvText.defaultTextFormat = _loc2_;
         this.m_lvText.text = "lv";
         this.m_lvText.width = 50;
         this.m_lvText.selectable = false;
         addChild(this.m_lvText);
         this.m_minionLevelText = new TextField();
         this.m_minionLevelText.x = 301;
         this.m_minionLevelText.y = 42;
         this.m_minionLevelText.embedFonts = true;
         _loc2_.size = 22;
         this.m_minionLevelText.defaultTextFormat = _loc2_;
         this.m_minionLevelText.text = "temp";
         this.m_minionLevelText.width = 50;
         this.m_minionLevelText.selectable = false;
         addChild(this.m_minionLevelText);
         this.m_textFieldFormat = _loc2_;
         this.m_currGems = new Vector.<Sprite>(4);
         var _loc3_:int = 0;
         while(_loc3_ < this.m_currGems.length)
         {
            this.m_currGems[_loc3_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionInfo_emptyGemSlot");
            this.m_currGems[_loc3_].x = 72 + _loc3_ * 20;
            this.m_currGems[_loc3_].y = 53;
            addChild(this.m_currGems[_loc3_]);
            _loc3_++;
         }
         this.m_unspentTalentPointsPopup = new TutorialPopup();
         this.m_unspentTalentPointsPopup.Create("tutorial_newTalentPointsPopup_side");
         this.m_unspentTalentPointsPopup.x = -105;
         this.m_unspentTalentPointsPopup.y = 13;
         addChild(this.m_unspentTalentPointsPopup);
         this.m_renameButton = new TCButton(this.BringInRename,"menus_minionInfo_renameButton");
         this.m_renameButton.x = 257;
         this.m_renameButton.y = 6;
         addChild(this.m_renameButton);
         this.m_renameButton.visible = false;
         this.m_okButton = new TCButton(this.SetTextAsNewName,"menus_minionInfo_doneButton");
         this.m_okButton.x = 257;
         this.m_okButton.y = 6;
         addChild(this.m_okButton);
         this.m_okButton.visible = false;
         this.m_currStatBonusIcon = Singleton.utility.m_spriteHandler.CreateSprite("hud_statBonus_0");
         this.m_currStatBonusIcon.x = 72 + _loc3_ * 20;
         this.m_currStatBonusIcon.y = 56;
         addChild(this.m_currStatBonusIcon);
      }
      
      public function SetMinion(param1:OwnedMinion) : void
      {
         var _loc2_:int = param1.m_minionDexID;
         var _loc3_:BaseMinion = Singleton.staticData.GetBaseMinion(_loc2_);
         this.m_currMinion = param1;
         this.m_iconBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionIcon_background");
         this.m_iconBackground.x = 5;
         this.m_iconBackground.y = 5;
         addChild(this.m_iconBackground);
         this.m_minionIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc3_.m_minionBattleSprite);
         this.m_minionIcon.x = _loc3_.m_minionIconPositioningX;
         this.m_minionIcon.y = _loc3_.m_minionIconPositioningY;
         this.m_minionIcon.cacheAsBitmap = true;
         addChild(this.m_minionIcon);
         this.m_iconMask = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionIcon_mask");
         this.m_iconMask.x = 8;
         this.m_iconMask.y = 8;
         this.m_iconMask.cacheAsBitmap = true;
         addChild(this.m_iconMask);
         this.m_minionIcon.mask = this.m_iconMask;
         this.m_minionLevelText.text = "" + param1.m_currLevel;
         this.m_minionNameText.text = param1.m_minionName;
         this.m_healthBar.SetBarSize(param1.m_currHealthPercentage);
         this.m_energyBar.SetBarSize(param1.m_currEnergyPercentage);
         var _loc4_:int = 0;
         while(_loc4_ < this.m_currGems.length)
         {
            if(this.m_currGems[_loc4_].parent != null)
            {
               this.m_currGems[_loc4_].parent.removeChild(this.m_currGems[_loc4_]);
            }
            if(_loc4_ < param1.m_baseMinion.m_numberOfGems)
            {
               if(param1.GetGemAt(_loc4_) != null)
               {
                  this.m_currGems[_loc4_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionInfo_filledGemSlot");
               }
               else
               {
                  this.m_currGems[_loc4_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionInfo_emptyGemSlot");
               }
               this.m_currGems[_loc4_].x = 72 + _loc4_ * 20;
               this.m_currGems[_loc4_].y = 53;
               addChild(this.m_currGems[_loc4_]);
            }
            _loc4_++;
         }
         removeChild(this.m_currStatBonusIcon);
         this.m_currStatBonusIcon = Singleton.utility.m_spriteHandler.CreateSprite("hud_statBonus_" + param1.m_statBonus);
         this.m_currStatBonusIcon.x = 76 + param1.m_baseMinion.m_numberOfGems * 20;
         this.m_currStatBonusIcon.y = 55;
         addChild(this.m_currStatBonusIcon);
         if(param1.m_currLevel > 9)
         {
            this.m_minionLevelText.scaleX = 0.75;
            this.m_minionLevelText.scaleY = 0.75;
            this.m_minionLevelText.x = 295;
            this.m_minionLevelText.y = 48;
            this.m_lvText.x = 285;
            this.m_lvText.y = 55;
         }
         else
         {
            this.m_minionLevelText.scaleX = 1;
            this.m_minionLevelText.scaleY = 1;
            this.m_minionLevelText.x = 298;
            this.m_minionLevelText.y = 42;
            this.m_lvText.x = 286;
            this.m_lvText.y = 56;
         }
         this.SetupUnspentTalentPointsTutorial(param1);
      }
      
      public function SetupUnspentTalentPointsTutorial(param1:OwnedMinion) : void
      {
         if(param1.m_availableTalentPoints > 0)
         {
            this.m_unspentTalentPointsPopup.visible = true;
         }
         else
         {
            this.m_unspentTalentPointsPopup.visible = false;
         }
      }
      
      public function Cleanup() : void
      {
         if(this.m_iconBackground == null)
         {
            return;
         }
         this.m_minionIcon.mask = null;
         removeChild(this.m_iconBackground);
         removeChild(this.m_minionIcon);
         removeChild(this.m_iconMask);
      }
      
      public function TurnRenameButtonOn() : void
      {
         this.m_renameButton.visible = true;
         this.m_renameButton.alpha = 0;
         TweenLite.to(this.m_renameButton,0.5,{"alpha":1});
      }
      
      public function SnapRenameButtonOn() : void
      {
         this.m_renameButton.visible = true;
         this.m_renameButton.alpha = 1;
      }
      
      public function TurnRenameButtonOff() : void
      {
         this.TurnOffSelectionBox();
         TweenLite.to(this.m_renameButton,0.5,{
            "alpha":0,
            "onComplete":this.FinishTurnRenameButtonOff
         });
      }
      
      private function FinishTurnRenameButtonOff() : void
      {
         this.m_renameButton.visible = false;
      }
      
      private function BringInRename(param1:MouseEvent) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 1053720;
         _loc2_.size = 18;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.LEFT;
         this.m_minionNameText.type = TextFieldType.INPUT;
         this.m_minionNameText.selectable = true;
         this.m_minionNameText.background = true;
         this.m_minionNameText.border = true;
         this.m_minionNameText.backgroundColor = 14474460;
         this.m_minionNameText.defaultTextFormat = _loc2_;
         this.m_minionNameText.setTextFormat(_loc2_);
         this.m_minionNameText.setSelection(0,this.m_minionNameText.text.length);
         this.m_minionNameText.maxChars = 16;
         Singleton.utility.m_stage.focus = this.m_minionNameText;
         this.m_renameButton.visible = false;
         this.m_okButton.visible = true;
      }
      
      public function SetTextAsNewName(param1:MouseEvent = null) : void
      {
         this.m_currMinion.m_minionName = this.m_minionNameText.text;
         this.TurnOffSelectionBox();
      }
      
      public function TurnOffSelectionBox() : void
      {
         this.m_minionNameText.text = this.m_currMinion.m_minionName;
         this.m_minionNameText.type = TextFieldType.DYNAMIC;
         this.m_minionNameText.selectable = false;
         this.m_minionNameText.background = false;
         this.m_minionNameText.border = false;
         this.m_minionNameText.defaultTextFormat = this.m_textFieldFormat;
         this.m_minionNameText.setTextFormat(this.m_textFieldFormat);
         Singleton.utility.m_stage.focus = null;
         this.m_renameButton.visible = true;
         this.m_okButton.visible = false;
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_backgoundButton.m_isActive = true;
      }
      
      public function UpdateRenameButton() : void
      {
         if(this.m_renameButton.visible)
         {
            this.m_renameButton.m_isActive = true;
         }
         if(this.m_okButton.visible)
         {
            this.m_okButton.m_isActive = true;
         }
      }
   }
}
