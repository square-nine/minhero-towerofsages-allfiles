package TopDown.LevelObjects
{
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   
   public class RiverSplashObject extends VisualLevelObjectWithHeight
   {
       
      
      public var m_initialDelay:Number;
      
      public var m_fadeTime:Number;
      
      public var m_isImpact:Boolean;
      
      public function RiverSplashObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               addr44:
               this.m_initialDelay = 0.1;
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr54);
               }
               §§goto(addr64);
            }
            addr54:
            this.m_fadeTime = 2;
            if(_loc2_ || _loc2_)
            {
               addr64:
               this.m_isImpact = false;
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.AddSprite();
            if(_loc2_)
            {
               addr32:
               TweenLite.to(m_currSprite,this.m_initialDelay,{"onComplete":this.Animate});
            }
            return;
         }
         §§goto(addr32);
      }
      
      private function Animate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TimelineLite = new TimelineLite();
         if(!this.m_isImpact)
         {
            _loc1_.append(new TweenLite(m_currSprite,this.m_fadeTime,{
               "y":"2",
               "alpha":1
            }));
            _loc1_.append(new TweenLite(m_currSprite,this.m_fadeTime,{
               "y":"-2",
               "alpha":0.5,
               "onComplete":this.Animate
            }));
         }
         else
         {
            m_currSprite.x = m_initialX;
            m_currSprite.y = m_initialY;
            if(!(_loc3_ && _loc2_))
            {
               m_currSprite.scaleX = m_initialScaleX;
               m_currSprite.scaleY = m_initialScaleY;
               if(_loc2_)
               {
                  m_currSprite.alpha = 0;
                  if(!_loc3_)
                  {
                     _loc1_.append(new TweenLite(m_currSprite,this.m_fadeTime,{"transformAroundCenter":{
                        "alpha":0.8,
                        "scaleX":m_initialScaleX * 1.1,
                        "scaleY":m_initialScaleY * 1.1
                     }}));
                     if(!_loc3_)
                     {
                        _loc1_.append(new TweenLite(m_currSprite,this.m_fadeTime * 4,{"transformAroundCenter":{
                           "alpha":0,
                           "scaleX":m_initialScaleX * 1.3,
                           "scaleY":m_initialScaleY * 1.3
                        }}));
                     }
                     §§goto(addr142);
                  }
               }
               §§goto(addr142);
            }
            _loc1_.append(new TweenLite(m_currSprite,0.01,{"onComplete":this.Animate}));
         }
         addr142:
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.Cleanup();
            if(!_loc2_)
            {
               TweenLite.killTweensOf(m_currSprite);
            }
         }
      }
   }
}
