package TopDown.LevelObjects
{
   import SharedObjects.Gems.OwnedGem;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class GemChest extends BaseLevelCollObject
   {
       
      
      public var m_hasBeenUsed:Boolean;
      
      public var m_arraySpotOfTopObject:int;
      
      public function GemChest()
      {
         super();
         this.m_hasBeenUsed = false;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         if(this.m_hasBeenUsed)
         {
            m_currSprite.alpha = 0;
         }
      }
      
      override public function OnColl() : void
      {
         if(this.m_hasBeenUsed)
         {
            return;
         }
         super.OnColl();
         Singleton.utility.m_soundController.PlaySound("tower_openingChest",0.5);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.PlayGemAnimation();
         var _loc1_:OwnedGem = new OwnedGem();
         _loc1_.CreateRandomGemWithTier(Singleton.staticData.GetGemTierRewardForCurrentFloor());
         Singleton.dynamicData.AddToOwnedGems(_loc1_);
         this.m_hasBeenUsed = true;
         var _loc2_:GemChestTopLayer = GemChestTopLayer(Singleton.staticData.GetCurrentLevel().GetLevelObjectAt(this.m_arraySpotOfTopObject));
         _loc2_.m_hasBeenUsed = true;
         TweenLite.to(m_currSprite,0.3,{"alpha":0});
         TweenLite.to(_loc2_.m_currSprite,0.3,{"alpha":0});
      }
   }
}
