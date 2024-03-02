package SharedObjects.TalentTree
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TalentTreeNode extends GameObject
   {
       
      
      public var m_iconButton:TCButton;
      
      private var m_numOfPointsTextBackground:Sprite;
      
      private var m_numOfPointsText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_currMove:int;
      
      private var m_updateTreeFunction:Function;
      
      private var m_numOfPointsInTree:int;
      
      private var m_numOfPointsInTreeNeeded:int;
      
      public var m_numOfPointsInNode:int;
      
      public var m_maxNumOfPointsInNode:int;
      
      private var m_hasDependancy:Boolean;
      
      public var m_treePosition:int;
      
      public function TalentTreeNode(param1:Function)
      {
         super();
         this.m_updateTreeFunction = param1;
      }
      
      public function LoadSprites() : void
      {
         this.m_iconButton = new TCButton(this.NodeHasBeenPressed);
         addChild(this.m_iconButton);
         this.m_iconButton.ActivateTooltip();
         this.m_numOfPointsTextBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_pointsBubble");
         this.m_numOfPointsTextBackground.x = 29;
         this.m_numOfPointsTextBackground.y = 37;
         addChild(this.m_numOfPointsTextBackground);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15066597;
         _loc1_.size = 10;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_numOfPointsText = new TextField();
         this.m_numOfPointsText.x = 20;
         this.m_numOfPointsText.y = 37;
         this.m_numOfPointsText.embedFonts = true;
         this.m_numOfPointsText.defaultTextFormat = _loc1_;
         this.m_numOfPointsText.text = "1/2";
         this.m_numOfPointsText.width = 50;
         this.m_numOfPointsText.selectable = false;
         this.m_numOfPointsText.scaleX = 0.95;
         this.m_numOfPointsText.scaleY = 0.95;
         addChild(this.m_numOfPointsText);
      }
      
      public function Create(param1:OwnedMinion, param2:int, param3:int, param4:int, param5:int) : void
      {
         this.m_currMove = param2;
         this.m_currMinion = param1;
         this.m_numOfPointsText.text = "" + param3 + "/" + param4;
         this.m_numOfPointsInNode = param3;
         this.m_maxNumOfPointsInNode = param4;
         this.m_hasDependancy = true;
         this.m_treePosition = param5;
         var _loc6_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param2);
         this.m_iconButton.CreateButtonWithStrings(_loc6_.m_moveIcon);
         this.m_iconButton.SetNewPopupSprite(_loc6_.GetToolTipForMoveDescription());
      }
      
      public function SetIfTheNodeLooksActive(param1:int, param2:int, param3:TalentTreeNode) : void
      {
         this.m_numOfPointsInTree = param1;
         this.m_numOfPointsInTreeNeeded = param2;
         var _loc4_:int = 0;
         if(this.m_currMinion != null)
         {
            _loc4_ = this.m_currMinion.m_maxTalentPoints - this.m_currMinion.m_availableTalentPoints;
         }
         if(param3 != null && param3.m_numOfPointsInNode != param3.m_maxNumOfPointsInNode)
         {
            TweenMax.to(this,0.8,{"colorMatrixFilter":{
               "saturation":0.1,
               "brightness":0.5
            }});
            this.m_hasDependancy = false;
         }
         else if(this.m_numOfPointsInTree < this.m_numOfPointsInTreeNeeded)
         {
            TweenMax.to(this,0.8,{"colorMatrixFilter":{
               "saturation":0.1,
               "brightness":0.5
            }});
            this.m_hasDependancy = true;
         }
         else if(this.m_currMinion != null && this.m_treePosition != this.m_currMinion.m_currSpecialization && _loc4_ < 11)
         {
            TweenMax.to(this,0.8,{"colorMatrixFilter":{
               "saturation":0.1,
               "brightness":0.5
            }});
            this.m_hasDependancy = true;
         }
         else
         {
            TweenMax.to(this,0.8,{"colorMatrixFilter":{
               "saturation":1,
               "brightness":1
            }});
            this.m_hasDependancy = true;
         }
      }
      
      public function Cleanup() : void
      {
         this.m_iconButton.Cleanup();
      }
      
      public function NodeHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.m_currMinion != null)
         {
            _loc2_ = this.m_currMinion.m_maxTalentPoints - this.m_currMinion.m_availableTalentPoints;
         }
         if(!(this.m_numOfPointsInTree < this.m_numOfPointsInTreeNeeded || !this.m_hasDependancy))
         {
            if(!(this.m_currMinion != null && this.m_treePosition != this.m_currMinion.m_currSpecialization && _loc2_ < 11))
            {
               if(!(this.m_currMinion.IsMoveOwned(this.m_currMove) || this.m_currMinion.m_availableTalentPoints == 0))
               {
                  this.m_currMinion.AddMove(this.m_currMove);
                  this.m_updateTreeFunction.call();
               }
            }
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_iconButton.m_isActive = true;
      }
   }
}
