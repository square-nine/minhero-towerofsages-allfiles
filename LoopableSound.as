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
      
      private const m_out:Sound;
      
      public var m_samplesPosition:int = 0;
      
      public var m_paused:Boolean = true;
      
      private var m_backgroundTrack:SoundChannel;
      
      private var _soundAdjustmentAmount:Number;
      
      private var _currVolume:Number;
      
      public function LoopableSound()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.m_out = new Sound();
            if(_loc2_ || _loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr48);
         }
         addr39:
         super();
         if(_loc2_)
         {
            this._currVolume = 1;
            if(_loc2_)
            {
               addr48:
               this._soundAdjustmentAmount = 1;
            }
         }
      }
      
      public function LoadMp3(param1:Class) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.m_mp3 = new param1() as Sound;
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(this);
               §§push(44100 * this.m_mp3.length);
               if(_loc2_)
               {
                  §§push(§§pop() / 1000);
                  if(_loc2_)
                  {
                     §§push(§§pop() - this.MAGIC_DELAY);
                  }
               }
               §§pop().m_samplesTotal = §§pop();
               if(!_loc3_)
               {
                  this.m_out.addEventListener(SampleDataEvent.SAMPLE_DATA,this.SampleData);
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr84);
               }
               this.m_backgroundTrack = this.m_out.play();
            }
         }
         addr84:
      }
      
      private function SampleData(param1:SampleDataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            §§push(this.m_paused);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr44:
                        §§pop();
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr52:
                           §§push(Singleton.dynamicData.m_isMusicOn);
                           if(_loc2_)
                           {
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr81);
                     }
                  }
                  addr65:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.Extract(param1.data,this.m_bufferSize);
                        if(_loc3_ || Boolean(param1))
                        {
                           addr81:
                        }
                     }
                  }
                  else
                  {
                     this.Silent(param1.data,this.m_bufferSize);
                  }
                  return;
               }
            }
            §§goto(addr44);
         }
         §§goto(addr52);
      }
      
      private function Extract(param1:ByteArray, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(0);
            loop1:
            while(true)
            {
               §§push(param2);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     return;
                  }
                  §§push(this.m_samplesPosition);
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc5_ || Boolean(param1))
                     {
                        if(§§pop() > this.m_samplesTotal)
                        {
                           §§push(this.m_samplesTotal);
                           §§push(this.m_samplesPosition);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 addr53:
                                 _loc3_ = §§pop();
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    this.m_mp3.extract(param1,_loc3_,this.m_samplesPosition + this.MAGIC_DELAY);
                                    if(_loc5_ || Boolean(param2))
                                    {
                                       this.m_samplesPosition += _loc3_;
                                       §§push(param2);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          §§push(_loc3_);
                                          if(!_loc4_)
                                          {
                                             addr104:
                                             §§push(int(§§pop() - §§pop()));
                                             if(_loc5_ || Boolean(param2))
                                             {
                                                param2 = §§pop();
                                                addr141:
                                                §§push(this.m_samplesPosition);
                                                §§push(this.m_samplesTotal);
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    addr148:
                                    this.m_samplesPosition = 0;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr104);
                           }
                           break;
                        }
                        this.m_mp3.extract(param1,param2,this.m_samplesPosition + this.MAGIC_DELAY);
                        if(_loc5_)
                        {
                           this.m_samplesPosition += param2;
                           param2 = 0;
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr104);
               }
               if(§§pop() != §§pop())
               {
                  continue loop0;
               }
               §§goto(addr148);
            }
         }
      }
      
      private function Silent(param1:ByteArray, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.position = 0;
         }
         do
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  §§push(§§pop() - 1);
               }
               param2 = §§pop();
            }
            if(!§§pop())
            {
               break;
            }
            param1.writeFloat(0);
            if(!(_loc3_ || Boolean(param2)))
            {
               break;
            }
            param1.writeFloat(0);
         }
         while(!(_loc4_ && Boolean(param1)));
         
      }
      
      public function get m_backgroundSoundVolume() : Number
      {
         return this._currVolume;
      }
      
      public function set m_backgroundSoundVolume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this._currVolume = param1;
            if(_loc2_)
            {
               addr20:
               this.m_backgroundTrack.soundTransform = new SoundTransform(this._currVolume * this._soundAdjustmentAmount);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function get m_soundAdjustmentAmount() : Number
      {
         return this._soundAdjustmentAmount;
      }
      
      public function set m_soundAdjustmentAmount(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this._soundAdjustmentAmount = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               this.m_backgroundSoundVolume = this._currVolume;
            }
         }
      }
   }
}
