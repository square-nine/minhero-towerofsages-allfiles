package BattleSystems.Other
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   
   public class AIMovePacket
   {
       
      
      public var m_currMoves:Vector.<BaseMinionMove>;
      
      public var m_currMinionsAttacked:Vector.<Vector.<OwnedMinion>>;
      
      public var m_threatPerMove:Vector.<Number>;
      
      public var m_bestMoves:Vector.<BaseMinionMove>;
      
      public var m_bestMinionsAttacked:Vector.<Vector.<OwnedMinion>>;
      
      public var m_threatPerBestMoves:Vector.<Number>;
      
      public function AIMovePacket()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               this.m_threatPerMove = new Vector.<Number>(5);
               if(_loc3_ || _loc3_)
               {
                  addr44:
                  this.m_threatPerBestMoves = new Vector.<Number>(5);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr83);
               }
               this.m_currMoves = new Vector.<BaseMinionMove>(5);
               if(!(_loc2_ && Boolean(this)))
               {
                  this.m_currMinionsAttacked = new Vector.<Vector.<OwnedMinion>>(5);
                  §§goto(addr83);
               }
               addr83:
               var _loc1_:int = 0;
               while(_loc1_ < 5)
               {
                  this.m_currMinionsAttacked[_loc1_] = new Vector.<OwnedMinion>();
                  if(!_loc2_)
                  {
                     this.m_threatPerMove[_loc1_] = 0;
                     if(!_loc3_)
                     {
                        break;
                     }
                     this.m_threatPerBestMoves[_loc1_] = 0;
                     if(!(_loc3_ || Boolean(this)))
                     {
                        break;
                     }
                     _loc1_++;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function SetCurrMovesToBestMoves() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            this.m_bestMoves = new Vector.<BaseMinionMove>(5);
            if(!_loc3_)
            {
               this.m_threatPerBestMoves = new Vector.<Number>(5);
               if(_loc4_)
               {
                  this.m_bestMinionsAttacked = new Vector.<Vector.<OwnedMinion>>(5);
               }
            }
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(§§pop() < 5)
            {
               this.m_bestMinionsAttacked[_loc1_] = new Vector.<OwnedMinion>();
               if(_loc4_ || _loc3_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     continue;
                  }
                  _loc2_ = §§pop();
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() >= this.m_currMinionsAttacked[_loc1_].length)
                     {
                        this.m_bestMoves[_loc1_] = this.m_currMoves[_loc1_];
                        break;
                     }
                     this.m_bestMinionsAttacked[_loc1_].push(this.m_currMinionsAttacked[_loc1_][_loc2_]);
                     if(_loc4_)
                     {
                        _loc2_++;
                        if(_loc3_ && Boolean(_loc2_))
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  continue loop1;
               }
               this.m_threatPerBestMoves[_loc1_] = this.m_threatPerMove[_loc1_];
               if(_loc3_ && Boolean(this))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function GetTotalCurrThreat() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = 0;
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < 5)
            {
               _loc1_ += this.m_threatPerMove[_loc2_];
               if(_loc3_)
               {
                  break;
               }
               §§push(_loc2_);
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§push(§§pop() + 1);
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§push(§§pop());
               }
               _loc2_ = §§pop();
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
            return _loc1_;
         }
      }
      
      public function GetTotalBestThreat() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            §§push(_loc1_);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(§§pop() + this.m_threatPerBestMoves[_loc2_]);
               if(!_loc4_)
               {
                  return §§pop();
               }
               addr51:
               _loc1_ = §§pop();
               if(_loc4_)
               {
                  _loc2_++;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               continue;
               addr61:
            }
            §§goto(addr51);
         }
         §§goto(addr61);
         §§push(_loc1_);
      }
   }
}
