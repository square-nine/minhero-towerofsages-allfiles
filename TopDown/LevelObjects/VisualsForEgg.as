package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class VisualsForEgg extends VisualLevelObjectWithHeight
   {
       
      
      public var m_eggID:int;
      
      private var m_mask:Sprite;
      
      public function VisualsForEgg()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super.AddSprite();
            this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite("eggery_egg");
            this.m_mask.x = m_initialX;
            this.m_mask.y = m_initialY;
            if(_loc1_ || Boolean(this))
            {
               this.m_mask.scaleX = m_initialScaleX;
               this.m_mask.scaleY = m_initialScaleY;
               if(_loc1_ || _loc1_)
               {
                  this.m_mask.rotation = m_initialRotation;
                  m_addToSprite.addChild(this.m_mask);
                  addr74:
                  this.m_mask.cacheAsBitmap = true;
                  if(_loc1_)
                  {
                     m_currSprite.cacheAsBitmap = true;
                     if(_loc1_)
                     {
                        m_currSprite.mask = this.m_mask;
                     }
                     if(Singleton.dynamicData.m_numOfMinionsLeftToChoose != 0)
                     {
                        m_currSprite.y = m_initialY;
                     }
                     §§goto(addr112);
                  }
                  m_currSprite.y = m_initialY + 180;
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr74);
         }
         addr112:
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            m_addToSprite.removeChild(this.m_mask);
            if(_loc1_)
            {
               addr21:
               super.Cleanup();
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function MoveEggIntoGround() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            TweenLite.to(m_currSprite,5.5,{"y":"180"});
            if(!_loc1_)
            {
               §§goto(addr37);
            }
            §§goto(addr46);
         }
         addr37:
         TweenLite.to(this,5.5,{"m_activationHieghtPoint":"180"});
         if(!_loc1_)
         {
            addr46:
            Singleton.utility.m_soundController.PlaySound("tower_eggsGoingIntoTheGround",0.02);
         }
      }
   }
}
