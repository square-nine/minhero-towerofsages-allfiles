package TopDown.Menus
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class ActionAvailbleIcon extends Sprite
   {
       
      
      private var m_up:Sprite;
      
      private var m_down:Sprite;
      
      public var m_currButtonZone:int;
      
      public function ActionAvailbleIcon(param1:String, param2:String)
      {
         super();
         this.m_up = Singleton.utility.m_spriteHandler.CreateSprite(param1);
         this.m_up.x = 0;
         this.m_up.y = 0;
         addChild(this.m_up);
         this.m_down = Singleton.utility.m_spriteHandler.CreateSprite(param2);
         this.m_down.x = 0;
         this.m_down.y = 0;
         addChild(this.m_down);
         this.m_down.alpha = 0;
         this.m_currButtonZone = -99;
      }
      
      public function TryAndReStartAnimation(param1:int, param2:Number = 3) : void
      {
         if(this.m_currButtonZone != param1)
         {
            TweenLite.killTweensOf(this.m_down,false);
            TweenLite.killTweensOf(this.m_up,false);
            this.m_up.alpha = 1;
            this.m_down.alpha = 0;
            TweenLite.to(this.m_down,param2,{"onComplete":this.LoopAnimation});
            this.m_currButtonZone = param1;
         }
      }
      
      private function LoopAnimation() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_down,0.1,{"alpha":0}));
         _loc1_.append(new TweenLite(this.m_down,0.1,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_down,0.3,{}));
         _loc1_.append(new TweenLite(this.m_down,0.1,{"alpha":0}));
         _loc1_.append(new TweenLite(this.m_down,2,{"onComplete":this.LoopAnimation}));
         _loc1_ = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_up,0.1,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_up,0.1,{"alpha":0}));
         _loc1_.append(new TweenLite(this.m_up,0.3,{}));
         _loc1_.append(new TweenLite(this.m_up,0.1,{"alpha":1}));
      }
   }
}
