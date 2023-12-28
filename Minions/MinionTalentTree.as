package Minions
{
   public class MinionTalentTree
   {
       
      
      public var m_talentTreeName:String;
      
      public var m_rows:Vector.<Vector.<MinionTalentTreeDataNode>>;
      
      public function MinionTalentTree(param1:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         if(!(_loc5_ && Boolean(param1)))
         {
            super();
            if(_loc6_ || Boolean(this))
            {
               addr32:
               this.m_talentTreeName = param1;
               if(_loc6_)
               {
                  this.m_rows = new Vector.<Vector.<MinionTalentTreeDataNode>>();
               }
            }
            var _loc2_:int = 0;
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  if(§§pop() < 3)
                  {
                     this.m_rows.push(new Vector.<MinionTalentTreeDataNode>(4));
                     if(!(_loc6_ || Boolean(this)))
                     {
                        continue;
                     }
                     _loc2_++;
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        continue;
                     }
                  }
                  break;
               }
               break;
            }
            var _loc3_:* = §§pop();
            loop1:
            while(true)
            {
               §§push(_loc3_);
               loop2:
               while(true)
               {
                  §§push(3);
                  loop3:
                  while(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        if(_loc6_)
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 §§push(4);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                    }
                                    break loop3;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        _loc3_++;
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
         §§goto(addr32);
      }
      
      public function AddMoveToTree(param1:int, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || Boolean(param3))
         {
            this.m_rows[param1][param2].AddMoveToTree(param3,param4);
         }
      }
      
      public function ClearMovesFrom(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param2))
         {
            this.m_rows[param1][param2].ResetNode();
         }
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
