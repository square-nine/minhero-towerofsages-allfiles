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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               this.m_hasBeenUsed = false;
            }
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.AddSprite();
            if(_loc1_)
            {
               if(this.m_hasBeenUsed)
               {
                  if(!_loc2_)
                  {
                     addr24:
                     m_currSprite.alpha = 0;
                  }
               }
               return;
            }
         }
         §§goto(addr24);
      }
      
      override public function OnColl() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.m_hasBeenUsed)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               super.OnColl();
               if(!_loc4_)
               {
                  §§push(Singleton.utility);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().m_soundController.PlaySound("tower_openingChest",0.5);
                     addr54:
                     if(!_loc4_)
                     {
                        addr47:
                        §§push(Singleton.utility);
                     }
                     var _loc1_:OwnedGem = new OwnedGem();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc1_.CreateRandomGemWithTier(Singleton.staticData.GetGemTierRewardForCurrentFloor());
                        if(!_loc4_)
                        {
                           Singleton.dynamicData.AddToOwnedGems(_loc1_);
                           if(_loc3_)
                           {
                              addr85:
                              this.m_hasBeenUsed = true;
                           }
                        }
                        var _loc2_:GemChestTopLayer = GemChestTopLayer(Singleton.staticData.GetCurrentLevel().GetLevelObjectAt(this.m_arraySpotOfTopObject));
                        if(_loc3_ || _loc3_)
                        {
                           _loc2_.m_hasBeenUsed = true;
                           if(_loc3_)
                           {
                              TweenLite.to(m_currSprite,0.3,{"alpha":0});
                              if(_loc3_)
                              {
                                 TweenLite.to(_loc2_.m_currSprite,0.3,{"alpha":0});
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr85);
                  }
                  §§pop().m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.PlayGemAnimation();
                  §§goto(addr54);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr54);
      }
   }
}
