package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class GoldChest extends BaseLevelCollObject
   {
       
      
      public var m_hasBeenUsed:Boolean;
      
      public var m_arraySpotOfTopObject:int;
      
      public function GoldChest()
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
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.PlayMoneyAnimation();
         Singleton.dynamicData.m_currMoney += Singleton.staticData.GetMoneyRewardForCurrentFloor() / 3;
         this.m_hasBeenUsed = true;
         var _loc1_:GoldChestTopLayer = GoldChestTopLayer(Singleton.staticData.GetCurrentLevel().GetLevelObjectAt(this.m_arraySpotOfTopObject));
         _loc1_.m_hasBeenUsed = true;
         TweenLite.to(m_currSprite,0.3,{"alpha":0});
         TweenLite.to(_loc1_.m_currSprite,0.3,{"alpha":0});
      }
   }
}
