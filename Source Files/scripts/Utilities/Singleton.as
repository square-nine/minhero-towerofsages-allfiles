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
         super();
         if(m_dynamicData != null)
         {
            throw new Error("Singleton can only be accessed by Singleton.Instance");
         }
      }
      
      public static function CreateObjects() : void
      {
         m_utility = new Utility();
         m_staticData = new StaticData();
         m_staticData.CreateObjects();
         m_dynamicData = new DynamicData();
         m_dynamicData.CreateObjects();
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
