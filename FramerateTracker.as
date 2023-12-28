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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            super();
         }
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16777215;
         if(!_loc3_)
         {
            _loc1_.size = 25;
            this.fps_txt = new TextField();
            addChild(this.fps_txt);
            this.fps_txt.defaultTextFormat = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr67:
               addEventListener(Event.ENTER_FRAME,this.getFps);
            }
            return;
         }
         §§goto(addr67);
      }
      
      private function getFps(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.time = getTimer();
            if(!_loc3_)
            {
               this.fps = 1000 / (this.time - this.prevTime);
               addr33:
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr56);
               }
               §§goto(addr65);
            }
            addr56:
            this.fps_txt.text = "fps: " + this.fps;
            if(!_loc3_)
            {
               addr65:
               this.prevTime = getTimer();
            }
            return;
         }
         §§goto(addr33);
      }
   }
}
