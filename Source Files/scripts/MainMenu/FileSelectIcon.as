package MainMenu
{
   import SharedObjects.BaseInterfacePieces.ConformationBox;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class FileSelectIcon extends Sprite
   {
       
      
      public var m_saveSlotID:int;
      
      public var m_backgroundButton:TCButton;
      
      public var m_backgroundFilled:Sprite;
      
      public var m_closeButton:TCButton;
      
      private var m_newSlotText:TextField;
      
      private var m_nameText:TextField;
      
      private var m_minionCountText:TextField;
      
      private var m_badgeIcons:Vector.<Sprite>;
      
      private var m_starIcon:Sprite;
      
      private var m_starsText:TextField;
      
      public var m_hasDeleteBeenPressed:Boolean;
      
      public var m_conformationBox:ConformationBox;
      
      public function FileSelectIcon(param1:int)
      {
         super();
         this.m_saveSlotID = param1;
      }
      
      public function LoadSprites() : void
      {
         this.m_closeButton = new TCButton(this.DeletePressed,"mainMenu_saveSlot_deleteButton");
         this.m_backgroundButton = new TCButton(this.SlotSelected,"mainMenu_saveSlotBackground");
         this.m_backgroundButton.visible = true;
         addChild(this.m_backgroundButton);
         this.m_backgroundFilled = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_saveSlotFilled");
         this.m_backgroundFilled.visible = false;
         addChild(this.m_backgroundFilled);
         this.m_closeButton.x = 211;
         this.m_closeButton.y = 9;
         addChild(this.m_closeButton);
         var _loc1_:Array = ["titleScreen_plantSageStone","titleScreen_fireSageStone","titleScreen_electricSageStone","titleScreen_undeadSageStone","titleScreen_plantWizardSageStone","titleScreen_undeadWizardSageStone"];
         this.m_badgeIcons = new Vector.<Sprite>(6);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_badgeIcons.length)
         {
            this.m_badgeIcons[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite(_loc1_[_loc2_]);
            this.m_badgeIcons[_loc2_].x = 156 + _loc2_ * 5;
            this.m_badgeIcons[_loc2_].y = 7 + 3;
            addChild(this.m_badgeIcons[_loc2_]);
            _loc2_++;
         }
         this.m_starIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_saveSlot_starIcon");
         this.m_starIcon.x = 155;
         this.m_starIcon.y = 30 + 3;
         addChild(this.m_starIcon);
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.color = 4540276;
         _loc3_.font = "BurbinCasual";
         _loc3_.align = TextFormatAlign.LEFT;
         this.m_nameText = new TextField();
         this.m_nameText.embedFonts = true;
         _loc3_.size = 22;
         this.m_nameText.defaultTextFormat = _loc3_;
         this.m_nameText.wordWrap = true;
         this.m_nameText.autoSize = TextFieldAutoSize.LEFT;
         this.m_nameText.text = "Brett";
         this.m_nameText.width = 150;
         this.m_nameText.selectable = false;
         this.m_nameText.x = 19;
         this.m_nameText.y = 8;
         addChild(this.m_nameText);
         this.m_minionCountText = new TextField();
         this.m_minionCountText.embedFonts = true;
         _loc3_.size = 17;
         this.m_minionCountText.defaultTextFormat = _loc3_;
         this.m_minionCountText.wordWrap = true;
         this.m_minionCountText.autoSize = TextFieldAutoSize.LEFT;
         this.m_minionCountText.text = "Minions: 28/101";
         this.m_minionCountText.width = 200;
         this.m_minionCountText.selectable = false;
         this.m_minionCountText.x = 19;
         this.m_minionCountText.y = 36;
         addChild(this.m_minionCountText);
         this.m_starsText = new TextField();
         this.m_starsText.embedFonts = true;
         _loc3_.size = 20;
         this.m_starsText.defaultTextFormat = _loc3_;
         this.m_starsText.wordWrap = true;
         this.m_starsText.autoSize = TextFieldAutoSize.LEFT;
         this.m_starsText.text = "100";
         this.m_starsText.width = 80;
         this.m_starsText.selectable = false;
         this.m_starsText.x = 185;
         this.m_starsText.y = 30 + 3;
         addChild(this.m_starsText);
         this.m_newSlotText = new TextField();
         this.m_newSlotText.embedFonts = true;
         _loc3_.size = 18;
         _loc3_.color = 14014437;
         this.m_newSlotText.defaultTextFormat = _loc3_;
         this.m_newSlotText.x = 86;
         this.m_newSlotText.y = 21;
         this.m_newSlotText.wordWrap = true;
         this.m_newSlotText.autoSize = TextFieldAutoSize.LEFT;
         this.m_newSlotText.text = "New Slot";
         this.m_newSlotText.width = 150;
         this.m_newSlotText.selectable = false;
         addChild(this.m_newSlotText);
         this.m_newSlotText.visible = false;
         this.m_conformationBox = new ConformationBox("Delete your file?");
         this.m_conformationBox.x = 70;
         this.m_conformationBox.y = -73;
         addChild(this.m_conformationBox);
      }
      
      public function BringIn() : void
      {
         var _loc1_:int = 0;
         this.m_hasDeleteBeenPressed = false;
         if(!Singleton.dynamicData.GetIsSaveSlotInUse(this.m_saveSlotID))
         {
            this.m_newSlotText.visible = true;
            this.m_closeButton.visible = false;
            this.m_nameText.visible = false;
            this.m_minionCountText.visible = false;
            _loc1_ = 0;
            while(_loc1_ < this.m_badgeIcons.length)
            {
               this.m_badgeIcons[_loc1_].visible = false;
               _loc1_++;
            }
            this.m_starIcon.visible = false;
            this.m_starsText.visible = false;
            this.m_backgroundButton.visible = true;
            this.m_backgroundFilled.visible = false;
         }
         else
         {
            this.m_nameText.text = Singleton.dynamicData.GetCharName(this.m_saveSlotID);
            this.m_minionCountText.text = "Minions: " + Singleton.dynamicData.GetTotalMinions(this.m_saveSlotID) + "/101";
            this.m_starsText.text = "" + Singleton.dynamicData.GetTotalStars(this.m_saveSlotID);
            this.m_newSlotText.visible = false;
            this.m_closeButton.visible = true;
            this.m_nameText.visible = true;
            this.m_minionCountText.visible = true;
            _loc1_ = 0;
            while(_loc1_ < this.m_badgeIcons.length)
            {
               if(_loc1_ < Singleton.dynamicData.GetTotalSageSeals(this.m_saveSlotID))
               {
                  this.m_badgeIcons[_loc1_].visible = true;
               }
               else
               {
                  this.m_badgeIcons[_loc1_].visible = false;
               }
               _loc1_++;
            }
            this.m_starIcon.visible = true;
            this.m_starsText.visible = true;
            this.m_backgroundButton.visible = false;
            this.m_backgroundFilled.visible = true;
         }
      }
      
      public function SlotSelected(param1:MouseEvent) : void
      {
         if(this.m_hasDeleteBeenPressed)
         {
            return;
         }
         Singleton.dynamicData.m_saveSlot = this.m_saveSlotID;
         if(!Singleton.dynamicData.GetIsSaveSlotInUse(this.m_saveSlotID))
         {
            Singleton.utility.m_screenControllers.m_mainMenuScreen.AnimateInTheCharSelectionScreen();
         }
         else
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_currLevel = null;
            Singleton.dynamicData.LoadData(this.m_saveSlotID);
            Singleton.utility.m_soundController.FadeCurrentMusic(0,1);
            Singleton.utility.m_screenControllers.m_mainMenuScreen.FadeOutForReturnToGame();
            TweenLite.to(this,1,{"onComplete":this.GotoTopdown});
         }
      }
      
      private function GotoTopdown() : void
      {
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN,true,0.5);
      }
      
      public function DeletePressed(param1:MouseEvent) : void
      {
         if(!Singleton.dynamicData.GetIsSaveSlotInUse(this.m_saveSlotID))
         {
            return;
         }
         this.m_hasDeleteBeenPressed = true;
         this.m_conformationBox.BringIn(this.YesPressed,this.NoPressed);
      }
      
      private function YesPressed() : void
      {
         Singleton.dynamicData.ResetMetaDataForSaveSlot(this.m_saveSlotID);
         SharedObject.getLocal("TCrpgSaveSlot" + this.m_saveSlotID).clear();
         this.BringIn();
      }
      
      private function NoPressed() : void
      {
         this.m_hasDeleteBeenPressed = false;
      }
      
      public function Update() : void
      {
         this.m_backgroundButton.m_isActive = true;
         if(this.m_closeButton)
         {
            this.m_closeButton.m_isActive = true;
         }
      }
   }
}
