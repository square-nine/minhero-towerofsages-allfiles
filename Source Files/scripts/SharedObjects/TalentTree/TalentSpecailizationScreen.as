package SharedObjects.TalentTree
{
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TalentSpecailizationScreen extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_talentPointText:TextField;
      
      private var m_chooseSpecailizationText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_specializationNodes:Vector.<TalentTreeNode>;
      
      private var m_talentTreeNamesText:Vector.<TextField>;
      
      private var m_updateTreeFunction:Function;
      
      public function TalentSpecailizationScreen(param1:Function)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!_loc3_)
            {
               this.m_specializationNodes = new Vector.<TalentTreeNode>(3);
               if(!(_loc3_ && _loc2_))
               {
                  addr46:
                  this.m_updateTreeFunction = param1;
               }
               var _loc2_:int = 0;
               while(true)
               {
                  if(_loc2_ >= this.m_specializationNodes.length)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr87);
                  }
                  this.m_specializationNodes[_loc2_] = new TalentTreeNode(this.NodeHasBeenPressed);
                  if(_loc4_)
                  {
                     _loc2_++;
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
               this.m_talentTreeNamesText = new Vector.<TextField>(3);
               addr87:
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function LoadSprites() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_specializationBackground");
            if(_loc5_)
            {
               addr24:
               this.m_background.x = 24;
               if(!_loc6_)
               {
                  this.m_background.y = 116;
                  if(_loc5_)
                  {
                     addr36:
                     addChild(this.m_background);
                  }
                  var _loc1_:TextFormat = new TextFormat();
                  _loc1_.color = 16771584;
                  if(_loc5_)
                  {
                     _loc1_.size = 20;
                     _loc1_.font = "BurbinCasual";
                     _loc1_.align = TextFormatAlign.CENTER;
                     this.m_talentPointText = new TextField();
                     if(_loc5_)
                     {
                        this.m_talentPointText.x = 64;
                        this.m_talentPointText.y = 310;
                        this.m_talentPointText.embedFonts = true;
                        if(_loc5_)
                        {
                           this.m_talentPointText.defaultTextFormat = _loc1_;
                           this.m_talentPointText.text = "Points: 15";
                           this.m_talentPointText.width = 250;
                           if(!_loc6_)
                           {
                              this.m_talentPointText.selectable = false;
                              if(_loc5_ || Boolean(this))
                              {
                                 addChild(this.m_talentPointText);
                                 this.m_chooseSpecailizationText = new TextField();
                                 if(_loc5_)
                                 {
                                    addr114:
                                    this.m_chooseSpecailizationText.x = 61;
                                    this.m_chooseSpecailizationText.y = 69;
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       addr129:
                                       this.m_chooseSpecailizationText.embedFonts = true;
                                       this.m_chooseSpecailizationText.defaultTextFormat = _loc1_;
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr144:
                                          this.m_chooseSpecailizationText.text = "Choose a specialization";
                                       }
                                       addr158:
                                       addChild(this.m_chooseSpecailizationText);
                                       addr162:
                                       var _loc2_:int = 0;
                                       while(_loc2_ < this.m_specializationNodes.length)
                                       {
                                          this.m_specializationNodes[_loc2_].LoadSprites();
                                          if(!_loc6_)
                                          {
                                             this.m_specializationNodes[_loc2_].x = 77 + _loc2_ * 76;
                                             if(!(_loc6_ && Boolean(_loc1_)))
                                             {
                                                this.m_specializationNodes[_loc2_].y = 172;
                                                if(_loc6_ && Boolean(_loc1_))
                                                {
                                                   continue;
                                                }
                                             }
                                             break;
                                          }
                                          addChild(this.m_specializationNodes[_loc2_]);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          _loc2_++;
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                       var _loc3_:TextFormat = new TextFormat();
                                       if(_loc5_)
                                       {
                                          _loc3_.color = 16771584;
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             _loc3_.size = 20;
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                _loc3_.font = "BurbinCasual";
                                                if(_loc5_)
                                                {
                                                   addr257:
                                                   _loc3_.align = TextFormatAlign.CENTER;
                                                }
                                                var _loc4_:int = 0;
                                                while(true)
                                                {
                                                   if(_loc4_ < this.m_talentTreeNamesText.length)
                                                   {
                                                      this.m_talentTreeNamesText[_loc4_] = new TextField();
                                                      this.m_talentTreeNamesText[_loc4_].x = -49 + _loc4_ * 104;
                                                      this.m_talentTreeNamesText[_loc4_].y = 120;
                                                      this.m_talentTreeNamesText[_loc4_].embedFonts = true;
                                                      if(!_loc6_)
                                                      {
                                                         this.m_talentTreeNamesText[_loc4_].defaultTextFormat = _loc3_;
                                                         if(!(_loc6_ && Boolean(this)))
                                                         {
                                                            this.m_talentTreeNamesText[_loc4_].text = "(TEST)";
                                                            if(_loc6_ && Boolean(_loc3_))
                                                            {
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         this.m_talentTreeNamesText[_loc4_].width = 250;
                                                         this.m_talentTreeNamesText[_loc4_].selectable = false;
                                                         addChild(this.m_talentTreeNamesText[_loc4_]);
                                                         _loc4_++;
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr359);
                                                }
                                                this.visible = false;
                                                addr359:
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr257);
                                    }
                                    this.m_chooseSpecailizationText.width = 250;
                                    if(!_loc6_)
                                    {
                                       addr154:
                                       this.m_chooseSpecailizationText.selectable = false;
                                       §§goto(addr158);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr36);
         }
         §§goto(addr24);
      }
      
      public function NodeHasBeenPressed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.ExitOut();
            if(_loc2_)
            {
               addr25:
               this.m_updateTreeFunction.call();
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.visible = true;
            if(_loc4_ || Boolean(this))
            {
               this.m_currMinion = param1;
               if(_loc4_ || _loc2_)
               {
                  this.m_talentPointText.text = "Points: " + param1.m_availableTalentPoints;
               }
            }
         }
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ && Boolean(this))
            {
               break;
            }
            if(§§pop() >= this.m_specializationNodes.length)
            {
               §§push(0);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(_loc2_);
                     break loop0;
                     addr116:
                     _loc2_++;
                  }
                  addr117:
               }
               break;
            }
            this.m_specializationNodes[_loc2_].Create(param1,param1.m_baseMinion.m_spealizationMoves[_loc2_],0,1,0);
            _loc2_++;
         }
         while(true)
         {
            if(§§pop() < this.m_talentTreeNamesText.length)
            {
               this.m_talentTreeNamesText[_loc2_].text = param1.m_baseMinion.GetTalentTree(_loc2_).m_talentTreeName;
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr116);
            }
            break;
            §§goto(addr117);
         }
      }
      
      public function ExitOut() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.visible = false;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_specializationNodes.length)
         {
            this.m_specializationNodes[_loc1_].Cleanup();
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_++;
               if(!_loc2_)
               {
                  break;
               }
            }
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.UpdateFullFrames();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_specializationNodes.length)
         {
            this.m_specializationNodes[_loc1_].UpdateFullFrames();
            if(!_loc2_)
            {
               break;
            }
            _loc1_++;
            if(!(_loc2_ || Boolean(_loc1_)))
            {
               break;
            }
         }
      }
   }
}
