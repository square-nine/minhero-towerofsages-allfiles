package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import flash.geom.Point;
   
   public class SoundDistanceObject extends VisualLevelObject
   {
       
      
      private var m_roomMaxDistance:int;
      
      private var m_minVolume:Number;
      
      private var m_maxVolume:Number;
      
      private var m_backgroundTrack:int;
      
      public function SoundDistanceObject(param1:int, param2:Number, param3:Number, param4:int = -99)
      {
         super();
         this.m_roomMaxDistance = param1;
         this.m_minVolume = param2;
         this.m_maxVolume = param3;
         this.m_backgroundTrack = param4;
      }
      
      override public function AddSprite() : void
      {
         super.AddSprite();
         if(this.m_backgroundTrack != -99)
         {
            Singleton.utility.m_soundController.PlayExtraBackgroundTrack(this.m_backgroundTrack);
         }
      }
      
      override public function Cleanup() : void
      {
         super.Cleanup();
         if(this.m_backgroundTrack != -99)
         {
            Singleton.utility.m_soundController.TurnOffExtraBackgroundTrack(this.m_backgroundTrack);
         }
      }
      
      public function OnCharMovement(param1:int, param2:int) : void
      {
         var _loc3_:int = m_initialX + m_currSprite.width / 2;
         var _loc4_:int = m_initialY + m_currSprite.height / 2;
         var _loc5_:Number = Point.distance(new Point(_loc3_,_loc4_),new Point(param1,param2));
         var _loc6_:Number = 1 - _loc5_ / this.m_roomMaxDistance;
         if(_loc5_ > this.m_roomMaxDistance)
         {
            _loc6_ = 0;
         }
         var _loc7_:Number = this.m_minVolume + this.m_maxVolume * _loc6_;
         if(this.m_backgroundTrack == -99)
         {
            Singleton.utility.m_soundController.SetCurrBackgroundMusicVolume(_loc7_);
         }
         else
         {
            Singleton.utility.m_soundController.SetBackgroundMusicVolume(_loc7_,this.m_backgroundTrack);
         }
      }
   }
}
