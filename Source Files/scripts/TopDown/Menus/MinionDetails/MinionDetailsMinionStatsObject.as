package TopDown.Menus.MinionDetails
{
   import Minions.BaseMinion;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import States.MinionType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionDetailsMinionStatsObject extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private const m_maxStatPerBar:Number = 300;
      
      private var m_statTexts:Vector.<TextField>;
      
      private var m_statBars:Vector.<InterfaceBar>;
      
      private var m_typeIcon1:Sprite;
      
      private var m_typeIcon2:Sprite;
      
      private var m_statBonusText:TextField;
      
      public function MinionDetailsMinionStatsObject()
      {
         super();
         this.m_statTexts = new Vector.<TextField>(5);
         this.m_statBars = new Vector.<InterfaceBar>(5);
      }
      
      public function LoadSprites() : void
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_statsBackground");
         addChild(this.m_background);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 2961720;
         _loc1_.size = 15;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.LEFT;
         var _loc2_:Array = ["menus_statsBars_full_health","menus_statsBars_full_armor","menus_statsBars_full_attack","menus_statsBars_full_armorPenetration","menus_statsBars_full_speed"];
         _loc3_ = ["menus_statsBars_cap_health","menus_statsBars_cap_armor","menus_statsBars_cap_attack","menus_statsBars_cap_armorPenetration","menus_statsBars_cap_speed"];
         _loc4_ = 0;
         while(_loc4_ < 5)
         {
            this.m_statTexts[_loc4_] = new TextField();
            this.m_statTexts[_loc4_].x = 78;
            this.m_statTexts[_loc4_].y = 85 + _loc4_ * 29;
            this.m_statTexts[_loc4_].embedFonts = true;
            this.m_statTexts[_loc4_].defaultTextFormat = _loc1_;
            this.m_statTexts[_loc4_].text = "16";
            this.m_statTexts[_loc4_].width = 50;
            this.m_statTexts[_loc4_].selectable = false;
            addChild(this.m_statTexts[_loc4_]);
            this.m_statBars[_loc4_] = new InterfaceBar(_loc2_[_loc4_],_loc3_[_loc4_]);
            this.m_statBars[_loc4_].x = 110;
            this.m_statBars[_loc4_].y = 88 + _loc4_ * 29;
            addChild(this.m_statBars[_loc4_]);
            _loc4_++;
         }
         this.m_statBonusText = new TextField();
         this.m_statBonusText.x = 78 + 37;
         this.m_statBonusText.y = 85;
         this.m_statBonusText.embedFonts = true;
         this.m_statBonusText.defaultTextFormat = _loc1_;
         this.m_statBonusText.text = "+5%";
         this.m_statBonusText.width = 50;
         this.m_statBonusText.selectable = false;
         addChild(this.m_statBonusText);
         this.visible = false;
      }
      
      public function SetNewMinion(param1:OwnedMinion) : void
      {
         var _loc2_:int = param1.m_minionDexID;
         var _loc3_:BaseMinion = Singleton.staticData.GetBaseMinion(_loc2_);
         param1.CalculateCurrStats();
         this.m_statTexts[0].text = "" + param1.m_currHealthStat;
         this.m_statBars[0].SetBarSize(param1.m_currHealthStat / this.m_maxStatPerBar);
         this.m_statTexts[1].text = "" + param1.m_currEnergyStat;
         this.m_statBars[1].SetBarSize(param1.m_currEnergyStat / this.m_maxStatPerBar);
         this.m_statTexts[2].text = "" + param1.m_currAttackStat;
         this.m_statBars[2].SetBarSize(param1.m_currAttackStat / this.m_maxStatPerBar);
         this.m_statTexts[3].text = "" + param1.m_currHealingStat;
         this.m_statBars[3].SetBarSize(param1.m_currHealingStat / this.m_maxStatPerBar);
         this.m_statTexts[4].text = "" + param1.m_currSpeedStat;
         this.m_statBars[4].SetBarSize(param1.m_currSpeedStat / this.m_maxStatPerBar);
         if(this.m_typeIcon1 != null && this.m_typeIcon1.parent != null)
         {
            this.m_typeIcon1.parent.removeChild(this.m_typeIcon1);
         }
         if(this.m_typeIcon2 != null && this.m_typeIcon2.parent != null)
         {
            this.m_typeIcon2.parent.removeChild(this.m_typeIcon2);
         }
         if(_loc3_.m_minionType1 != MinionType.TYPE_NONE)
         {
            this.m_typeIcon1 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc3_.m_minionType1));
            this.m_typeIcon1.x = 127;
            this.m_typeIcon1.y = 53;
            addChild(this.m_typeIcon1);
         }
         if(_loc3_.m_minionType2 != MinionType.TYPE_NONE)
         {
            this.m_typeIcon2 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc3_.m_minionType2));
            this.m_typeIcon2.x = 209;
            this.m_typeIcon2.y = 53;
            addChild(this.m_typeIcon2);
         }
         this.m_statBonusText.y = 85 + param1.m_statBonus * 29;
         var _loc4_:int = 0;
         switch(param1.m_statBonus)
         {
            case 0:
               _loc4_ = param1.m_currHealthStat;
               break;
            case 1:
               _loc4_ = param1.m_currEnergyStat;
               break;
            case 2:
               _loc4_ = param1.m_currAttackStat;
               break;
            case 3:
               _loc4_ = param1.m_currHealingStat;
               break;
            case 4:
               _loc4_ = param1.m_currSpeedStat;
         }
         if(_loc4_ > 65)
         {
            this.m_statBonusText.x = 78 + 37;
         }
         else
         {
            this.m_statBonusText.x = 270;
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
      
      public function BringIn() : void
      {
         this.visible = true;
      }
      
      public function BringOut() : void
      {
         this.visible = false;
      }
   }
}
