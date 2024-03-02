package SharedObjects.TalentTree
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TalentTreeAdvancedModeScreen extends GameObject
   {
       
      
      private var m_talentPointText:TextField;
      
      private var m_talentTreeNamesText:Vector.<TextField>;
      
      private var m_talentTreeAdvancedModePages:Vector.<TalentTreeAdvancedModePage>;
      
      private var m_currTab:int;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_updateTreeFunction:Function;
      
      private var m_tabsButtons:Vector.<TCButton>;
      
      private var m_talentTreeIndicatorGlows:Vector.<Sprite>;
      
      public function TalentTreeAdvancedModeScreen(param1:Function)
      {
         super();
         this.m_updateTreeFunction = param1;
         this.m_talentTreeNamesText = new Vector.<TextField>(3);
         this.m_talentTreeAdvancedModePages = new Vector.<TalentTreeAdvancedModePage>(3);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_talentTreeAdvancedModePages.length)
         {
            this.m_talentTreeAdvancedModePages[_loc2_] = new TalentTreeAdvancedModePage(this.NodeHasBeenPressed,_loc2_);
            _loc2_++;
         }
         this.m_tabsButtons = new Vector.<TCButton>(3);
         this.m_talentTreeIndicatorGlows = new Vector.<Sprite>(3);
         this.m_currTab = 0;
      }
      
      public function SetTabToCurrentSpecialization(param1:OwnedMinion) : void
      {
         this.m_currTab = param1.m_currSpecialization;
      }
      
      public function LoadSprites() : void
      {
         var _loc6_:Sprite = null;
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16771584;
         _loc1_.size = 20;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_talentPointText = new TextField();
         this.m_talentPointText.x = 42;
         this.m_talentPointText.y = 310;
         this.m_talentPointText.embedFonts = true;
         this.m_talentPointText.defaultTextFormat = _loc1_;
         this.m_talentPointText.text = "Points: 15";
         this.m_talentPointText.width = 280;
         this.m_talentPointText.selectable = false;
         addChild(this.m_talentPointText);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_talentTreeAdvancedModePages.length)
         {
            this.m_talentTreeAdvancedModePages[_loc2_].LoadSprites();
            addChild(this.m_talentTreeAdvancedModePages[_loc2_]);
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
            this.m_talentTreeIndicatorGlows[_loc4_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_otherTreeIndicator");
            this.m_talentTreeIndicatorGlows[_loc4_].x = 10 + _loc4_ * 105;
            this.m_talentTreeIndicatorGlows[_loc4_].y = 19;
            addChild(this.m_talentTreeIndicatorGlows[_loc4_]);
            this.m_talentTreeIndicatorGlows[_loc4_].visible = false;
            this.m_talentTreeNamesText[_loc4_] = new TextField();
            this.m_talentTreeNamesText[_loc4_].x = -51 + _loc4_ * 108;
            this.m_talentTreeNamesText[_loc4_].y = 24;
            this.m_talentTreeNamesText[_loc4_].embedFonts = true;
            this.m_talentTreeNamesText[_loc4_].defaultTextFormat = _loc3_;
            this.m_talentTreeNamesText[_loc4_].text = "(TEST)";
            this.m_talentTreeNamesText[_loc4_].width = 250;
            this.m_talentTreeNamesText[_loc4_].selectable = false;
            addChild(this.m_talentTreeNamesText[_loc4_]);
            _loc4_++;
         }
         var _loc5_:Array = [this.Tab1Pressed,this.Tab2Pressed,this.Tab3Pressed];
         _loc2_ = 0;
         while(_loc2_ < this.m_tabsButtons.length)
         {
            (_loc6_ = new Sprite()).graphics.beginFill(16711680);
            _loc6_.graphics.drawRect(0,0,103,32);
            _loc6_.graphics.endFill();
            this.m_tabsButtons[_loc2_] = new TCButton(_loc5_[_loc2_]);
            this.m_tabsButtons[_loc2_].CreateButton(_loc6_);
            this.m_tabsButtons[_loc2_].x = 23 + _loc2_ * 105;
            this.m_tabsButtons[_loc2_].y = 24;
            this.m_tabsButtons[_loc2_].visible = false;
            addChild(this.m_tabsButtons[_loc2_]);
            _loc2_++;
         }
         this.visible = false;
      }
      
      public function NodeHasBeenPressed() : void
      {
         this.ExitOut();
         this.m_updateTreeFunction.call();
      }
      
      public function Tab1Pressed(param1:MouseEvent) : void
      {
         this.CleanUp();
         this.m_talentTreeAdvancedModePages[0].BringIn(this.m_currMinion);
         this.m_currTab = 0;
         this.SetUpTalentPointText(this.m_currTab);
      }
      
      public function Tab2Pressed(param1:MouseEvent) : void
      {
         this.CleanUp();
         this.m_talentTreeAdvancedModePages[1].BringIn(this.m_currMinion);
         this.m_currTab = 1;
         this.SetUpTalentPointText(this.m_currTab);
      }
      
      public function Tab3Pressed(param1:MouseEvent) : void
      {
         this.CleanUp();
         this.m_talentTreeAdvancedModePages[2].BringIn(this.m_currMinion);
         this.m_currTab = 2;
         this.SetUpTalentPointText(this.m_currTab);
      }
      
      private function SetUpTalentPointText(param1:int) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         var _loc3_:int = this.m_currMinion.m_maxTalentPoints - this.m_currMinion.m_availableTalentPoints;
         if(param1 != this.m_currMinion.m_currSpecialization && _loc3_ < 10)
         {
            _loc2_.color = 15556190;
            _loc2_.size = 17;
            this.m_talentPointText.defaultTextFormat = _loc2_;
            this.m_talentPointText.text = "Reset to " + this.m_currMinion.m_baseMinion.GetTalentTree(param1).m_talentTreeName.toLowerCase() + " to add points here";
         }
         else
         {
            _loc2_.color = 16771584;
            _loc2_.size = 20;
            this.m_talentPointText.defaultTextFormat = _loc2_;
            this.m_talentPointText.text = "Points: " + this.m_currMinion.m_availableTalentPoints;
         }
         var _loc4_:int = 0;
         while(_loc4_ < 3)
         {
            if(_loc4_ != this.m_currMinion.m_currSpecialization && _loc3_ > 10 && this.m_currMinion.m_availableTalentPoints > 0)
            {
               this.m_talentTreeIndicatorGlows[_loc4_].visible = true;
            }
            else
            {
               this.m_talentTreeIndicatorGlows[_loc4_].visible = false;
            }
            _loc4_++;
         }
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         this.visible = true;
         this.m_currMinion = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_talentTreeAdvancedModePages.length)
         {
            this.m_talentTreeNamesText[_loc2_].text = param1.m_baseMinion.GetTalentTree(_loc2_).m_talentTreeName;
            _loc2_++;
         }
         this.m_talentTreeAdvancedModePages[this.m_currTab].BringIn(param1);
         this.SetUpTalentPointText(this.m_currTab);
      }
      
      public function ExitOut() : void
      {
         this.visible = false;
      }
      
      public function CleanUp() : void
      {
         this.m_talentTreeAdvancedModePages[this.m_currTab].ExitOut();
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         if(this.m_talentTreeAdvancedModePages[0].visible)
         {
            this.m_talentTreeAdvancedModePages[0].UpdateFullFrames();
            this.m_tabsButtons[1].m_isActive = true;
            this.m_tabsButtons[2].m_isActive = true;
         }
         else if(this.m_talentTreeAdvancedModePages[1].visible)
         {
            this.m_talentTreeAdvancedModePages[1].UpdateFullFrames();
            this.m_tabsButtons[0].m_isActive = true;
            this.m_tabsButtons[2].m_isActive = true;
         }
         else if(this.m_talentTreeAdvancedModePages[2].visible)
         {
            this.m_talentTreeAdvancedModePages[2].UpdateFullFrames();
            this.m_tabsButtons[0].m_isActive = true;
            this.m_tabsButtons[1].m_isActive = true;
         }
      }
   }
}
