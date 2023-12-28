package SharedObjects
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class Animation extends Sprite
   {
       
      
      private var m_frames:Vector.<Sprite>;
      
      private var _currFramePosition:int;
      
      private var m_previousFramePosition:int;
      
      public function Animation()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function Create(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || Boolean(this))
         {
            this.m_frames = new Vector.<Sprite>(param2);
            if(!(_loc5_ && Boolean(this)))
            {
               this._currFramePosition = 0;
               if(_loc4_ || Boolean(this))
               {
               }
               §§goto(addr47);
            }
            this.m_previousFramePosition = 0;
         }
         addr47:
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ < this.m_frames.length)
            {
               this.m_frames[_loc3_] = Singleton.utility.m_spriteHandler.CreateSprite(param1 + (1 + _loc3_));
               if(!_loc5_)
               {
                  addChild(this.m_frames[_loc3_]);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     this.m_frames[_loc3_].visible = false;
                     if(_loc4_)
                     {
                     }
                     §§goto(addr128);
                  }
                  continue;
               }
               _loc3_++;
               if(_loc5_ && Boolean(this))
               {
                  break;
               }
               continue;
            }
            if(!(_loc5_ && Boolean(this)))
            {
               break;
            }
            §§goto(addr128);
         }
         this.m_frames[this._currFramePosition].visible = true;
         addr128:
      }
      
      public function PlayNextFrame() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:*;
         §§push((_loc1_ = this)._currFramePosition);
         if(!_loc4_)
         {
            §§push(§§pop() + 1);
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            _loc1_._currFramePosition = _loc2_;
         }
         if(_loc3_ || _loc2_)
         {
            if(this._currFramePosition > this.m_frames.length - 1)
            {
               this._currFramePosition = 0;
               if(_loc3_ || _loc3_)
               {
               }
               §§goto(addr87);
            }
            this.m_frames[this.m_previousFramePosition].visible = false;
            if(_loc3_ || _loc2_)
            {
               this.m_frames[this._currFramePosition].visible = true;
            }
            §§goto(addr87);
         }
         addr87:
         this.m_previousFramePosition = this._currFramePosition;
      }
      
      public function GotoFrame(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.TurnOffAllFrames();
            if(!(_loc3_ && _loc3_))
            {
               this._currFramePosition = param1;
               if(!_loc3_)
               {
                  this.m_previousFramePosition = param1;
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr53);
               }
            }
            this.m_frames[this._currFramePosition].visible = true;
         }
         addr53:
      }
      
      private function TurnOffAllFrames() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_frames.length)
         {
            this.m_frames[_loc1_].visible = false;
            if(!_loc2_)
            {
               _loc1_++;
               if(_loc2_ && _loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function get m_currFramePosition() : int
      {
         return this._currFramePosition;
      }
      
      public function Cleanup() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_frames.length)
         {
            removeChild(this.m_frames[_loc1_]);
            if(!_loc3_)
            {
               _loc1_++;
               if(!_loc2_)
               {
                  break;
               }
            }
         }
      }
   }
}
