package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class HealStone extends BaseInGameInteractionObject
   {
       
      
      private var m_hasHealed:Boolean;
      
      private var m_healingGlow:Sprite;
      
      public function HealStone()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               m_interationID = 1;
            }
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.AddSprite();
            if(_loc2_)
            {
               this.m_healingGlow = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_healStone_glow");
               addr39:
               this.m_healingGlow.x = -45;
               if(!_loc1_)
               {
                  this.m_healingGlow.y = -42;
               }
               this.m_healingGlow.alpha = 0;
               if(!_loc1_)
               {
                  m_currSprite.addChild(this.m_healingGlow);
                  if(!(_loc1_ && _loc2_))
                  {
                     this.m_hasHealed = false;
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            m_currSprite.removeChild(this.m_healingGlow);
            if(_loc2_ || _loc2_)
            {
               addr27:
               super.Cleanup();
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function OnPotentialInteration() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            if(this.m_hasHealed)
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else
            {
               this.m_hasHealed = true;
               if(_loc2_ || Boolean(this))
               {
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.PlayHealedAnimation();
                  if(_loc2_)
                  {
                     addr59:
                     this.m_healingGlow.alpha = 0;
                  }
                  var _loc1_:TimelineLite = new TimelineLite();
                  if(!_loc3_)
                  {
                     _loc1_.append(new TweenLite(this.m_healingGlow,0.4,{"alpha":1}));
                     if(_loc2_)
                     {
                        addr81:
                        _loc1_.append(new TweenLite(this.m_healingGlow,0.2,{}));
                        if(!_loc3_)
                        {
                           _loc1_.append(new TweenLite(this.m_healingGlow,2,{"alpha":0}));
                           if(!_loc3_)
                           {
                              addr110:
                              §§push(Singleton.dynamicData);
                              if(!_loc3_)
                              {
                                 §§pop().HealAllOfAPlayersInPartyMinions();
                                 if(!_loc3_)
                                 {
                                    addr119:
                                    Singleton.dynamicData.SetNewReturnToOnDeathPoint();
                                 }
                                 return;
                              }
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr59);
      }
   }
}
