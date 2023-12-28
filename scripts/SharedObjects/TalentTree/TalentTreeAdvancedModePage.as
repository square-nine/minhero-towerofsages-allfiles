package SharedObjects.TalentTree
{
   import Minions.MinionTalentTree;
   import Minions.MinionTalentTreeDataNode;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   
   public class TalentTreeAdvancedModePage extends GameObject
   {
       
      
      private var m_topBackground:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      public var m_nodes:Vector.<Vector.<TalentTreeNode>>;
      
      public var m_dependancyBars:Vector.<Vector.<Sprite>>;
      
      private var m_updateTreeFunction:Function;
      
      private var m_talentTreePosition:int;
      
      public function TalentTreeAdvancedModePage(param1:Function, param2:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(param2)))
         {
            super();
            if(!(_loc4_ && Boolean(param1)))
            {
               this.m_updateTreeFunction = param1;
               if(!(_loc4_ && _loc3_))
               {
                  addr40:
                  this.m_talentTreePosition = param2;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr72);
               }
            }
            addr57:
            this.m_nodes = new Vector.<Vector.<TalentTreeNode>>();
            if(_loc5_ || Boolean(param2))
            {
               addr72:
               this.m_dependancyBars = new Vector.<Vector.<Sprite>>();
            }
            var _loc3_:int = 0;
            while(_loc3_ < 3)
            {
               this.m_nodes.push(new Vector.<TalentTreeNode>(4));
               if(!_loc4_)
               {
                  this.m_dependancyBars.push(new Vector.<Sprite>(4));
                  if(_loc4_)
                  {
                     break;
                  }
                  _loc3_++;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function LoadSprites() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(this.m_talentTreePosition);
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(0);
            if(_loc3_)
            {
               if(§§pop() == §§pop())
               {
                  this.m_topBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_advancedTabsLeft");
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     this.m_topBackground.x = 19;
                     if(!_loc4_)
                     {
                        this.m_topBackground.y = 20;
                        addr107:
                        addChild(this.m_topBackground);
                     }
                     else
                     {
                        addr97:
                        this.m_topBackground.x = 341;
                        this.m_topBackground.y = 21;
                        if(!_loc4_)
                        {
                           §§goto(addr107);
                        }
                     }
                     addr112:
                     var _loc1_:int = 0;
                     addr111:
                     loop0:
                     while(true)
                     {
                        §§push(_loc1_);
                        loop1:
                        while(true)
                        {
                           §§push(3);
                           loop2:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop1;
                              }
                              §§push(0);
                              if(!_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(4);
                                    if(!(_loc3_ || Boolean(_loc1_)))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       _loc1_++;
                                       continue loop0;
                                    }
                                    this.m_dependancyBars[_loc1_][_loc2_] = new Sprite();
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       this.m_dependancyBars[_loc1_][_loc2_].x = 67 + _loc1_ * 107;
                                       this.m_dependancyBars[_loc1_][_loc2_].y = 52 + _loc2_ * 63;
                                       if(!_loc4_)
                                       {
                                          this.m_dependancyBars[_loc1_][_loc2_].visible = false;
                                          if(!_loc4_)
                                          {
                                             addChild(this.m_dependancyBars[_loc1_][_loc2_]);
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             addr189:
                                             this.m_dependancyBars[_loc1_][_loc2_].graphics.beginFill(986895);
                                             this.m_dependancyBars[_loc1_][_loc2_].graphics.drawRect(0,0,16,16);
                                             this.m_dependancyBars[_loc1_][_loc2_].graphics.endFill();
                                             this.m_nodes[_loc1_][_loc2_] = new TalentTreeNode(this.NodeHasBeenPressed);
                                          }
                                          this.m_nodes[_loc1_][_loc2_].x = 48 + _loc1_ * 107;
                                          this.m_nodes[_loc1_][_loc2_].y = 65 + _loc2_ * 63;
                                          this.m_nodes[_loc1_][_loc2_].LoadSprites();
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          addChild(this.m_nodes[_loc1_][_loc2_]);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             TweenMax.to(this.m_nodes[_loc1_][_loc2_],0,{"colorMatrixFilter":{
                                                "saturation":0.1,
                                                "brightness":0.5
                                             }});
                                             if(_loc4_ && Boolean(this))
                                             {
                                                continue;
                                             }
                                          }
                                          _loc2_++;
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr332);
                              }
                              continue loop1;
                           }
                        }
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr332);
                        }
                        addr332:
                        this.visible = false;
                        return;
                     }
                  }
                  else
                  {
                     addr66:
                     this.m_topBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_advancedTabsCentert");
                     this.m_topBackground.x = 19;
                     this.m_topBackground.y = 20;
                  }
                  §§goto(addr107);
               }
               else
               {
                  §§push(this.m_talentTreePosition);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr63:
                     if(§§pop() == 1)
                     {
                        if(_loc3_)
                        {
                        }
                        §§goto(addr66);
                     }
                     else
                     {
                        this.m_topBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_advancedTabsLeft");
                        if(!_loc4_)
                        {
                           this.m_topBackground.scaleX = -1;
                           if(!_loc4_)
                           {
                              §§goto(addr97);
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr112);
            }
         }
         §§goto(addr63);
      }
      
      public function NodeHasBeenPressed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.ExitOut();
            if(_loc1_)
            {
               this.m_updateTreeFunction.call();
            }
         }
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.visible = true;
            if(!_loc3_)
            {
               this.m_currMinion = param1;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr42:
                  this.RefreshNodes();
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function RefreshNodes() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:MinionTalentTreeDataNode = null;
         var _loc3_:Vector.<int> = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:MinionTalentTree = this.m_currMinion.m_baseMinion.GetTalentTree(this.m_talentTreePosition);
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc7_);
            §§push(3);
            if(_loc10_)
            {
               if(§§pop() >= §§pop())
               {
                  _loc7_ = 0;
                  if(!(_loc11_ && Boolean(_loc2_)))
                  {
                     addr347:
                     if(_loc7_ < 3)
                     {
                        §§push(0);
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           _loc8_ = §§pop();
                           addr322:
                           §§push(_loc8_);
                           if(!(_loc11_ && Boolean(this)))
                           {
                              §§push(4);
                              if(_loc10_ || Boolean(this))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    _loc7_++;
                                    §§goto(addr347);
                                 }
                                 if(_loc1_.IsMoveDependantAt(_loc7_,_loc8_))
                                 {
                                    this.m_nodes[_loc7_][_loc8_].SetIfTheNodeLooksActive(_loc6_,_loc8_ * 3,this.m_nodes[_loc7_][_loc8_ - 1]);
                                    if(_loc10_)
                                    {
                                       this.m_dependancyBars[_loc7_][_loc8_].visible = true;
                                       if(_loc10_)
                                       {
                                          addr314:
                                          _loc8_++;
                                          if(!(_loc11_ && Boolean(_loc2_)))
                                          {
                                             §§goto(addr322);
                                          }
                                          addr361:
                                          return;
                                          addr291:
                                       }
                                       addr352:
                                       TweenLite.to(this,0.4,{"onComplete":Singleton.utility.m_globalMouseMovementUpdateFunction});
                                       §§goto(addr361);
                                    }
                                    §§goto(addr314);
                                 }
                                 this.m_nodes[_loc7_][_loc8_].SetIfTheNodeLooksActive(_loc6_,_loc8_ * 3,null);
                                 if(!_loc11_)
                                 {
                                    this.m_dependancyBars[_loc7_][_loc8_].visible = false;
                                    §§goto(addr314);
                                 }
                                 §§goto(addr322);
                              }
                              §§goto(addr347);
                           }
                        }
                        §§goto(addr347);
                     }
                     if(!_loc11_)
                     {
                        §§goto(addr352);
                     }
                     §§goto(addr314);
                  }
                  §§goto(addr291);
               }
               else
               {
                  §§push(0);
                  if(!_loc11_)
                  {
                     _loc8_ = §§pop();
                     while(true)
                     {
                        §§push(_loc8_);
                     }
                     addr218:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(4);
                     if(_loc11_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        continue loop0;
                     }
                     _loc2_ = _loc1_.GetMovesAt(_loc7_,_loc8_);
                     _loc3_ = _loc2_.m_moves;
                     if(_loc3_.length > 0)
                     {
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           this.m_nodes[_loc7_][_loc8_].visible = true;
                           §§push(0);
                           if(!_loc11_)
                           {
                              _loc5_ = §§pop();
                              if(!_loc11_)
                              {
                                 §§push(_loc3_[0]);
                                 if(!_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc10_)
                                    {
                                       addr154:
                                       §§push(0);
                                       if(!_loc11_)
                                       {
                                          _loc9_ = §§pop();
                                          if(_loc11_ && Boolean(_loc1_))
                                          {
                                          }
                                          addr217:
                                          _loc8_++;
                                          continue;
                                       }
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc11_ && Boolean(this)))
                                          {
                                             while(true)
                                             {
                                                _loc9_++;
                                             }
                                             addr162:
                                          }
                                          addr181:
                                          §§push(_loc6_);
                                          if(_loc10_ || Boolean(_loc2_))
                                          {
                                             addr191:
                                             §§push(int(§§pop() + _loc5_));
                                          }
                                          _loc6_ = §§pop();
                                          this.m_nodes[_loc7_][_loc8_].Create(this.m_currMinion,_loc4_,_loc5_,_loc3_.length,this.m_talentTreePosition);
                                          §§goto(addr217);
                                       }
                                       addr154:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop() >= _loc3_.length)
                                          {
                                             if(_loc11_ && Boolean(_loc3_))
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr181);
                                          }
                                          else
                                          {
                                             if(!this.m_currMinion.IsMoveOwned(_loc3_[_loc9_]))
                                             {
                                                break;
                                             }
                                             §§push(_loc9_);
                                             if(!_loc11_)
                                             {
                                                while(true)
                                                {
                                                   §§push(1);
                                                   if(_loc10_ || Boolean(this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc11_ && Boolean(this))
                                                         {
                                                            continue loop4;
                                                         }
                                                         _loc5_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc3_.length != _loc9_ + 1)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  _loc4_ = _loc3_[_loc9_ + 1];
                                                                  break loop4;
                                                               }
                                                               break loop4;
                                                            }
                                                            §§goto(addr154);
                                                            §§push(_loc3_[_loc9_]);
                                                         }
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr191);
                                                addr114:
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr134);
                     }
                     else
                     {
                        this.m_nodes[_loc7_][_loc8_].visible = false;
                     }
                     §§goto(addr217);
                  }
               }
            }
            §§goto(addr347);
         }
      }
      
      public function ExitOut() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(3);
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§push(4);
                           if(!(_loc3_ || Boolean(this)))
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  continue loop1;
               }
               if(_loc3_ || Boolean(_loc1_))
               {
                  this.visible = false;
               }
               return;
            }
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            super.UpdateFullFrames();
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(3);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc2_ = §§pop();
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(4);
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             _loc1_++;
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       if(this.m_nodes[_loc1_][_loc2_].visible)
                                       {
                                          this.m_nodes[_loc1_][_loc2_].UpdateFullFrames();
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 addr103:
                                 return;
                                 addr81:
                              }
                              break;
                           }
                           continue loop1;
                           addr71:
                        }
                        while(true)
                        {
                           _loc2_++;
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr103);
               }
            }
         }
      }
   }
}
