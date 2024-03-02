package SharedObjects.BaseInterfacePieces
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class ConformationBox extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_questionText:TextField;
      
      private var m_yesButton:TCButton;
      
      private var m_noButton:TCButton;
      
      private var m_onYesFunction:Function;
      
      private var m_onNoFunction:Function;
      
      public var m_isOpen:Boolean;
      
      public function ConformationBox(param1:String = "Are you sure?")
      {
         var _loc2_:TextFormat = null;
         super();
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("conformationBox_background");
         addChild(this.m_background);
         _loc2_ = new TextFormat();
         _loc2_.color = 16382457;
         _loc2_.size = 16;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         this.m_questionText = new TextField();
         this.m_questionText.x = 7;
         this.m_questionText.y = 11;
         this.m_questionText.embedFonts = true;
         this.m_questionText.defaultTextFormat = _loc2_;
         this.m_questionText.wordWrap = true;
         this.m_questionText.autoSize = TextFieldAutoSize.CENTER;
         this.m_questionText.text = param1;
         this.m_questionText.width = 200;
         this.m_questionText.selectable = false;
         addChild(this.m_questionText);
         this.m_yesButton = new TCButton(this.OnYesPressed,"conformationBox_yesButton");
         this.m_yesButton.x = 5;
         this.m_yesButton.y = 42;
         addChild(this.m_yesButton);
         this.m_noButton = new TCButton(this.OnNoPressed,"conformationBox_noButton");
         this.m_noButton.x = 105;
         this.m_noButton.y = 42;
         addChild(this.m_noButton);
         this.m_isOpen = false;
         this.visible = false;
      }
      
      public function BringIn(param1:Function = null, param2:Function = null) : void
      {
         this.m_onYesFunction = param1;
         this.m_onNoFunction = param2;
         this.m_isOpen = true;
         this.visible = true;
         this.m_yesButton.m_alwaysActive = true;
         this.m_noButton.m_alwaysActive = true;
      }
      
      private function OnYesPressed(param1:MouseEvent) : void
      {
         this.m_isOpen = false;
         this.visible = false;
         this.m_yesButton.m_alwaysActive = false;
         this.m_noButton.m_alwaysActive = false;
         if(this.m_onYesFunction != null)
         {
            this.m_onYesFunction.call();
         }
      }
      
      private function OnNoPressed(param1:MouseEvent) : void
      {
         this.m_isOpen = false;
         this.visible = false;
         this.m_yesButton.m_alwaysActive = false;
         this.m_noButton.m_alwaysActive = false;
         if(this.m_onNoFunction != null)
         {
            this.m_onNoFunction.call();
         }
      }
   }
}
