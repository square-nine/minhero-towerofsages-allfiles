package MainMenu
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class CharCreationPopup extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_charIcon:Sprite;
      
      private var m_enterNameText:TextField;
      
      private var m_maleSelectButton:TCButton;
      
      private var m_femaleSelectButton:TCButton;
      
      private var m_genderSelectIcon:Sprite;
      
      private var m_okButton:TCButton;
      
      private var m_deleteButton:TCButton;
      
      public function CharCreationPopup()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreationBackground");
         addChild(this.m_background);
         this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_maleIcon_fullSized");
         this.m_charIcon.x = 300;
         this.m_charIcon.y = 17;
         addChild(this.m_charIcon);
         this.m_genderSelectIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_maleFemaleSelectedIcon");
         this.m_genderSelectIcon.x = 143;
         this.m_genderSelectIcon.y = 128;
         addChild(this.m_genderSelectIcon);
         this.m_maleSelectButton = new TCButton(this.SelectMale,"mainMenu_characterCreation_maleIcon");
         this.m_maleSelectButton.x = 143;
         this.m_maleSelectButton.y = 128;
         addChild(this.m_maleSelectButton);
         this.m_femaleSelectButton = new TCButton(this.SelectFeMale,"mainMenu_characterCreation_femaleIcon");
         this.m_femaleSelectButton.x = 188;
         this.m_femaleSelectButton.y = 128;
         addChild(this.m_femaleSelectButton);
         this.m_okButton = new TCButton(this.OkPressed,"mainMenu_characterCreation_okButton");
         this.m_okButton.x = 118;
         this.m_okButton.y = 179;
         addChild(this.m_okButton);
         this.m_deleteButton = new TCButton(this.ClosePressed,"mainMenu_saveSlot_deleteButton");
         this.m_deleteButton.x = 450;
         this.m_deleteButton.y = 13;
         addChild(this.m_deleteButton);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 1053720;
         _loc1_.size = 26;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         this.m_enterNameText = new TextField();
         this.m_enterNameText.embedFonts = true;
         this.m_enterNameText.defaultTextFormat = _loc1_;
         this.m_enterNameText.type = "input";
         this.m_enterNameText.x = 145;
         this.m_enterNameText.y = 81;
         this.m_enterNameText.width = 150;
         this.m_enterNameText.height = 37;
         this.m_enterNameText.border = true;
         this.m_enterNameText.background = true;
         this.m_enterNameText.backgroundColor = 14474460;
         this.m_enterNameText.restrict = "0-9 a-z A-Z";
         this.m_enterNameText.maxChars = 10;
         this.m_enterNameText.text = "Ryder";
         addChild(this.m_enterNameText);
         visible = false;
      }
      
      public function textInputCapture(param1:Event) : void
      {
         this.m_enterNameText.selectable = true;
         Singleton.utility.m_stage.focus = this.m_enterNameText;
      }
      
      public function BringIn() : void
      {
         this.m_enterNameText.visible = true;
         this.m_enterNameText.text = "Ryder";
         this.SelectMale(null);
         this.m_enterNameText.setSelection(this.m_enterNameText.text.length,this.m_enterNameText.text.length);
      }
      
      public function ExitOut() : void
      {
         this.m_enterNameText.visible = false;
         Singleton.utility.m_stage.focus = null;
      }
      
      public function Update() : void
      {
         this.m_maleSelectButton.m_isActive = true;
         this.m_femaleSelectButton.m_isActive = true;
         this.m_okButton.m_isActive = true;
         this.m_deleteButton.m_isActive = true;
      }
      
      private function SelectMale(param1:MouseEvent) : void
      {
         if(this.m_enterNameText.text == "Vala")
         {
            this.m_enterNameText.text = "Ryder";
            this.m_enterNameText.setSelection(this.m_enterNameText.text.length,this.m_enterNameText.text.length);
         }
         Singleton.dynamicData.m_isMale = true;
         this.m_genderSelectIcon.x = this.m_maleSelectButton.x;
         removeChild(this.m_charIcon);
         this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_maleIcon_fullSized");
         this.m_charIcon.x = 306;
         this.m_charIcon.y = 29;
         addChild(this.m_charIcon);
         Singleton.utility.m_stage.focus = this.m_enterNameText;
      }
      
      private function SelectFeMale(param1:MouseEvent) : void
      {
         if(this.m_enterNameText.text == "Ryder")
         {
            this.m_enterNameText.text = "Vala";
            this.m_enterNameText.setSelection(this.m_enterNameText.text.length,this.m_enterNameText.text.length);
         }
         Singleton.dynamicData.m_isMale = false;
         this.m_genderSelectIcon.x = this.m_femaleSelectButton.x;
         removeChild(this.m_charIcon);
         this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_femaleIcon_fullSized");
         this.m_charIcon.x = 306;
         this.m_charIcon.y = 29;
         addChild(this.m_charIcon);
         Singleton.utility.m_stage.focus = this.m_enterNameText;
      }
      
      private function OkPressed(param1:MouseEvent) : void
      {
         Singleton.dynamicData.SetCharName(Singleton.dynamicData.m_saveSlot,this.m_enterNameText.text);
         Singleton.dynamicData.SetIsSaveSlotInUse(Singleton.dynamicData.m_saveSlot,true);
         Singleton.utility.m_screenControllers.m_mainMenuScreen.StartTheEnterGameForTheFirstTimeAnimaiton();
      }
      
      private function ClosePressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_mainMenuScreen.AnimateOutTheCharSelectionScreen();
      }
   }
}
