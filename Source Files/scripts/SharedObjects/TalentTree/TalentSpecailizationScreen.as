package SharedObjects.TalentTree
{
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TalentSpecailizationScreen extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_talentPointText:TextField;
      
      private var m_chooseSpecailizationText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_specializationNodes:Vector.<TalentTreeNode>;
      
      private var m_talentTreeNamesText:Vector.<TextField>;
      
      private var m_updateTreeFunction:Function;
      
      public function TalentSpecailizationScreen(param1:Function)
      {
         super();
         this.m_specializationNodes = new Vector.<TalentTreeNode>(3);
         this.m_updateTreeFunction = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_specializationNodes.length)
         {
            this.m_specializationNodes[_loc2_] = new TalentTreeNode(this.NodeHasBeenPressed);
            _loc2_++;
         }
         this.m_talentTreeNamesText = new Vector.<TextField>(3);
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_specializationBackground");
         this.m_background.x = 24;
         this.m_background.y = 116;
         addChild(this.m_background);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16771584;
         _loc1_.size = 20;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_talentPointText = new TextField();
         this.m_talentPointText.x = 64;
         this.m_talentPointText.y = 310;
         this.m_talentPointText.embedFonts = true;
         this.m_talentPointText.defaultTextFormat = _loc1_;
         this.m_talentPointText.text = "Points: 15";
         this.m_talentPointText.width = 250;
         this.m_talentPointText.selectable = false;
         addChild(this.m_talentPointText);
         this.m_chooseSpecailizationText = new TextField();
         this.m_chooseSpecailizationText.x = 61;
         this.m_chooseSpecailizationText.y = 69;
         this.m_chooseSpecailizationText.embedFonts = true;
         this.m_chooseSpecailizationText.defaultTextFormat = _loc1_;
         this.m_chooseSpecailizationText.text = "Choose a specialization";
         this.m_chooseSpecailizationText.width = 250;
         this.m_chooseSpecailizationText.selectable = false;
         addChild(this.m_chooseSpecailizationText);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_specializationNodes.length)
         {
            this.m_specializationNodes[_loc2_].LoadSprites();
            this.m_specializationNodes[_loc2_].x = 77 + _loc2_ * 76;
            this.m_specializationNodes[_loc2_].y = 172;
            addChild(this.m_specializationNodes[_loc2_]);
            _loc2_++;
         }
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.color = 16771584;
         _loc3_.size = 20;
         _loc3_.font = "BurbinCasual";
         _loc3_.align = TextFormatAlign.CENTER;
         var _loc4_:int = 0;
         while(_loc4_ < this.m_talentTreeNamesText.length)
         {
            this.m_talentTreeNamesText[_loc4_] = new TextField();
            this.m_talentTreeNamesText[_loc4_].x = -49 + _loc4_ * 104;
            this.m_talentTreeNamesText[_loc4_].y = 120;
            this.m_talentTreeNamesText[_loc4_].embedFonts = true;
            this.m_talentTreeNamesText[_loc4_].defaultTextFormat = _loc3_;
            this.m_talentTreeNamesText[_loc4_].text = "(TEST)";
            this.m_talentTreeNamesText[_loc4_].width = 250;
            this.m_talentTreeNamesText[_loc4_].selectable = false;
            addChild(this.m_talentTreeNamesText[_loc4_]);
            _loc4_++;
         }
         this.visible = false;
      }
      
      public function NodeHasBeenPressed() : void
      {
         this.ExitOut();
         this.m_updateTreeFunction.call();
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         this.visible = true;
         this.m_currMinion = param1;
         this.m_talentPointText.text = "Points: " + param1.m_availableTalentPoints;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_specializationNodes.length)
         {
            this.m_specializationNodes[_loc2_].Create(param1,param1.m_baseMinion.m_spealizationMoves[_loc2_],0,1,0);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_talentTreeNamesText.length)
         {
            this.m_talentTreeNamesText[_loc2_].text = param1.m_baseMinion.GetTalentTree(_loc2_).m_talentTreeName;
            _loc2_++;
         }
      }
      
      public function ExitOut() : void
      {
         this.visible = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_specializationNodes.length)
         {
            this.m_specializationNodes[_loc1_].Cleanup();
            _loc1_++;
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_specializationNodes.length)
         {
            this.m_specializationNodes[_loc1_].UpdateFullFrames();
            _loc1_++;
         }
      }
   }
}
