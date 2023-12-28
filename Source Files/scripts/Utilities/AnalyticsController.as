package Utilities
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   
   public class AnalyticsController
   {
       
      
      private const m_isOn:Boolean = false;
      
      private var m_tracker:AnalyticsTracker;
      
      public function AnalyticsController()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function StartAnalytics() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.m_isOn)
            {
               if(!_loc1_)
               {
                  return;
               }
            }
            this.m_tracker = new GATracker(Singleton.utility.m_screenControllers.m_topMostLayer,"UA-39239884-1","AS3",false);
         }
      }
      
      public function LogStartPlay() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!this.m_isOn)
            {
               if(!_loc2_)
               {
                  §§goto(addr32);
               }
            }
            this.m_tracker.trackPageview("Starting game...");
            return;
         }
         addr32:
      }
      
      public function LogCustomMetric(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.m_isOn)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  return;
               }
               addr59:
               this.ForceLogSend();
            }
            else
            {
               addr48:
               this.m_tracker.trackPageview(param1);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr59);
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function LogCounterMetric(param1:String, param2:*, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!this.m_isOn)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  return;
               }
            }
            this.m_tracker.trackPageview(param1 + param2);
            if(!_loc4_)
            {
               this.ForceLogSend();
            }
         }
      }
      
      public function LogCounterMetric_enterBattle(param1:String, param2:*, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!this.m_isOn)
            {
               if(!_loc4_)
               {
                  §§goto(addr28);
               }
            }
            this.m_tracker.trackPageview(param1 + param2);
            if(!_loc4_)
            {
               this.ForceLogSend();
            }
            return;
         }
         addr28:
      }
      
      public function ForceLogSend() : void
      {
      }
   }
}
