package Minions
{
   public class MinionTalentTreeDataNode
   {
       
      
      private var _moves:Vector.<int>;
      
      public var m_isDependantOnPreviousRowMove:Boolean;
      
      public function MinionTalentTreeDataNode()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               this._moves = new Vector.<int>();
            }
         }
      }
      
      public function AddMoveToTree(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.m_isDependantOnPreviousRowMove = param2;
            if(_loc3_)
            {
               this._moves.push(param1);
            }
         }
      }
      
      public function DoesTheMinionHaveAllTheMovesInNode(param1:OwnedMinion) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_moves.length)
         {
            §§push(param1.IsMoveOwned(this.m_moves[_loc2_]));
            if(_loc4_)
            {
               if(§§pop())
               {
                  continue;
               }
               if(!_loc4_)
               {
                  continue;
               }
               §§push(false);
               if(!_loc4_)
               {
                  §§goto(addr68);
               }
            }
            return §§pop();
            _loc2_++;
            if(_loc3_ && Boolean(param1))
            {
               break;
            }
         }
         addr68:
         true;
         return §§pop();
      }
      
      public function ResetNode() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            this._moves = new Vector.<int>();
            if(!(_loc2_ && _loc2_))
            {
               addr40:
               this.m_isDependantOnPreviousRowMove = false;
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function get m_moves() : Vector.<int>
      {
         return this._moves;
      }
   }
}
