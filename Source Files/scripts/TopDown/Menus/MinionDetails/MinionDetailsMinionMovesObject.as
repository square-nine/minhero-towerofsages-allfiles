package TopDown.Menus.MinionDetails
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionDetailsMinionMovesObject extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_nextUnderButton:Sprite;
      
      private var m_prevUnderButton:Sprite;
      
      private var m_nextButton:TCButton;
      
      private var m_prevButton:TCButton;
      
      private var m_moveIcons:Vector.<Sprite>;
      
      private var m_moveNames:Vector.<TextField>;
      
      private var m_moveDetailsButtons:Vector.<TCButton>;
      
      private var m_currMovesPage:int;
      
      private var m_currMoves:Vector.<BaseMinionMove>;
      
      public function MinionDetailsMinionMovesObject()
      {
         super();
         this.m_moveIcons = new Vector.<Sprite>();
         this.m_moveNames = new Vector.<TextField>(4);
         this.m_moveDetailsButtons = new Vector.<TCButton>(4);
      }
      
      public function LoadSprites() : void
      {
         var _loc3_:int = 0;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_movesBackground");
         addChild(this.m_background);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15461355;
         _loc1_.size = 15;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         var _loc2_:Array = [this.BringInButtonPopup1,this.BringInButtonPopup2,this.BringInButtonPopup3,this.BringInButtonPopup4];
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            this.m_moveNames[_loc3_] = new TextField();
            this.m_moveNames[_loc3_].x = 62;
            this.m_moveNames[_loc3_].y = 50 + _loc3_ * 51;
            this.m_moveNames[_loc3_].embedFonts = true;
            this.m_moveNames[_loc3_].defaultTextFormat = _loc1_;
            this.m_moveNames[_loc3_].text = "Temp move name";
            this.m_moveNames[_loc3_].width = 250;
            this.m_moveNames[_loc3_].selectable = false;
            this.m_moveNames[_loc3_].visible = false;
            addChild(this.m_moveNames[_loc3_]);
            this.m_moveDetailsButtons[_loc3_] = new TCButton(_loc2_[_loc3_],"menus_detailsButton");
            this.m_moveDetailsButtons[_loc3_].ActivateTooltip("this is a move");
            this.m_moveDetailsButtons[_loc3_].x = 228;
            this.m_moveDetailsButtons[_loc3_].y = 50 + _loc3_ * 51;
            this.m_moveDetailsButtons[_loc3_].visible = false;
            addChild(this.m_moveDetailsButtons[_loc3_]);
            _loc3_++;
         }
         this.m_nextUnderButton = Singleton.utility.m_spriteHandler.CreateSprite("menus_scrollButton_down");
         this.m_nextUnderButton.x = 318;
         this.m_nextUnderButton.y = 248;
         this.m_nextUnderButton.scaleX = -1;
         addChild(this.m_nextUnderButton);
         this.m_prevUnderButton = Singleton.utility.m_spriteHandler.CreateSprite("menus_scrollButton_down");
         this.m_prevUnderButton.x = 242;
         this.m_prevUnderButton.y = 247;
         addChild(this.m_prevUnderButton);
         this.m_nextButton = new TCButton(this.NextButtonHasBeenPressed,"menus_scrollButton_up");
         this.m_nextButton.x = 318;
         this.m_nextButton.y = 248;
         this.m_nextButton.scaleX = -1;
         addChild(this.m_nextButton);
         this.m_prevButton = new TCButton(this.PrevButtonHasBeenPressed,"menus_scrollButton_up");
         this.m_prevButton.x = 242;
         this.m_prevButton.y = 247;
         addChild(this.m_prevButton);
         this.visible = false;
      }
      
      public function SetNewMinion(param1:OwnedMinion) : void
      {
         this.m_currMoves = new Vector.<BaseMinionMove>();
         var _loc2_:int = 0;
         while(_loc2_ < param1.m_activeMoves.length)
         {
            if(param1.m_activeMoves[_loc2_] == Singleton.staticData.NO_MOVE)
            {
               break;
            }
            this.m_currMoves.push(Singleton.staticData.GetBaseMinionMove(param1.m_activeMoves[_loc2_]));
            _loc2_++;
         }
         this.m_currMovesPage = 0;
         this.BringInCurrMoves();
      }
      
      private function BringInCurrMoves() : void
      {
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Sprite = null;
         var _loc5_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < this.m_moveIcons.length)
         {
            removeChild(this.m_moveIcons[_loc1_]);
            this.m_moveDetailsButtons[_loc1_].visible = false;
            this.m_moveNames[_loc1_].visible = false;
            _loc1_++;
         }
         this.m_moveIcons = new Vector.<Sprite>();
         var _loc2_:int = this.m_currMovesPage * 4;
         _loc1_ = _loc2_;
         while(_loc1_ < _loc2_ + 4 && _loc1_ < this.m_currMoves.length)
         {
            _loc3_ = _loc1_ - _loc2_;
            (_loc4_ = Singleton.utility.m_spriteHandler.CreateSprite(this.m_currMoves[_loc1_].m_moveIcon)).scaleX = 0.75;
            _loc4_.scaleY = 0.75;
            _loc4_.x = 20;
            _loc4_.y = 44 + _loc3_ * 51;
            addChild(_loc4_);
            this.m_moveIcons.push(_loc4_);
            this.m_moveNames[_loc3_].text = this.m_currMoves[_loc1_].m_moveName;
            this.m_moveNames[_loc3_].visible = true;
            this.m_moveDetailsButtons[_loc3_].visible = true;
            this.m_moveDetailsButtons[_loc3_].SetNewPopupSprite(this.m_currMoves[_loc1_].GetToolTipForMoveDescription());
            _loc1_++;
         }
         if(this.m_currMoves.length > 4)
         {
            _loc5_ = Math.ceil(this.m_currMoves.length / 4);
            if(this.m_currMovesPage == 0)
            {
               this.m_nextButton.visible = true;
               this.m_nextUnderButton.visible = false;
               this.m_prevButton.visible = false;
               this.m_prevUnderButton.visible = true;
            }
            else if(this.m_currMovesPage == _loc5_ - 1)
            {
               this.m_nextButton.visible = false;
               this.m_nextUnderButton.visible = true;
               this.m_prevButton.visible = true;
               this.m_prevUnderButton.visible = false;
            }
            else
            {
               this.m_nextButton.visible = true;
               this.m_nextUnderButton.visible = true;
               this.m_prevButton.visible = true;
               this.m_prevUnderButton.visible = true;
            }
         }
         else
         {
            this.m_nextButton.visible = false;
            this.m_nextUnderButton.visible = false;
            this.m_prevButton.visible = false;
            this.m_prevUnderButton.visible = false;
         }
      }
      
      private function BringInButtonPopup1(param1:MouseEvent) : void
      {
      }
      
      private function BringInButtonPopup2(param1:MouseEvent) : void
      {
      }
      
      private function BringInButtonPopup3(param1:MouseEvent) : void
      {
      }
      
      private function BringInButtonPopup4(param1:MouseEvent) : void
      {
      }
      
      private function NextButtonHasBeenPressed(param1:MouseEvent) : void
      {
         ++this.m_currMovesPage;
         this.BringInCurrMoves();
      }
      
      private function PrevButtonHasBeenPressed(param1:MouseEvent) : void
      {
         --this.m_currMovesPage;
         this.BringInCurrMoves();
      }
      
      public function BringIn() : void
      {
         this.visible = true;
      }
      
      public function BringOut() : void
      {
         this.visible = false;
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         if(this.m_nextButton.visible)
         {
            this.m_nextButton.m_isActive = true;
         }
         if(this.m_prevButton.visible)
         {
            this.m_prevButton.m_isActive = true;
         }
         var _loc1_:int = 0;
         while(_loc1_ < 4)
         {
            if(this.m_moveDetailsButtons[_loc1_].visible)
            {
               this.m_moveDetailsButtons[_loc1_].m_isActive = true;
            }
            _loc1_++;
         }
      }
   }
}
