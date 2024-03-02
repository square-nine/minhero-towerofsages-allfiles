package SharedObjects
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class TutorialPopup extends Sprite
   {
       
      
      private var m_tutorialSprite:Sprite;
      
      public function TutorialPopup()
      {
         super();
      }
      
      public function Create(param1:String) : void
      {
         this.m_tutorialSprite = Singleton.utility.m_spriteHandler.CreateSprite(param1);
         addChild(this.m_tutorialSprite);
         this.Animate();
      }
      
      private function Animate() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this,0.5,{"transformAroundCenter":{
            "scaleX":1.1,
            "scaleY":1.1
         }}));
         _loc1_.append(new TweenLite(this,0.5,{"transformAroundCenter":{
            "scaleX":1,
            "scaleY":1
         }}));
         _loc1_.append(new TweenLite(this,0.2,{"onComplete":this.Animate}));
      }
   }
}
