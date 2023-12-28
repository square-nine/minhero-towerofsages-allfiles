package TopDown.Menus.MinionStorage
{
   import Minions.OwnedMinion;
   import States.MinionDetailsStorageState;
   import TopDown.Menus.MinionDetails.MinionDetailsScreen;
   import TopDown.Menus.MinionOverviewObject;
   import flash.events.MouseEvent;
   
   public class MinionDetailsScreenForStorage extends MinionDetailsScreen
   {
       
      
      private var m_minionOverviewObject:MinionOverviewObject;
      
      private var m_currState:int;
      
      public function MinionDetailsScreenForStorage()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               this.m_currState = MinionDetailsStorageState.MDSS_MINION_STATS;
            }
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.m_minionOverviewObject = new MinionOverviewObject(this.DoesNothing);
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.m_minionOverviewObject);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(18);
               if(!(_loc2_ && _loc1_))
               {
                  §§pop().x = §§pop();
                  addr53:
                  §§push(this.m_minionOverviewObject);
                  §§push(16);
               }
               §§pop().y = §§pop();
               if(!_loc2_)
               {
                  addChild(this.m_minionOverviewObject);
                  if(_loc1_ || _loc1_)
                  {
                     super.LoadSprites();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr84);
               }
               §§goto(addr97);
            }
            §§goto(addr53);
         }
         addr84:
         removeChild(m_returnButton);
         removeChild(m_upArrowButton);
         if(!(_loc2_ && _loc2_))
         {
            addr97:
            removeChild(m_downArrowButton);
         }
      }
      
      override public function SnapIn(param1:OwnedMinion) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         m_currMinion = param1;
         m_expbar.SetBarSize(param1.m_currExpPercentageToNextLevel);
         SetArrowVisiblity();
         m_minionGems.BringOut();
         if(_loc4_)
         {
            m_minionMoves.BringOut();
            if(_loc4_ || Boolean(this))
            {
               m_minionStats.BringOut();
               if(!(_loc3_ && Boolean(this)))
               {
                  m_minionStats.SetNewMinion(param1);
               }
               m_minionMoves.SetNewMinion(param1);
               if(_loc4_ || _loc3_)
               {
                  addr58:
                  m_minionGems.SetNewMinion(param1);
               }
               §§push(this.m_currState);
               if(!_loc3_)
               {
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     §§push(MinionDetailsStorageState.MDSS_MINION_MOVES);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(this))
                        {
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr150);
                           }
                           else
                           {
                              §§push(MinionDetailsStorageState.MDSS_MINION_GEMS);
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(1);
                                    }
                                    else
                                    {
                                       §§goto(addr144);
                                    }
                                 }
                                 else
                                 {
                                    §§push(MinionDetailsStorageState.MDSS_MINION_STATS);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr143:
                                       if(§§pop() === _loc2_)
                                       {
                                          §§goto(addr144);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                                 addr150:
                                 §§goto(addr151);
                              }
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr144);
               }
               addr151:
               switch(_loc4_ || _loc2_ ? 0 : 2)
               {
                  case 0:
                     m_minionMoves.BringIn();
                     if(_loc4_)
                     {
                        addr166:
                        §§push(this.m_minionOverviewObject);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§pop().Cleanup();
                           if(!_loc3_)
                           {
                              §§push(this.m_minionOverviewObject);
                           }
                           break;
                        }
                        §§pop().SetMinion(param1);
                        break;
                     }
                     break;
                  case 1:
                     m_minionGems.BringIn();
                     if(!_loc3_)
                     {
                        §§goto(addr166);
                     }
                     break;
                  case 2:
                     m_minionStats.BringIn();
                     if(_loc4_ || Boolean(this))
                     {
                     }
                     §§goto(addr166);
                  default:
                     §§goto(addr166);
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      override protected function ClosePreviousTab() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.m_currState);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               §§push(MinionDetailsStorageState.MDSS_MINION_STATS);
               if(_loc3_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_)
                        {
                           addr80:
                           §§push(0);
                        }
                        else
                        {
                           addr101:
                           §§push(1);
                           if(_loc2_ && _loc2_)
                           {
                              addr119:
                              if(§§pop() === _loc1_)
                              {
                                 addr121:
                                 §§push(2);
                                 if(_loc2_ && _loc2_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           else
                           {
                              addr116:
                           }
                        }
                        §§goto(addr135);
                     }
                     else
                     {
                        §§push(MinionDetailsStorageState.MDSS_MINION_MOVES);
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc1_)
                           {
                              addr98:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr101);
                                 }
                                 §§goto(addr121);
                              }
                              else
                              {
                                 §§push(MinionDetailsStorageState.MDSS_MINION_GEMS);
                              }
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr98);
               }
               §§goto(addr80);
            }
            §§goto(addr121);
         }
         addr135:
         switch(§§pop())
         {
            case 0:
               m_minionStats.BringOut();
               if(_loc3_ || _loc1_)
               {
                  break;
               }
               break;
            case 1:
               m_minionMoves.BringOut();
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               break;
            case 2:
               m_minionGems.BringOut();
               if(!_loc2_)
               {
                  break;
               }
         }
      }
      
      override protected function StatsButtonPress(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.ClosePreviousTab();
            if(_loc3_ || Boolean(param1))
            {
               this.m_currState = MinionDetailsStorageState.MDSS_MINION_STATS;
               if(!(_loc2_ && _loc2_))
               {
                  m_minionStats.BringIn();
               }
            }
         }
      }
      
      override protected function MovesButtonPress(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.ClosePreviousTab();
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_currState = MinionDetailsStorageState.MDSS_MINION_MOVES;
               if(_loc2_)
               {
               }
               §§goto(addr45);
            }
            m_minionMoves.BringIn();
         }
         addr45:
      }
      
      override protected function GemsButtonPress(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.ClosePreviousTab();
            if(_loc3_)
            {
               addr32:
               this.m_currState = MinionDetailsStorageState.MDSS_MINION_GEMS;
               if(_loc3_)
               {
                  m_minionGems.BringIn();
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!this.visible)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  return;
               }
            }
         }
         §§push(this.m_currState);
         if(!(_loc3_ && _loc3_))
         {
            var _loc1_:* = §§pop();
            if(_loc2_ || Boolean(this))
            {
               §§push(MinionDetailsStorageState.MDSS_MINION_STATS);
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           addr112:
                           §§push(0);
                           if(_loc3_)
                           {
                              addr142:
                           }
                           addr148:
                           switch(§§pop())
                           {
                              case 0:
                                 m_movesButton.m_isActive = true;
                                 m_gemsButton.m_isActive = true;
                                 break;
                              case 1:
                                 m_statsButton.m_isActive = true;
                                 m_gemsButton.m_isActive = true;
                                 if(!_loc3_)
                                 {
                                    m_minionMoves.UpdateFullFrames();
                                    break;
                                 }
                                 addr77:
                                 break;
                              case 2:
                                 m_movesButton.m_isActive = true;
                                 if(!_loc3_)
                                 {
                                    m_statsButton.m_isActive = true;
                                    m_minionGems.UpdateFullFrames();
                                    if(_loc3_ && _loc2_)
                                    {
                                    }
                                    break;
                                 }
                                 §§goto(addr77);
                           }
                           return;
                           addr147:
                        }
                        else
                        {
                           addr141:
                           §§push(2);
                        }
                     }
                     else
                     {
                        §§push(MinionDetailsStorageState.MDSS_MINION_MOVES);
                        if(_loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              addr130:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc3_)
                                    {
                                       addr139:
                                       if(§§pop() === _loc1_)
                                       {
                                          §§goto(addr141);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr141);
                              }
                              else
                              {
                                 §§goto(addr139);
                                 §§push(MinionDetailsStorageState.MDSS_MINION_GEMS);
                              }
                           }
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr130);
               }
               §§goto(addr139);
            }
            §§goto(addr112);
         }
         §§goto(addr148);
      }
      
      private function DoesNothing(param1:MouseEvent) : void
      {
      }
   }
}
