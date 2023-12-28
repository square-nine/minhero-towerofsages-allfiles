package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.TopDownStates;
   import TopDown.LevelObjects.MainChar;
   import TopDown.Levels.MainTower.BaseEggery;
   import TopDown.Levels.MainTower.Lobby;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class EggeryPartySwapMenu extends GameObject
   {
       
      
      public var m_blackBackground:Sprite;
      
      public var m_backgroundNormalSize:Sprite;
      
      private var m_closeButton:TCButton;
      
      private var m_minionSelectTutorial:Sprite;
      
      private var m_minionSelectPopupText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_isInEggery:Boolean;
      
      private var m_minionOverviewObject:Vector.<MinionOverviewObject>;
      
      public function EggeryPartySwapMenu()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!_loc1_)
            {
               this.m_minionOverviewObject = new Vector.<MinionOverviewObject>(5);
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(this)))
         {
            this.m_blackBackground = new Sprite();
            if(_loc5_ || Boolean(this))
            {
               this.m_blackBackground.graphics.beginFill(0);
               if(!(_loc4_ && _loc1_))
               {
                  this.m_blackBackground.graphics.drawRect(0,0,700,525);
                  if(!(_loc4_ && _loc1_))
                  {
                     this.m_blackBackground.graphics.endFill();
                     if(_loc5_)
                     {
                        this.m_blackBackground.alpha = 0.65;
                        if(_loc5_)
                        {
                           addChild(this.m_blackBackground);
                           this.m_backgroundNormalSize = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
                           if(!(_loc4_ && Boolean(this)))
                           {
                              this.m_backgroundNormalSize.x = 186 - 18;
                           }
                           addr125:
                           this.m_minionSelectTutorial.y = 103;
                           if(_loc5_ || _loc3_)
                           {
                              addr136:
                              addChild(this.m_minionSelectTutorial);
                           }
                           var _loc1_:TextFormat = new TextFormat();
                           if(!_loc4_)
                           {
                              _loc1_.color = 16448250;
                              _loc1_.size = 20;
                              _loc1_.font = "BurbinCasual";
                              if(_loc5_)
                              {
                                 _loc1_.align = TextFormatAlign.CENTER;
                                 if(!_loc4_)
                                 {
                                    this.m_minionSelectPopupText = new TextField();
                                    this.m_minionSelectPopupText.x = 587;
                                    this.m_minionSelectPopupText.y = 220;
                                    this.m_minionSelectPopupText.embedFonts = true;
                                    this.m_minionSelectPopupText.defaultTextFormat = _loc1_;
                                    this.m_minionSelectPopupText.wordWrap = true;
                                    this.m_minionSelectPopupText.autoSize = TextFieldAutoSize.CENTER;
                                    if(_loc5_)
                                    {
                                       §§goto(addr201);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr220);
                              }
                              addr201:
                              this.m_minionSelectPopupText.text = "Choose a minion to swap";
                              this.m_minionSelectPopupText.width = 90;
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr216:
                                 this.m_minionSelectPopupText.selectable = false;
                                 addr220:
                                 addChild(this.m_minionSelectPopupText);
                                 if(_loc4_)
                                 {
                                 }
                                 addr249:
                                 this.m_closeButton.y = -22;
                                 this.m_backgroundNormalSize.addChild(this.m_closeButton);
                                 var _loc2_:Array = [this.Minion1HasBeenPressed,this.Minion2HasBeenPressed,this.Minion3HasBeenPressed,this.Minion4HasBeenPressed,this.Minion5HasBeenPressed,this.Minion6HasBeenPressed];
                                 var _loc3_:int = 0;
                                 §§goto(addr246);
                              }
                              this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
                              §§push(this.m_closeButton);
                              if(!_loc4_)
                              {
                                 §§push(296);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§pop().x = §§pop();
                                    addr246:
                                    §§goto(addr248);
                                 }
                                 §§goto(addr249);
                              }
                              addr248:
                              while(_loc3_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
                              {
                                 this.m_minionOverviewObject[_loc3_] = new MinionOverviewObject(_loc2_[_loc3_]);
                                 this.m_minionOverviewObject[_loc3_].x = 39;
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    this.m_minionOverviewObject[_loc3_].y = 45 + 75 * _loc3_;
                                    if(_loc5_)
                                    {
                                       addChild(this.m_minionOverviewObject[_loc3_]);
                                       if(_loc4_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 _loc3_++;
                              }
                              visible = false;
                              return;
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr125);
                     }
                     this.m_backgroundNormalSize.y = 77 - 20;
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        addr108:
                        addChild(this.m_backgroundNormalSize);
                        if(_loc5_)
                        {
                           addr114:
                           this.m_minionSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_choosingAMinionBar");
                        }
                        this.m_minionSelectTutorial.x = 523;
                        §§goto(addr125);
                     }
                     §§goto(addr136);
                  }
               }
               §§goto(addr125);
            }
            §§goto(addr114);
         }
         §§goto(addr108);
      }
      
      public function UpdateMinions() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_ || _loc3_)
         {
            _loc1_ = 0;
         }
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].visible = true;
               if(!_loc3_)
               {
                  this.m_minionOverviewObject[_loc1_].SetMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
                  this.m_minionOverviewObject[_loc1_].x = 186;
                  this.m_minionOverviewObject[_loc1_].y = 97 - 20 + 75 * _loc1_;
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
               }
               this.m_minionOverviewObject[_loc1_].alpha = 1;
               if(_loc3_ && Boolean(this))
               {
               }
            }
            else
            {
               this.m_minionOverviewObject[_loc1_].visible = false;
            }
            _loc1_++;
         }
      }
      
      public function CloseButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.ExitOut();
         }
      }
      
      public function BringIn(param1:OwnedMinion, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.m_isInEggery = param2;
            if(_loc4_)
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_EGGERY_PARTY_SWAP_SCREEN;
               if(_loc4_ || Boolean(param1))
               {
                  this.UpdateMinions();
               }
               this.m_currMinion = param1;
               if(_loc4_)
               {
                  this.x = 0;
                  this.y = 0;
                  if(_loc4_ || Boolean(param1))
                  {
                  }
                  addr67:
                  var _loc3_:TimelineLite = new TimelineLite();
                  if(!_loc5_)
                  {
                     _loc3_.append(new TweenLite(this,0.1,{}));
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        _loc3_.append(new TweenLite(this,0.5,{"alpha":1}));
                        if(_loc4_ || param2)
                        {
                           addr110:
                           Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheActionIcon();
                        }
                     }
                     return;
                  }
                  §§goto(addr110);
               }
            }
            this.visible = true;
            this.alpha = 0;
         }
         §§goto(addr67);
      }
      
      public function ExitOut() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TimelineLite = new TimelineLite();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.append(new TweenLite(this,0.5,{
               "alpha":0,
               "onComplete":this.FinishExitOut
            }));
            if(_loc3_ || Boolean(_loc1_))
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheActionIcon();
            }
         }
      }
      
      private function FinishExitOut() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:BaseEggery = null;
         var _loc4_:Lobby = null;
         if(_loc6_)
         {
            visible = false;
         }
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               if(_loc5_ && Boolean(this))
               {
                  continue;
               }
               this.m_minionOverviewObject[_loc1_].Cleanup();
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
            }
            _loc1_++;
            if(!_loc6_)
            {
               break;
            }
         }
         var _loc2_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            if(this.m_isInEggery)
            {
               addr87:
               §§push(Singleton.staticData);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(§§pop().GetCurrentLevel());
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     _loc3_ = §§pop() as BaseEggery;
                     if(_loc6_)
                     {
                        §§push(_loc2_);
                        §§push("");
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() + this.m_currMinion.m_baseMinion.m_baseMinionName);
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              §§push(§§pop() + " has been sent to storage");
                           }
                        }
                        §§pop().BringInCharChatBoxWithText(§§pop(),_loc3_.AddToFirstAvailiblePosition);
                     }
                  }
                  else
                  {
                     addr140:
                     _loc4_ = §§pop() as Lobby;
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§push(_loc2_);
                        §§push("");
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           §§push(§§pop() + this.m_currMinion.m_baseMinion.m_baseMinionName);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + " has been sent to storage");
                           }
                        }
                        §§pop().BringInCharChatBoxWithText(§§pop(),_loc4_.AddToFirstAvailiblePosition);
                     }
                  }
                  return;
               }
               addr139:
               §§push(§§pop().GetCurrentLevel());
               §§goto(addr140);
            }
            else
            {
               §§push(Singleton.staticData);
            }
            §§goto(addr139);
         }
         §§goto(addr87);
      }
      
      public function MinionPressed(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:OwnedMinion = Singleton.dynamicData.GetOwnedMinionAt(param1);
         if(_loc4_)
         {
            this.m_currMinion = _loc2_;
            if(_loc4_ || _loc3_)
            {
               §§push(Singleton.dynamicData);
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§pop().AddToOwnedMinions(_loc2_);
                  §§goto(addr76);
               }
               §§pop().SetMinionTo(param1,null);
               if(_loc4_ || Boolean(this))
               {
               }
               §§goto(addr76);
            }
            addr76:
            if(_loc4_ || Boolean(_loc2_))
            {
               addr64:
               §§push(Singleton.dynamicData);
            }
            this.ExitOut();
            return;
         }
         §§goto(addr64);
      }
      
      public function Minion1HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.MinionPressed(0);
         }
      }
      
      public function Minion2HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.MinionPressed(1);
         }
      }
      
      public function Minion3HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.MinionPressed(2);
         }
      }
      
      public function Minion4HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.MinionPressed(3);
         }
      }
      
      public function Minion5HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.MinionPressed(4);
         }
      }
      
      public function Minion6HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.MinionPressed(5);
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.UpdateFullFrames();
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
            {
               if(!_loc3_)
               {
                  addr70:
                  this.m_closeButton.m_isActive = true;
                  break;
               }
               break;
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               if(_loc3_)
               {
                  continue;
               }
               this.m_minionOverviewObject[_loc1_].UpdateFullFrames();
               if(!_loc2_)
               {
                  §§goto(addr70);
               }
            }
            _loc1_++;
            if(_loc3_ && _loc3_)
            {
               break;
            }
            continue;
            §§goto(addr70);
         }
      }
   }
}
