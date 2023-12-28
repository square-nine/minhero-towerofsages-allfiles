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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function Cleanup() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_frames.length)
         {
            removeChild(this.m_frames[_loc1_]);
            if(_loc2_)
            {
               _loc1_++;
               if(_loc3_ && Boolean(this))
               {
                  break;
               }
            }
         }
      }
      
      public function Create(param1:Array, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.m_frames = new Vector.<Sprite>(param2);
            if(_loc5_)
            {
               §§goto(addr30);
            }
            §§goto(addr40);
         }
         addr30:
         this._currFramePosition = 0;
         if(!(_loc4_ && _loc3_))
         {
            addr40:
            this.m_previousFramePosition = 0;
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.m_frames.length)
            {
               this.m_frames[this._currFramePosition].visible = true;
               break;
            }
            this.m_frames[_loc3_] = new Sprite();
            if(_loc4_ && Boolean(this))
            {
               break;
            }
            this.m_frames[_loc3_].addChild(new param1[_loc3_]());
            if(!_loc4_)
            {
               addChild(this.m_frames[_loc3_]);
               this.m_frames[_loc3_].visible = false;
               if(_loc4_ && Boolean(param2))
               {
                  break;
               }
            }
            _loc3_++;
         }
      }
      
      public function PlayNextFrame() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this)._currFramePosition);
            if(_loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_._currFramePosition = _loc2_;
            }
         }
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.TurnOffAllFrames();
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr31);
            }
            §§goto(addr46);
         }
         addr31:
         this._currFramePosition = param1;
         if(_loc2_ || Boolean(param1))
         {
            this.m_previousFramePosition = param1;
            if(!_loc3_)
            {
               addr46:
               this.m_frames[this._currFramePosition].visible = true;
            }
         }
      }
      
      private function TurnOffAllFrames() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_frames.length)
         {
            this.m_frames[_loc1_].visible = false;
            if(_loc2_ && _loc3_)
            {
               break;
            }
            _loc1_++;
            if(!(_loc3_ || Boolean(_loc1_)))
            {
               break;
            }
         }
      }
      
      public function get m_currFramePosition() : int
      {
         return this._currFramePosition;
      }
   }
}
