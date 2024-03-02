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
         super();
      }
      
      public function StartAnalytics() : void
      {
         if(!this.m_isOn)
         {
            return;
         }
         this.m_tracker = new GATracker(Singleton.utility.m_screenControllers.m_topMostLayer,"UA-39239884-1","AS3",false);
      }
      
      public function LogStartPlay() : void
      {
         if(!this.m_isOn)
         {
            return;
         }
         this.m_tracker.trackPageview("Starting game...");
      }
      
      public function LogCustomMetric(param1:String) : void
      {
         if(!this.m_isOn)
         {
            return;
         }
         this.m_tracker.trackPageview(param1);
         this.ForceLogSend();
      }
      
      public function LogCounterMetric(param1:String, param2:*, param3:Boolean = true) : void
      {
         if(!this.m_isOn)
         {
            return;
         }
         this.m_tracker.trackPageview(param1 + param2);
         this.ForceLogSend();
      }
      
      public function LogCounterMetric_enterBattle(param1:String, param2:*, param3:Boolean = true) : void
      {
         if(!this.m_isOn)
         {
            return;
         }
         this.m_tracker.trackPageview(param1 + param2);
         this.ForceLogSend();
      }
      
      public function ForceLogSend() : void
      {
      }
   }
}
