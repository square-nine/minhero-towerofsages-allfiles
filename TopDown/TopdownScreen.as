package TopDown
{
   import SharedObjects.BaseScreen;
   import States.TopDownStates;
   import TopDown.Menus.EggeryPartySwapMenu;
   import TopDown.Menus.GemCombiner;
   import TopDown.Menus.GemShop;
   import TopDown.Menus.MinionStorage.MinionStorageMenu;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   
   public class TopdownScreen extends BaseScreen
   {
       
      
      public var m_topDownMovementScreen:TopDownMovementScreen;
      
      public var m_topDownMenuScreen:TopDownMenuScreen;
      
      public var m_gemCombiner:GemCombiner;
      
      public var m_gemShop:GemShop;
      
      public var m_minionStorage:MinionStorageMenu;
      
      public var m_currState:int;
      
      public var m_eggeryPartySwapMenu:EggeryPartySwapMenu;
      
      public function TopdownScreen()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.m_topDownMovementScreen = new TopDownMovementScreen();
         if(_loc1_)
         {
            this.m_topDownMenuScreen = new TopDownMenuScreen();
            if(!(_loc2_ && _loc2_))
            {
               this.m_gemCombiner = new GemCombiner();
               this.m_gemShop = new GemShop();
               if(_loc1_)
               {
                  this.m_minionStorage = new MinionStorageMenu();
               }
               this.m_eggeryPartySwapMenu = new EggeryPartySwapMenu();
            }
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.LoadSprites();
            if(!_loc2_)
            {
               this.m_topDownMovementScreen.LoadSprites();
               if(_loc1_)
               {
                  addr24:
                  addChild(this.m_minionStorage);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr35:
                     this.m_minionStorage.LoadSprites();
                     this.m_topDownMenuScreen.LoadSprites();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr48:
                        addChild(this.m_gemCombiner);
                        if(_loc1_ || _loc1_)
                        {
                           this.m_gemCombiner.LoadSprites();
                           if(!(_loc2_ && _loc2_))
                           {
                              addChild(this.m_gemShop);
                              addr80:
                              this.m_gemShop.LoadSprites();
                              if(!_loc2_)
                              {
                                 §§push(this.m_eggeryPartySwapMenu);
                                 if(!_loc2_)
                                 {
                                    §§pop().LoadSprites();
                                    if(!_loc2_)
                                    {
                                       addr92:
                                       §§push(this.m_eggeryPartySwapMenu);
                                       if(_loc1_)
                                       {
                                          addr96:
                                          §§push(515);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§pop().x = §§pop();
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr122:
                                                this.m_eggeryPartySwapMenu.y = 0;
                                             }
                                             addChild(this.m_eggeryPartySwapMenu);
                                             §§goto(addr127);
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                    addr127:
                                    return;
                                 }
                                 §§goto(addr96);
                              }
                           }
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr80);
               }
               §§goto(addr35);
            }
            §§goto(addr48);
         }
         §§goto(addr24);
      }
      
      override public function StartActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.StartActivate();
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_topDownMovementScreen.StartActivate();
            }
         }
      }
      
      override public function FinishActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.FinishActivate();
            if(!(_loc1_ && _loc2_))
            {
               this.m_topDownMovementScreen.FinishActivate();
               if(_loc2_ || _loc1_)
               {
                  addr54:
                  TweenLite.to(this,0.2,{"onComplete":Singleton.utility.CheckForSiteLock});
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function OpenMenus() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_topDownMenuScreen.OpenMenus();
            if(!_loc2_)
            {
               addr32:
               this.m_currState = TopDownStates.MENUS;
               if(_loc1_ || _loc2_)
               {
                  this.m_topDownMovementScreen.UpdateMovementHUD();
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function CloseMenus() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_topDownMenuScreen.CloseMenus();
            if(!_loc2_)
            {
               this.m_currState = TopDownStates.MOVEMENT;
               if(_loc1_)
               {
               }
               §§goto(addr29);
            }
            this.m_topDownMovementScreen.UpdateMovementHUD();
         }
         addr29:
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.UpdateFullFrames();
         §§push(Singleton.utility);
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(§§pop().m_tutorialHandler);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop().m_isActive);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     §§push(Singleton.utility);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr46);
                     }
                     else
                     {
                        §§goto(addr57);
                     }
                  }
                  else
                  {
                     §§push(Singleton.utility);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr57:
                        §§push(§§pop().m_bonusItemPopup);
                        if(_loc1_ || _loc1_)
                        {
                           addr66:
                           if(§§pop().m_isActive)
                           {
                              addr69:
                              §§push(Singleton.utility.m_bonusItemPopup);
                           }
                           else
                           {
                              §§push(this.m_currState);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(TopDownStates.MENUS);
                                 if(_loc1_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(this.m_topDownMenuScreen);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§pop().UpdateFullFrames();
                                       }
                                       else
                                       {
                                          addr201:
                                          §§pop().m_minionTypeSelectMenu.Update();
                                          if(_loc1_ || _loc1_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.m_currState);
                                       if(!_loc2_)
                                       {
                                          §§push(TopDownStates.IN_GEM_COMBINER);
                                          if(_loc1_)
                                          {
                                             addr114:
                                             if(§§pop() == §§pop())
                                             {
                                                this.m_gemCombiner.Update();
                                                §§goto(addr214);
                                             }
                                             else
                                             {
                                                §§push(this.m_currState);
                                                if(_loc1_)
                                                {
                                                   addr123:
                                                   §§push(TopDownStates.IN_GEM_STORE);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr132:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         this.m_gemShop.Update();
                                                         if(_loc2_)
                                                         {
                                                            addr193:
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.m_currState);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(TopDownStates.IN_MINION_STORAGE);
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     this.m_minionStorage.Update();
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.m_currState);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     addr173:
                                                                     §§push(TopDownStates.IN_EGGERY_PARTY_SWAP_SCREEN);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        addr182:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           this.m_eggeryPartySwapMenu.UpdateFullFrames();
                                                                           §§goto(addr193);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr196:
                                                                           §§push(this.m_currState);
                                                                           §§push(TopDownStates.IN_MINION_STAT_SELECTION);
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        §§goto(addr201);
                                                                        §§push(this.m_topDownMenuScreen);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.m_topDownMovementScreen.UpdateFullFrames();
                                                                        §§goto(addr214);
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr196);
                                             }
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr173);
                                    }
                                    addr214:
                                    return;
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr123);
                           }
                        }
                        §§pop().Update();
                        return;
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr69);
               }
               §§goto(addr66);
            }
            addr46:
            §§pop().m_tutorialHandler.Update();
            return;
         }
         §§goto(addr69);
      }
      
      private function LevelImporterCodeBuildXML() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = null;
         var _loc7_:XML = null;
         var _loc1_:Sprite = this;
         var _loc2_:XML = new XML(<level/>);
         if(!(_loc8_ && Boolean(this)))
         {
            _loc2_.@width = _loc1_.width;
            if(!_loc8_)
            {
               addr43:
               _loc2_.@height = _loc1_.height;
            }
            var _loc3_:int = 0;
            while(_loc3_ < _loc1_.numChildren)
            {
               §§push(_loc1_.getChildAt(_loc3_).toString());
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  §§push(_loc6_ = §§pop());
                  if(_loc9_)
                  {
                     addr67:
                     §§push(String(§§pop().slice(8,_loc6_.length - 1)));
                  }
                  _loc6_ = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc7_ = new XML(<levelObject/>);
                  if(_loc6_.slice(0,7) == "invert_")
                  {
                     _loc7_.@spriteName = _loc6_.slice(7);
                     _loc7_.@xPos = _loc1_.getChildAt(_loc3_).x + _loc1_.getChildAt(_loc3_).width;
                     if(!_loc8_)
                     {
                        _loc7_.@yPos = _loc1_.getChildAt(_loc3_).y;
                        _loc7_.@xScale = _loc1_.getChildAt(_loc3_).scaleX * -1;
                        if(!_loc8_)
                        {
                           _loc7_.@yScale = _loc1_.getChildAt(_loc3_).scaleY;
                           _loc7_.@rotation = _loc1_.getChildAt(_loc3_).rotation;
                           _loc2_.appendChild(_loc7_);
                        }
                        else
                        {
                           addr149:
                           _loc7_.@xPos = _loc1_.getChildAt(_loc3_).x;
                           _loc7_.@yPos = _loc1_.getChildAt(_loc3_).y;
                           _loc7_.@xScale = _loc1_.getChildAt(_loc3_).scaleX;
                           if(_loc9_)
                           {
                              _loc7_.@yScale = _loc1_.getChildAt(_loc3_).scaleY;
                              _loc7_.@rotation = _loc1_.getChildAt(_loc3_).rotation;
                              if(!_loc9_)
                              {
                                 continue;
                              }
                           }
                           _loc2_.appendChild(_loc7_);
                        }
                        _loc3_++;
                        continue;
                     }
                  }
                  else
                  {
                     _loc7_.@spriteName = _loc6_;
                  }
                  §§goto(addr149);
               }
               §§goto(addr67);
            }
            var _loc4_:FileReference = new FileReference();
            var _loc5_:ByteArray;
            (_loc5_ = new ByteArray()).writeUTFBytes(_loc2_);
            if(_loc9_ || Boolean(_loc2_))
            {
               _loc5_.compress();
               if(_loc9_)
               {
                  _loc4_.save(_loc5_,"testLevel_compressed.xml");
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function LevelImporterCodeBuildClass() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc1_:Sprite = this;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.numChildren)
         {
            §§push(_loc1_.getChildAt(_loc2_).toString());
            if(!(_loc5_ && Boolean(this)))
            {
               _loc3_ = §§pop();
               §§push(_loc3_);
            }
            §§push(8);
            if(_loc6_)
            {
               _loc3_ = String(§§pop().slice(§§pop(),_loc3_.length - 1));
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  §§push(_loc3_);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     addr66:
                     if(§§pop().slice(0,7) == "invert_")
                     {
                        if(_loc6_)
                        {
                           §§push("AddObject(\"");
                           §§push(_loc3_);
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              §§push(§§pop() + §§pop().slice(7));
                              §§push("\", ");
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop() + §§pop() + (_loc1_.getChildAt(_loc2_).x + _loc1_.getChildAt(_loc2_).width));
                                 §§push(", ");
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).y + ", " + _loc1_.getChildAt(_loc2_).scaleX * -1);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + ", ");
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(§§pop() + _loc1_.getChildAt(_loc2_).scaleY);
                                          if(!_loc5_)
                                          {
                                             §§push(", ");
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).rotation);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + ");");
                                                   if(_loc6_ || Boolean(_loc1_))
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!(_loc5_ && Boolean(_loc1_)))
                                                      {
                                                         addr172:
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr211:
                                                      §§push(§§pop() + _loc1_.getChildAt(_loc2_).y + ", ");
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + _loc1_.getChildAt(_loc2_).scaleX);
                                                         if(!(_loc5_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(", ");
                                                            if(!(_loc5_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).scaleY);
                                                               if(!(_loc5_ && Boolean(_loc1_)))
                                                               {
                                                                  addr253:
                                                                  §§push(", ");
                                                                  if(!(_loc5_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).rotation);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(") as RoomTransitionEntryPointObject;\ntempRoomTransitionEntryPointObject.m_roomComingFrom = 0;");
                                                                        if(_loc6_ || Boolean(this))
                                                                        {
                                                                           _loc4_ = §§pop() + §§pop();
                                                                           continue;
                                                                        }
                                                                        addr331:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() + _loc1_.getChildAt(_loc2_).y);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§§pop() + ", " + _loc1_.getChildAt(_loc2_).scaleX + ", " + _loc1_.getChildAt(_loc2_).scaleY);
                                                                              if(_loc6_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§push(", ");
                                                                                 if(_loc6_ || Boolean(this))
                                                                                 {
                                                                                    addr370:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc6_ || Boolean(this))
                                                                                    {
                                                                                       §§push(§§pop() + _loc1_.getChildAt(_loc2_).rotation);
                                                                                       if(!(_loc5_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          §§push(§§pop() + ") as BaseInGameInteractionObject;\ntempInteractionObject.m_interationID = 2;");
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr395:
                                                                                             continue;
                                                                                          }
                                                                                          addr577:
                                                                                          §§push(§§pop() + _loc1_.getChildAt(_loc2_).y);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() + ", ");
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr593:
                                                                                                addr588:
                                                                                                §§push(§§pop() + _loc1_.getChildAt(_loc2_).scaleX);
                                                                                                §§push(", ");
                                                                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr625:
                                                                                                   §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).scaleY + ", " + _loc1_.getChildAt(_loc2_).rotation);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(");");
                                                                                                   }
                                                                                                   _loc4_ = §§pop();
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr625);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr625);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr503:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc1_.getChildAt(_loc2_).scaleX);
                                                                                       if(!(_loc5_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          addr518:
                                                                                          §§push(§§pop() + ", ");
                                                                                          if(!(_loc5_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             addr527:
                                                                                             §§push(§§pop() + _loc1_.getChildAt(_loc2_).scaleY);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr534:
                                                                                                §§push(", ");
                                                                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   addr542:
                                                                                                   §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).rotation);
                                                                                                   §§push(") as RoomTransitionObject;\ntempRoomTransitionObject.m_roomToGoTo = 0;");
                                                                                                   if(_loc6_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      addr557:
                                                                                                      _loc4_ = §§pop() + §§pop();
                                                                                                      continue;
                                                                                                      addr556:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr625);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr625);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr593);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr564:
                                                                                             §§push("\", ");
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr573:
                                                                                                §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).x + ", ");
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr577);
                                                                                                }
                                                                                                §§goto(addr588);
                                                                                             }
                                                                                             §§goto(addr625);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr625);
                                                                                    }
                                                                                    §§goto(addr518);
                                                                                 }
                                                                              }
                                                                              §§goto(addr577);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr478:
                                                                              §§push(_loc3_);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr485:
                                                                                    §§push(§§pop() + "\", ");
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc1_.getChildAt(_loc2_).x + ", " + _loc1_.getChildAt(_loc2_).y);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr503);
                                                                                          §§push(", ");
                                                                                       }
                                                                                       §§goto(addr577);
                                                                                    }
                                                                                    §§goto(addr534);
                                                                                 }
                                                                                 §§goto(addr573);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr563:
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr564);
                                                                        }
                                                                        §§goto(addr557);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr404:
                                                                        §§push(_loc3_);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr409:
                                                                           §§push(§§pop() + §§pop() + "\", " + _loc1_.getChildAt(_loc2_).x);
                                                                           §§push(", ");
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr418:
                                                                              §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).y);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() + ", ");
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc1_.getChildAt(_loc2_).scaleX);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() + ", ");
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc1_.getChildAt(_loc2_).scaleY + ", ");
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc1_.getChildAt(_loc2_).rotation);
                                                                                             §§push(") as ButtonZone;\nbuttonZone.m_buttonZoneID = 0;");
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc6_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr469:
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr478);
                                                                                                }
                                                                                                §§goto(addr557);
                                                                                             }
                                                                                             §§goto(addr593);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr625);
                                                                                    }
                                                                                    §§goto(addr527);
                                                                                 }
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           §§goto(addr542);
                                                                        }
                                                                     }
                                                                     §§goto(addr563);
                                                                  }
                                                               }
                                                               §§goto(addr518);
                                                            }
                                                            else
                                                            {
                                                               addr323:
                                                               §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).x);
                                                               §§push(", ");
                                                               if(!(_loc5_ && Boolean(_loc3_)))
                                                               {
                                                                  §§goto(addr331);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr409);
                                                               }
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr573);
                                                   }
                                                   §§goto(addr395);
                                                }
                                                §§goto(addr409);
                                             }
                                             §§goto(addr370);
                                          }
                                          §§goto(addr557);
                                       }
                                       §§goto(addr323);
                                    }
                                    else
                                    {
                                       addr302:
                                       §§push("\", ");
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§goto(addr323);
                                       }
                                    }
                                    §§goto(addr418);
                                 }
                                 else
                                 {
                                    addr189:
                                    §§push(§§pop() + §§pop() + _loc1_.getChildAt(_loc2_).x);
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§push(", ");
                                       if(_loc6_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr211);
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr485);
                                    }
                                 }
                                 §§goto(addr625);
                              }
                              §§goto(addr556);
                           }
                           else
                           {
                              addr187:
                              §§push(§§pop() + §§pop());
                              §§push("\", ");
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr172);
                     }
                     else
                     {
                        §§push(_loc3_);
                        §§push("grassRoom_testFlowers8");
                        if(_loc6_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§push("tempRoomTransitionEntryPointObject = AddObject(\"");
                              §§push(_loc3_);
                              if(_loc6_ || Boolean(this))
                              {
                                 §§goto(addr187);
                              }
                              §§goto(addr409);
                           }
                           else
                           {
                              addr281:
                              §§push(_loc3_);
                              §§push("regularDoor");
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 addr289:
                                 if(§§pop() == §§pop())
                                 {
                                    §§push("tempInteractionObject = AddObject(\"");
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr302);
                                       }
                                       §§goto(addr409);
                                    }
                                    §§goto(addr563);
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    §§push("buttonZoneObject");
                                    if(!_loc5_)
                                    {
                                       addr400:
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr404);
                                             §§push("buttonZone = AddObject(\"");
                                          }
                                          §§goto(addr469);
                                       }
                                       else
                                       {
                                          §§push(_loc3_);
                                          §§push("grassRoom_testMushrooms8");
                                       }
                                       §§goto(addr625);
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       §§push("tempRoomTransitionObject = AddObject(\"");
                                       if(!_loc5_)
                                       {
                                          §§goto(addr478);
                                       }
                                    }
                                    else
                                    {
                                       §§push("AddObject(\"");
                                       if(!_loc5_)
                                       {
                                          §§goto(addr563);
                                          §§push(_loc3_);
                                       }
                                    }
                                    §§goto(addr625);
                                 }
                              }
                              §§goto(addr400);
                           }
                        }
                        §§goto(addr289);
                     }
                  }
                  §§goto(addr281);
               }
               §§goto(addr172);
            }
            §§goto(addr66);
            _loc2_++;
            if(!(_loc6_ || Boolean(_loc3_)))
            {
               break;
            }
         }
      }
   }
}
