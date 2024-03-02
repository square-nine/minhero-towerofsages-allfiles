package Minions
{
   public class MinionTalentTree
   {
       
      
      public var m_talentTreeName:String;
      
      public var m_rows:Vector.<Vector.<MinionTalentTreeDataNode>>;
      
      public function MinionTalentTree(param1:String)
      {
         var _loc4_:int = 0;
         super();
         this.m_talentTreeName = param1;
         this.m_rows = new Vector.<Vector.<MinionTalentTreeDataNode>>();
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            this.m_rows.push(new Vector.<MinionTalentTreeDataNode>(4));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            _loc4_ = 0;
            while(_loc4_ < 4)
            {
               this.m_rows[_loc3_][_loc4_] = new MinionTalentTreeDataNode();
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      public function AddMoveToTree(param1:int, param2:int, param3:int, param4:Boolean = false) : void
      {
         this.m_rows[param1][param2].AddMoveToTree(param3,param4);
      }
      
      public function ClearMovesFrom(param1:int, param2:int) : void
      {
         this.m_rows[param1][param2].ResetNode();
      }
      
      public function GetMovesAt(param1:int, param2:int) : MinionTalentTreeDataNode
      {
         return this.m_rows[param1][param2];
      }
      
      public function IsMoveDependantAt(param1:int, param2:int) : Boolean
      {
         return this.m_rows[param1][param2].m_isDependantOnPreviousRowMove;
      }
   }
}
