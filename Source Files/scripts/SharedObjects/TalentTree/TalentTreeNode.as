package SharedObjects.TalentTree
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TalentTreeNode extends GameObject
   {
       
      
      public var m_iconButton:TCButton;
      
      private var m_numOfPointsTextBackground:Sprite;
      
      private var m_numOfPointsText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_currMove:int;
      
      private var m_updateTreeFunction:Function;
      
      private var m_numOfPointsInTree:int;
      
      private var m_numOfPointsInTreeNeeded:int;
      
      public var m_numOfPointsInNode:int;
      
      public var m_maxNumOfPointsInNode:int;
      
      private var m_hasDependancy:Boolean;
      
      public var m_treePosition:int;
      
      public function TalentTreeNode(param1:Function)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               this.m_updateTreeFunction = param1;
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.m_iconButton = new TCButton(this.NodeHasBeenPressed);
            addChild(this.m_iconButton);
            if(!(_loc3_ && _loc3_))
            {
               this.m_iconButton.ActivateTooltip();
               if(_loc2_)
               {
                  §§goto(addr37);
               }
            }
            §§goto(addr55);
         }
         addr37:
         this.m_numOfPointsTextBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_pointsBubble");
         if(!(_loc3_ && _loc1_))
         {
            this.m_numOfPointsTextBackground.x = 29;
            addr55:
            this.m_numOfPointsTextBackground.y = 37;
            addChild(this.m_numOfPointsTextBackground);
         }
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15066597;
         _loc1_.size = 10;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.font = "BurbinCasual";
            _loc1_.align = TextFormatAlign.CENTER;
            if(_loc2_ || Boolean(this))
            {
               this.m_numOfPointsText = new TextField();
               if(!_loc3_)
               {
                  addr107:
                  this.m_numOfPointsText.x = 20;
                  if(!_loc3_)
                  {
                     §§goto(addr113);
                  }
                  §§goto(addr127);
               }
               addr113:
               this.m_numOfPointsText.y = 37;
               §§goto(addr117);
            }
            §§goto(addr107);
         }
         addr117:
         this.m_numOfPointsText.embedFonts = true;
         if(_loc2_)
         {
            this.m_numOfPointsText.defaultTextFormat = _loc1_;
            addr127:
            this.m_numOfPointsText.text = "1/2";
         }
         this.m_numOfPointsText.width = 50;
         this.m_numOfPointsText.selectable = false;
         if(!(_loc3_ && _loc2_))
         {
            this.m_numOfPointsText.scaleX = 0.95;
            if(_loc2_ || Boolean(_loc1_))
            {
               this.m_numOfPointsText.scaleY = 0.95;
               if(!(_loc3_ && _loc2_))
               {
                  addChild(this.m_numOfPointsText);
               }
            }
         }
      }
      
      public function Create(param1:OwnedMinion, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         this.m_currMove = param2;
         this.m_currMinion = param1;
         if(_loc7_)
         {
            this.m_numOfPointsText.text = "" + param3 + "/" + param4;
            if(_loc7_)
            {
               this.m_numOfPointsInNode = param3;
            }
            this.m_maxNumOfPointsInNode = param4;
            this.m_hasDependancy = true;
            this.m_treePosition = param5;
         }
         var _loc6_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param2);
         if(_loc7_)
         {
            §§push(this.m_iconButton);
            if(!(_loc8_ && Boolean(param3)))
            {
               §§pop().CreateButtonWithStrings(_loc6_.m_moveIcon);
               if(!(_loc8_ && Boolean(param2)))
               {
                  addr88:
                  this.m_iconButton.SetNewPopupSprite(_loc6_.GetToolTipForMoveDescription());
               }
               return;
            }
         }
         §§goto(addr88);
      }
      
      public function SetIfTheNodeLooksActive(param1:int, param2:int, param3:TalentTreeNode) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || Boolean(param1))
         {
            this.m_numOfPointsInTree = param1;
            if(_loc8_ || Boolean(param3))
            {
               this.m_numOfPointsInTreeNeeded = param2;
            }
         }
         var _loc4_:* = 0;
         §§push(0.1);
         if(!(_loc7_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(0.5);
         if(_loc8_ || Boolean(param3))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(!_loc7_)
         {
            §§push(this.m_currMinion);
            if(_loc8_ || Boolean(param1))
            {
               §§push(null);
               if(_loc8_)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(this.m_currMinion);
                     if(!_loc7_)
                     {
                        addr75:
                        §§push(§§pop().m_maxTalentPoints);
                        if(!_loc7_)
                        {
                           §§push(this.m_currMinion);
                           if(!_loc7_)
                           {
                              §§push(§§pop().m_availableTalentPoints);
                              if(_loc8_)
                              {
                                 §§push(int(§§pop() - §§pop()));
                                 if(!(_loc7_ && Boolean(param2)))
                                 {
                                    _loc4_ = §§pop();
                                    addr95:
                                    §§push(param3 == null);
                                    if(!_loc7_)
                                    {
                                       §§push(!§§pop());
                                       §§push(!§§pop());
                                       if(!(_loc7_ && Boolean(param3)))
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(param3.m_numOfPointsInNode);
                                             if(_loc8_ || Boolean(param1))
                                             {
                                                addr120:
                                                §§push(param3.m_maxNumOfPointsInNode);
                                                if(_loc8_)
                                                {
                                                   addr126:
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         TweenMax.to(this,0.8,{"colorMatrixFilter":{
                                                            "saturation":_loc5_,
                                                            "brightness":_loc6_
                                                         }});
                                                         if(_loc8_)
                                                         {
                                                            this.m_hasDependancy = false;
                                                         }
                                                         else
                                                         {
                                                            addr185:
                                                            this.m_hasDependancy = true;
                                                            if(_loc7_ && Boolean(this))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr232:
                                                         if(_loc4_ < 11)
                                                         {
                                                            TweenMax.to(this,0.8,{"colorMatrixFilter":{
                                                               "saturation":_loc5_,
                                                               "brightness":_loc6_
                                                            }});
                                                            if(!(_loc7_ && Boolean(param1)))
                                                            {
                                                               this.m_hasDependancy = true;
                                                               if(_loc7_)
                                                               {
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            addr266:
                                                         }
                                                         else
                                                         {
                                                            TweenMax.to(this,0.8,{"colorMatrixFilter":{
                                                               "saturation":1,
                                                               "brightness":1
                                                            }});
                                                            this.m_hasDependancy = true;
                                                         }
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.m_numOfPointsInTree);
                                                      if(_loc8_ || Boolean(this))
                                                      {
                                                         addr162:
                                                         §§push(this.m_numOfPointsInTreeNeeded);
                                                         if(_loc8_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(!(_loc7_ && Boolean(param3)))
                                                               {
                                                                  addr174:
                                                                  TweenMax.to(this,0.8,{"colorMatrixFilter":{
                                                                     "saturation":_loc5_,
                                                                     "brightness":_loc6_
                                                                  }});
                                                                  §§goto(addr185);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr266);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr198:
                                                               §§push(this.m_currMinion != null);
                                                               §§push(this.m_currMinion != null);
                                                               if(_loc8_ || Boolean(param3))
                                                               {
                                                                  addr209:
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     §§push(this.m_treePosition);
                                                                     if(!(_loc7_ && Boolean(param3)))
                                                                     {
                                                                        addr220:
                                                                        §§push(this.m_currMinion.m_currSpecialization);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr225:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc8_)
                                                                           {
                                                                              addr229:
                                                                              §§push(!§§pop());
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr232);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            addr281:
                                                            return;
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr95);
               }
               §§goto(addr198);
            }
            §§goto(addr75);
         }
         §§goto(addr174);
      }
      
      public function Cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_iconButton.Cleanup();
         }
      }
      
      public function NodeHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            §§push(this.m_currMinion);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(null);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(this.m_currMinion);
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(§§pop().m_maxTalentPoints);
                        if(_loc4_)
                        {
                           §§push(this.m_currMinion);
                           if(!_loc3_)
                           {
                              §§push(§§pop().m_availableTalentPoints);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§push(int(§§pop() - §§pop()));
                                 if(!_loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       addr72:
                                       §§push(this.m_numOfPointsInTree);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.m_numOfPointsInTreeNeeded);
                                          if(_loc4_)
                                          {
                                             addr85:
                                             §§push(§§pop() < §§pop());
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                §§push(§§pop());
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      addr105:
                                                      §§push(!this.m_hasDependancy);
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      §§push(this.m_currMinion);
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         addr118:
                                                         §§push(§§pop() != null);
                                                         if(!(_loc3_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc4_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§pop();
                                                                     §§push(this.m_treePosition);
                                                                     if(!(_loc3_ && Boolean(param1)))
                                                                     {
                                                                        addr157:
                                                                        §§push(this.m_currMinion.m_currSpecialization);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() != §§pop());
                                                                           if(_loc4_ || Boolean(param1))
                                                                           {
                                                                              addr174:
                                                                              §§push(§§pop());
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 addr182:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr183:
                                                                                    §§pop();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          addr194:
                                                                                          §§push(11);
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr257);
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                 }
                                                                                 §§goto(addr203);
                                                                              }
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         addr203:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.m_currMinion);
                                                            if(_loc4_ || Boolean(_loc2_))
                                                            {
                                                               §§push(this.m_currMove);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop().IsMoveOwned(§§pop()));
                                                                  if(_loc4_ || Boolean(param1))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr237:
                                                                        if(!§§pop())
                                                                        {
                                                                           §§pop();
                                                                           addr262:
                                                                           addr264:
                                                                           §§push(this.m_currMinion);
                                                                           if(!(_loc3_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr257:
                                                                              §§push(§§pop().m_availableTalentPoints == 0);
                                                                           }
                                                                           §§pop().AddMove(this.m_currMove);
                                                                           this.m_updateTreeFunction.call();
                                                                           §§goto(addr268);
                                                                        }
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     addr259:
                                                                     §§goto(addr268);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr262);
                                                                     §§push(this.m_currMinion);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   addr268:
                                                   return;
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr105);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr118);
         }
         §§goto(addr72);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.UpdateFullFrames();
            if(!(_loc1_ && _loc2_))
            {
               addr25:
               this.m_iconButton.m_isActive = true;
            }
            return;
         }
         §§goto(addr25);
      }
   }
}
