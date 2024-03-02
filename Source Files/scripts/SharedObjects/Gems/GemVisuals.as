package SharedObjects.Gems
{
   import States.StatType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class GemVisuals extends Sprite
   {
       
      
      public var m_shapeSprite:Sprite;
      
      public var m_mask:Sprite;
      
      public var m_gemColors:Vector.<Sprite>;
      
      public function GemVisuals()
      {
         super();
      }
      
      public function SetGem(param1:OwnedGem) : void
      {
         if(this.m_shapeSprite != null)
         {
            this.Cleanup();
         }
         if(param1.m_tier < 12)
         {
            this.m_shapeSprite = Singleton.utility.m_spriteHandler.CreateSprite("gemTier" + param1.m_tier + "_shape");
         }
         else
         {
            this.m_shapeSprite = Singleton.utility.m_spriteHandler.CreateSprite("gemTier11_shape");
         }
         this.m_gemColors = new Vector.<Sprite>(12);
         var _loc2_:int = 0;
         var _loc3_:Number = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            _loc3_ += param1.GetRatioOfStat(_loc4_) * this.m_gemColors.length;
            if(_loc3_ > 12)
            {
               _loc3_ = 12;
            }
            while(_loc2_ < _loc3_)
            {
               this.m_gemColors[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite(this.GetColorBasedOnStat(_loc4_));
               this.m_gemColors[_loc2_].x = this.m_shapeSprite.width / 2;
               this.m_gemColors[_loc2_].y = this.m_shapeSprite.height / 2;
               this.m_gemColors[_loc2_].rotation = param1.m_facetPositions[_loc2_];
               addChild(this.m_gemColors[_loc2_]);
               _loc2_++;
            }
            _loc4_++;
         }
         addChild(this.m_shapeSprite);
         if(param1.m_tier < 12)
         {
            this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite("gemTier" + param1.m_tier + "_mask");
         }
         else
         {
            this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite("gemTier11_mask");
         }
         addChild(this.m_mask);
         this.m_mask.cacheAsBitmap = true;
         mask = this.m_mask;
         this.cacheAsBitmap = true;
      }
      
      private function GetColorBasedOnStat(param1:int) : String
      {
         switch(param1)
         {
            case StatType.STAT_HEALTH:
               return "gemCornerRed";
            case StatType.STAT_ENERGY:
               return "gemCornerPurple";
            case StatType.STAT_ATTACK:
               return "gemCornerOrange";
            case StatType.STAT_HEALING:
               return "gemCornerYellow";
            default:
               return "gemCornerBlue";
         }
      }
      
      public function Cleanup() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_gemColors.length)
         {
            removeChild(this.m_gemColors[_loc1_]);
            _loc1_++;
         }
         removeChild(this.m_shapeSprite);
         this.m_shapeSprite = null;
         mask = null;
         removeChild(this.m_mask);
         this.m_mask = null;
      }
   }
}
