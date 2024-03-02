package Minions
{
   public class MinionTalentTreeDataNode
   {
       
      
      private var _moves:Vector.<int>;
      
      public var m_isDependantOnPreviousRowMove:Boolean;
      
      public function MinionTalentTreeDataNode()
      {
         super();
         this._moves = new Vector.<int>();
      }
      
      public function AddMoveToTree(param1:int, param2:Boolean = false) : void
      {
         this.m_isDependantOnPreviousRowMove = param2;
         this._moves.push(param1);
      }
      
      public function DoesTheMinionHaveAllTheMovesInNode(param1:OwnedMinion) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_moves.length)
         {
            if(!param1.IsMoveOwned(this.m_moves[_loc2_]))
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function ResetNode() : void
      {
         this._moves = new Vector.<int>();
         this.m_isDependantOnPreviousRowMove = false;
      }
      
      public function get m_moves() : Vector.<int>
      {
         return this._moves;
      }
   }
}
