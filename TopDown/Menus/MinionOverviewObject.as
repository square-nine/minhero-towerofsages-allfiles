package TopDown.Menus
{
   import Minions.BaseMinion;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import SharedObjects.TutorialPopup;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionOverviewObject extends GameObject
   {
       
      
      public var m_backgoundButton:TCButton;
      
      private var m_iconBackground:Sprite;
      
      private var m_minionIcon:Sprite;
      
      private var m_iconMask:Sprite;
      
      private var m_minionNameText:TextField;
      
      private var m_lvText:TextField;
      
      private var m_minionLevelText:TextField;
      
      private var m_textFieldFormat:TextFormat;
      
      private var m_currGems:Vector.<Sprite>;
      
      private var m_currStatBonusIcon:Sprite;
      
      private var m_healthBar:InterfaceBar;
      
      private var m_energyBar:InterfaceBar;
      
      public var m_currMinion:OwnedMinion;
      
      public var m_unspentTalentPointsPopup:TutorialPopup;
      
      private var m_renameButton:TCButton;
      
      private var m_okButton:TCButton;
      
      public function MinionOverviewObject(param1:Function)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         this.m_backgoundButton = new TCButton(param1,"menus_minionInfo_background");
         if(_loc4_ || Boolean(this))
         {
            addChild(this.m_backgoundButton);
            this.m_healthBar = new InterfaceBar("menus_minionInfo_healthBar_full","menus_minionInfo_healthBar_cap");
            if(!(_loc5_ && _loc2_))
            {
               §§push(this.m_healthBar);
               if(_loc4_)
               {
                  §§push(72);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§pop().x = §§pop();
                     addr60:
                     §§push(this.m_healthBar);
                     §§push(29);
                  }
                  §§pop().y = §§pop();
                  addChild(this.m_healthBar);
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     this.m_energyBar = new InterfaceBar("menus_minionInfo_energyBar_full","menus_minionInfo_energyBar_cap");
                     addr79:
                     §§push(this.m_energyBar);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(72);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§pop().x = §§pop();
                           addr105:
                           if(!_loc5_)
                           {
                              addr101:
                              §§push(this.m_energyBar);
                              §§push(42);
                           }
                           addChild(this.m_energyBar);
                           var _loc2_:TextFormat = new TextFormat();
                           _loc2_.color = 15461355;
                           if(_loc4_)
                           {
                              _loc2_.size = 18;
                              if(_loc4_)
                              {
                                 _loc2_.font = "BurbinCasual";
                                 _loc2_.align = TextFormatAlign.LEFT;
                                 this.m_minionNameText = new TextField();
                                 this.m_minionNameText.x = 72;
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.m_minionNameText.y = -1;
                                    this.m_minionNameText.embedFonts = true;
                                    this.m_minionNameText.defaultTextFormat = _loc2_;
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       this.m_minionNameText.text = "temp";
                                       this.m_minionNameText.width = 180;
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          this.m_minionNameText.height = 32;
                                          this.m_minionNameText.selectable = false;
                                          if(!_loc5_)
                                          {
                                             addChild(this.m_minionNameText);
                                             if(!_loc5_)
                                             {
                                                addr195:
                                                this.m_lvText = new TextField();
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   this.m_lvText.x = 286;
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr217:
                                                      this.m_lvText.y = 56;
                                                      this.m_lvText.embedFonts = true;
                                                      _loc2_.size = 10;
                                                      addr228:
                                                      this.m_lvText.defaultTextFormat = _loc2_;
                                                      this.m_lvText.text = "lv";
                                                      addr236:
                                                      this.m_lvText.width = 50;
                                                      if(!_loc5_)
                                                      {
                                                         addr242:
                                                         this.m_lvText.selectable = false;
                                                         addChild(this.m_lvText);
                                                         if(_loc4_)
                                                         {
                                                            this.m_minionLevelText = new TextField();
                                                            if(!(_loc5_ && Boolean(param1)))
                                                            {
                                                               this.m_minionLevelText.x = 301;
                                                               this.m_minionLevelText.y = 42;
                                                               if(_loc5_)
                                                               {
                                                               }
                                                               addr326:
                                                               addChild(this.m_minionLevelText);
                                                               if(_loc4_)
                                                               {
                                                                  addr332:
                                                                  this.m_textFieldFormat = _loc2_;
                                                                  this.m_currGems = new Vector.<Sprite>(4);
                                                               }
                                                               var _loc3_:int = 0;
                                                               while(true)
                                                               {
                                                                  if(_loc3_ < this.m_currGems.length)
                                                                  {
                                                                     this.m_currGems[_loc3_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionInfo_emptyGemSlot");
                                                                     this.m_currGems[_loc3_].x = 72 + _loc3_ * 20;
                                                                     if(_loc4_)
                                                                     {
                                                                        this.m_currGems[_loc3_].y = 53;
                                                                        if(_loc5_ && Boolean(_loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addChild(this.m_currGems[_loc3_]);
                                                                        if(!(_loc5_ && Boolean(_loc3_)))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                     break;
                                                                  }
                                                                  this.m_unspentTalentPointsPopup = new TutorialPopup();
                                                                  if(_loc4_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(this.m_unspentTalentPointsPopup);
                                                                     if(_loc4_ || Boolean(_loc2_))
                                                                     {
                                                                        §§pop().Create("tutorial_newTalentPointsPopup_side");
                                                                        §§push(this.m_unspentTalentPointsPopup);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(-105);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr431:
                                                                              §§push(this.m_unspentTalentPointsPopup);
                                                                              §§push(13);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr435);
                                                                           }
                                                                           §§goto(addr513);
                                                                        }
                                                                     }
                                                                     §§goto(addr431);
                                                                  }
                                                                  §§goto(addr538);
                                                                  addr435:
                                                                  addChild(this.m_unspentTalentPointsPopup);
                                                                  this.m_renameButton = new TCButton(this.BringInRename,"menus_minionInfo_renameButton");
                                                                  §§push(this.m_renameButton);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(257);
                                                                     if(!(_loc5_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.m_renameButton);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr466);
                                                                           }
                                                                           §§goto(addr475);
                                                                        }
                                                                        §§goto(addr513);
                                                                     }
                                                                     §§goto(addr466);
                                                                  }
                                                                  addr466:
                                                                  §§pop().y = 6;
                                                                  addChild(this.m_renameButton);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr475:
                                                                     this.m_renameButton.visible = false;
                                                                     if(_loc4_ || Boolean(_loc2_))
                                                                     {
                                                                        this.m_okButton = new TCButton(this.SetTextAsNewName,"menus_minionInfo_doneButton");
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.m_okButton);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(257);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc5_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§push(this.m_okButton);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr513:
                                                                                       §§pop().y = 6;
                                                                                       addChild(this.m_okButton);
                                                                                       break;
                                                                                       addr512:
                                                                                    }
                                                                                    addr520:
                                                                                    §§pop().visible = false;
                                                                                    this.m_currStatBonusIcon = Singleton.utility.m_spriteHandler.CreateSprite("hud_statBonus_0");
                                                                                    §§goto(addr522);
                                                                                 }
                                                                                 §§goto(addr546);
                                                                              }
                                                                              §§goto(addr513);
                                                                           }
                                                                           §§goto(addr512);
                                                                        }
                                                                        §§goto(addr546);
                                                                     }
                                                                     §§goto(addr513);
                                                                  }
                                                                  addr522:
                                                                  if(_loc4_)
                                                                  {
                                                                     addr538:
                                                                     this.m_currStatBonusIcon.x = 72 + _loc3_ * 20;
                                                                     addr546:
                                                                     this.m_currStatBonusIcon.y = 56;
                                                                     addChild(this.m_currStatBonusIcon);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr520);
                                                               §§push(this.m_okButton);
                                                            }
                                                            this.m_minionLevelText.embedFonts = true;
                                                            if(!(_loc5_ && Boolean(param1)))
                                                            {
                                                               _loc2_.size = 22;
                                                               if(_loc4_ || Boolean(_loc3_))
                                                               {
                                                                  this.m_minionLevelText.defaultTextFormat = _loc2_;
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     this.m_minionLevelText.text = "temp";
                                                                  }
                                                                  this.m_minionLevelText.width = 50;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr322:
                                                                     this.m_minionLevelText.selectable = false;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr322);
                           }
                           §§goto(addr332);
                        }
                        §§pop().y = §§pop();
                        if(_loc4_)
                        {
                        }
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr60);
            }
            §§goto(addr105);
         }
         §§goto(addr79);
      }
      
      public function SetMinion(param1:OwnedMinion) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.m_minionDexID);
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:BaseMinion = Singleton.staticData.GetBaseMinion(_loc2_);
         if(!_loc5_)
         {
            this.m_currMinion = param1;
            this.m_iconBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionIcon_background");
            this.m_iconBackground.x = 5;
            if(!_loc5_)
            {
               addr49:
               this.m_iconBackground.y = 5;
               if(!_loc5_)
               {
                  addChild(this.m_iconBackground);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     this.m_minionIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc3_.m_minionBattleSprite);
                     this.m_minionIcon.x = _loc3_.m_minionIconPositioningX;
                     if(_loc6_)
                     {
                        this.m_minionIcon.y = _loc3_.m_minionIconPositioningY;
                        addr86:
                        this.m_minionIcon.cacheAsBitmap = true;
                        if(_loc6_)
                        {
                           addChild(this.m_minionIcon);
                           if(!(_loc5_ && _loc2_))
                           {
                              this.m_iconMask = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionIcon_mask");
                              if(_loc6_ || Boolean(this))
                              {
                                 this.m_iconMask.x = 8;
                                 this.m_iconMask.y = 8;
                                 if(_loc6_)
                                 {
                                    this.m_iconMask.cacheAsBitmap = true;
                                    if(!_loc5_)
                                    {
                                       addr133:
                                       addChild(this.m_iconMask);
                                    }
                                    addr142:
                                    this.m_minionLevelText.text = "" + param1.m_currLevel;
                                    this.m_minionNameText.text = param1.m_minionName;
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr161:
                                       this.m_healthBar.SetBarSize(param1.m_currHealthPercentage);
                                       if(_loc6_ || Boolean(this))
                                       {
                                       }
                                       addr178:
                                       var _loc4_:int = 0;
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() >= this.m_currGems.length)
                                             {
                                                if(!_loc5_)
                                                {
                                                   removeChild(this.m_currStatBonusIcon);
                                                }
                                                §§push(this);
                                                §§push(Singleton.utility.m_spriteHandler);
                                                §§push("hud_statBonus_");
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop() + param1.m_statBonus);
                                                }
                                                §§pop().m_currStatBonusIcon = §§pop().CreateSprite(§§pop());
                                                this.m_currStatBonusIcon.x = 76 + param1.m_baseMinion.m_numberOfGems * 20;
                                                if(_loc6_)
                                                {
                                                   this.m_currStatBonusIcon.y = 55;
                                                   addr343:
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      addChild(this.m_currStatBonusIcon);
                                                      §§push(param1.m_currLevel);
                                                      break;
                                                   }
                                                   this.m_minionLevelText.scaleY = 0.75;
                                                   this.m_minionLevelText.x = 295;
                                                   this.m_minionLevelText.y = 48;
                                                   this.m_lvText.x = 285;
                                                }
                                                this.m_lvText.y = 55;
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr411:
                                                   this.SetupUnspentTalentPointsTutorial(param1);
                                                }
                                             }
                                             else
                                             {
                                                if(this.m_currGems[_loc4_].parent != null)
                                                {
                                                   this.m_currGems[_loc4_].parent.removeChild(this.m_currGems[_loc4_]);
                                                }
                                                §§push(_loc4_);
                                                if(_loc5_ && Boolean(_loc3_))
                                                {
                                                   break;
                                                }
                                                §§push(param1.m_baseMinion.m_numberOfGems);
                                                if(_loc6_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      continue;
                                                   }
                                                   if(param1.GetGemAt(_loc4_) != null)
                                                   {
                                                      this.m_currGems[_loc4_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionInfo_filledGemSlot");
                                                      if(!_loc5_)
                                                      {
                                                         addr246:
                                                         this.m_currGems[_loc4_].x = 72 + _loc4_ * 20;
                                                         if(_loc6_)
                                                         {
                                                            this.m_currGems[_loc4_].y = 53;
                                                            addChild(this.m_currGems[_loc4_]);
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   this.m_currGems[_loc4_] = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionInfo_emptyGemSlot");
                                                   §§goto(addr246);
                                                }
                                                else
                                                {
                                                   addr331:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         this.m_minionLevelText.scaleX = 0.75;
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   else
                                                   {
                                                      this.m_minionLevelText.scaleX = 1;
                                                      this.m_minionLevelText.scaleY = 1;
                                                      this.m_minionLevelText.x = 298;
                                                      this.m_minionLevelText.y = 42;
                                                      this.m_lvText.x = 286;
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr400);
                                                      }
                                                   }
                                                }
                                             }
                                             addr400:
                                             this.m_lvText.y = 56;
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§goto(addr411);
                                             }
                                             return;
                                          }
                                          break;
                                       }
                                       §§goto(addr331);
                                       §§push(9);
                                    }
                                    this.m_energyBar.SetBarSize(param1.m_currEnergyPercentage);
                                    §§goto(addr178);
                                 }
                                 §§goto(addr142);
                              }
                              this.m_minionIcon.mask = this.m_iconMask;
                              §§goto(addr142);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr161);
               }
               §§goto(addr86);
            }
            §§goto(addr133);
         }
         §§goto(addr49);
      }
      
      public function SetupUnspentTalentPointsTutorial(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            if(param1.m_availableTalentPoints > 0)
            {
               if(!_loc3_)
               {
                  addr33:
                  §§push(this.m_unspentTalentPointsPopup);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        §§pop().visible = §§pop();
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr53);
                  }
                  else
                  {
                     addr51:
                     §§push(false);
                  }
                  §§pop().visible = §§pop();
               }
               addr53:
               return;
            }
            §§push(this.m_unspentTalentPointsPopup);
            §§goto(addr51);
         }
         §§goto(addr33);
      }
      
      public function Cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.m_iconBackground == null)
            {
               if(!_loc1_)
               {
                  return;
               }
            }
            else
            {
               this.m_minionIcon.mask = null;
               if(!(_loc1_ && _loc1_))
               {
                  removeChild(this.m_iconBackground);
                  removeChild(this.m_minionIcon);
               }
               removeChild(this.m_iconMask);
            }
         }
      }
      
      public function TurnRenameButtonOn() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.m_renameButton);
            if(_loc1_)
            {
               §§pop().visible = true;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr49:
                  this.m_renameButton.alpha = 0;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr61);
               }
               TweenLite.to(this.m_renameButton,0.5,{"alpha":1});
               addr61:
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function SnapRenameButtonOn() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.m_renameButton);
            if(!_loc2_)
            {
               §§pop().visible = true;
               §§goto(addr44);
            }
            §§pop().alpha = 1;
         }
         addr44:
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.m_renameButton);
         }
      }
      
      public function TurnRenameButtonOff() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.TurnOffSelectionBox();
            if(!_loc1_)
            {
               TweenLite.to(this.m_renameButton,0.5,{
                  "alpha":0,
                  "onComplete":this.FinishTurnRenameButtonOff
               });
            }
         }
      }
      
      private function FinishTurnRenameButtonOff() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_renameButton.visible = false;
         }
      }
      
      private function BringInRename(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TextFormat = new TextFormat();
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.color = 1053720;
            if(_loc4_)
            {
               _loc2_.size = 18;
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.font = "BurbinCasual";
                  _loc2_.align = TextFormatAlign.LEFT;
                  if(_loc4_)
                  {
                     this.m_minionNameText.type = TextFieldType.INPUT;
                     this.m_minionNameText.selectable = true;
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        addr72:
                        this.m_minionNameText.background = true;
                        this.m_minionNameText.border = true;
                        if(!_loc3_)
                        {
                           this.m_minionNameText.backgroundColor = 14474460;
                           this.m_minionNameText.defaultTextFormat = _loc2_;
                           this.m_minionNameText.setTextFormat(_loc2_);
                           if(_loc4_)
                           {
                              this.m_minionNameText.setSelection(0,this.m_minionNameText.text.length);
                              if(_loc3_ && Boolean(param1))
                              {
                              }
                              §§goto(addr134);
                           }
                           this.m_minionNameText.maxChars = 16;
                           Singleton.utility.m_stage.focus = this.m_minionNameText;
                           §§goto(addr128);
                        }
                        addr128:
                        this.m_renameButton.visible = false;
                        if(_loc4_)
                        {
                        }
                        §§goto(addr134);
                     }
                  }
                  addr134:
                  this.m_okButton.visible = true;
                  return;
               }
               §§goto(addr128);
            }
         }
         §§goto(addr72);
      }
      
      public function SetTextAsNewName(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.m_currMinion.m_minionName = this.m_minionNameText.text;
            if(_loc3_)
            {
               addr29:
               this.TurnOffSelectionBox();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function TurnOffSelectionBox() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_minionNameText.text = this.m_currMinion.m_minionName;
         this.m_minionNameText.type = TextFieldType.DYNAMIC;
         if(_loc2_)
         {
            this.m_minionNameText.selectable = false;
            this.m_minionNameText.background = false;
            this.m_minionNameText.border = false;
            this.m_minionNameText.defaultTextFormat = this.m_textFieldFormat;
            if(_loc2_)
            {
               this.m_minionNameText.setTextFormat(this.m_textFieldFormat);
               if(!(_loc1_ && _loc1_))
               {
                  addr72:
                  Singleton.utility.m_stage.focus = null;
                  if(_loc2_ || _loc1_)
                  {
                     addr84:
                     this.m_renameButton.visible = true;
                     this.m_okButton.visible = false;
                  }
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr72);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.UpdateFullFrames();
            if(_loc1_)
            {
               this.m_backgoundButton.m_isActive = true;
            }
         }
      }
      
      public function UpdateRenameButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.m_renameButton);
            if(_loc2_ || _loc1_)
            {
               if(§§pop().visible)
               {
                  if(_loc2_)
                  {
                     addr45:
                     this.m_renameButton.m_isActive = true;
                     if(_loc2_)
                     {
                        addr49:
                        §§push(this.m_okButton);
                        if(_loc2_ || Boolean(this))
                        {
                           if(!§§pop().visible)
                           {
                           }
                           §§goto(addr66);
                        }
                        §§pop().m_isActive = true;
                        §§goto(addr66);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr66);
               }
               §§goto(addr49);
            }
            §§goto(addr45);
         }
         addr66:
         if(_loc2_)
         {
            addr62:
            §§push(this.m_okButton);
         }
      }
   }
}
