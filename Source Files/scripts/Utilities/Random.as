package Utilities
{
   import flash.utils.ByteArray;
   
   public class Random
   {
       
      
      private var _inext:int;
      
      private var _inextp:int;
      
      private const MBIG:int = 2147483647;
      
      private const MSEED:int = 161803398;
      
      private const MZ:int = 0;
      
      private var _seed:int;
      
      private var _seedArray:Vector.<int>;
      
      public function Random(param1:int)
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super();
         this._seed = param1;
         this._seedArray = new Vector.<int>(56,true);
         var _loc2_:int = 161803398 - Math.abs(param1);
         this._seedArray[55] = _loc2_;
         var _loc3_:int = 1;
         var _loc4_:int = 1;
         while(_loc4_ < 55)
         {
            _loc6_ = 21 * _loc4_ % 55;
            this._seedArray[_loc6_] = _loc3_;
            _loc3_ = _loc2_ - _loc3_;
            if(_loc3_ < 0)
            {
               _loc3_ += 2147483647;
            }
            _loc2_ = this._seedArray[_loc6_];
            _loc4_++;
         }
         var _loc5_:int = 1;
         while(_loc5_ < 5)
         {
            _loc7_ = 1;
            while(_loc7_ < 56)
            {
               this._seedArray[_loc7_] -= this._seedArray[1 + (_loc7_ + 30) % 55];
               if(this._seedArray[_loc7_] < 0)
               {
                  this._seedArray[_loc7_] += 2147483647;
               }
               _loc7_++;
            }
            _loc5_++;
         }
         this._inext = 0;
         this._inextp = 21;
         param1 = 1;
      }
      
      public function get seed() : int
      {
         return this._seed;
      }
      
      private function getSampleForLargeRange() : Number
      {
         var _loc1_:int = this.internalSample();
         if(this.internalSample() % 2 == 0)
         {
            _loc1_ = -_loc1_;
         }
         var _loc2_:Number = _loc1_;
         _loc2_ += 2147483646;
         return _loc2_ / 4294967293;
      }
      
      private function internalSample() : int
      {
         var _loc1_:int = this._inext;
         var _loc2_:int = this._inextp;
         if(++_loc1_ >= 56)
         {
            _loc1_ = 1;
         }
         if(++_loc2_ >= 56)
         {
            _loc2_ = 1;
         }
         var _loc3_:int = this._seedArray[_loc1_] - this._seedArray[_loc2_];
         if(_loc3_ < 0)
         {
            _loc3_ += 2147483647;
         }
         this._seedArray[_loc1_] = _loc3_;
         this._inext = _loc1_;
         this._inextp = _loc2_;
         return _loc3_;
      }
      
      public function nextInt() : int
      {
         return this.internalSample();
      }
      
      public function nextMax(param1:int) : int
      {
         if(param1 < 0)
         {
            throw new ArgumentError("Argument \"maxValue\" must be positive.");
         }
         return int(this.sample() * param1);
      }
      
      public function nextMinMax(param1:int, param2:int) : int
      {
         if(param1 > param2)
         {
            throw new ArgumentError("Argument \"minValue\" must be less than or equal to \"maxValue\".");
         }
         var _loc3_:Number = param2 - param1;
         if(_loc3_ <= 2147483647)
         {
            return int(this.sample() * _loc3_) + param1;
         }
         return int(Number(this.getSampleForLargeRange() * _loc3_)) + param1;
      }
      
      public function nextBytes(param1:ByteArray, param2:int) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Argument \"buffer\" cannot be null.");
         }
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1.writeByte(this.internalSample() % 256);
            _loc3_++;
         }
      }
      
      public function nextNumber() : Number
      {
         return this.sample();
      }
      
      protected function sample() : Number
      {
         return this.internalSample() * 4.656612875245797e-10;
      }
   }
}
