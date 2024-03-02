package TopDown.Menus.MinionDetails
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.Gems.GemVisuals;
   import SharedObjects.Gems.OwnedGem;
   import States.TopDownMenuState;
   import States.TopDownStates;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionDetailsMinionGemsObject extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_gemVisuals:Vector.<GemVisuals>;
      
      private var m_noGemVisuals:Vector.<Sprite>;
      
      private var m_gemButtons:Vector.<TCButton>;
      
      private var m_buttonsOverGems:Vector.<TCButton>;
      
      private var m_currMinion:OwnedMinion;
      
      public function MinionDetailsMinionGemsObject()
      {
         super();
         this.m_gemVisuals = new Vector.<GemVisuals>(4);
         this.m_gemButtons = new Vector.<TCButton>(4);
         this.m_buttonsOverGems = new Vector.<TCButton>(4);
         this.m_noGemVisuals = new Vector.<Sprite>(4);
      }
      
      public function LoadSprites() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemsBackground");
         addChild(this.m_background);
         var _loc1_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            _loc4_ = 0;
            while(_loc4_ < 2)
            {
               _loc1_ = _loc3_ * 2 + _loc4_;
               this.m_noGemVisuals[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_emptyGemSocket");
               this.m_noGemVisuals[_loc1_].x = 22 + _loc4_ * 150;
               this.m_noGemVisuals[_loc1_].y = 63 + _loc3_ * 90;
               addChild(this.m_noGemVisuals[_loc1_]);
               this.m_gemVisuals[_loc1_] = new GemVisuals();
               this.m_gemVisuals[_loc1_].x = this.m_noGemVisuals[_loc1_].x;
               this.m_gemVisuals[_loc1_].y = this.m_noGemVisuals[_loc1_].y;
               addChild(this.m_gemVisuals[_loc1_]);
               _loc4_++;
            }
            _loc3_++;
         }
         var _loc2_:Array = new Array(this.Gem1Pressed,this.Gem2Pressed,this.Gem3Pressed,this.Gem4Pressed);
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            _loc4_ = 0;
            while(_loc4_ < 2)
            {
               _loc1_ = _loc3_ * 2 + _loc4_;
               this.m_gemButtons[_loc1_] = new TCButton(_loc2_[_loc1_],"menus_changeButton");
               this.m_gemButtons[_loc1_].x = this.m_noGemVisuals[_loc1_].x + 65;
               this.m_gemButtons[_loc1_].y = this.m_noGemVisuals[_loc1_].y + 15;
               addChild(this.m_gemButtons[_loc1_]);
               this.m_buttonsOverGems[_loc1_] = new TCButton(_loc2_[_loc1_],"menus_emptyGemSocket");
               this.m_buttonsOverGems[_loc1_].x = this.m_noGemVisuals[_loc1_].x;
               this.m_buttonsOverGems[_loc1_].y = this.m_noGemVisuals[_loc1_].y;
               this.m_buttonsOverGems[_loc1_].visible = false;
               this.m_buttonsOverGems[_loc1_].ActivateTooltip("Insert Gem");
               addChild(this.m_buttonsOverGems[_loc1_]);
               _loc4_++;
            }
            _loc3_++;
         }
         this.visible = false;
      }
      
      public function BringIn() : void
      {
         this.visible = true;
      }
      
      public function SetNewMinion(param1:OwnedMinion) : void
      {
         var _loc2_:int = 0;
         var _loc3_:OwnedGem = null;
         this.m_currMinion = param1;
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            if(_loc2_ < param1.m_baseMinion.m_numberOfGems)
            {
               this.m_gemButtons[_loc2_].Cleanup();
               this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_changeButton");
            }
            else if(_loc2_ < param1.m_baseMinion.m_numberOfGems + param1.m_baseMinion.m_numberOfLockedGems)
            {
               this.m_gemButtons[_loc2_].Cleanup();
               this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_gemLockedButton");
            }
            else
            {
               this.m_gemButtons[_loc2_].Cleanup();
               if(Singleton.dynamicData.m_isExtraSponsorGemsIn)
               {
                  this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_changeButton");
               }
               else
               {
                  this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_gemPremiumButton");
               }
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc3_ = this.m_currMinion.GetGemAt(_loc2_);
            if(_loc3_ != null)
            {
               this.m_gemVisuals[_loc2_].SetGem(_loc3_);
               this.m_gemVisuals[_loc2_].visible = true;
               this.m_noGemVisuals[_loc2_].visible = false;
               this.m_buttonsOverGems[_loc2_].SetNewPopupSprite(_loc3_.GetTooltip());
            }
            else
            {
               this.m_gemVisuals[_loc2_].visible = false;
               this.m_noGemVisuals[_loc2_].visible = true;
            }
            _loc2_++;
         }
      }
      
      public function BringOut() : void
      {
         this.visible = false;
      }
      
      public function GemButtonPressed(param1:int) : void
      {
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_currState == TopDownStates.IN_MINION_STORAGE)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_gemMenu.BringIn(Singleton.utility.m_screenControllers.m_topDownScreen.m_minionStorage.m_minionDetails,TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE,this.m_currMinion,param1);
         }
         else
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_gemMenu.BringIn(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionDetailsScreen,TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS,this.m_currMinion,param1);
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         var _loc1_:int = 0;
         while(_loc1_ < 4)
         {
            if(_loc1_ < this.m_currMinion.m_baseMinion.m_numberOfGems)
            {
               this.m_gemButtons[_loc1_].m_isActive = true;
               this.m_buttonsOverGems[_loc1_].m_isActive = true;
               if(this.m_currMinion.GetGemAt(_loc1_) != null)
               {
                  this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = true;
               }
               else
               {
                  this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = false;
               }
            }
            else if(_loc1_ >= this.m_currMinion.m_baseMinion.m_numberOfGems + this.m_currMinion.m_baseMinion.m_numberOfLockedGems)
            {
               this.m_gemButtons[_loc1_].m_isActive = true;
               if(Singleton.dynamicData.m_isExtraSponsorGemsIn)
               {
                  this.m_buttonsOverGems[_loc1_].m_isActive = true;
                  if(this.m_currMinion.GetGemAt(_loc1_) != null)
                  {
                     this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = true;
                  }
                  else
                  {
                     this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = false;
                  }
               }
            }
            _loc1_++;
         }
      }
      
      private function Gem1Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(0);
      }
      
      private function Gem2Pressed(param1:MouseEvent) : void
      {
         if(1 < this.m_currMinion.m_baseMinion.m_numberOfGems + this.m_currMinion.m_baseMinion.m_numberOfLockedGems || Singleton.dynamicData.m_isExtraSponsorGemsIn)
         {
            this.GemButtonPressed(1);
         }
         else
         {
            Singleton.utility.m_bonusItemPopup.BringIn(true);
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
      
      private function Gem3Pressed(param1:MouseEvent) : void
      {
         if(2 < this.m_currMinion.m_baseMinion.m_numberOfGems + this.m_currMinion.m_baseMinion.m_numberOfLockedGems || Singleton.dynamicData.m_isExtraSponsorGemsIn)
         {
            this.GemButtonPressed(2);
         }
         else
         {
            Singleton.utility.m_bonusItemPopup.BringIn(true);
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
      
      private function Gem4Pressed(param1:MouseEvent) : void
      {
         if(3 < this.m_currMinion.m_baseMinion.m_numberOfGems + this.m_currMinion.m_baseMinion.m_numberOfLockedGems || Singleton.dynamicData.m_isExtraSponsorGemsIn)
         {
            this.GemButtonPressed(3);
         }
         else
         {
            Singleton.utility.m_bonusItemPopup.BringIn(true);
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
   }
}
