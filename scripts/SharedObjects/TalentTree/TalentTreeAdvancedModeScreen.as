package SharedObjects.TalentTree
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TalentTreeAdvancedModeScreen extends GameObject
   {
       
      
      private var m_talentPointText:TextField;
      
      private var m_talentTreeNamesText:Vector.<TextField>;
      
      private var m_talentTreeAdvancedModePages:Vector.<TalentTreeAdvancedModePage>;
      
      private var m_currTab:int;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_updateTreeFunction:Function;
      
      private var m_tabsButtons:Vector.<TCButton>;
      
      private var m_talentTreeIndicatorGlows:Vector.<Sprite>;
      
      public function TalentTreeAdvancedModeScreen(param1:Function)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(_loc4_)
            {
               this.m_updateTreeFunction = param1;
               if(_loc4_ || _loc2_)
               {
                  this.m_talentTreeNamesText = new Vector.<TextField>(3);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     this.m_talentTreeAdvancedModePages = new Vector.<TalentTreeAdvancedModePage>(3);
                     addr44:
                  }
               }
               var _loc2_:int = 0;
               while(true)
               {
                  if(_loc2_ < this.m_talentTreeAdvancedModePages.length)
                  {
                     this.m_talentTreeAdvancedModePages[_loc2_] = new TalentTreeAdvancedModePage(this.NodeHasBeenPressed,_loc2_);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_++;
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  if(_loc4_)
                  {
                     this.m_tabsButtons = new Vector.<TCButton>(3);
                     if(!(_loc3_ && _loc3_))
                     {
                        this.m_talentTreeIndicatorGlows = new Vector.<Sprite>(3);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr121);
                     }
                     break;
                  }
                  §§goto(addr121);
               }
               this.m_currTab = 0;
               addr121:
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function SetTabToCurrentSpecialization(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.m_currTab = param1.m_currSpecialization;
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:Sprite = null;
         var _loc1_:TextFormat = new TextFormat();
         if(!_loc8_)
         {
            _loc1_.color = 16771584;
            if(!_loc8_)
            {
               _loc1_.size = 20;
               _loc1_.font = "BurbinCasual";
               if(!_loc8_)
               {
                  _loc1_.align = TextFormatAlign.CENTER;
                  if(!_loc8_)
                  {
                     addr41:
                     this.m_talentPointText = new TextField();
                     if(_loc7_)
                     {
                        addr47:
                        this.m_talentPointText.x = 42;
                        if(_loc7_)
                        {
                           this.m_talentPointText.y = 310;
                           if(!(_loc8_ && _loc2_))
                           {
                              addr64:
                              this.m_talentPointText.embedFonts = true;
                              if(_loc7_ || Boolean(_loc1_))
                              {
                                 addr75:
                                 this.m_talentPointText.defaultTextFormat = _loc1_;
                                 this.m_talentPointText.text = "Points: 15";
                                 if(_loc7_)
                                 {
                                    addr85:
                                    this.m_talentPointText.width = 280;
                                    addr89:
                                    this.m_talentPointText.selectable = false;
                                    addr93:
                                    addChild(this.m_talentPointText);
                                 }
                                 var _loc2_:* = 0;
                                 while(_loc2_ < this.m_talentTreeAdvancedModePages.length)
                                 {
                                    this.m_talentTreeAdvancedModePages[_loc2_].LoadSprites();
                                    if(_loc7_)
                                    {
                                       addChild(this.m_talentTreeAdvancedModePages[_loc2_]);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       _loc2_++;
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 var _loc3_:TextFormat = new TextFormat();
                                 if(_loc7_ || Boolean(this))
                                 {
                                    _loc3_.color = 16771584;
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                       addr145:
                                       _loc3_.size = 20;
                                       if(_loc7_)
                                       {
                                          addr150:
                                          _loc3_.font = "BurbinCasual";
                                          if(_loc7_ || Boolean(_loc1_))
                                          {
                                             _loc3_.align = TextFormatAlign.CENTER;
                                          }
                                       }
                                       var _loc4_:int = 0;
                                       if(!(_loc8_ && Boolean(_loc2_)))
                                       {
                                          while(_loc4_ < this.m_talentTreeNamesText.length)
                                          {
                                             this.m_talentTreeIndicatorGlows[_loc4_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_otherTreeIndicator");
                                             this.m_talentTreeIndicatorGlows[_loc4_].x = 10 + _loc4_ * 105;
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                this.m_talentTreeIndicatorGlows[_loc4_].y = 19;
                                                if(!(_loc8_ && Boolean(_loc1_)))
                                                {
                                                   addChild(this.m_talentTreeIndicatorGlows[_loc4_]);
                                                   addr227:
                                                   this.m_talentTreeIndicatorGlows[_loc4_].visible = false;
                                                }
                                                this.m_talentTreeNamesText[_loc4_] = new TextField();
                                                if(!_loc8_)
                                                {
                                                   this.m_talentTreeNamesText[_loc4_].x = -51 + _loc4_ * 108;
                                                   this.m_talentTreeNamesText[_loc4_].y = 24;
                                                   this.m_talentTreeNamesText[_loc4_].embedFonts = true;
                                                   if(_loc8_ && Boolean(_loc1_))
                                                   {
                                                      break;
                                                   }
                                                }
                                                this.m_talentTreeNamesText[_loc4_].defaultTextFormat = _loc3_;
                                                if(!_loc8_)
                                                {
                                                   this.m_talentTreeNamesText[_loc4_].text = "(TEST)";
                                                   this.m_talentTreeNamesText[_loc4_].width = 250;
                                                   this.m_talentTreeNamesText[_loc4_].selectable = false;
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                addChild(this.m_talentTreeNamesText[_loc4_]);
                                                continue;
                                             }
                                             §§goto(addr227);
                                          }
                                          var _loc5_:Array = [this.Tab1Pressed,this.Tab2Pressed,this.Tab3Pressed];
                                          if(!_loc8_)
                                          {
                                             §§push(0);
                                             if(_loc7_ || Boolean(_loc2_))
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc7_)
                                                {
                                                   addr332:
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr424:
                                                      while(§§pop() < this.m_tabsButtons.length)
                                                      {
                                                         (_loc6_ = new Sprite()).graphics.beginFill(16711680);
                                                         if(_loc7_)
                                                         {
                                                            _loc6_.graphics.drawRect(0,0,103,32);
                                                            _loc6_.graphics.endFill();
                                                            this.m_tabsButtons[_loc2_] = new TCButton(_loc5_[_loc2_]);
                                                            if(!(_loc8_ && Boolean(_loc1_)))
                                                            {
                                                               this.m_tabsButtons[_loc2_].CreateButton(_loc6_);
                                                               if(_loc7_)
                                                               {
                                                                  addr378:
                                                                  this.m_tabsButtons[_loc2_].x = 23 + _loc2_ * 105;
                                                                  this.m_tabsButtons[_loc2_].y = 24;
                                                                  addr394:
                                                                  this.m_tabsButtons[_loc2_].visible = false;
                                                                  if(_loc7_ || Boolean(_loc1_))
                                                                  {
                                                                     addr414:
                                                                     addChild(this.m_tabsButtons[_loc2_]);
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  _loc2_++;
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr414);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         §§goto(addr394);
                                                         continue loop3;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         this.visible = false;
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr424);
                                          }
                                          §§goto(addr332);
                                          addr305:
                                       }
                                       while(true)
                                       {
                                          _loc4_++;
                                          §§goto(addr305);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr85);
               }
               §§goto(addr47);
            }
            §§goto(addr75);
         }
         §§goto(addr41);
      }
      
      public function NodeHasBeenPressed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            this.ExitOut();
            if(!_loc2_)
            {
               addr24:
               this.m_updateTreeFunction.call();
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function Tab1Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.CleanUp();
            if(!(_loc3_ && _loc2_))
            {
               this.m_talentTreeAdvancedModePages[0].BringIn(this.m_currMinion);
               if(!(_loc3_ && Boolean(this)))
               {
                  this.m_currTab = 0;
                  if(!_loc3_)
                  {
                     addr57:
                     this.SetUpTalentPointText(this.m_currTab);
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function Tab2Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.CleanUp();
            if(!(_loc3_ && Boolean(this)))
            {
               this.m_talentTreeAdvancedModePages[1].BringIn(this.m_currMinion);
               if(!(_loc3_ && _loc2_))
               {
                  addr52:
                  this.m_currTab = 1;
                  if(_loc2_)
                  {
                     this.SetUpTalentPointText(this.m_currTab);
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function Tab3Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.CleanUp();
            if(_loc2_)
            {
               this.m_talentTreeAdvancedModePages[2].BringIn(this.m_currMinion);
               if(!(_loc3_ && Boolean(this)))
               {
                  this.m_currTab = 2;
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr49);
            }
            this.SetUpTalentPointText(this.m_currTab);
         }
         addr49:
      }
      
      private function SetUpTalentPointText(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextFormat = new TextFormat();
         if(_loc5_ || Boolean(this))
         {
            _loc2_.font = "BurbinCasual";
            if(_loc5_)
            {
               addr29:
               _loc2_.align = TextFormatAlign.CENTER;
            }
            §§push(this.m_currMinion.m_maxTalentPoints);
            if(_loc5_ || _loc3_)
            {
               §§push(int(§§pop() - this.m_currMinion.m_availableTalentPoints));
            }
            var _loc3_:* = §§pop();
            §§push(param1);
            if(!_loc6_)
            {
               §§push(this.m_currMinion.m_currSpecialization);
               if(_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                           }
                           addr85:
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 _loc2_.color = 15556190;
                                 addr91:
                                 _loc2_.size = 17;
                                 this.m_talentPointText.defaultTextFormat = _loc2_;
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr105:
                                    this.m_talentPointText.text = "Reset to " + this.m_currMinion.m_baseMinion.GetTalentTree(param1).m_talentTreeName.toLowerCase() + " to add points here";
                                    if(!(_loc5_ || Boolean(this)))
                                    {
                                       addr137:
                                       _loc2_.size = 20;
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          this.m_talentPointText.defaultTextFormat = _loc2_;
                                       }
                                       this.m_talentPointText.text = "Points: " + this.m_currMinion.m_availableTalentPoints;
                                    }
                                    else
                                    {
                                       addr133:
                                    }
                                    var _loc4_:int = 0;
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(3);
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   §§push(this.m_currMinion.m_currSpecialization);
                                                   if(_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      break loop1;
                                                   }
                                                   §§push(!§§pop());
                                                   if(!(_loc6_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     addr204:
                                                                     §§push(10);
                                                                     if(!(_loc5_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!(_loc5_ || Boolean(param1)))
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     addr220:
                                                                     if(!§§pop())
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     if(!(_loc5_ || _loc3_))
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     addr229:
                                                                     §§pop();
                                                                     §§push(this.m_currMinion.m_availableTalentPoints);
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(0);
                                                                  if(!(_loc6_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     break loop1;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr271);
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr271);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          this.m_talentTreeIndicatorGlows[_loc4_].visible = true;
                                       }
                                       else
                                       {
                                          this.m_talentTreeIndicatorGlows[_loc4_].visible = false;
                                       }
                                       _loc4_++;
                                       if(_loc6_)
                                       {
                                          addr271:
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr105);
                           }
                           else
                           {
                              _loc2_.color = 16771584;
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr85);
                     }
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || _loc3_)
                        {
                           addr84:
                           §§goto(addr85);
                           §§push(§§pop() < 10);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr85);
               }
               §§goto(addr84);
            }
            §§goto(addr105);
         }
         §§goto(addr29);
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(this)))
         {
            this.visible = true;
            if(_loc3_ || _loc2_)
            {
               addr30:
               this.m_currMinion = param1;
            }
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= this.m_talentTreeAdvancedModePages.length)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr87);
               }
               this.m_talentTreeNamesText[_loc2_].text = param1.m_baseMinion.GetTalentTree(_loc2_).m_talentTreeName;
               if(!_loc4_)
               {
                  _loc2_++;
                  if(_loc4_ && _loc3_)
                  {
                     break;
                  }
               }
            }
            this.m_talentTreeAdvancedModePages[this.m_currTab].BringIn(param1);
            if(!_loc4_)
            {
               §§goto(addr87);
            }
            addr87:
            this.SetUpTalentPointText(this.m_currTab);
            return;
         }
         §§goto(addr30);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.visible = false;
         }
      }
      
      public function CleanUp() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.m_talentTreeAdvancedModePages[this.m_currTab].ExitOut();
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.UpdateFullFrames();
         if(this.m_talentTreeAdvancedModePages[0].visible)
         {
            this.m_talentTreeAdvancedModePages[0].UpdateFullFrames();
            if(_loc1_ || _loc2_)
            {
               this.m_tabsButtons[1].m_isActive = true;
               this.m_tabsButtons[2].m_isActive = true;
            }
         }
         else if(this.m_talentTreeAdvancedModePages[1].visible)
         {
            this.m_talentTreeAdvancedModePages[1].UpdateFullFrames();
            this.m_tabsButtons[0].m_isActive = true;
            this.m_tabsButtons[2].m_isActive = true;
            if(_loc1_ || Boolean(this))
            {
            }
         }
         else if(this.m_talentTreeAdvancedModePages[2].visible)
         {
            this.m_talentTreeAdvancedModePages[2].UpdateFullFrames();
            if(_loc1_)
            {
               this.m_tabsButtons[0].m_isActive = true;
               if(_loc1_ || Boolean(this))
               {
                  this.m_tabsButtons[1].m_isActive = true;
               }
            }
         }
      }
   }
}
