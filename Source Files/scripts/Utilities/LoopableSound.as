package Utilities
{
   import flash.display.Sprite;
   import flash.events.SampleDataEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   
   public final class LoopableSound extends Sprite
   {
       
      
      private var MAGIC_DELAY:Number = 2257;
      
      private const m_bufferSize:int = 4096;
      
      private var m_samplesTotal:int = 0;
      
      private var m_mp3:Sound;
      
      private const m_out:Sound = new Sound();
      
      public var m_samplesPosition:int = 0;
      
      public var m_paused:Boolean = true;
      
      private var m_backgroundTrack:SoundChannel;
      
      private var _soundAdjustmentAmount:Number;
      
      private var _currVolume:Number;
      
      public function LoopableSound()
      {
         super();
         this._currVolume = 1;
         this._soundAdjustmentAmount = 1;
      }
      
      public function LoadMp3(param1:Class) : void
      {
         this.m_mp3 = new param1() as Sound;
         this.m_samplesTotal = 44100 * this.m_mp3.length / 1000 - this.MAGIC_DELAY;
         this.m_out.addEventListener(SampleDataEvent.SAMPLE_DATA,this.SampleData);
         this.m_backgroundTrack = this.m_out.play();
      }
      
      private function SampleData(param1:SampleDataEvent) : void
      {
         if(!this.m_paused && Singleton.dynamicData.m_isMusicOn)
         {
            this.Extract(param1.data,this.m_bufferSize);
         }
         else
         {
            this.Silent(param1.data,this.m_bufferSize);
         }
      }
      
      private function Extract(param1:ByteArray, param2:int) : void
      {
         var _loc3_:int = 0;
         while(0 < param2)
         {
            if(this.m_samplesPosition + param2 > this.m_samplesTotal)
            {
               _loc3_ = this.m_samplesTotal - this.m_samplesPosition;
               this.m_mp3.extract(param1,_loc3_,this.m_samplesPosition + this.MAGIC_DELAY);
               this.m_samplesPosition += _loc3_;
               param2 -= _loc3_;
            }
            else
            {
               this.m_mp3.extract(param1,param2,this.m_samplesPosition + this.MAGIC_DELAY);
               this.m_samplesPosition += param2;
               param2 = 0;
            }
            if(this.m_samplesPosition == this.m_samplesTotal)
            {
               this.m_samplesPosition = 0;
            }
         }
      }
      
      private function Silent(param1:ByteArray, param2:int) : void
      {
         param1.position = 0;
         while(param2--)
         {
            param1.writeFloat(0);
            param1.writeFloat(0);
         }
      }
      
      public function get m_backgroundSoundVolume() : Number
      {
         return this._currVolume;
      }
      
      public function set m_backgroundSoundVolume(param1:Number) : void
      {
         this._currVolume = param1;
         this.m_backgroundTrack.soundTransform = new SoundTransform(this._currVolume * this._soundAdjustmentAmount);
      }
      
      public function get m_soundAdjustmentAmount() : Number
      {
         return this._soundAdjustmentAmount;
      }
      
      public function set m_soundAdjustmentAmount(param1:Number) : void
      {
         this._soundAdjustmentAmount = param1;
         this.m_backgroundSoundVolume = this._currVolume;
      }
   }
}
