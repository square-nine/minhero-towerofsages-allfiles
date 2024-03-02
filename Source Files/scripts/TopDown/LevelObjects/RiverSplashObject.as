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
         super();
         this.m_initialDelay = 0.1;
         this.m_fadeTime = 2;
         this.m_isImpact = false;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         TweenLite.to(m_currSprite,this.m_initialDelay,{"onComplete":this.Animate});
      }
      
      private function Animate() : void
      {
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
            m_currSprite.scaleX = m_initialScaleX;
            m_currSprite.scaleY = m_initialScaleY;
            m_currSprite.alpha = 0;
            _loc1_.append(new TweenLite(m_currSprite,this.m_fadeTime,{"transformAroundCenter":{
               "alpha":0.8,
               "scaleX":m_initialScaleX * 1.1,
               "scaleY":m_initialScaleY * 1.1
            }}));
            _loc1_.append(new TweenLite(m_currSprite,this.m_fadeTime * 4,{"transformAroundCenter":{
               "alpha":0,
               "scaleX":m_initialScaleX * 1.3,
               "scaleY":m_initialScaleY * 1.3
            }}));
            _loc1_.append(new TweenLite(m_currSprite,0.01,{"onComplete":this.Animate}));
         }
      }
      
      override public function Cleanup() : void
      {
         super.Cleanup();
         TweenLite.killTweensOf(m_currSprite);
      }
   }
}
