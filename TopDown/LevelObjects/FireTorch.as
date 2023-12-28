package TopDown.LevelObjects
{
   import SharedObjects.Animation;
   
   public class FireTorch extends VisualLevelObject
   {
       
      
      private var m_animation:Animation;
      
      private var m_currFrameCount:Number;
      
      public var m_numberOfFrames:int;
      
      public function FireTorch()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.m_currFrameCount);
            if(_loc1_ || _loc1_)
            {
               §§push(2);
               if(_loc1_ || _loc1_)
               {
                  addr45:
                  §§push(§§pop() % §§pop());
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.m_animation.PlayNextFrame();
                     if(_loc1_)
                     {
                        addr66:
                        §§push(this);
                        §§push(this.m_currFrameCount);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§pop() + 1);
                        }
                        §§pop().m_currFrameCount = §§pop();
                     }
                     return;
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr45);
         }
         §§goto(addr66);
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_animation = new Animation();
         §§push(this.m_animation);
         if(!_loc1_)
         {
            §§pop().Create(m_spriteName,this.m_numberOfFrames);
            m_addToSprite.addChild(this.m_animation);
            §§push(this.m_animation);
            if(_loc2_)
            {
               §§pop().x = m_initialX;
               if(!(_loc1_ && _loc1_))
               {
                  §§push(this.m_animation);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop().y = m_initialY;
                     addr61:
                     §§push(this.m_animation);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr61);
            }
         }
         addr70:
         §§pop().scaleX = m_initialScaleX;
         if(_loc2_)
         {
            §§push(this.m_animation);
            if(_loc2_ || _loc1_)
            {
               addr90:
               §§pop().scaleY = m_initialScaleY;
               addr94:
               this.m_animation.rotation = m_initialRotation;
               if(_loc2_ || _loc1_)
               {
                  this.m_currFrameCount = 0;
               }
            }
            §§goto(addr94);
         }
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_animation.Cleanup();
            if(_loc1_)
            {
               m_addToSprite.removeChild(this.m_animation);
            }
         }
      }
   }
}
