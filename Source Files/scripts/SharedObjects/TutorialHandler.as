package SharedObjects
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TutorialHandler extends Sprite
   {
       
      
      private var _isActive:Boolean;
      
      private var m_isSmallBackground:Boolean;
      
      private var m_titleText:TextField;
      
      private var m_descriptionText:TextField;
      
      private var m_bigBackground:Sprite;
      
      private var m_smallBackground:Sprite;
      
      private var m_okButton:TCButton;
      
      private var m_nextButton:TCButton;
      
      private var m_showmeButton:TCButton;
      
      private var m_extraTexts:Vector.<TextField>;
      
      private var m_extraSprites:Vector.<Sprite>;
      
      private var m_textFormat:TextFormat;
      
      private var m_mainFunctionToCall:Function;
      
      private var m_exitOutFunctionToCall:Function;
      
      public function TutorialHandler()
      {
         super();
         this.m_extraTexts = new Vector.<TextField>();
         this.m_extraSprites = new Vector.<Sprite>();
         this._isActive = false;
      }
      
      public function LoadSprites() : void
      {
         Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this);
         this.x = 144;
         this.y = 19;
         this.visible = false;
         this.m_bigBackground = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_backgroundLarge");
         addChild(this.m_bigBackground);
         this.m_smallBackground = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_backgroundSmall");
         this.m_smallBackground.y = 66;
         addChild(this.m_smallBackground);
         this.m_smallBackground.visible = false;
         this.m_okButton = new TCButton(this.MainButtonPressed,"tutorial_okButton");
         this.m_okButton.x = 143;
         addChild(this.m_okButton);
         this.m_showmeButton = new TCButton(this.MainButtonPressed,"tutorial_showMeButton");
         this.m_showmeButton.x = 72;
         addChild(this.m_showmeButton);
         this.m_nextButton = new TCButton(this.NextButtonPressed,"tutorial_nextButton");
         this.m_nextButton.x = 130;
         addChild(this.m_nextButton);
         this.m_textFormat = new TextFormat();
         this.m_textFormat.color = 0;
         this.m_textFormat.size = 28;
         this.m_textFormat.font = "BurbinCasual";
         this.m_textFormat.align = TextFormatAlign.CENTER;
         this.m_titleText = new TextField();
         this.m_titleText.embedFonts = true;
         this.m_titleText.x = 20;
         this.m_titleText.defaultTextFormat = this.m_textFormat;
         this.m_titleText.wordWrap = true;
         this.m_titleText.autoSize = TextFieldAutoSize.CENTER;
         this.m_titleText.text = "Find the boss room";
         this.m_titleText.width = 380;
         this.m_titleText.selectable = false;
         addChild(this.m_titleText);
         this.m_textFormat.size = 18;
         this.m_textFormat.color = 16382457;
         this.m_descriptionText = new TextField();
         this.m_descriptionText.embedFonts = true;
         this.m_descriptionText.defaultTextFormat = this.m_textFormat;
         this.m_descriptionText.wordWrap = true;
         this.m_descriptionText.autoSize = TextFieldAutoSize.CENTER;
         this.m_descriptionText.text = "this is the description this is the this is the this is the this is the";
         this.m_descriptionText.width = 353;
         this.m_descriptionText.x = 30;
         this.m_descriptionText.selectable = false;
         addChild(this.m_descriptionText);
      }
      
      private function Cleanup() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_extraSprites.length)
         {
            this.m_extraSprites[_loc1_].parent.removeChild(this.m_extraSprites[_loc1_]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.m_extraTexts.length)
         {
            this.m_extraTexts[_loc1_].parent.removeChild(this.m_extraTexts[_loc1_]);
            _loc1_++;
         }
         this.m_extraTexts = new Vector.<TextField>();
         this.m_extraSprites = new Vector.<Sprite>();
      }
      
      private function ResetTheTutorialHandler() : void
      {
         this.m_titleText.visible = false;
         this.m_descriptionText.visible = false;
         this.m_bigBackground.visible = false;
         this.m_smallBackground.visible = false;
         this.m_okButton.visible = false;
         this.m_nextButton.visible = false;
         this.m_showmeButton.visible = false;
      }
      
      private function BringIn() : void
      {
         this.visible = true;
         Singleton.utility.m_soundController.PlaySound("battle_whoosh_falling_deepSound",1);
         this._isActive = true;
         this.ResetTheTutorialHandler();
      }
      
      private function FinishExitOut() : void
      {
         this.Cleanup();
         this.visible = false;
         this._isActive = false;
         if(Singleton.dynamicData.m_gameState == GameState.TOP_DOWN_SCREEN)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
         }
      }
      
      private function SetupDefaultPositions() : void
      {
         var _loc1_:Sprite = null;
         if(this.m_isSmallBackground)
         {
            _loc1_ = this.m_smallBackground;
         }
         else
         {
            _loc1_ = this.m_bigBackground;
         }
         this.m_textFormat.color = 16382457;
         this.m_textFormat.size = 28;
         this.m_titleText.defaultTextFormat = this.m_textFormat;
         this.m_titleText.y = _loc1_.y + 6 + 91;
         this.m_textFormat.size = 15;
         this.m_textFormat.color = 16382457;
         this.m_descriptionText.defaultTextFormat = this.m_textFormat;
         this.m_descriptionText.y = _loc1_.y + 45 + 91;
         this.m_okButton.y = _loc1_.y + _loc1_.height - 59 - 16;
         this.m_showmeButton.y = _loc1_.y + _loc1_.height - 54;
         this.m_nextButton.x = this.m_okButton.x;
         this.m_nextButton.y = this.m_okButton.y;
      }
      
      private function SetupBigBackground() : void
      {
         this.m_isSmallBackground = false;
         this.SetupDefaultPositions();
      }
      
      private function SetupSmallBackground() : void
      {
         this.m_isSmallBackground = true;
         this.SetupDefaultPositions();
      }
      
      private function BringInSmallBackground() : void
      {
         this.m_smallBackground.visible = true;
         this.x = 164;
         this.y = 38;
         this.scaleX = 0.9;
         this.scaleY = 0.9;
         alpha = 0;
         TweenLite.to(this,0.4,{"transformAroundCenter":{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         }});
      }
      
      private function BringInBigBackground() : void
      {
         this.m_bigBackground.visible = true;
         this.x = 164;
         this.y = 38;
         this.scaleX = 0.9;
         this.scaleY = 0.9;
         alpha = 0;
         TweenLite.to(this,0.4,{"transformAroundCenter":{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         }});
      }
      
      private function BringInTitleText() : void
      {
         this.m_titleText.visible = true;
         this.m_titleText.alpha = 0;
         TweenLite.to(this.m_titleText,0.5,{"alpha":1});
      }
      
      private function BringInDescriptionText() : void
      {
         this.m_descriptionText.visible = true;
         this.m_descriptionText.alpha = 0;
         TweenLite.to(this.m_descriptionText,0.5,{"alpha":1});
      }
      
      private function BringInOkButton() : void
      {
         this.m_okButton.visible = true;
      }
      
      private function BringInShowMeButton() : void
      {
         this.m_showmeButton.visible = true;
         this.m_showmeButton.alpha = 0;
         this.m_showmeButton.y -= 50;
         TweenLite.to(this.m_showmeButton,0.5,{
            "alpha":1,
            "y":"50"
         });
      }
      
      private function BringInNextButton() : void
      {
         this.m_nextButton.visible = true;
      }
      
      private function ExitOutSmallBackground() : void
      {
         TweenLite.to(this,0.5,{"alpha":0});
      }
      
      private function ExitOutBigBackground() : void
      {
         TweenLite.to(this,0.5,{"alpha":0});
      }
      
      private function ExitOutTitleText() : void
      {
         TweenLite.to(this.m_titleText,0.5,{"alpha":0});
      }
      
      private function ExitOutDescriptionText() : void
      {
         TweenLite.to(this.m_descriptionText,0.5,{"alpha":0});
      }
      
      private function ExitOutOkButton() : void
      {
      }
      
      private function ExitOutShowMeButton() : void
      {
         TweenLite.to(this.m_showmeButton,0.5,{
            "alpha":0,
            "y":"-50"
         });
      }
      
      private function ExitOutNextButton() : void
      {
      }
      
      public function Update() : void
      {
         if(this.m_okButton.visible)
         {
            this.m_okButton.m_isActive = true;
         }
         if(this.m_nextButton.visible)
         {
            this.m_nextButton.m_isActive = true;
         }
         if(this.m_showmeButton.visible)
         {
            this.m_showmeButton.m_isActive = true;
         }
      }
      
      private function MainButtonPressed(param1:MouseEvent) : void
      {
         this.m_exitOutFunctionToCall.call();
         if(this.m_mainFunctionToCall != null)
         {
            this.m_mainFunctionToCall.call();
         }
      }
      
      private function NextButtonPressed(param1:MouseEvent) : void
      {
         this.m_exitOutFunctionToCall.call();
      }
      
      private function SecondaryButtonPressed(param1:MouseEvent) : void
      {
      }
      
      public function get m_isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function BringIn_KeyKeepersTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_textFormat.size = 14;
         this.m_titleText.defaultTextFormat = this.m_textFormat;
         this.m_titleText.text = "To complete this floor you must defeat all three\nstudents for their keys to the Minor Sage\'s room.";
         this.m_titleText.y = 175;
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_keyKeeper1"));
         addChild(this.m_extraSprites[0]);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_extraSprites.length)
         {
            this.m_extraSprites[_loc2_].x = 49 + _loc2_ * 90;
            this.m_extraSprites[_loc2_].y = 222;
            this.m_extraSprites[_loc2_].alpha = 0;
            TweenLite.to(this.m_extraSprites[_loc2_],0.5,{"alpha":1});
            _loc2_++;
         }
         this.BringInSmallBackground();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_KeyKeepersTut;
      }
      
      private function ExitOut_KeyKeepersTut() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutTitleText();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_extraSprites.length)
         {
            TweenLite.to(this.m_extraSprites[_loc1_],0.5,{"alpha":0});
            _loc1_++;
         }
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_BonusLevelTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_textFormat.size = 18;
         this.m_titleText.defaultTextFormat = this.m_textFormat;
         this.m_titleText.text = "Bonus floors have a chance\nto drop rare minions";
         this.m_titleText.y = 175;
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bonusRooms"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 132;
         this.m_extraSprites[0].y = 236;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInSmallBackground();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_BonusLevelTut;
      }
      
      private function ExitOut_BonusLevelTut() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutTitleText();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_extraSprites.length)
         {
            TweenLite.to(this.m_extraSprites[_loc1_],0.5,{"alpha":0});
            _loc1_++;
         }
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_BossRoomTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_textFormat.size = 16;
         this.m_titleText.defaultTextFormat = this.m_textFormat;
         this.m_titleText.text = "Find and challenge the Minor Sage to get the\nfirst piece of the Sage Seal of Courage.";
         this.m_titleText.y = 181;
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bossDoor"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 140;
         this.m_extraSprites[0].y = 232;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInSmallBackground();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_BossRoomTut;
      }
      
      private function ExitOut_BossRoomTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_TypeEffectiveness(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_titleText.x = 20;
         this.m_titleText.y = 115;
         this.m_descriptionText.text = "Move choice:  Some moves do more damage to certain types of minions";
         this.m_descriptionText.x = 30;
         this.m_descriptionText.y = 154;
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_superEffectiveMoves"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 52;
         this.m_extraSprites[0].y = 279;
         this.m_extraSprites[0].alpha = 0;
         this.m_textFormat.size = 24;
         this.m_textFormat.color = 16382457;
         this.m_extraTexts.push(new TextField());
         this.m_extraTexts[0].embedFonts = true;
         this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
         this.m_extraTexts[0].wordWrap = true;
         this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
         this.m_extraTexts[0].text = "Example";
         this.m_extraTexts[0].width = 150;
         this.m_extraTexts[0].x = 132;
         this.m_extraTexts[0].y = 220;
         this.m_extraTexts[0].alpha = 0;
         this.m_extraTexts[0].selectable = false;
         addChild(this.m_extraTexts[0]);
         this.m_textFormat.size = 15;
         this.m_textFormat.color = 16382457;
         this.m_extraTexts.push(new TextField());
         this.m_extraTexts[1].embedFonts = true;
         this.m_extraTexts[1].defaultTextFormat = this.m_textFormat;
         this.m_extraTexts[1].wordWrap = true;
         this.m_extraTexts[1].autoSize = TextFieldAutoSize.CENTER;
         this.m_extraTexts[1].text = "Fire moves do more damage to plant minions";
         this.m_extraTexts[1].width = this.m_bigBackground.width;
         this.m_extraTexts[1].x = -3;
         this.m_extraTexts[1].y = 255;
         this.m_extraTexts[1].alpha = 0;
         this.m_extraTexts[1].selectable = false;
         addChild(this.m_extraTexts[1]);
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
         TweenLite.to(this.m_extraTexts[1],0.5,{"alpha":1});
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_TypeEffectiveness;
      }
      
      private function ExitOut_TypeEffectiveness() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraTexts[1],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_TankTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Protect your fragile minions with a redirect damage and high health/armor minion";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_useATank"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 49;
         this.m_extraSprites[0].y = 98 - 50;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":1,
            "y":"50"
         });
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_TankTut;
      }
      
      private function ExitOut_TankTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_ShieldBattleModTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Shield stones make random\nminions invulnerable";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStone"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 156;
         this.m_extraSprites[0].y = 203;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_ShieldBattleModTut;
      }
      
      private function ExitOut_ShieldBattleModTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_ExtraMovesBattleModTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Extra move stones cast moves after so many turns. They can also give you passive buffs.";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveStone"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 116;
         this.m_extraSprites[0].y = 184;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_ExtraMovesBattleModTut;
      }
      
      private function ExitOut_ExtraMovesBattleModTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_ExtraMinionsBattleModTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Extra minion stones bring in \nextra minions on death.";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionOnDeathStone"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 143;
         this.m_extraSprites[0].y = 193;
         this.m_extraSprites[0].alpha = 0;
         this.m_extraSprites[0].scaleX = 0.8;
         this.m_extraSprites[0].scaleY = 0.8;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_ExtraMinionsBattleModTut;
      }
      
      private function ExitOut_ExtraMinionsBattleModTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_ResurectionnBattleModTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Resurection stones allow minions to be resurected after so many turns.";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("undeadRoom_headstones1"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 115;
         this.m_extraSprites[0].y = 197;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_ResurectionnBattleModTut;
      }
      
      private function ExitOut_ResurectionnBattleModTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_HealerTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Want to stay in the fight longer?\nAdd a healer/shielder to your group";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_useAHealer"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 31;
         this.m_extraSprites[0].y = 92 - 50;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":1,
            "y":"50"
         });
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_HealerTut;
      }
      
      private function ExitOut_HealerTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_FocusTargetsTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Focus targets:  Sometimes it’s best to focus all your attacks on one minion";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_focusTarget"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 115;
         this.m_extraSprites[0].y = 155 - 50;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":1,
            "y":"50"
         });
         this.BringInSmallBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_FocusTargetsTut;
         Singleton.utility.m_mover.SetObject(this.m_extraSprites[0]);
      }
      
      private function ExitOut_FocusTargetsTut() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_DontNeedToBeatHardAndExpert(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Tower Tip!";
         this.m_descriptionText.text = "You don’t have to defeat the hard and expert trainers to progress in the tower";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_hardTrainer"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 115;
         this.m_extraSprites[0].y = 155 - 50;
         this.m_extraSprites[0].alpha = 0;
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_expertTrainer"));
         addChild(this.m_extraSprites[1]);
         this.m_extraSprites[1].x = 192;
         this.m_extraSprites[1].y = 155 - 50;
         this.m_extraSprites[1].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":1,
            "y":"50"
         });
         TweenLite.to(this.m_extraSprites[1],0.5,{
            "alpha":1,
            "y":"50"
         });
         this.BringInSmallBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_DontNeedToBeatHardAndExpert;
      }
      
      private function ExitOut_DontNeedToBeatHardAndExpert() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this.m_extraSprites[1],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_GemTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Congratulations";
         this.m_descriptionText.text = "You’ve gotten your first gem!  You can add it to a minion to make them even more powerful";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_firstGemTutorial"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 154;
         this.m_extraSprites[0].y = 252;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInSmallBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_GemTut;
      }
      
      private function ExitOut_GemTut() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_ReplayFloor(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Tower Tip";
         this.m_descriptionText.text = "You can replay floors to get more stars and new minions";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_starsAndNewMinions"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 46;
         this.m_extraSprites[0].y = 246;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInSmallBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_ReplayFloor;
      }
      
      private function ExitOut_ReplayFloor() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_ResetTalentTreesTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_textFormat.size = 13;
         this.m_descriptionText.defaultTextFormat = this.m_textFormat;
         this.m_descriptionText.text = "If a fight is giving you a hard time try and choose better moves for the fight by reseting your skill trees";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_resetTalentPointsIcon"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 163;
         this.m_extraSprites[0].y = 247;
         this.m_extraSprites[0].alpha = 0;
         this.m_textFormat.size = 14;
         this.m_textFormat.color = 16382457;
         this.m_extraTexts.push(new TextField());
         this.m_extraTexts[0].embedFonts = true;
         this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
         this.m_extraTexts[0].wordWrap = true;
         this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
         this.m_extraTexts[0].text = "Tip: You can access your skill tree\nat any time in the menu";
         this.m_extraTexts[0].width = this.m_bigBackground.width;
         this.m_extraTexts[0].y = 306;
         this.m_extraTexts[0].alpha = 0;
         this.m_extraTexts[0].selectable = false;
         addChild(this.m_extraTexts[0]);
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
         this.BringInSmallBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_ResetTalentTreesTut;
      }
      
      private function ExitOut_ResetTalentTreesTut() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_DeathTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Tower Tip";
         this.m_descriptionText.text = "When you die you still get a small amount of\nexp for fighting";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_deathIcon"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 168;
         this.m_extraSprites[0].y = 253;
         this.m_extraSprites[0].alpha = 0;
         this.m_textFormat.size = 15;
         this.m_textFormat.color = 16382457;
         this.m_extraTexts.push(new TextField());
         this.m_extraTexts[0].embedFonts = true;
         this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
         this.m_extraTexts[0].wordWrap = true;
         this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
         this.m_extraTexts[0].text = "Tip: You don’t get any exp for forfeiting a battle";
         this.m_extraTexts[0].width = this.m_bigBackground.width;
         this.m_extraTexts[0].y = 322;
         this.m_extraTexts[0].alpha = 0;
         this.m_extraTexts[0].selectable = false;
         addChild(this.m_extraTexts[0]);
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
         this.BringInSmallBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_DeathTut;
      }
      
      private function ExitOut_DeathTut() : void
      {
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_EnergyTut(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Energy";
         this.m_descriptionText.text = "The blue bar shows how much energy a minion has";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bigEnergyBar"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 96;
         this.m_extraSprites[0].y = 69 + 50;
         this.m_extraSprites[0].alpha = 0;
         this.m_extraSprites[0].visible = false;
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":1,
            "y":"-50"
         });
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_energyBarBackground"));
         addChild(this.m_extraSprites[1]);
         this.m_extraSprites[1].x = 94;
         this.m_extraSprites[1].y = 181;
         this.m_extraSprites[1].alpha = 0;
         TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":1});
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_energyBarArrow"));
         addChild(this.m_extraSprites[2]);
         this.m_extraSprites[2].x = 180 - 50;
         this.m_extraSprites[2].y = 241;
         this.m_extraSprites[2].scaleX = -1;
         this.m_extraSprites[2].alpha = 0;
         TweenLite.to(this.m_extraSprites[2],0.8,{
            "alpha":1,
            "x":"50"
         });
         this.m_textFormat.size = 14;
         this.m_textFormat.color = 16382457;
         this.m_extraTexts.push(new TextField());
         this.m_extraTexts[0].embedFonts = true;
         this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
         this.m_extraTexts[0].wordWrap = true;
         this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
         this.m_extraTexts[0].text = "Tip:  Each move uses energy and if you run out,\nyou won’t be able to use your moves";
         this.m_extraTexts[0].width = this.m_bigBackground.width - 30;
         this.m_extraTexts[0].x = 15;
         this.m_extraTexts[0].y = 336;
         this.m_extraTexts[0].alpha = 0;
         this.m_extraTexts[0].selectable = false;
         addChild(this.m_extraTexts[0]);
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_EnergyTut;
      }
      
      private function ExitOut_EnergyTut() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutTitleText();
         this.ExitOutDescriptionText();
         this.ExitOutNextButton();
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"50"
         });
         TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":0});
         TweenLite.to(this.m_extraSprites[2],0.8,{
            "alpha":0,
            "x":"-50"
         });
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_BattleBasicTuts(param1:Function) : void
      {
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Basics";
         this.m_descriptionText.text = "The minions on the left are yours\nthe minions on the right are your opponents";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourThierMinionBackground"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 33;
         this.m_extraSprites[0].y = 195;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.BringInBigBackground();
         this.BringInDescriptionText();
         this.BringInNextButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_BattleBasicTuts_1;
      }
      
      private function ExitOut_BattleBasicTuts_1() : void
      {
         this.ExitOutOkButton();
         this.ExitOutTitleText();
         this.ExitOutDescriptionText();
         this.ExitOutNextButton();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this,0.5,{"onComplete":this.Cleanup});
         TweenLite.to(this,0.5,{"onComplete":this.BringIn_BattleBasicTuts_2});
      }
      
      private function BringIn_BattleBasicTuts_2() : void
      {
         this.SetupDefaultPositions();
         this.m_titleText.text = "Turn order";
         this.m_descriptionText.text = "These boxes show the minion turn order";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionBackground"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 67;
         this.m_extraSprites[0].y = 169;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionArrow"));
         addChild(this.m_extraSprites[1]);
         this.m_extraSprites[1].x = 99 - 50;
         this.m_extraSprites[1].y = 218;
         this.m_extraSprites[1].alpha = 0;
         TweenLite.to(this.m_extraSprites[1],0.8,{
            "alpha":1,
            "x":"50"
         });
         this.m_textFormat.size = 13;
         this.m_textFormat.color = 16382457;
         this.m_extraTexts.push(new TextField());
         this.m_extraTexts[0].embedFonts = true;
         this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
         this.m_extraTexts[0].wordWrap = true;
         this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
         this.m_extraTexts[0].text = "Tip: Turn order is based on how much speed a minion has";
         this.m_extraTexts[0].width = this.m_bigBackground.width;
         this.m_extraTexts[0].y = 364;
         this.m_extraTexts[0].alpha = 0;
         this.m_extraTexts[0].selectable = false;
         addChild(this.m_extraTexts[0]);
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
         this.BringInDescriptionText();
         this.BringInNextButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_BattleBasicTuts_2;
      }
      
      private function ExitOut_BattleBasicTuts_2() : void
      {
         this.ExitOutOkButton();
         this.ExitOutTitleText();
         this.ExitOutDescriptionText();
         this.ExitOutNextButton();
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraSprites[1],0.5,{
            "alpha":0,
            "x":"-50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.Cleanup});
         TweenLite.to(this,0.5,{"onComplete":this.BringIn_BattleBasicTuts_3});
      }
      
      private function BringIn_BattleBasicTuts_3() : void
      {
         this.SetupDefaultPositions();
         this.m_titleText.text = "Health Bar";
         this.m_descriptionText.text = "The red bar shows how much health a minion has";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bigHealthBar"));
         addChild(this.m_extraSprites[0]);
         this.m_extraSprites[0].x = 114;
         this.m_extraSprites[0].y = 165;
         this.m_extraSprites[0].alpha = 0;
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionHealth"));
         addChild(this.m_extraSprites[1]);
         this.m_extraSprites[1].x = 124;
         this.m_extraSprites[1].y = 236;
         this.m_extraSprites[1].alpha = 0;
         TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":1});
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionArrow"));
         addChild(this.m_extraSprites[2]);
         this.m_extraSprites[2].x = 295 + 50;
         this.m_extraSprites[2].y = 227;
         this.m_extraSprites[2].scaleX = -1;
         this.m_extraSprites[2].alpha = 0;
         TweenLite.to(this.m_extraSprites[2],0.8,{
            "alpha":1,
            "x":"-50"
         });
         this.BringInDescriptionText();
         this.BringInOkButton();
         this.BringInTitleText();
         this.m_exitOutFunctionToCall = this.ExitOut_BattleBasicTuts_3;
      }
      
      private function ExitOut_BattleBasicTuts_3() : void
      {
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutTitleText();
         this.ExitOutDescriptionText();
         this.ExitOutOkButton();
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":0});
         TweenLite.to(this.m_extraSprites[2],0.5,{
            "alpha":0,
            "x":"50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
   }
}
