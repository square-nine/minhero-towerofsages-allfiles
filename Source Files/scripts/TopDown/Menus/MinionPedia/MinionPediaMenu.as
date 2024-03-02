package TopDown.Menus.MinionPedia
{
   import Minions.BaseMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.MinionDexID;
   import States.MinionType;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionPediaMenu extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_backgroundMinionPedia:Sprite;
      
      private var m_backgroundMinion:Sprite;
      
      private var m_returnButton:TCButton;
      
      private var m_upButton:TCButton;
      
      private var m_downButton:TCButton;
      
      private var m_upButton_fast:TCButton;
      
      private var m_downButton_fast:TCButton;
      
      private var m_nameText:TextField;
      
      private var m_typeText:TextField;
      
      private var m_floorText:TextField;
      
      private var m_minionSprite:Sprite;
      
      private var m_type1:Sprite;
      
      private var m_type2:Sprite;
      
      private var m_minionsSelectObjects:Vector.<MinionPediaMinionSelect>;
      
      private var m_minionSelectHolder:Sprite;
      
      private var m_minionSelectMask:Sprite;
      
      private var m_selectedMinionIcon:Sprite;
      
      private var m_scrollPosition:int;
      
      public function MinionPediaMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         _loc1_.addChild(this.m_background);
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         this.m_returnButton.x = 3;
         this.m_returnButton.y = 409;
         _loc1_.addChild(this.m_returnButton);
         this.m_backgroundMinionPedia = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_background");
         this.m_backgroundMinionPedia.x = 21;
         this.m_backgroundMinionPedia.y = 18;
         _loc1_.addChild(this.m_backgroundMinionPedia);
         this.m_backgroundMinion = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_minionBackground");
         this.m_backgroundMinion.x = 56;
         this.m_backgroundMinion.y = 56;
         _loc1_.addChild(this.m_backgroundMinion);
         this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite("plantGorilla2");
         this.m_minionSprite.x = 174 - this.m_minionSprite.width / 2;
         this.m_minionSprite.y = 247 - this.m_minionSprite.height;
         _loc1_.addChild(this.m_minionSprite);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 16382457;
         _loc2_.size = 20;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.LEFT;
         this.m_nameText = new TextField();
         this.m_nameText.embedFonts = true;
         this.m_nameText.defaultTextFormat = _loc2_;
         this.m_nameText.wordWrap = true;
         this.m_nameText.autoSize = TextFieldAutoSize.LEFT;
         this.m_nameText.text = "Name:  Catilla";
         this.m_nameText.width = 200;
         this.m_nameText.x = 64;
         this.m_nameText.y = 288;
         this.m_nameText.selectable = false;
         _loc1_.addChild(this.m_nameText);
         this.m_typeText = new TextField();
         this.m_typeText.embedFonts = true;
         this.m_typeText.defaultTextFormat = _loc2_;
         this.m_typeText.wordWrap = true;
         this.m_typeText.autoSize = TextFieldAutoSize.LEFT;
         this.m_typeText.text = "Type: ";
         this.m_typeText.width = 200;
         this.m_typeText.x = 64;
         this.m_typeText.y = 288 + 30;
         this.m_typeText.selectable = false;
         _loc1_.addChild(this.m_typeText);
         this.m_floorText = new TextField();
         this.m_floorText.embedFonts = true;
         this.m_floorText.defaultTextFormat = _loc2_;
         this.m_floorText.wordWrap = true;
         this.m_floorText.autoSize = TextFieldAutoSize.LEFT;
         this.m_floorText.text = "Found: Floor 1, 2";
         this.m_floorText.width = 200;
         this.m_floorText.x = 64;
         this.m_floorText.y = 288 + 30 * 2;
         this.m_floorText.selectable = false;
         _loc1_.addChild(this.m_floorText);
         this.m_type1 = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionType_plant");
         this.m_type1.x = 124;
         this.m_type1.y = 324;
         _loc1_.addChild(this.m_type1);
         this.m_type2 = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionType_plant");
         this.m_type2.x = 206;
         this.m_type2.y = 324;
         _loc1_.addChild(this.m_type2);
         this.m_upButton = new TCButton(this.UpPressed,"minionPedia_upArrow");
         this.m_upButton.x = 610;
         this.m_upButton.y = 30;
         _loc1_.addChild(this.m_upButton);
         this.m_upButton_fast = new TCButton(this.UpPressed_fast,"minionPedia_doubleUpArrow");
         this.m_upButton_fast.x = 642;
         this.m_upButton_fast.y = 30;
         _loc1_.addChild(this.m_upButton_fast);
         this.m_downButton = new TCButton(this.DownPressed,"minionPedia_upArrow");
         this.m_downButton.x = 610;
         this.m_downButton.y = 438;
         this.m_downButton.scaleY = -1;
         _loc1_.addChild(this.m_downButton);
         this.m_downButton_fast = new TCButton(this.DownPressed_fast,"minionPedia_doubleUpArrow");
         this.m_downButton_fast.x = 642;
         this.m_downButton_fast.y = 437;
         this.m_downButton_fast.scaleY = -1;
         _loc1_.addChild(this.m_downButton_fast);
         this.m_minionSelectHolder = new Sprite();
         this.m_minionSelectHolder.x = 357;
         this.m_minionSelectHolder.y = 43;
         _loc1_.addChild(this.m_minionSelectHolder);
         this.m_minionSelectMask = new Sprite();
         this.m_minionSelectMask.x = 325;
         this.m_minionSelectMask.y = 24;
         this.m_minionSelectMask.graphics.beginFill(5592405);
         this.m_minionSelectMask.graphics.drawRect(0,0,300,419);
         this.m_minionSelectMask.graphics.endFill();
         _loc1_.addChild(this.m_minionSelectMask);
         this.m_minionSelectHolder.mask = this.m_minionSelectMask;
         this.m_minionsSelectObjects = new Vector.<MinionPediaMinionSelect>(MinionDexID.TOTAL_NUM_OF_MINIONS - 4);
         var _loc3_:int = 0;
         while(_loc3_ < this.m_minionsSelectObjects.length)
         {
            this.m_minionsSelectObjects[_loc3_] = new MinionPediaMinionSelect(_loc3_);
            this.m_minionsSelectObjects[_loc3_].LoadSprites();
            this.m_minionsSelectObjects[_loc3_].y = _loc3_ * 52;
            this.m_minionSelectHolder.addChild(this.m_minionsSelectObjects[_loc3_]);
            _loc3_++;
         }
         this.m_selectedMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_minionSelectedIcon");
         this.m_selectedMinionIcon.x = -39;
         this.m_selectedMinionIcon.y = -4;
         this.m_minionSelectHolder.addChild(this.m_selectedMinionIcon);
         this.visible = false;
      }
      
      public function BringIn() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_PEDIA_MENU;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_minionsSelectObjects.length)
         {
            this.m_minionsSelectObjects[_loc1_].BringIn();
            _loc1_++;
         }
         this.SelectMinion(0);
         this.m_scrollPosition = 0;
         this.UpdateTheScrollBoxPosition();
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
      }
      
      public function Update() : void
      {
         this.m_returnButton.m_isActive = true;
         if(this.m_upButton.visible)
         {
            this.m_upButton.m_isActive = true;
         }
         if(this.m_downButton.visible)
         {
            this.m_downButton.m_isActive = true;
         }
         if(this.m_upButton_fast.visible)
         {
            this.m_upButton_fast.m_isActive = true;
         }
         if(this.m_downButton_fast.visible)
         {
            this.m_downButton_fast.m_isActive = true;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_minionsSelectObjects.length)
         {
            if(this.m_backgroundMinionPedia.hitTestObject(this.m_minionsSelectObjects[_loc1_]))
            {
               this.m_minionsSelectObjects[_loc1_].m_backgroundButton.m_isActive = true;
            }
            _loc1_++;
         }
      }
      
      public function SelectMinion(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         this.m_selectedMinionIcon.x = -26;
         this.m_selectedMinionIcon.y = -2 + param1 * 52;
         if(!Singleton.dynamicData.GetHasMinionBeenSeen(param1))
         {
            this.m_nameText.text = "Name:   ????????";
            this.m_typeText.text = "Type:    ????????";
            this.m_floorText.text = "Found: ????????";
            this.m_type1.visible = false;
            this.m_type2.visible = false;
            this.removeChild(this.m_minionSprite);
            this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite("unknownMinion");
            this.m_minionSprite.x = 174 - this.m_minionSprite.width / 2;
            this.m_minionSprite.y = 247 - this.m_minionSprite.height;
            this.addChild(this.m_minionSprite);
            return;
         }
         var _loc2_:BaseMinion = Singleton.staticData.GetBaseMinion(param1);
         this.m_nameText.text = "Name:  " + _loc2_.m_baseMinionName;
         this.removeChild(this.m_minionSprite);
         this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_minionBattleSprite);
         this.m_minionSprite.x = 174 - this.m_minionSprite.width / 2;
         this.m_minionSprite.y = 247 - this.m_minionSprite.height;
         this.addChild(this.m_minionSprite);
         this.m_typeText.text = "Type: ";
         this.removeChild(this.m_type1);
         this.m_type1 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc2_.m_minionType1));
         this.m_type1.x = 124;
         this.m_type1.y = 324;
         this.addChild(this.m_type1);
         if(_loc2_.m_minionType2 != MinionType.TYPE_NONE)
         {
            this.m_type2.visible = true;
            this.removeChild(this.m_type2);
            this.m_type2 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc2_.m_minionType2));
            this.m_type2.x = 206;
            this.m_type2.y = 324;
            this.addChild(this.m_type2);
         }
         else
         {
            this.m_type2.visible = false;
         }
         var _loc3_:Vector.<int> = Singleton.staticData.GetFloorsAMinionIsFoundOn(param1);
         var _loc4_:* = "";
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc6_ = _loc3_[_loc5_] / 5 + 1;
            _loc7_ = _loc3_[_loc5_] % 5;
            _loc4_ += _loc6_ + "-" + _loc7_;
            if(_loc5_ + 1 < _loc3_.length)
            {
               _loc4_ += ",  ";
            }
            _loc5_++;
         }
         if(_loc3_.length == 0)
         {
            this.m_floorText.text = "Found: N/A";
         }
         else
         {
            this.m_floorText.text = "Found: Floor " + _loc4_;
         }
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_rootTopDownMenu.BringIn();
      }
      
      private function UpPressed(param1:MouseEvent) : void
      {
         --this.m_scrollPosition;
         this.UpdateTheScrollBoxPosition();
      }
      
      private function DownPressed(param1:MouseEvent) : void
      {
         ++this.m_scrollPosition;
         this.UpdateTheScrollBoxPosition();
      }
      
      private function UpPressed_fast(param1:MouseEvent) : void
      {
         this.m_scrollPosition -= 3;
         this.UpdateTheScrollBoxPosition();
      }
      
      private function DownPressed_fast(param1:MouseEvent) : void
      {
         this.m_scrollPosition += 3;
         this.UpdateTheScrollBoxPosition();
      }
      
      private function UpdateTheScrollBoxPosition() : void
      {
         if(this.m_scrollPosition < 0)
         {
            this.m_scrollPosition = 0;
         }
         if(this.m_scrollPosition > 19)
         {
            this.m_scrollPosition = 19;
         }
         var _loc1_:Number = 43 + -this.m_minionSelectHolder.height / 20 * this.m_scrollPosition;
         TweenLite.to(this.m_minionSelectHolder,0.5,{"y":_loc1_});
         if(this.m_scrollPosition == 0)
         {
            this.m_upButton.visible = false;
            this.m_upButton_fast.visible = false;
         }
         else
         {
            this.m_upButton.visible = true;
            this.m_upButton_fast.visible = true;
         }
         if(this.m_scrollPosition == 19)
         {
            this.m_downButton.visible = false;
            this.m_downButton_fast.visible = false;
         }
         else
         {
            this.m_downButton.visible = true;
            this.m_downButton_fast.visible = true;
         }
      }
      
      private function GetIconSpriteForType(param1:int) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case MinionType.TYPE_EARTH:
               _loc2_ = "menus_minionType_earth";
               break;
            case MinionType.TYPE_PLANT:
               _loc2_ = "menus_minionType_plant";
               break;
            case MinionType.TYPE_UNDEAD:
               _loc2_ = "menus_minionType_undead";
               break;
            case MinionType.TYPE_DEMONIC:
               _loc2_ = "menus_minionType_demonic";
               break;
            case MinionType.TYPE_DINO:
               _loc2_ = "menus_minionType_dino";
               break;
            case MinionType.TYPE_ENERGY:
               _loc2_ = "menus_minionType_energy";
               break;
            case MinionType.TYPE_FIRE:
               _loc2_ = "menus_minionType_fire";
               break;
            case MinionType.TYPE_FLYING:
               _loc2_ = "menus_minionType_flying";
               break;
            case MinionType.TYPE_HOLY:
               _loc2_ = "menus_minionType_holy";
               break;
            case MinionType.TYPE_ICE:
               _loc2_ = "menus_minionType_ice";
               break;
            case MinionType.TYPE_ROBOT:
               _loc2_ = "menus_minionType_robot";
               break;
            case MinionType.TYPE_TITAN:
               _loc2_ = "menus_minionType_titan";
               break;
            case MinionType.TYPE_WATER:
               _loc2_ = "menus_minionType_water";
               break;
            case MinionType.TYPE_NORMAL:
               _loc2_ = "menus_minionType_normal";
         }
         return _loc2_;
      }
   }
}
