package TopDown.Menus.MinionPedia
{
   import Minions.BaseMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.MinionDexID;
   import States.MinionType;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionPediaMenu extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_backgroundMinionPedia:Sprite;
      
      private var m_backgroundMinion:Sprite;
      
      private var m_returnButton:TCButton;
      
      private var m_upButton:TCButton;
      
      private var m_downButton:TCButton;
      
      private var m_upButton_fast:TCButton;
      
      private var m_downButton_fast:TCButton;
      
      private var m_nameText:TextField;
      
      private var m_typeText:TextField;
      
      private var m_floorText:TextField;
      
      private var m_minionSprite:Sprite;
      
      private var m_type1:Sprite;
      
      private var m_type2:Sprite;
      
      private var m_minionsSelectObjects:Vector.<MinionPediaMinionSelect>;
      
      private var m_minionSelectHolder:Sprite;
      
      private var m_minionSelectMask:Sprite;
      
      private var m_selectedMinionIcon:Sprite;
      
      private var m_scrollPosition:int;
      
      public function MinionPediaMenu()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         if(!(_loc4_ && Boolean(this)))
         {
            _loc1_.addChild(this.m_background);
            if(!_loc4_)
            {
               this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
               §§push(this.m_returnButton);
               if(_loc5_ || _loc3_)
               {
                  §§push(3);
                  if(!_loc4_)
                  {
                     §§pop().x = §§pop();
                     if(!_loc4_)
                     {
                        addr62:
                        this.m_returnButton.y = 409;
                        _loc1_.addChild(this.m_returnButton);
                        this.m_backgroundMinionPedia = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_background");
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.m_backgroundMinionPedia.x = 21;
                           addr85:
                           this.m_backgroundMinionPedia.y = 18;
                           if(_loc5_)
                           {
                              _loc1_.addChild(this.m_backgroundMinionPedia);
                              if(_loc5_ || _loc3_)
                              {
                                 addr102:
                                 this.m_backgroundMinion = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_minionBackground");
                                 if(_loc5_ || Boolean(this))
                                 {
                                    addr116:
                                    this.m_backgroundMinion.x = 56;
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr127:
                                       this.m_backgroundMinion.y = 56;
                                       if(_loc5_)
                                       {
                                          addr133:
                                          _loc1_.addChild(this.m_backgroundMinion);
                                          addr137:
                                          this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite("plantGorilla2");
                                          if(_loc5_)
                                          {
                                             this.m_minionSprite.x = 174 - this.m_minionSprite.width / 2;
                                             addr156:
                                             this.m_minionSprite.y = 247 - this.m_minionSprite.height;
                                             if(_loc5_)
                                             {
                                                _loc1_.addChild(this.m_minionSprite);
                                             }
                                          }
                                       }
                                       var _loc2_:TextFormat = new TextFormat();
                                       if(_loc5_)
                                       {
                                          _loc2_.color = 16382457;
                                          if(!_loc4_)
                                          {
                                             _loc2_.size = 20;
                                             _loc2_.font = "BurbinCasual";
                                             _loc2_.align = TextFormatAlign.LEFT;
                                             this.m_nameText = new TextField();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                this.m_nameText.embedFonts = true;
                                                this.m_nameText.defaultTextFormat = _loc2_;
                                                if(!_loc4_)
                                                {
                                                   this.m_nameText.wordWrap = true;
                                                   this.m_nameText.autoSize = TextFieldAutoSize.LEFT;
                                                   if(_loc5_ || Boolean(_loc2_))
                                                   {
                                                      this.m_nameText.text = "Name:  Catilla";
                                                      this.m_nameText.width = 200;
                                                      if(!_loc4_)
                                                      {
                                                         this.m_nameText.x = 64;
                                                         this.m_nameText.y = 288;
                                                         this.m_nameText.selectable = false;
                                                         _loc1_.addChild(this.m_nameText);
                                                         if(_loc5_ || Boolean(_loc2_))
                                                         {
                                                            this.m_typeText = new TextField();
                                                            addr265:
                                                            this.m_typeText.embedFonts = true;
                                                            this.m_typeText.defaultTextFormat = _loc2_;
                                                            if(!_loc4_)
                                                            {
                                                               this.m_typeText.wordWrap = true;
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  this.m_typeText.autoSize = TextFieldAutoSize.LEFT;
                                                                  this.m_typeText.text = "Type: ";
                                                                  this.m_typeText.width = 200;
                                                                  this.m_typeText.x = 64;
                                                               }
                                                               this.m_typeText.y = 288 + 30;
                                                               §§goto(addr309);
                                                            }
                                                            §§goto(addr486);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      addr309:
                                                      this.m_typeText.selectable = false;
                                                      if(_loc5_ || Boolean(_loc2_))
                                                      {
                                                         _loc1_.addChild(this.m_typeText);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            this.m_floorText = new TextField();
                                                            this.m_floorText.embedFonts = true;
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               addr346:
                                                               this.m_floorText.defaultTextFormat = _loc2_;
                                                               if(_loc5_)
                                                               {
                                                                  this.m_floorText.wordWrap = true;
                                                                  this.m_floorText.autoSize = TextFieldAutoSize.LEFT;
                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                  {
                                                                     this.m_floorText.text = "Found: Floor 1, 2";
                                                                     this.m_floorText.width = 200;
                                                                     if(!(_loc4_ && Boolean(_loc2_)))
                                                                     {
                                                                        this.m_floorText.x = 64;
                                                                        this.m_floorText.y = 288 + 30 * 2;
                                                                        this.m_floorText.selectable = false;
                                                                        if(!_loc4_)
                                                                        {
                                                                           _loc1_.addChild(this.m_floorText);
                                                                           if(_loc5_)
                                                                           {
                                                                              this.m_type1 = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionType_plant");
                                                                              this.m_type1.x = 124;
                                                                              addr425:
                                                                              this.m_type1.y = 324;
                                                                              _loc1_.addChild(this.m_type1);
                                                                              this.m_type2 = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionType_plant");
                                                                              this.m_type2.x = 206;
                                                                              this.m_type2.y = 324;
                                                                              if(_loc5_)
                                                                              {
                                                                                 _loc1_.addChild(this.m_type2);
                                                                                 addr454:
                                                                                 this.m_upButton = new TCButton(this.UpPressed,"minionPedia_upArrow");
                                                                                 §§push(this.m_upButton);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(610);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr471:
                                                                                       §§push(this.m_upButton);
                                                                                       §§push(30);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    _loc1_.addChild(this.m_upButton);
                                                                                    this.m_upButton_fast = new TCButton(this.UpPressed_fast,"minionPedia_doubleUpArrow");
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr486:
                                                                                       §§push(this.m_upButton_fast);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§push(642);
                                                                                          if(!(_loc4_ && Boolean(this)))
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr509:
                                                                                                this.m_upButton_fast.y = 30;
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   _loc1_.addChild(this.m_upButton_fast);
                                                                                                   addr521:
                                                                                                   this.m_downButton = new TCButton(this.DownPressed,"minionPedia_upArrow");
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this.m_downButton);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(610);
                                                                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            §§push(this.m_downButton);
                                                                                                            if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               addr569:
                                                                                                               §§push(438);
                                                                                                               if(_loc5_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  §§push(this.m_downButton);
                                                                                                               }
                                                                                                               §§pop().scaleY = §§pop();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  _loc1_.addChild(this.m_downButton);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr578:
                                                                                                                     this.m_downButton_fast = new TCButton(this.DownPressed_fast,"minionPedia_doubleUpArrow");
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr587:
                                                                                                                        §§push(this.m_downButton_fast);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(642);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              §§push(this.m_downButton_fast);
                                                                                                                              if(_loc5_ || Boolean(_loc1_))
                                                                                                                              {
                                                                                                                                 §§push(437);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr610:
                                                                                                                                    §§push(this.m_downButton_fast);
                                                                                                                                    §§push(-1);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr610);
                                                                                                                           }
                                                                                                                           §§pop().scaleY = §§pop();
                                                                                                                           if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                           {
                                                                                                                              _loc1_.addChild(this.m_downButton_fast);
                                                                                                                              this.m_minionSelectHolder = new Sprite();
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 this.m_minionSelectHolder.x = 357;
                                                                                                                                 addr633:
                                                                                                                                 this.m_minionSelectHolder.y = 43;
                                                                                                                                 if(_loc5_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr644);
                                                                                                                                 }
                                                                                                                                 §§goto(addr706);
                                                                                                                              }
                                                                                                                              §§goto(addr644);
                                                                                                                           }
                                                                                                                           §§goto(addr699);
                                                                                                                        }
                                                                                                                        §§goto(addr610);
                                                                                                                     }
                                                                                                                     §§goto(addr674);
                                                                                                                  }
                                                                                                                  §§goto(addr633);
                                                                                                               }
                                                                                                               §§goto(addr578);
                                                                                                            }
                                                                                                            §§push(-1);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§goto(addr695);
                                                                                                }
                                                                                                §§goto(addr610);
                                                                                             }
                                                                                             §§goto(addr658);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr509);
                                                                                    }
                                                                                    §§goto(addr695);
                                                                                 }
                                                                                 §§goto(addr471);
                                                                              }
                                                                              §§goto(addr521);
                                                                           }
                                                                           §§goto(addr454);
                                                                        }
                                                                        §§goto(addr610);
                                                                     }
                                                                     §§goto(addr633);
                                                                  }
                                                               }
                                                               §§goto(addr578);
                                                            }
                                                            §§goto(addr471);
                                                         }
                                                         §§goto(addr684);
                                                      }
                                                      addr644:
                                                      _loc1_.addChild(this.m_minionSelectHolder);
                                                      this.m_minionSelectMask = new Sprite();
                                                      if(_loc5_)
                                                      {
                                                         this.m_minionSelectMask.x = 325;
                                                         addr658:
                                                         this.m_minionSelectMask.y = 24;
                                                         this.m_minionSelectMask.graphics.beginFill(5592405);
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            addr674:
                                                            this.m_minionSelectMask.graphics.drawRect(0,0,300,419);
                                                            if(!_loc4_)
                                                            {
                                                               addr684:
                                                               this.m_minionSelectMask.graphics.endFill();
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  addr695:
                                                                  _loc1_.addChild(this.m_minionSelectMask);
                                                                  addr699:
                                                                  this.m_minionSelectHolder.mask = this.m_minionSelectMask;
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr706:
                                                                     this.m_minionsSelectObjects = new Vector.<MinionPediaMinionSelect>(MinionDexID.TOTAL_NUM_OF_MINIONS - 4);
                                                                  }
                                                               }
                                                               §§goto(addr706);
                                                            }
                                                         }
                                                      }
                                                      var _loc3_:int = 0;
                                                      while(true)
                                                      {
                                                         if(_loc3_ >= this.m_minionsSelectObjects.length)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               this.m_selectedMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_minionSelectedIcon");
                                                            }
                                                            this.m_selectedMinionIcon.x = -39;
                                                            this.m_selectedMinionIcon.y = -4;
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr786);
                                                         }
                                                         this.m_minionsSelectObjects[_loc3_] = new MinionPediaMinionSelect(_loc3_);
                                                         this.m_minionsSelectObjects[_loc3_].LoadSprites();
                                                         this.m_minionsSelectObjects[_loc3_].y = _loc3_ * 52;
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         this.m_minionSelectHolder.addChild(this.m_minionsSelectObjects[_loc3_]);
                                                         _loc3_++;
                                                      }
                                                      this.m_minionSelectHolder.addChild(this.m_selectedMinionIcon);
                                                      addr786:
                                                      this.visible = false;
                                                      return;
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr454);
                                             }
                                             §§goto(addr425);
                                          }
                                          §§goto(addr587);
                                       }
                                       §§goto(addr471);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr127);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr85);
         }
         §§goto(addr62);
      }
      
      public function BringIn() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Singleton.utility);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop().m_screenControllers);
               if(_loc2_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(_loc2_)
                     {
                        §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_PEDIA_MENU;
                        if(!_loc3_)
                        {
                           addr55:
                           Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
                        }
                        var _loc1_:int = 0;
                        while(true)
                        {
                           if(_loc1_ >= this.m_minionsSelectObjects.length)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr95:
                                 this.SelectMinion(0);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    this.m_scrollPosition = 0;
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr112);
                                 }
                                 break;
                              }
                              break;
                           }
                           this.m_minionsSelectObjects[_loc1_].BringIn();
                           if(!_loc2_)
                           {
                              break;
                           }
                           _loc1_++;
                           if(!(_loc3_ && _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr95);
                        }
                        this.UpdateTheScrollBoxPosition();
                        addr112:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         }
      }
      
      public function Update() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.m_returnButton.m_isActive = true;
            §§push(this.m_upButton);
            if(_loc3_)
            {
               if(§§pop().visible)
               {
                  addr33:
                  this.m_upButton.m_isActive = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr42:
                     §§push(this.m_downButton);
                     if(!_loc2_)
                     {
                        if(§§pop().visible)
                        {
                           if(!_loc2_)
                           {
                              this.m_downButton.m_isActive = true;
                              addr52:
                           }
                        }
                        §§push(this.m_upButton_fast);
                        if(_loc3_)
                        {
                           if(§§pop().visible)
                           {
                              addr69:
                              this.m_upButton_fast.m_isActive = true;
                              if(_loc3_)
                              {
                                 addr73:
                                 §§push(this.m_downButton_fast);
                                 if(_loc3_)
                                 {
                                    if(§§pop().visible)
                                    {
                                       addr81:
                                       this.m_downButton_fast.m_isActive = true;
                                    }
                                    var _loc1_:int = 0;
                                    while(_loc1_ < this.m_minionsSelectObjects.length)
                                    {
                                       if(this.m_backgroundMinionPedia.hitTestObject(this.m_minionsSelectObjects[_loc1_]))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          this.m_minionsSelectObjects[_loc1_].m_backgroundButton.m_isActive = true;
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc1_++;
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          break;
                                       }
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr69);
               }
               §§goto(addr42);
            }
            §§goto(addr33);
         }
         §§goto(addr52);
      }
      
      public function SelectMinion(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         this.m_selectedMinionIcon.x = -26;
         this.m_selectedMinionIcon.y = -2 + param1 * 52;
         if(!(_loc8_ && _loc3_))
         {
            if(!Singleton.dynamicData.GetHasMinionBeenSeen(param1))
            {
               if(!(_loc8_ && _loc3_))
               {
                  this.m_nameText.text = "Name:   ????????";
                  this.m_typeText.text = "Type:    ????????";
                  this.m_floorText.text = "Found: ????????";
                  this.m_type1.visible = false;
                  this.m_type2.visible = false;
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     this.removeChild(this.m_minionSprite);
                     if(_loc9_ || _loc3_)
                     {
                        addr87:
                        this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite("unknownMinion");
                        this.m_minionSprite.x = 174 - this.m_minionSprite.width / 2;
                        this.m_minionSprite.y = 247 - this.m_minionSprite.height;
                     }
                     this.addChild(this.m_minionSprite);
                     return;
                  }
               }
               §§goto(addr87);
            }
         }
         var _loc2_:BaseMinion = Singleton.staticData.GetBaseMinion(param1);
         this.m_nameText.text = "Name:  " + _loc2_.m_baseMinionName;
         this.removeChild(this.m_minionSprite);
         if(_loc9_ || Boolean(this))
         {
            this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_minionBattleSprite);
            this.m_minionSprite.x = 174 - this.m_minionSprite.width / 2;
            if(_loc9_)
            {
               this.m_minionSprite.y = 247 - this.m_minionSprite.height;
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  this.addChild(this.m_minionSprite);
                  addr180:
                  this.m_typeText.text = "Type: ";
                  if(_loc9_ || Boolean(param1))
                  {
                     this.removeChild(this.m_type1);
                     this.m_type1 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc2_.m_minionType1));
                     this.m_type1.x = 124;
                     if(!(_loc8_ && _loc3_))
                     {
                        this.m_type1.y = 324;
                        if(!_loc8_)
                        {
                           this.addChild(this.m_type1);
                           if(_loc2_.m_minionType2 != MinionType.TYPE_NONE)
                           {
                              addr238:
                              this.m_type2.visible = true;
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 addr249:
                                 this.removeChild(this.m_type2);
                                 this.m_type2 = Singleton.utility.m_spriteHandler.CreateSprite(this.GetIconSpriteForType(_loc2_.m_minionType2));
                              }
                              this.m_type2.x = 206;
                              if(!_loc8_)
                              {
                                 this.m_type2.y = 324;
                                 addr273:
                                 this.addChild(this.m_type2);
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    addr284:
                                 }
                              }
                              §§goto(addr284);
                           }
                           else
                           {
                              this.m_type2.visible = false;
                           }
                           var _loc3_:Vector.<int> = Singleton.staticData.GetFloorsAMinionIsFoundOn(param1);
                           var _loc4_:* = "";
                           var _loc5_:int = 0;
                           loop0:
                           while(true)
                           {
                              §§push(_loc5_);
                              while(true)
                              {
                                 if(§§pop() >= _loc3_.length)
                                 {
                                    break loop0;
                                 }
                                 §§push(_loc3_[_loc5_] / 5);
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_ || Boolean(_loc3_))
                                       {
                                          _loc6_ = §§pop();
                                          §§push(_loc3_[_loc5_] % 5);
                                          if(_loc9_ || Boolean(_loc2_))
                                          {
                                             addr338:
                                             §§push(§§pop());
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             _loc7_ = §§pop();
                                             §§push(_loc4_);
                                             if(_loc9_ || Boolean(_loc2_))
                                             {
                                                §§push(_loc6_ + "-");
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() + _loc7_);
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      addr364:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc8_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc9_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!(_loc8_ && Boolean(param1)))
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc9_ || Boolean(_loc2_))
                                                               {
                                                                  addr391:
                                                                  §§push(§§pop() + 1);
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr414);
                                                            }
                                                            continue;
                                                         }
                                                         addr398:
                                                         §§push(§§pop() + ",  ");
                                                      }
                                                      _loc4_ = §§pop();
                                                      continue loop0;
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr364);
                                             }
                                             §§goto(addr398);
                                          }
                                          break;
                                       }
                                       §§goto(addr391);
                                    }
                                    break;
                                 }
                                 §§goto(addr338);
                              }
                              if(§§pop() >= _loc3_.length)
                              {
                                 continue;
                              }
                              §§goto(addr398);
                              §§push(_loc4_);
                           }
                           if(!_loc8_)
                           {
                              addr414:
                              if(_loc3_.length == 0)
                              {
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    addr425:
                                    this.m_floorText.text = "Found: N/A";
                                 }
                              }
                              else
                              {
                                 this.m_floorText.text = "Found: Floor " + _loc4_;
                              }
                              return;
                           }
                           §§goto(addr425);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr284);
                  }
               }
               §§goto(addr249);
            }
            §§goto(addr273);
         }
         §§goto(addr180);
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.ExitOut();
            if(_loc3_)
            {
               §§push(Singleton.utility);
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop().m_screenControllers);
                  if(_loc3_)
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(!_loc2_)
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(!_loc2_)
                        {
                           §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
                           §§goto(addr74);
                        }
                        §§pop().m_rootTopDownMenu.BringIn();
                        §§goto(addr74);
                     }
                  }
               }
               §§goto(addr71);
            }
         }
         addr74:
         if(!(_loc2_ && _loc3_))
         {
            addr71:
            §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
         }
      }
      
      private function UpPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_scrollPosition);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.m_scrollPosition = _loc3_;
            }
            if(!_loc4_)
            {
               this.UpdateTheScrollBoxPosition();
            }
         }
      }
      
      private function DownPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_scrollPosition);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.m_scrollPosition = _loc3_;
            }
            if(_loc5_ || Boolean(this))
            {
               this.UpdateTheScrollBoxPosition();
            }
         }
      }
      
      private function UpPressed_fast(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_scrollPosition -= 3;
            if(_loc3_ || Boolean(param1))
            {
               this.UpdateTheScrollBoxPosition();
            }
         }
      }
      
      private function DownPressed_fast(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.m_scrollPosition += 3;
            if(_loc3_)
            {
               this.UpdateTheScrollBoxPosition();
            }
         }
      }
      
      private function UpdateTheScrollBoxPosition() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.m_scrollPosition);
            if(_loc3_ || _loc1_)
            {
               §§push(0);
               if(_loc3_ || _loc1_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        this.m_scrollPosition = 0;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr56:
                           §§push(this.m_scrollPosition);
                           if(!_loc2_)
                           {
                              addr61:
                              if(§§pop() > 19)
                              {
                                 if(_loc3_)
                                 {
                                    addr64:
                                    this.m_scrollPosition = 19;
                                    addr67:
                                    §§push(43);
                                 }
                              }
                              §§goto(addr67);
                           }
                           §§push(-this.m_minionSelectHolder.height);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(20);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr97:
                                    §§push(§§pop() * this.m_scrollPosition);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                                 var _loc1_:* = §§pop();
                                 if(_loc3_)
                                 {
                                    TweenLite.to(this.m_minionSelectHolder,0.5,{"y":_loc1_});
                                    §§push(this.m_scrollPosition);
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§push(0);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§push(this.m_upButton);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(false);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§pop().visible = §§pop();
                                                   §§push(this.m_upButton_fast);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(false);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§pop().visible = §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            addr194:
                                                            if(this.m_scrollPosition == 19)
                                                            {
                                                               §§push(this.m_downButton);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().visible = §§pop();
                                                                     §§push(this.m_downButton_fast);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(false);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().visible = §§pop();
                                                                           addr237:
                                                                           return;
                                                                           addr226:
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr235:
                                                                        §§push(true);
                                                                     }
                                                                     §§pop().visible = §§pop();
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               else
                                                               {
                                                                  addr229:
                                                                  §§push(true);
                                                               }
                                                               §§pop().visible = §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  addr233:
                                                                  §§goto(addr235);
                                                                  §§push(this.m_downButton_fast);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.m_downButton);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      else
                                                      {
                                                         addr186:
                                                         §§pop().visible = §§pop();
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§goto(addr194);
                                                         }
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   else
                                                   {
                                                      addr185:
                                                      §§push(true);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                else
                                                {
                                                   addr175:
                                                   §§pop().visible = §§pop();
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§goto(addr185);
                                                      §§push(this.m_upButton_fast);
                                                   }
                                                }
                                                §§goto(addr233);
                                             }
                                             else
                                             {
                                                addr174:
                                                §§push(true);
                                             }
                                             §§goto(addr175);
                                          }
                                          else
                                          {
                                             §§push(this.m_upButton);
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr237);
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr56);
               }
            }
            §§goto(addr61);
         }
         §§goto(addr56);
      }
      
      private function GetIconSpriteForType(param1:int) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = "";
         §§push(param1);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            §§push(MinionType.TYPE_EARTH);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(_loc3_);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(0);
                  }
                  else if(MinionType.TYPE_PLANT === _loc3_)
                  {
                     §§push(1);
                  }
                  else
                  {
                     §§push(MinionType.TYPE_UNDEAD);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr297);
                           }
                           else
                           {
                              if(MinionType.TYPE_DEMONIC === _loc3_)
                              {
                                 §§push(3);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§goto(addr297);
                                 }
                                 else
                                 {
                                    addr210:
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          addr297:
                                          addr298:
                                          switch(2)
                                          {
                                             case 0:
                                                _loc2_ = "menus_minionType_earth";
                                                break;
                                             case 1:
                                                _loc2_ = "menus_minionType_plant";
                                                break;
                                             case 2:
                                                §§push("menus_minionType_undead");
                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                {
                                                   _loc2_ = §§pop();
                                                   break;
                                                }
                                                addr38:
                                                _loc2_ = §§pop();
                                                break;
                                             case 3:
                                                §§goto(addr38);
                                                §§push("menus_minionType_demonic");
                                             case 4:
                                                _loc2_ = "menus_minionType_dino";
                                                break;
                                             case 5:
                                                _loc2_ = "menus_minionType_energy";
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   break;
                                                }
                                                addr98:
                                                break;
                                             case 6:
                                                _loc2_ = "menus_minionType_fire";
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   break;
                                                }
                                                addr71:
                                                break;
                                             case 7:
                                                §§push("menus_minionType_flying");
                                                if(_loc4_)
                                                {
                                                   addr74:
                                                   _loc2_ = §§pop();
                                                   break;
                                                }
                                                _loc2_ = §§pop();
                                                §§goto(addr71);
                                                break;
                                             case 8:
                                                §§goto(addr74);
                                                §§push("menus_minionType_holy");
                                             case 9:
                                                _loc2_ = "menus_minionType_ice";
                                                break;
                                             case 10:
                                                _loc2_ = "menus_minionType_robot";
                                                break;
                                             case 11:
                                                _loc2_ = "menus_minionType_titan";
                                                break;
                                             case 12:
                                                §§push("menus_minionType_water");
                                                if(_loc4_ && Boolean(_loc2_))
                                                {
                                                   addr101:
                                                   _loc2_ = §§pop();
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   break;
                                                }
                                                _loc2_ = §§pop();
                                                §§goto(addr98);
                                                break;
                                             case 13:
                                                §§goto(addr101);
                                                §§push("menus_minionType_normal");
                                          }
                                          return _loc2_;
                                          §§push(7);
                                       }
                                       else
                                       {
                                          if(MinionType.TYPE_HOLY === _loc3_)
                                          {
                                             §§goto(addr297);
                                             §§push(8);
                                          }
                                          else
                                          {
                                             §§push(MinionType.TYPE_ICE);
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                addr232:
                                                if(§§pop() === _loc3_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr297);
                                                      §§push(9);
                                                   }
                                                   else
                                                   {
                                                      addr291:
                                                      §§goto(addr297);
                                                      §§push(13);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                else
                                                {
                                                   addr239:
                                                   if(MinionType.TYPE_ROBOT === _loc3_)
                                                   {
                                                      if(!(_loc4_ && Boolean(param1)))
                                                      {
                                                         §§goto(addr297);
                                                         §§push(10);
                                                      }
                                                      else
                                                      {
                                                         addr256:
                                                         §§goto(addr297);
                                                         §§push(11);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   else
                                                   {
                                                      §§push(MinionType.TYPE_TITAN);
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         addr255:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            §§goto(addr256);
                                                         }
                                                         else
                                                         {
                                                            §§push(MinionType.TYPE_WATER);
                                                            §§push(_loc3_);
                                                            if(!_loc4_)
                                                            {
                                                               addr263:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§push(12);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     addr279:
                                                                     §§goto(addr297);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr289:
                                                                     §§push(_loc3_);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(MinionType.TYPE_NORMAL);
                                                                  if(_loc5_ || Boolean(this))
                                                                  {
                                                                     §§goto(addr289);
                                                                  }
                                                               }
                                                               §§goto(addr297);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr291);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr297);
                                                               §§push(14);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr297);
                                    }
                                    §§goto(addr255);
                                 }
                              }
                              else
                              {
                                 §§push(MinionType.TYPE_DINO);
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr297);
                                       §§push(4);
                                    }
                                    else
                                    {
                                       if(MinionType.TYPE_ENERGY === _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr297);
                                             §§push(5);
                                          }
                                          else
                                          {
                                             addr204:
                                             §§push(6);
                                             if(!_loc4_)
                                             {
                                                addr207:
                                                §§goto(addr297);
                                             }
                                             else
                                             {
                                                §§goto(addr239);
                                             }
                                          }
                                          §§goto(addr297);
                                       }
                                       else
                                       {
                                          §§push(MinionType.TYPE_FIRE);
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             if(§§pop() === _loc3_)
                                             {
                                                §§goto(addr204);
                                             }
                                             else
                                             {
                                                §§goto(addr210);
                                                §§push(MinionType.TYPE_FLYING);
                                             }
                                             §§goto(addr255);
                                          }
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr297);
                                 }
                              }
                              §§goto(addr232);
                           }
                        }
                        §§goto(addr255);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr297);
               }
               §§goto(addr239);
            }
            §§goto(addr210);
         }
         §§goto(addr298);
      }
   }
}
