package TopDown.Menus.MinionDetails
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionDetailsMinionMovesObject extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_nextUnderButton:Sprite;
      
      private var m_prevUnderButton:Sprite;
      
      private var m_nextButton:TCButton;
      
      private var m_prevButton:TCButton;
      
      private var m_moveIcons:Vector.<Sprite>;
      
      private var m_moveNames:Vector.<TextField>;
      
      private var m_moveDetailsButtons:Vector.<TCButton>;
      
      private var m_currMovesPage:int;
      
      private var m_currMoves:Vector.<BaseMinionMove>;
      
      public function MinionDetailsMinionMovesObject()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               addr36:
               this.m_moveIcons = new Vector.<Sprite>();
               if(!(_loc2_ && Boolean(this)))
               {
                  this.m_moveNames = new Vector.<TextField>(4);
                  if(!_loc2_)
                  {
                     this.m_moveDetailsButtons = new Vector.<TCButton>(4);
                  }
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function LoadSprites() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!(_loc5_ && _loc2_))
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_movesBackground");
            if(_loc4_)
            {
               addr31:
               addChild(this.m_background);
            }
            var _loc1_:TextFormat = new TextFormat();
            if(_loc4_)
            {
               _loc1_.color = 15461355;
               if(!(_loc5_ && Boolean(this)))
               {
                  _loc1_.size = 15;
                  if(!_loc5_)
                  {
                     _loc1_.font = "BurbinCasual";
                     if(!_loc5_)
                     {
                        _loc1_.align = TextFormatAlign.LEFT;
                     }
                  }
               }
            }
            var _loc2_:Array = [this.BringInButtonPopup1,this.BringInButtonPopup2,this.BringInButtonPopup3,this.BringInButtonPopup4];
            if(_loc4_)
            {
               _loc3_ = 0;
            }
            while(_loc3_ < 4)
            {
               this.m_moveNames[_loc3_] = new TextField();
               if(!_loc5_)
               {
                  this.m_moveNames[_loc3_].x = 62;
                  if(_loc4_ || Boolean(this))
                  {
                     this.m_moveNames[_loc3_].y = 50 + _loc3_ * 51;
                     this.m_moveNames[_loc3_].embedFonts = true;
                     if(!_loc5_)
                     {
                        this.m_moveNames[_loc3_].defaultTextFormat = _loc1_;
                        this.m_moveNames[_loc3_].text = "Temp move name";
                        if(!(_loc4_ || Boolean(_loc3_)))
                        {
                           break;
                        }
                        this.m_moveNames[_loc3_].width = 250;
                        this.m_moveNames[_loc3_].selectable = false;
                        this.m_moveNames[_loc3_].visible = false;
                        if(_loc4_ || Boolean(this))
                        {
                           addChild(this.m_moveNames[_loc3_]);
                           this.m_moveDetailsButtons[_loc3_] = new TCButton(_loc2_[_loc3_],"menus_detailsButton");
                           this.m_moveDetailsButtons[_loc3_].ActivateTooltip("this is a move");
                           this.m_moveDetailsButtons[_loc3_].x = 228;
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              this.m_moveDetailsButtons[_loc3_].y = 50 + _loc3_ * 51;
                              if(!_loc5_)
                              {
                                 this.m_moveDetailsButtons[_loc3_].visible = false;
                                 if(!_loc5_)
                                 {
                                    addChild(this.m_moveDetailsButtons[_loc3_]);
                                    _loc3_++;
                                    continue;
                                 }
                                 addr345:
                                 addChild(this.m_nextButton);
                                 addr349:
                                 this.m_prevButton = new TCButton(this.PrevButtonHasBeenPressed,"menus_scrollButton_up");
                                 §§push(this.m_prevButton);
                                 if(_loc4_)
                                 {
                                    §§push(242);
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       §§pop().x = §§pop();
                                       addr378:
                                       §§push(this.m_prevButton);
                                       §§push(247);
                                    }
                                    §§pop().y = §§pop();
                                    addChild(this.m_prevButton);
                                    addr384:
                                    this.visible = false;
                                    §§goto(addr387);
                                 }
                                 §§goto(addr378);
                              }
                              else
                              {
                                 addr248:
                                 this.m_nextUnderButton.y = 248;
                                 this.m_nextUnderButton.scaleX = -1;
                                 §§goto(addr256);
                              }
                           }
                           addr256:
                           addChild(this.m_nextUnderButton);
                           if(_loc4_ || Boolean(this))
                           {
                              this.m_prevUnderButton = Singleton.utility.m_spriteHandler.CreateSprite("menus_scrollButton_down");
                              if(_loc4_ || Boolean(this))
                              {
                                 §§goto(addr281);
                              }
                              §§goto(addr384);
                           }
                           addr281:
                           this.m_prevUnderButton.x = 242;
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              this.m_prevUnderButton.y = 247;
                              if(!_loc5_)
                              {
                                 addChild(this.m_prevUnderButton);
                              }
                              this.m_nextButton = new TCButton(this.NextButtonHasBeenPressed,"menus_scrollButton_up");
                              if(_loc4_)
                              {
                                 §§goto(addr311);
                              }
                           }
                           §§goto(addr311);
                        }
                        §§goto(addr349);
                     }
                     §§goto(addr345);
                  }
                  addr311:
                  §§push(this.m_nextButton);
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(318);
                     if(_loc4_)
                     {
                        §§pop().x = §§pop();
                        if(_loc4_)
                        {
                           §§push(this.m_nextButton);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              §§push(248);
                              if(!_loc5_)
                              {
                                 §§pop().y = §§pop();
                              }
                           }
                           §§goto(addr342);
                        }
                        §§goto(addr345);
                     }
                     §§goto(addr342);
                  }
                  addr342:
               }
               continue;
               this.m_nextButton.scaleX = -1;
               if(_loc5_)
               {
               }
               addr387:
               return;
            }
            this.m_nextUnderButton = Singleton.utility.m_spriteHandler.CreateSprite("menus_scrollButton_down");
            this.m_nextUnderButton.x = 318;
            §§goto(addr248);
         }
         §§goto(addr31);
      }
      
      public function SetNewMinion(param1:OwnedMinion) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.m_currMoves = new Vector.<BaseMinionMove>();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.m_activeMoves.length)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               if(param1.m_activeMoves[_loc2_] != Singleton.staticData.NO_MOVE)
               {
                  this.m_currMoves.push(Singleton.staticData.GetBaseMinionMove(param1.m_activeMoves[_loc2_]));
                  if(!(_loc4_ || Boolean(this)))
                  {
                     break;
                  }
                  continue;
               }
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  break;
               }
            }
            §§goto(addr108);
         }
         this.m_currMovesPage = 0;
         if(!(_loc3_ && Boolean(param1)))
         {
            addr108:
            §§goto(addr110);
         }
         addr110:
         this.BringInCurrMoves();
         addr110:
      }
      
      private function BringInCurrMoves() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Sprite = null;
         var _loc5_:* = 0;
         if(!_loc7_)
         {
            _loc1_ = 0;
         }
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               if(§§pop() >= this.m_moveIcons.length)
               {
                  if(!_loc7_)
                  {
                     addr74:
                     this.m_moveIcons = new Vector.<Sprite>();
                  }
                  addr80:
                  §§push(this.m_currMovesPage);
                  if(_loc6_ || _loc2_)
                  {
                     break;
                  }
                  addr92:
                  var _loc2_:* = §§pop();
                  _loc1_ = _loc2_;
                  loop1:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc7_)
                     {
                        §§push(_loc2_);
                        if(_loc6_)
                        {
                           while(true)
                           {
                              §§push(§§pop() + 4);
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          addr224:
                                          §§pop();
                                          §§push(_loc1_ < this.m_currMoves.length);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       §§push(_loc1_);
                                       if(_loc7_)
                                       {
                                          break loop1;
                                       }
                                       continue;
                                    }
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       if(this.m_currMoves.length > 4)
                                       {
                                          §§push(int(Math.ceil(this.m_currMoves.length / 4)));
                                          break loop1;
                                       }
                                    }
                                    §§goto(addr438);
                                 }
                                 §§goto(addr224);
                              }
                              break;
                           }
                           addr316:
                           if(§§pop() == §§pop())
                           {
                              §§push(this.m_nextButton);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(false);
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    addr334:
                                    §§pop().visible = §§pop();
                                    this.m_nextUnderButton.visible = true;
                                    §§push(this.m_prevButton);
                                    if(_loc6_)
                                    {
                                       addr343:
                                       §§push(true);
                                       if(_loc6_ || Boolean(_loc1_))
                                       {
                                          addr351:
                                          §§pop().visible = §§pop();
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             addr359:
                                             this.m_prevUnderButton.visible = false;
                                          }
                                          §§goto(addr400);
                                       }
                                       §§goto(addr438);
                                    }
                                    else
                                    {
                                       addr385:
                                       §§push(true);
                                       if(_loc7_ && Boolean(this))
                                       {
                                          §§goto(addr426);
                                       }
                                       addr438:
                                       addr438:
                                       §§goto(addr404);
                                    }
                                    this.m_prevUnderButton.visible = true;
                                    if(_loc6_)
                                    {
                                       §§goto(addr400);
                                    }
                                 }
                                 else
                                 {
                                    addr404:
                                    §§goto(addr403);
                                 }
                              }
                              else
                              {
                                 addr368:
                                 §§push(true);
                                 if(_loc6_)
                                 {
                                    §§pop().visible = §§pop();
                                    this.m_nextUnderButton.visible = true;
                                    §§push(this.m_prevButton);
                                    if(_loc6_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr385);
                                    }
                                    else
                                    {
                                       §§goto(addr426);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr438);
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.m_nextButton);
                              if(_loc6_)
                              {
                                 §§goto(addr368);
                              }
                              else
                              {
                                 addr403:
                                 this.m_nextButton.visible = false;
                                 this.m_nextUnderButton.visible = false;
                                 if(_loc6_ || Boolean(_loc1_))
                                 {
                                    addr426:
                                    this.m_prevButton.visible = false;
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       this.m_prevUnderButton.visible = false;
                                    }
                                 }
                                 addr438:
                                 return;
                              }
                           }
                           §§goto(addr438);
                        }
                        addr315:
                        §§goto(addr316);
                        §§push(§§pop() - 1);
                     }
                     break;
                     _loc3_ = §§pop() - §§pop();
                     (_loc4_ = Singleton.utility.m_spriteHandler.CreateSprite(this.m_currMoves[_loc1_].m_moveIcon)).scaleX = 0.75;
                     if(!_loc7_)
                     {
                        _loc4_.scaleY = 0.75;
                        _loc4_.x = 20;
                        _loc4_.y = 44 + _loc3_ * 51;
                     }
                     addChild(_loc4_);
                     this.m_moveIcons.push(_loc4_);
                     this.m_moveNames[_loc3_].text = this.m_currMoves[_loc1_].m_moveName;
                     if(!_loc7_)
                     {
                        this.m_moveNames[_loc3_].visible = true;
                        if(_loc6_ || Boolean(this))
                        {
                           this.m_moveDetailsButtons[_loc3_].visible = true;
                        }
                        this.m_moveDetailsButtons[_loc3_].SetNewPopupSprite(this.m_currMoves[_loc1_].GetToolTipForMoveDescription());
                     }
                     _loc1_++;
                  }
                  _loc5_ = §§pop();
                  §§push(this.m_currMovesPage);
                  §§push(0);
                  if(_loc6_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(this.m_nextButton);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(true);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              §§pop().visible = §§pop();
                              this.m_nextUnderButton.visible = false;
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(this.m_prevButton);
                                 if(!_loc7_)
                                 {
                                    §§push(false);
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§pop().visible = §§pop();
                                       this.m_prevUnderButton.visible = true;
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr400);
                                       }
                                       else
                                       {
                                          §§goto(addr394);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr351);
                                    }
                                    §§goto(addr400);
                                 }
                                 else
                                 {
                                    §§goto(addr343);
                                 }
                              }
                              §§goto(addr359);
                           }
                           else
                           {
                              §§goto(addr334);
                           }
                        }
                        else
                        {
                           §§goto(addr368);
                        }
                        §§goto(addr438);
                     }
                     else
                     {
                        §§goto(addr315);
                        §§push(this.m_currMovesPage);
                        §§push(_loc5_);
                     }
                     §§goto(addr368);
                  }
                  §§goto(addr315);
               }
               else
               {
                  removeChild(this.m_moveIcons[_loc1_]);
                  if(_loc6_)
                  {
                     this.m_moveDetailsButtons[_loc1_].visible = false;
                     if(_loc7_)
                     {
                        continue;
                     }
                     this.m_moveNames[_loc1_].visible = false;
                     if(_loc7_)
                     {
                        continue;
                     }
                     _loc1_++;
                     if(!(_loc7_ && Boolean(this)))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr80);
               }
            }
            break;
         }
         §§goto(addr92);
         §§push(int(§§pop() * 4));
      }
      
      private function BringInButtonPopup1(param1:MouseEvent) : void
      {
      }
      
      private function BringInButtonPopup2(param1:MouseEvent) : void
      {
      }
      
      private function BringInButtonPopup3(param1:MouseEvent) : void
      {
      }
      
      private function BringInButtonPopup4(param1:MouseEvent) : void
      {
      }
      
      private function NextButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(this)))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_currMovesPage);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_.m_currMovesPage = _loc3_;
            }
            if(_loc4_)
            {
               this.BringInCurrMoves();
            }
         }
      }
      
      private function PrevButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(param1)))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_currMovesPage);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || Boolean(param1))
            {
               _loc2_.m_currMovesPage = _loc3_;
            }
            if(_loc4_)
            {
               addr49:
               this.BringInCurrMoves();
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.visible = true;
         }
      }
      
      public function BringOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.visible = false;
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            super.UpdateFullFrames();
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.m_nextButton);
               if(!_loc3_)
               {
                  if(§§pop().visible)
                  {
                     addr60:
                     if(_loc2_ || _loc1_)
                     {
                        §§push(this.m_nextButton);
                     }
                     §§push(this.m_prevButton);
                     if(!(_loc3_ && _loc1_))
                     {
                        if(§§pop().visible)
                        {
                           if(!_loc3_)
                           {
                              addr75:
                              this.m_prevButton.m_isActive = true;
                           }
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr60);
               }
               §§pop().m_isActive = true;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr60);
               }
               addr77:
               var _loc1_:int = 0;
               while(_loc1_ < 4)
               {
                  if(this.m_moveDetailsButtons[_loc1_].visible)
                  {
                     if(_loc3_ && Boolean(_loc1_))
                     {
                        break;
                     }
                     this.m_moveDetailsButtons[_loc1_].m_isActive = true;
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  _loc1_++;
                  if(!(_loc2_ || Boolean(this)))
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr75);
      }
   }
}
