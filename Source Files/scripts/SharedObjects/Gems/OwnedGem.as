package SharedObjects.Gems
{
   import States.StatType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class OwnedGem
   {
       
      
      private var _rawStats:Vector.<Number>;
      
      public var m_tier:int;
      
      public var m_facetPositions:Vector.<int>;
      
      public function OwnedGem()
      {
         super();
         this._rawStats = new Vector.<Number>(5);
         this._rawStats[StatType.STAT_HEALTH] = 0;
         this._rawStats[StatType.STAT_ENERGY] = 0;
         this._rawStats[StatType.STAT_ATTACK] = 0;
         this._rawStats[StatType.STAT_HEALING] = 0;
         this._rawStats[StatType.STAT_SPEED] = 0;
         this.m_facetPositions = new Vector.<int>(12);
         this.GetNewFacets();
      }
      
      public function GetNewFacets() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Vector.<Boolean> = new Vector.<Boolean>(12);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc1_[_loc2_] = true;
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < 12)
         {
            do
            {
               _loc4_ = Math.random() * 12;
            }
            while(!_loc1_[_loc4_]);
            
            _loc1_[_loc4_] = false;
            this.m_facetPositions[_loc3_] = _loc4_ * 30;
            _loc3_++;
         }
      }
      
      public function CreateGemWithTier(param1:int, param2:int) : void
      {
         this.m_tier = param1;
         var _loc3_:Number = this.GetRandomGemMod();
         this._rawStats[param2] = Math.pow(3,param1) * _loc3_;
      }
      
      private function GetRandomGemMod() : Number
      {
         return 1 + (Math.random() * 85 - 40) / 100;
      }
      
      public function CreateRandomGemWithTier(param1:int, param2:Number = -99) : void
      {
         var _loc3_:int = int(Math.random() * 5);
         this.m_tier = param1;
         var _loc4_:Number = this.GetRandomGemMod();
         this._rawStats[_loc3_] = Math.pow(3,param1) * _loc4_;
      }
      
      private function GetMaxRawStat() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._rawStats.length)
         {
            _loc1_ += this._rawStats[_loc2_];
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function GetGemName() : String
      {
         return "Gem  (tier " + this.m_tier + ")";
      }
      
      public function GetTooltip() : Sprite
      {
         var _loc9_:int = 0;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 15921906;
         _loc2_.size = 21;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         var _loc3_:TextField = new TextField();
         _loc3_.y = -6;
         _loc3_.width = 200;
         _loc3_.embedFonts = true;
         _loc3_.defaultTextFormat = _loc2_;
         _loc3_.wordWrap = true;
         _loc3_.autoSize = TextFieldAutoSize.CENTER;
         _loc3_.text = this.GetGemName();
         _loc3_.selectable = false;
         var _loc4_:TextField;
         (_loc4_ = this.GetTextFieldForGemDescription()).y = 27 + _loc3_.y;
         if(_loc3_.width > _loc4_.width)
         {
            _loc9_ = _loc3_.width;
         }
         else
         {
            _loc9_ = _loc4_.width;
         }
         var _loc10_:int = _loc4_.textHeight;
         _loc1_.graphics.beginFill(15066856,0.85);
         _loc1_.graphics.drawRoundRect(-5 - 2,-5 - 2,_loc9_ + 5 * 2 + 2 * 2,_loc10_ + 20 + 5 * 3 + 2 * 2,6);
         _loc1_.graphics.drawRoundRect(-5,-5,_loc9_ + 5 * 2,_loc10_ + 20 + 5 * 3,6);
         _loc1_.graphics.endFill();
         _loc1_.graphics.beginFill(6186100,0.95);
         _loc1_.graphics.drawRoundRect(-5,-5,_loc9_ + 5 * 2,_loc10_ + 20 + 5 * 3,6);
         _loc1_.graphics.endFill();
         _loc1_.addChild(_loc3_);
         _loc1_.addChild(_loc4_);
         return _loc1_;
      }
      
      public function GetTextFieldForGemDescription() : TextField
      {
         var _loc1_:String = "";
         var _loc2_:* = "";
         var _loc3_:Vector.<Object> = new Vector.<Object>();
         var _loc4_:Vector.<int> = new Vector.<int>();
         if(this._rawStats[StatType.STAT_HEALTH] > 0)
         {
            _loc2_ = "+" + this.GetExtraStat(StatType.STAT_HEALTH) + " Health\n";
            _loc1_ += this.CreateAddText(_loc2_,16546169,_loc3_,_loc4_);
         }
         if(this._rawStats[StatType.STAT_ENERGY] > 0)
         {
            _loc2_ = "+" + this.GetExtraStat(StatType.STAT_ENERGY) + " Energy\n";
            _loc1_ += this.CreateAddText(_loc2_,13273818,_loc3_,_loc4_);
         }
         if(this._rawStats[StatType.STAT_ATTACK] > 0)
         {
            _loc2_ = "+" + this.GetExtraStat(StatType.STAT_ATTACK) + " Attack\n";
            _loc1_ += this.CreateAddText(_loc2_,16155468,_loc3_,_loc4_);
         }
         if(this._rawStats[StatType.STAT_HEALING] > 0)
         {
            _loc2_ = "+" + this.GetExtraStat(StatType.STAT_HEALING) + " Healing\n";
            _loc1_ += this.CreateAddText(_loc2_,16775012,_loc3_,_loc4_);
         }
         if(this._rawStats[StatType.STAT_SPEED] > 0)
         {
            _loc2_ = "+" + this.GetExtraStat(StatType.STAT_SPEED) + " Speed\n";
            _loc1_ += this.CreateAddText(_loc2_,7515622,_loc3_,_loc4_);
         }
         var _loc6_:TextFormat;
         (_loc6_ = new TextFormat()).color = 65280;
         _loc6_.size = 17;
         _loc6_.font = "BurbinCasual";
         _loc6_.align = TextFormatAlign.LEFT;
         var _loc7_:TextField;
         (_loc7_ = new TextField()).embedFonts = true;
         _loc7_.defaultTextFormat = _loc6_;
         _loc7_.autoSize = TextFieldAutoSize.LEFT;
         _loc7_.text = _loc1_;
         _loc7_.width = 200;
         _loc7_.selectable = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         while(_loc9_ < _loc3_.length)
         {
            _loc6_.color = _loc3_[_loc9_];
            _loc7_.setTextFormat(_loc6_,_loc8_,_loc4_[_loc9_] + _loc8_);
            _loc8_ += _loc4_[_loc9_];
            _loc9_++;
         }
         return _loc7_;
      }
      
      private function CreateAddText(param1:String, param2:Object, param3:Vector.<Object>, param4:Vector.<int>) : String
      {
         param3.push(param2);
         param4.push(param1.length);
         return param1;
      }
      
      public function CombineGems(param1:OwnedGem, param2:OwnedGem) : OwnedGem
      {
         var _loc3_:OwnedGem = new OwnedGem();
         var _loc4_:int = 0;
         while(_loc4_ < this._rawStats.length)
         {
            _loc3_.m_rawStats[_loc4_] = this._rawStats[_loc4_];
            _loc3_.m_rawStats[_loc4_] += param1.m_rawStats[_loc4_];
            _loc3_.m_rawStats[_loc4_] += param2.m_rawStats[_loc4_];
            _loc4_++;
         }
         _loc3_.m_tier = this.m_tier;
         ++_loc3_.m_tier;
         return _loc3_;
      }
      
      public function GetExtraStat(param1:int) : Number
      {
         var _loc3_:int = 0;
         var _loc2_:Number = 3;
         if(this.m_tier > 1)
         {
            _loc3_ = 2;
            while(_loc3_ < this.m_tier + 1)
            {
               _loc2_ += _loc3_;
               _loc3_++;
            }
         }
         _loc2_ *= this.GetRatioOfStat(param1);
         _loc2_ *= this.GetPowerOfGem();
         return Math.ceil(_loc2_);
      }
      
      public function GetRatioOfStat(param1:int) : Number
      {
         return this._rawStats[param1] / this.GetMaxRawStat();
      }
      
      private function GetPowerOfGem() : Number
      {
         return this.GetMaxRawStat() / Math.pow(3,this.m_tier);
      }
      
      public function GetExtraPercentage(param1:int) : Number
      {
         return 0;
      }
      
      public function get m_rawStats() : Vector.<Number>
      {
         return this._rawStats;
      }
      
      public function set m_rawStats(param1:Vector.<Number>) : void
      {
         this._rawStats = param1;
      }
      
      public function SaveGemAtSlot(param1:int, param2:String = "") : void
      {
         Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1] = true;
         Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "tier"] = this.m_tier;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_facetPositions.length)
         {
            Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "facet" + _loc3_] = this.m_facetPositions[_loc3_];
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._rawStats.length)
         {
            Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "stat" + _loc3_] = this._rawStats[_loc3_];
            _loc3_++;
         }
      }
      
      public function CreateGemFromSlot(param1:int, param2:String = "") : void
      {
         this.m_tier = Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "tier"];
         var _loc3_:int = 0;
         while(_loc3_ < this.m_facetPositions.length)
         {
            this.m_facetPositions[_loc3_] = Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "facet" + _loc3_];
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._rawStats.length)
         {
            this._rawStats[_loc3_] = Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "stat" + _loc3_];
            _loc3_++;
         }
      }
      
      public function OutputStats() : void
      {
      }
   }
}
