package TopDown.LevelObjects
{
   import States.MinionDexID;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class TitanVisualsForEgg extends VisualLevelObjectWithHeight
   {
       
      
      public var m_eggID:int;
      
      private var m_mask:Sprite;
      
      public function TitanVisualsForEgg()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.AddSprite();
            this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_titanEgg");
            this.m_mask.x = m_initialX;
            this.m_mask.y = m_initialY;
            if(_loc2_)
            {
               this.m_mask.scaleX = m_initialScaleX;
               this.m_mask.scaleY = m_initialScaleY;
               this.m_mask.rotation = m_initialRotation;
               if(_loc2_ || Boolean(this))
               {
                  m_addToSprite.addChild(this.m_mask);
                  if(_loc2_ || Boolean(this))
                  {
                     this.m_mask.cacheAsBitmap = true;
                  }
               }
               §§goto(addr103);
            }
            m_currSprite.cacheAsBitmap = true;
            if(!(_loc1_ && _loc2_))
            {
               m_currSprite.mask = this.m_mask;
               if(Singleton.dynamicData.GetIsMinionOwned(MinionDexID.DEX_ID_titan_1))
               {
                  §§goto(addr103);
               }
               else
               {
                  m_currSprite.y = m_initialY;
               }
            }
            §§goto(addr103);
         }
         addr103:
         m_currSprite.y = m_initialY + 330;
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            m_addToSprite.removeChild(this.m_mask);
            if(!_loc2_)
            {
               addr26:
               super.Cleanup();
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function MoveEggIntoGround() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            TweenLite.to(m_currSprite,10.5,{"y":"330"});
            if(_loc2_)
            {
               TweenLite.to(this,10.5,{"m_activationHieghtPoint":"330"});
               if(!_loc1_)
               {
                  addr41:
                  Singleton.utility.m_soundController.PlaySound("tower_eggsGoingIntoTheGround",0.04);
               }
               return;
            }
         }
         §§goto(addr41);
      }
   }
}
