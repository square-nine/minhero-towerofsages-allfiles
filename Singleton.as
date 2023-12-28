package Utilities
{
   import PresistentData.DynamicData;
   import PresistentData.StaticData;
   
   public class Singleton
   {
      
      private static var m_dynamicData:DynamicData;
      
      private static var m_staticData:StaticData;
      
      private static var m_utility:Utility;
       
      
      public function Singleton()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               if(m_dynamicData != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr42);
                  }
               }
               return;
            }
         }
         addr42:
         throw new Error("Singleton can only be accessed by Singleton.Instance");
      }
      
      public static function CreateObjects() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            m_utility = new Utility();
            if(!(_loc1_ && _loc2_))
            {
               m_staticData = new StaticData();
               if(_loc2_)
               {
                  m_staticData.CreateObjects();
                  if(_loc1_ && _loc1_)
                  {
                  }
                  addr62:
                  m_dynamicData.CreateObjects();
                  §§goto(addr64);
               }
               m_dynamicData = new DynamicData();
               if(_loc1_)
               {
               }
               addr64:
               return;
            }
         }
         §§goto(addr62);
      }
      
      public static function get dynamicData() : DynamicData
      {
         return m_dynamicData;
      }
      
      public static function get staticData() : StaticData
      {
         return m_staticData;
      }
      
      public static function get utility() : Utility
      {
         return m_utility;
      }
   }
}
