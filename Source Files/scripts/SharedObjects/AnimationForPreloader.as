package SharedObjects
{
   import flash.display.Sprite;
   
   public class AnimationForPreloader extends Sprite
   {
       
      
      private var m_frames:Vector.<Sprite>;
      
      private var _currFramePosition:int;
      
      private var m_previousFramePosition:int;
      
      public function AnimationForPreloader()
      {
         super();
      }
      
      public function Cleanup() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_frames.length)
         {
            removeChild(this.m_frames[_loc1_]);
            _loc1_++;
         }
      }
      
      public function Create(param1:Array, param2:int) : void
      {
         this.m_frames = new Vector.<Sprite>(param2);
         this._currFramePosition = 0;
         this.m_previousFramePosition = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_frames.length)
         {
            this.m_frames[_loc3_] = new Sprite();
            this.m_frames[_loc3_].addChild(new param1[_loc3_]());
            addChild(this.m_frames[_loc3_]);
            this.m_frames[_loc3_].visible = false;
            _loc3_++;
         }
         this.m_frames[this._currFramePosition].visible = true;
      }
      
      public function PlayNextFrame() : void
      {
         ++this._currFramePosition;
         if(this._currFramePosition > this.m_frames.length - 1)
         {
            this._currFramePosition = 0;
         }
         this.m_frames[this.m_previousFramePosition].visible = false;
         this.m_frames[this._currFramePosition].visible = true;
         this.m_previousFramePosition = this._currFramePosition;
      }
      
      public function GotoFrame(param1:int) : void
      {
         this.TurnOffAllFrames();
         this._currFramePosition = param1;
         this.m_previousFramePosition = param1;
         this.m_frames[this._currFramePosition].visible = true;
      }
      
      private function TurnOffAllFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_frames.length)
         {
            this.m_frames[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function get m_currFramePosition() : int
      {
         return this._currFramePosition;
      }
   }
}
