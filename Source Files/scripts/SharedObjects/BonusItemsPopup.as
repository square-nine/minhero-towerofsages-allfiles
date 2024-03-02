package SharedObjects
{
   import Minions.OwnedMinion;
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.MinionDexID;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BonusItemsPopup extends Sprite
   {
       
      
      private var _isActive:Boolean;
      
      private var m_titleText:TextField;
      
      private var m_descriptionText:TextField;
      
      private var m_textFormat:TextFormat;
      
      private var m_bigBackground:Sprite;
      
      private var m_sureButton:TCButton;
      
      private var m_noButton:TCButton;
      
      private var m_okButton:TCButton;
      
      private var m_sponsorPatch:Sprite;
      
      private var m_extraGemSocketIcon:Sprite;
      
      private var m_extraMinionIcon:Sprite;
      
      private var m_isExtraGemsBeingAdded:Boolean;
      
      private var m_yourItemsHaveBeenAddedText:TextField;
      
      public function BonusItemsPopup()
      {
         super();
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
         this.m_sponsorPatch = Singleton.utility.m_spriteHandler.CreateSprite("bonusItems_sponsorPatch");
         this.m_sponsorPatch.x = 116;
         this.m_sponsorPatch.y = 30;
         addChild(this.m_sponsorPatch);
         this.m_extraGemSocketIcon = Singleton.utility.m_spriteHandler.CreateSprite("bonusItems_gemsBackground");
         this.m_extraGemSocketIcon.x = 99;
         this.m_extraGemSocketIcon.y = 238;
         addChild(this.m_extraGemSocketIcon);
         this.m_extraGemSocketIcon.visible = false;
         this.m_extraMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("bonusItems_minionBackground");
         this.m_extraMinionIcon.x = 126;
         this.m_extraMinionIcon.y = 182;
         this.m_extraMinionIcon.visible = false;
         addChild(this.m_extraMinionIcon);
         this.m_textFormat = new TextFormat();
         this.m_textFormat.color = 16382457;
         this.m_textFormat.size = 28;
         this.m_textFormat.font = "BurbinCasual";
         this.m_textFormat.align = TextFormatAlign.CENTER;
         this.m_titleText = new TextField();
         this.m_titleText.embedFonts = true;
         this.m_titleText.x = 20;
         this.m_titleText.y = 111;
         this.m_titleText.defaultTextFormat = this.m_textFormat;
         this.m_titleText.wordWrap = true;
         this.m_titleText.autoSize = TextFieldAutoSize.CENTER;
         this.m_titleText.text = "Get extra gem sockets";
         this.m_titleText.width = 380;
         this.m_titleText.selectable = false;
         addChild(this.m_titleText);
         this.m_textFormat.size = 15;
         this.m_descriptionText = new TextField();
         this.m_descriptionText.embedFonts = true;
         this.m_descriptionText.defaultTextFormat = this.m_textFormat;
         this.m_descriptionText.wordWrap = true;
         this.m_descriptionText.autoSize = TextFieldAutoSize.CENTER;
         this.m_descriptionText.text = "Take a second to check out some other\nawesome games and get extra gem\nsockets for all your minions";
         this.m_descriptionText.width = 353;
         this.m_descriptionText.x = 30;
         this.m_descriptionText.y = 149;
         this.m_descriptionText.selectable = false;
         addChild(this.m_descriptionText);
         this.m_textFormat.color = 5604052;
         this.m_yourItemsHaveBeenAddedText = new TextField();
         this.m_yourItemsHaveBeenAddedText.embedFonts = true;
         this.m_yourItemsHaveBeenAddedText.defaultTextFormat = this.m_textFormat;
         this.m_yourItemsHaveBeenAddedText.wordWrap = true;
         this.m_yourItemsHaveBeenAddedText.autoSize = TextFieldAutoSize.CENTER;
         this.m_yourItemsHaveBeenAddedText.text = "Your items have been added";
         this.m_yourItemsHaveBeenAddedText.width = 353;
         this.m_yourItemsHaveBeenAddedText.x = 30;
         this.m_yourItemsHaveBeenAddedText.y = 368;
         this.m_yourItemsHaveBeenAddedText.selectable = false;
         addChild(this.m_yourItemsHaveBeenAddedText);
         this.m_sureButton = new TCButton(this.OkButtonPressed,"bonusItems_sureButton");
         this.m_sureButton.x = 214;
         this.m_sureButton.y = 338 + 10;
         addChild(this.m_sureButton);
         this.m_noButton = new TCButton(this.NoThanksButtonPressed,"bonusItems_noThanksButton");
         this.m_noButton.x = 70;
         this.m_noButton.y = 338 + 10;
         addChild(this.m_noButton);
         this.m_okButton = new TCButton(this.NoThanksButtonPressed,"tutorial_okButton");
         this.m_okButton.x = 143;
         this.m_okButton.y = 390;
         addChild(this.m_okButton);
      }
      
      private function OkButtonPressed(param1:MouseEvent) : void
      {
         var _loc5_:OwnedMinion = null;
         if(this.m_isExtraGemsBeingAdded)
         {
            Singleton.dynamicData.m_isExtraSponsorGemsIn = true;
            this.m_yourItemsHaveBeenAddedText.text = "Your gem sockets have been added";
         }
         else
         {
            Singleton.dynamicData.m_isExtraSponsorMinionEarned = true;
            this.m_yourItemsHaveBeenAddedText.text = "Your minion is in storage";
            _loc5_ = new OwnedMinion(MinionDexID.DEX_ID_titan_2);
            Singleton.dynamicData.AddToOwnedMinions(_loc5_);
            _loc5_.SetLevel(60);
            _loc5_.CalculateCurrStats();
            _loc5_.ReFillHealthAndEnergy();
         }
         var _loc2_:StaticData = Singleton.staticData;
         var _loc3_:String = _loc2_.m_sponsorURL_part1 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5;
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         navigateToURL(_loc4_);
         this.m_sureButton.visible = false;
         this.m_noButton.visible = false;
         this.m_okButton.visible = true;
         this.m_yourItemsHaveBeenAddedText.visible = true;
      }
      
      private function NoThanksButtonPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
      }
      
      public function BringIn(param1:Boolean, param2:Number = 0.5) : void
      {
         this.visible = true;
         this._isActive = true;
         this.m_isExtraGemsBeingAdded = param1;
         Singleton.utility.m_soundController.PlaySound("battle_whoosh_falling_deepSound",1);
         if(param1)
         {
            this.m_titleText.text = "Get extra gem sockets!";
            this.m_descriptionText.text = "Take a second to check out some other\nawesome games and get extra gem\nsockets for all your minions";
            this.m_extraGemSocketIcon.visible = true;
            this.m_extraMinionIcon.visible = false;
         }
         else
         {
            this.m_titleText.text = "Get another Titan!";
            this.m_descriptionText.text = "Take a second to check out some other\nawesome games and get another Titan";
            this.m_extraGemSocketIcon.visible = false;
            this.m_extraMinionIcon.visible = true;
         }
         this.m_okButton.visible = false;
         this.m_yourItemsHaveBeenAddedText.visible = false;
         this.m_sureButton.visible = true;
         this.m_noButton.visible = true;
         this.alpha = 0;
         TweenLite.to(this,0.6,{
            "alpha":1,
            "delay":param2
         });
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
         this.visible = false;
         this._isActive = false;
      }
      
      public function get m_isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function Update() : void
      {
         if(!visible)
         {
            return;
         }
         this.m_sureButton.m_isActive = this.m_sureButton.visible;
         this.m_noButton.m_isActive = this.m_noButton.visible;
         this.m_okButton.m_isActive = this.m_okButton.visible;
      }
   }
}
