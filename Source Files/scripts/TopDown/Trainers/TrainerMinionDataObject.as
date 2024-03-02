package TopDown.Trainers
{
   public class TrainerMinionDataObject
   {
       
      
      public var m_minionID:int;
      
      public var m_minionRole:int;
      
      public var m_moves:Vector.<int>;
      
      public function TrainerMinionDataObject()
      {
         super();
         this.m_moves = new Vector.<int>();
      }
   }
}
