package TopDown.Menus.MinionPedia
{
   import Minions.BaseMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionPediaMinionSelect extends Sprite
   {
       
      
      public var m_backgroundButton:TCButton;
      
      private var m_minionName:TextField;
      
      private var m_checkBox:Sprite;
      
      private var m_ownedIcon:Sprite;
      
      private var m_minionIndex:int;
      
      public function MinionPediaMinionSelect(param1:int)
      {
         super();
         this.m_minionIndex = param1;
      }
      
      public function LoadSprites() : void
      {
         this.m_backgroundButton = new TCButton(this.MinionSelected,"minionPedia_minionSelectBackground");
         addChild(this.m_backgroundButton);
         this.m_checkBox = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_seenIcon");
         this.m_checkBox.x = 200;
         this.m_checkBox.y = 10;
         addChild(this.m_checkBox);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16382457;
         _loc1_.size = 21;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         this.m_minionName = new TextField();
         this.m_minionName.embedFonts = true;
         this.m_minionName.defaultTextFormat = _loc1_;
         this.m_minionName.wordWrap = true;
         this.m_minionName.autoSize = TextFieldAutoSize.LEFT;
         this.m_minionName.width = 250;
         this.m_minionName.x = 7;
         this.m_minionName.y = 3;
         this.m_minionName.selectable = false;
         addChild(this.m_minionName);
         this.m_ownedIcon = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_OwnedIcon");
         this.m_ownedIcon.x = 200;
         this.m_ownedIcon.y = 2;
         addChild(this.m_ownedIcon);
      }
      
      public function BringIn() : void
      {
         var _loc2_:String = null;
         var _loc1_:BaseMinion = Singleton.staticData.GetBaseMinion(this.m_minionIndex);
         if(!Singleton.dynamicData.GetHasMinionBeenSeen(this.m_minionIndex))
         {
            _loc2_ = "????????";
         }
         else
         {
            _loc2_ = _loc1_.m_baseMinionName;
         }
         if(this.m_minionIndex < 10)
         {
            this.m_minionName.text = "00" + (this.m_minionIndex + 1) + "   " + _loc2_;
         }
         else if(this.m_minionIndex < 99)
         {
            this.m_minionName.text = "0" + (this.m_minionIndex + 1) + "   " + _loc2_;
         }
         else
         {
            this.m_minionName.text = "" + (this.m_minionIndex + 1) + "   " + _loc2_;
         }
         if(Singleton.dynamicData.GetIsMinionOwned(this.m_minionIndex))
         {
            this.m_ownedIcon.visible = true;
         }
         else
         {
            this.m_ownedIcon.visible = false;
         }
      }
      
      private function MinionSelected(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionPedia.SelectMinion(this.m_minionIndex);
      }
   }
}
