package TopDown.Levels.Grass
{
   import States.StatType;
   import TopDown.LevelObjects.ChatBox.StandardChatBox;
   import TopDown.Levels.BaseTopDownLevel;
   import Utilities.Singleton;
   
   public class CourtyardLevel extends BaseTopDownLevel
   {
       
      
      public function CourtyardLevel(param1:Class = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      override public function InButtonCollZone(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.InButtonCollZone(param1);
         }
      }
      
      override protected function PreformButtonAction(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:StandardChatBox = null;
         if(_loc3_)
         {
            if(param1 == 0)
            {
               if(_loc3_)
               {
                  addr23:
                  if(Singleton.dynamicData.m_hasTalkedToTheGrandSageForTheFirstTime)
                  {
                     _loc2_ = GetChatBoxForButtonZone(param1);
                     if(_loc3_)
                     {
                        _loc2_.SetFunctions();
                        if(_loc3_)
                        {
                        }
                        §§goto(addr119);
                     }
                     _loc2_.BringInWithText("Go now and see if you can get the first Sage Seal.","Grand Sage");
                  }
                  §§goto(addr119);
               }
               _loc2_ = GetChatBoxForButtonZone(0);
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.SetFunctions(this.BringInPartTwoOfTheGrandSageText);
                  if(!_loc4_)
                  {
                     _loc2_.BringInWithText("Welcome to the Tower,  I am the Grand Sage!  Defeating me will allow you to become a Grand Sage and train Titans.  But first, you need to have the six Sage Seals to prove you have what it takes to wield a Titan!","Grand Sage");
                     if(!_loc4_)
                     {
                        §§push(Singleton.utility);
                        if(_loc3_ || Boolean(param1))
                        {
                           §§push(§§pop().m_screenControllers);
                           if(_loc3_)
                           {
                              §§push(§§pop().m_topDownScreen);
                              if(_loc3_)
                              {
                                 §§push(§§pop().m_topDownMovementScreen);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().m_actionIcon);
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       §§pop().TryAndReStartAnimation(param1);
                                       §§goto(addr103);
                                    }
                                    §§pop().visible = true;
                                    §§goto(addr103);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr100);
                  }
               }
               addr103:
               if(!_loc4_)
               {
                  addr100:
                  §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_actionIcon);
               }
               §§goto(addr119);
            }
            addr119:
            return;
         }
         §§goto(addr23);
      }
      
      public function SetTheMinionsStats(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:StandardChatBox = null;
         if(_loc5_)
         {
            Singleton.dynamicData.m_hasTalkedToTheGrandSageForTheFirstTime = true;
         }
         _loc2_ = GetChatBoxForButtonZone(0);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.SetFunctions();
         }
         §§push(param1);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                        }
                        else
                        {
                           addr259:
                           §§push(2);
                           if(_loc4_)
                           {
                           }
                        }
                        addr268:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_.BringInWithText("A heart of gold!  I\'m excited to see you progress through the tower.  Go now and see if you can get the first Sage Seal.","Grand Sage");
                              §§push(Singleton.dynamicData);
                              if(!_loc4_)
                              {
                                 §§push(0);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                    if(_loc5_)
                                    {
                                       §§push(StatType.STAT_ATTACK);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§pop().m_statBonus = §§pop();
                                          §§push(Singleton.dynamicData);
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             §§push(1);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   §§push(StatType.STAT_ATTACK);
                                                   if(_loc5_)
                                                   {
                                                      §§pop().m_statBonus = §§pop();
                                                      break;
                                                   }
                                                   addr204:
                                                   §§pop().m_statBonus = §§pop();
                                                }
                                                else
                                                {
                                                   addr119:
                                                   §§push(StatType.STAT_HEALTH);
                                                   if(_loc5_)
                                                   {
                                                      §§pop().m_statBonus = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Singleton.dynamicData);
                                                         if(_loc5_ || Boolean(param1))
                                                         {
                                                            addr142:
                                                            §§push(1);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(StatType.STAT_HEALTH);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().m_statBonus = §§pop();
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            else
                                                            {
                                                               addr183:
                                                               §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                               if(_loc5_ || Boolean(param1))
                                                               {
                                                                  addr191:
                                                                  §§push(StatType.STAT_SPEED);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr195:
                                                                     §§pop().m_statBonus = §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr201:
                                                                        §§push(Singleton.dynamicData.GetOwnedMinionAt(1));
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                            }
                                                            §§goto(addr204);
                                                            §§push(StatType.STAT_SPEED);
                                                         }
                                                         else
                                                         {
                                                            addr175:
                                                            §§push(0);
                                                            if(_loc5_ || Boolean(param1))
                                                            {
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr195);
                                             }
                                             else
                                             {
                                                addr111:
                                                §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr191);
                                             }
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr111);
                              }
                              else
                              {
                                 addr103:
                                 §§push(0);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr111);
                                 }
                              }
                              §§goto(addr201);
                           case 1:
                              _loc2_.BringInWithText("What a fine gift!  Go now and see if you can get the first Sage Seal.","Grand Sage");
                              §§push(Singleton.dynamicData);
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 §§goto(addr103);
                              }
                              §§goto(addr175);
                           case 2:
                              _loc2_.BringInWithText("It doesn\'t matter then, we\'ll know how good a keeper you are soon enough.  Go now and see if you can get the first Sage Seal.","Grand Sage");
                              §§push(Singleton.dynamicData);
                              if(!_loc4_)
                              {
                                 §§goto(addr175);
                              }
                              §§goto(addr201);
                        }
                        return;
                        addr267:
                     }
                     else
                     {
                        §§push(1);
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           addr246:
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(1);
                              }
                              else
                              {
                                 §§goto(addr259);
                              }
                              §§goto(addr267);
                           }
                           else
                           {
                              addr257:
                              §§push(2);
                              §§push(_loc3_);
                           }
                           §§goto(addr259);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr259);
                        }
                        else
                        {
                           §§push(3);
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr259);
                  }
                  §§goto(addr246);
               }
               §§goto(addr257);
            }
            §§goto(addr259);
         }
         §§goto(addr268);
      }
      
      private function BringInPartTwoOfTheGrandSageText() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:StandardChatBox = GetChatBoxForButtonZone(0);
         if(_loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionTypeSelectMenu.BringInChatBoxWithPosition(_loc1_.m_currSprite.x,_loc1_.m_currSprite.y);
         }
      }
   }
}
