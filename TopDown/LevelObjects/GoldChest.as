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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               this.m_hasBeenUsed = false;
            }
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.AddSprite();
            if(!(_loc2_ && _loc2_))
            {
               if(this.m_hasBeenUsed)
               {
                  if(!_loc2_)
                  {
                     addr36:
                     m_currSprite.alpha = 0;
                  }
               }
               return;
            }
         }
         §§goto(addr36);
      }
      
      override public function OnColl() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.m_hasBeenUsed)
         {
            return;
         }
         super.OnColl();
         if(!_loc2_)
         {
            §§push(Singleton.utility);
            if(!_loc2_)
            {
               §§pop().m_soundController.PlaySound("tower_openingChest",0.5);
               addr30:
               §§push(Singleton.utility);
            }
            §§pop().m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.PlayMoneyAnimation();
            §§push(Singleton.dynamicData);
            §§push(Singleton.dynamicData.m_currMoney);
            §§push(Singleton.staticData.GetMoneyRewardForCurrentFloor());
            if(_loc3_)
            {
               §§push(§§pop() / 3);
            }
            §§pop().m_currMoney = §§pop() + §§pop();
            if(!(_loc2_ && _loc1_))
            {
               this.m_hasBeenUsed = true;
            }
            var _loc1_:GoldChestTopLayer = GoldChestTopLayer(Singleton.staticData.GetCurrentLevel().GetLevelObjectAt(this.m_arraySpotOfTopObject));
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.m_hasBeenUsed = true;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr102:
                  TweenLite.to(m_currSprite,0.3,{"alpha":0});
                  if(_loc3_)
                  {
                     TweenLite.to(_loc1_.m_currSprite,0.3,{"alpha":0});
                  }
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr30);
      }
   }
}
