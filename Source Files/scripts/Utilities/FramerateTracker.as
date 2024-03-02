package Utilities
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   
   public class FramerateTracker extends Sprite
   {
       
      
      private var time:int;
      
      private var prevTime:int = 0;
      
      private var fps:int;
      
      private var fps_txt:TextField;
      
      public function FramerateTracker()
      {
         super();
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16777215;
         _loc1_.size = 25;
         this.fps_txt = new TextField();
         addChild(this.fps_txt);
         this.fps_txt.defaultTextFormat = _loc1_;
         addEventListener(Event.ENTER_FRAME,this.getFps);
      }
      
      private function getFps(param1:Event) : void
      {
         this.time = getTimer();
         this.fps = 1000 / (this.time - this.prevTime);
         this.fps_txt.text = "fps: " + this.fps;
         this.prevTime = getTimer();
      }
   }
}
