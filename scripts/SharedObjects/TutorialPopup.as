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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function Create(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.m_tutorialSprite = Singleton.utility.m_spriteHandler.CreateSprite(param1);
            if(!(_loc2_ && _loc3_))
            {
               addChild(this.m_tutorialSprite);
               if(!_loc2_)
               {
                  this.Animate();
               }
            }
         }
      }
      
      private function Animate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TimelineLite = new TimelineLite();
         if(_loc2_)
         {
            _loc1_.append(new TweenLite(this,0.5,{"transformAroundCenter":{
               "scaleX":1.1,
               "scaleY":1.1
            }}));
            if(_loc2_)
            {
               _loc1_.append(new TweenLite(this,0.5,{"transformAroundCenter":{
                  "scaleX":1,
                  "scaleY":1
               }}));
               if(_loc2_)
               {
                  addr63:
                  _loc1_.append(new TweenLite(this,0.2,{"onComplete":this.Animate}));
               }
               return;
            }
         }
         §§goto(addr63);
      }
   }
}
