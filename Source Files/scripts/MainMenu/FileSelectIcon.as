package MainMenu
{
   import SharedObjects.BaseInterfacePieces.ConformationBox;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class FileSelectIcon extends Sprite
   {
       
      
      public var m_saveSlotID:int;
      
      public var m_backgroundButton:TCButton;
      
      public var m_backgroundFilled:Sprite;
      
      public var m_closeButton:TCButton;
      
      private var m_newSlotText:TextField;
      
      private var m_nameText:TextField;
      
      private var m_minionCountText:TextField;
      
      private var m_badgeIcons:Vector.<Sprite>;
      
      private var m_starIcon:Sprite;
      
      private var m_starsText:TextField;
      
      public var m_hasDeleteBeenPressed:Boolean;
      
      public var m_conformationBox:ConformationBox;
      
      public function FileSelectIcon(param1:int)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               this.m_saveSlotID = param1;
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.m_closeButton = new TCButton(this.DeletePressed,"mainMenu_saveSlot_deleteButton");
            this.m_backgroundButton = new TCButton(this.SlotSelected,"mainMenu_saveSlotBackground");
            this.m_backgroundButton.visible = true;
            addChild(this.m_backgroundButton);
            this.m_backgroundFilled = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_saveSlotFilled");
            this.m_backgroundFilled.visible = false;
            if(_loc5_)
            {
               addChild(this.m_backgroundFilled);
               §§push(this.m_closeButton);
               if(!_loc4_)
               {
                  §§push(211);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§pop().x = §§pop();
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr78:
                        this.m_closeButton.y = 9;
                     }
                     addChild(this.m_closeButton);
                     addr83:
                     var _loc1_:Array = ["titleScreen_plantSageStone","titleScreen_fireSageStone","titleScreen_electricSageStone","titleScreen_undeadSageStone","titleScreen_plantWizardSageStone","titleScreen_undeadWizardSageStone"];
                     if(_loc5_ || _loc3_)
                     {
                        this.m_badgeIcons = new Vector.<Sprite>(6);
                     }
                     var _loc2_:int = 0;
                     while(_loc2_ < this.m_badgeIcons.length)
                     {
                        this.m_badgeIcons[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite(_loc1_[_loc2_]);
                        this.m_badgeIcons[_loc2_].x = 156 + _loc2_ * 5;
                        this.m_badgeIcons[_loc2_].y = 7 + 3;
                        addChild(this.m_badgeIcons[_loc2_]);
                        _loc2_++;
                     }
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        this.m_starIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_saveSlot_starIcon");
                        if(!_loc4_)
                        {
                           this.m_starIcon.x = 155;
                           if(!(_loc4_ && Boolean(this)))
                           {
                              this.m_starIcon.y = 30 + 3;
                              if(_loc5_)
                              {
                              }
                              addr190:
                              var _loc3_:TextFormat = new TextFormat();
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 _loc3_.color = 4540276;
                                 _loc3_.font = "BurbinCasual";
                                 _loc3_.align = TextFormatAlign.LEFT;
                                 this.m_nameText = new TextField();
                                 this.m_nameText.embedFonts = true;
                                 _loc3_.size = 22;
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    this.m_nameText.defaultTextFormat = _loc3_;
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       this.m_nameText.wordWrap = true;
                                       if(!_loc4_)
                                       {
                                          this.m_nameText.autoSize = TextFieldAutoSize.LEFT;
                                          this.m_nameText.text = "Brett";
                                          this.m_nameText.width = 150;
                                          if(!_loc4_)
                                          {
                                             this.m_nameText.selectable = false;
                                             this.m_nameText.x = 19;
                                             this.m_nameText.y = 8;
                                             if(!(_loc4_ && Boolean(_loc3_)))
                                             {
                                                addChild(this.m_nameText);
                                                this.m_minionCountText = new TextField();
                                                this.m_minionCountText.embedFonts = true;
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   _loc3_.size = 17;
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      this.m_minionCountText.defaultTextFormat = _loc3_;
                                                      this.m_minionCountText.wordWrap = true;
                                                      if(!(_loc4_ && Boolean(_loc3_)))
                                                      {
                                                         this.m_minionCountText.autoSize = TextFieldAutoSize.LEFT;
                                                         addr336:
                                                         this.m_minionCountText.text = "Minions: 28/101";
                                                         this.m_minionCountText.width = 200;
                                                         if(!(_loc4_ && Boolean(_loc3_)))
                                                         {
                                                            this.m_minionCountText.selectable = false;
                                                            if(_loc5_)
                                                            {
                                                               addr357:
                                                               this.m_minionCountText.x = 19;
                                                               if(_loc5_ || Boolean(_loc1_))
                                                               {
                                                                  this.m_minionCountText.y = 36;
                                                                  addChild(this.m_minionCountText);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr378:
                                                                     this.m_starsText = new TextField();
                                                                     if(_loc5_ || Boolean(_loc2_))
                                                                     {
                                                                        this.m_starsText.embedFonts = true;
                                                                        if(_loc5_)
                                                                        {
                                                                           _loc3_.size = 20;
                                                                           this.m_starsText.defaultTextFormat = _loc3_;
                                                                           this.m_starsText.wordWrap = true;
                                                                           if(!(_loc4_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr413:
                                                                              this.m_starsText.autoSize = TextFieldAutoSize.LEFT;
                                                                              addr418:
                                                                              this.m_starsText.text = "100";
                                                                              this.m_starsText.width = 80;
                                                                              this.m_starsText.selectable = false;
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr432:
                                                                                 this.m_starsText.x = 185;
                                                                                 if(!(_loc4_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    this.m_starsText.y = 30 + 3;
                                                                                    if(_loc5_ || Boolean(_loc1_))
                                                                                    {
                                                                                       addChild(this.m_starsText);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr462:
                                                                                          this.m_newSlotText = new TextField();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr468:
                                                                                             this.m_newSlotText.embedFonts = true;
                                                                                             _loc3_.size = 18;
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr477:
                                                                                                _loc3_.color = 14014437;
                                                                                                addr480:
                                                                                                this.m_newSlotText.defaultTextFormat = _loc3_;
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr486:
                                                                                                   this.m_newSlotText.x = 86;
                                                                                                   this.m_newSlotText.y = 21;
                                                                                                }
                                                                                                addr533:
                                                                                                this.m_newSlotText.visible = false;
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   this.m_conformationBox = new ConformationBox("Delete your file?");
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.m_conformationBox);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(70);
                                                                                                         if(!(_loc4_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr568:
                                                                                                            §§push(this.m_conformationBox);
                                                                                                            §§push(-73);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr570:
                                                                                                         addChild(this.m_conformationBox);
                                                                                                         §§goto(addr574);
                                                                                                      }
                                                                                                      §§goto(addr568);
                                                                                                   }
                                                                                                   addr574:
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr570);
                                                                                             }
                                                                                             addr498:
                                                                                             this.m_newSlotText.autoSize = TextFieldAutoSize.LEFT;
                                                                                             if(!(_loc4_ && Boolean(this)))
                                                                                             {
                                                                                                this.m_newSlotText.text = "New Slot";
                                                                                                if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   this.m_newSlotText.width = 150;
                                                                                                   addr525:
                                                                                                   this.m_newSlotText.selectable = false;
                                                                                                   addChild(this.m_newSlotText);
                                                                                                   §§goto(addr533);
                                                                                                }
                                                                                                §§goto(addr525);
                                                                                             }
                                                                                             §§goto(addr568);
                                                                                          }
                                                                                          this.m_newSlotText.wordWrap = true;
                                                                                          §§goto(addr498);
                                                                                       }
                                                                                       §§goto(addr570);
                                                                                    }
                                                                                    §§goto(addr468);
                                                                                 }
                                                                                 §§goto(addr533);
                                                                              }
                                                                              §§goto(addr480);
                                                                           }
                                                                        }
                                                                        §§goto(addr525);
                                                                     }
                                                                     §§goto(addr418);
                                                                  }
                                                                  §§goto(addr462);
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                            §§goto(addr468);
                                                         }
                                                         §§goto(addr378);
                                                      }
                                                      §§goto(addr357);
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr413);
                                             }
                                             §§goto(addr477);
                                          }
                                          §§goto(addr486);
                                       }
                                       §§goto(addr432);
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr486);
                              }
                              §§goto(addr378);
                           }
                           §§goto(addr190);
                        }
                        addChild(this.m_starIcon);
                     }
                     §§goto(addr190);
                  }
               }
               §§goto(addr78);
            }
         }
         §§goto(addr83);
      }
      
      public function BringIn() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         this.m_hasDeleteBeenPressed = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!Singleton.dynamicData.GetIsSaveSlotInUse(this.m_saveSlotID))
            {
               if(_loc2_ || Boolean(this))
               {
                  this.m_newSlotText.visible = true;
                  if(_loc2_)
                  {
                     this.m_closeButton.visible = false;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr55:
                        this.m_nameText.visible = false;
                        this.m_minionCountText.visible = false;
                        if(!_loc3_)
                        {
                           _loc1_ = 0;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           if(§§pop() < this.m_badgeIcons.length)
                           {
                              continue;
                           }
                           this.m_starIcon.visible = false;
                           this.m_starsText.visible = false;
                           §§push(this.m_backgroundButton);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(true);
                              if(_loc2_)
                              {
                                 §§pop().visible = §§pop();
                                 this.m_backgroundFilled.visible = false;
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 addr174:
                                 this.m_minionCountText.visible = true;
                                 §§push(0);
                                 if(_loc2_ || _loc3_)
                                 {
                                    _loc1_ = §§pop();
                                    addr187:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr224:
                                       while(§§pop() < this.m_badgeIcons.length)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                       }
                                       this.m_starIcon.visible = true;
                                       this.m_starsText.visible = true;
                                       addr239:
                                       addr244:
                                       this.m_backgroundButton.visible = false;
                                       §§goto(addr240);
                                    }
                                    addr223:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= Singleton.dynamicData.GetTotalSageSeals(this.m_saveSlotID))
                                    {
                                       this.m_badgeIcons[_loc1_].visible = false;
                                       if(_loc2_)
                                       {
                                          §§goto(addr222);
                                       }
                                       break;
                                    }
                                    this.m_badgeIcons[_loc1_].visible = true;
                                    if(!_loc3_)
                                    {
                                       addr222:
                                       _loc1_++;
                                       §§goto(addr223);
                                    }
                                    addr240:
                                    addr244:
                                    this.m_backgroundFilled.visible = true;
                                    return;
                                    §§goto(addr222);
                                 }
                                 §§goto(addr244);
                              }
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr244);
                  }
               }
               §§goto(addr55);
            }
            else
            {
               this.m_nameText.text = Singleton.dynamicData.GetCharName(this.m_saveSlotID);
               this.m_minionCountText.text = "Minions: " + Singleton.dynamicData.GetTotalMinions(this.m_saveSlotID) + "/101";
               this.m_starsText.text = "" + Singleton.dynamicData.GetTotalStars(this.m_saveSlotID);
               if(_loc2_ || _loc3_)
               {
                  this.m_newSlotText.visible = false;
                  this.m_closeButton.visible = true;
                  this.m_nameText.visible = true;
                  §§goto(addr174);
               }
            }
            §§goto(addr187);
         }
         §§goto(addr55);
      }
      
      public function SlotSelected(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.m_hasDeleteBeenPressed);
         if(!(_loc2_ && Boolean(this)))
         {
            if(§§pop())
            {
               return;
            }
            §§push(Singleton.dynamicData);
            if(_loc3_ || Boolean(param1))
            {
               §§push(this.m_saveSlotID);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().m_saveSlot = §§pop();
                  if(_loc3_)
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc3_)
                     {
                        §§push(this.m_saveSlotID);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr74:
                           if(!§§pop().GetIsSaveSlotInUse(§§pop()))
                           {
                              §§push(Singleton.utility);
                              if(_loc3_)
                              {
                                 §§push(§§pop().m_screenControllers);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().m_mainMenuScreen);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§pop().AnimateInTheCharSelectionScreen();
                                       if(_loc2_ && Boolean(this))
                                       {
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                                 else
                                 {
                                    addr135:
                                    §§push(§§pop().m_mainMenuScreen);
                                 }
                                 §§pop().FadeOutForReturnToGame();
                                 if(_loc3_)
                                 {
                                    TweenLite.to(this,1,{"onComplete":this.GotoTopdown});
                                 }
                              }
                              else
                              {
                                 addr126:
                                 §§pop().m_soundController.FadeCurrentMusic(0,1);
                                 if(!_loc2_)
                                 {
                                    addr134:
                                    §§goto(addr135);
                                    §§push(Singleton.utility.m_screenControllers);
                                 }
                              }
                              addr147:
                              return;
                           }
                           §§push(Singleton.utility);
                           if(_loc3_)
                           {
                              §§push(§§pop().m_screenControllers);
                              if(_loc3_)
                              {
                                 §§pop().m_topDownScreen.m_topDownMovementScreen.m_currLevel = null;
                                 addr114:
                                 Singleton.dynamicData.LoadData(this.m_saveSlotID);
                                 §§push(Singleton.utility);
                                 if(_loc3_)
                                 {
                                    §§goto(addr126);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr126);
                        }
                     }
                  }
               }
            }
            §§goto(addr114);
         }
         §§goto(addr74);
      }
      
      private function GotoTopdown() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN,true,0.5);
         }
      }
      
      public function DeletePressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            if(!Singleton.dynamicData.GetIsSaveSlotInUse(this.m_saveSlotID))
            {
               if(_loc3_)
               {
                  §§goto(addr36);
               }
               else
               {
                  addr61:
                  this.m_conformationBox.BringIn(this.YesPressed,this.NoPressed);
               }
            }
            else
            {
               this.m_hasDeleteBeenPressed = true;
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§goto(addr61);
               }
            }
            return;
         }
         addr36:
      }
      
      private function YesPressed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            Singleton.dynamicData.ResetMetaDataForSaveSlot(this.m_saveSlotID);
            if(!_loc2_)
            {
               §§goto(addr29);
            }
            §§goto(addr38);
         }
         addr29:
         SharedObject.getLocal("TCrpgSaveSlot" + this.m_saveSlotID).clear();
         if(!_loc2_)
         {
            addr38:
            this.BringIn();
         }
      }
      
      private function NoPressed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_hasDeleteBeenPressed = false;
         }
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_backgroundButton.m_isActive = true;
            if(_loc2_ || _loc1_)
            {
               addr46:
               §§push(this.m_closeButton);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr60:
                        this.m_closeButton.m_isActive = true;
                     }
                  }
                  return;
               }
            }
            §§goto(addr60);
         }
         §§goto(addr46);
      }
   }
}
