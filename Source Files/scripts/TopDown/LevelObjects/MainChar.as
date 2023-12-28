package TopDown.LevelObjects
{
   import SharedObjects.Animation;
   import SharedObjects.GameObject;
   import States.OrientationState;
   import TopDown.LevelObjects.ChatBox.StandardChatBox;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class MainChar extends GameObject
   {
       
      
      public var m_currDirection:int;
      
      private var m_stillSpritesMale:Vector.<Sprite>;
      
      private var m_walkingAnimationsMale:Vector.<Animation>;
      
      private var m_stillSpritesFeMale:Vector.<Sprite>;
      
      private var m_walkingAnimationsFeMale:Vector.<Animation>;
      
      private var m_isAnimatingInDirection:Vector.<Boolean>;
      
      private var m_walkingAnimationIncrementor:int;
      
      public var m_hasEarnedANewKey:Boolean;
      
      public var m_hasEarnedMoney:Boolean;
      
      public var m_hasEarnedANewGem:Boolean;
      
      public var m_hasEarnedANewSageSeal:Boolean;
      
      private var m_keySprite:Sprite;
      
      private var m_moneySprite:Sprite;
      
      private var m_gemSprite:Sprite;
      
      private var m_sageSealSprite:Sprite;
      
      private var m_sageSealBackgroundSprite:Sprite;
      
      private var m_healedTextSprite:Sprite;
      
      private var m_healedPlusSprite:Sprite;
      
      public var m_chatBox:StandardChatBox;
      
      public function MainChar()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(this))
         {
            this.m_stillSpritesMale = new Vector.<Sprite>(4);
            if(_loc3_ || _loc1_)
            {
               this.m_walkingAnimationsMale = new Vector.<Animation>(4);
               if(_loc3_ || _loc1_)
               {
                  this.m_stillSpritesMale[OrientationState.ORIENTATION_UP] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_back_still");
                  addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_UP]);
               }
               this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_front_still");
               if(_loc3_)
               {
                  addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN]);
                  if(_loc3_ || _loc2_)
                  {
                     this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_side_still");
                     addr101:
                     addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT]);
                     addr108:
                     this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_side_still");
                     if(_loc4_)
                     {
                     }
                     addr130:
                     var _loc1_:* = 0;
                     loop0:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(§§pop() < this.m_stillSpritesMale.length)
                           {
                              this.m_walkingAnimationsMale[_loc1_] = new Animation();
                              addChild(this.m_walkingAnimationsMale[_loc1_]);
                              if(_loc3_)
                              {
                                 _loc1_++;
                              }
                              continue;
                           }
                           this.m_walkingAnimationsMale[OrientationState.ORIENTATION_UP].Create("mainCharacter_male_back_",10);
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              this.m_walkingAnimationsMale[OrientationState.ORIENTATION_DOWN].Create("mainCharacter_male_front_",10);
                              if(_loc3_)
                              {
                                 this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].Create("mainCharacter_male_side_",10);
                                 this.m_walkingAnimationsMale[OrientationState.ORIENTATION_RIGHT].Create("mainCharacter_male_side_",10);
                                 this.m_stillSpritesFeMale = new Vector.<Sprite>(4);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    this.m_walkingAnimationsFeMale = new Vector.<Animation>(4);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_back_still");
                                       if(_loc3_ || _loc3_)
                                       {
                                          addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP]);
                                          this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_front_still");
                                          addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN]);
                                          this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_side_still");
                                          addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT]);
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr295:
                                             this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_side_still");
                                             addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT]);
                                             this.m_walkingAnimationIncrementor = 0;
                                             if(_loc3_)
                                             {
                                                §§push(0);
                                                if(_loc3_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr328:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop() < this.m_stillSpritesFeMale.length)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               addr354:
                                                               this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_UP].Create("mainCharacter_female_back_",10);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr369:
                                                                  this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_DOWN].Create("mainCharacter_female_front_",10);
                                                                  addr377:
                                                                  this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].Create("mainCharacter_female_side_",10);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr392:
                                                                     this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_RIGHT].Create("mainCharacter_female_side_",10);
                                                                  }
                                                               }
                                                               break loop0;
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         break loop0;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr328);
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr392);
                                 }
                              }
                           }
                           §§goto(addr295);
                        }
                        break;
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_)
                     {
                        this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
                        this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT].x = 59 + _loc2_;
                        this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT].y = 7;
                        this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
                        if(_loc3_)
                        {
                           this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].x = 59 + _loc2_;
                           this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].y = 7;
                           this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT].x = _loc2_ - 1;
                           this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT].y = 7;
                           this.m_walkingAnimationsMale[OrientationState.ORIENTATION_RIGHT].x = _loc2_ - 1;
                           this.m_walkingAnimationsMale[OrientationState.ORIENTATION_RIGHT].y = 7;
                        }
                        this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN].x = 3;
                        if(!_loc4_)
                        {
                           this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN].y = 2;
                           this.m_walkingAnimationsMale[OrientationState.ORIENTATION_DOWN].x = 3;
                           this.m_walkingAnimationsMale[OrientationState.ORIENTATION_DOWN].y = 2;
                           this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
                           if(_loc3_)
                           {
                              this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT].x = 80;
                              this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT].y = 7;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
                                 this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].x = 80;
                                 this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].y = 7;
                                 this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT].x = -7;
                                 this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT].y = 7;
                                 if(!_loc4_)
                                 {
                                    this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_RIGHT].x = -7;
                                    this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_RIGHT].y = 7;
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN].x = 4;
                                       this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN].y = 2 + 6;
                                       if(_loc3_)
                                       {
                                          this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_DOWN].x = 3;
                                          if(_loc3_)
                                          {
                                             this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_DOWN].y = 2 + 3;
                                          }
                                          this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP].x = 0;
                                          addr650:
                                          this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP].y = 4;
                                          if(_loc3_)
                                          {
                                             addr659:
                                             this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_UP].x = 0;
                                             this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_UP].y = 7;
                                             this.m_isAnimatingInDirection = new Vector.<Boolean>(4);
                                             §§push(0);
                                             if(_loc3_)
                                             {
                                                _loc1_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr685:
                                                   this.m_isAnimatingInDirection[_loc1_] = false;
                                                   _loc1_++;
                                                }
                                                addr692:
                                             }
                                             while(§§pop() < this.m_stillSpritesMale.length)
                                             {
                                                §§goto(addr685);
                                                §§goto(addr692);
                                             }
                                             this.m_keySprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_key");
                                             §§push(Singleton.utility);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().m_screenControllers);
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§push(§§pop().m_topDownScreen);
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      §§push(§§pop().m_topDownMovementScreen);
                                                      if(_loc3_)
                                                      {
                                                         §§pop().m_topVisualLayer.addChild(this.m_keySprite);
                                                         this.m_keySprite.alpha = 0;
                                                         this.m_moneySprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_money");
                                                         §§push(Singleton.utility);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop().m_screenControllers);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop().m_topDownScreen);
                                                               if(!(_loc4_ && Boolean(_loc1_)))
                                                               {
                                                                  §§push(§§pop().m_topDownMovementScreen);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().m_topVisualLayer.addChild(this.m_moneySprite);
                                                                     this.m_moneySprite.alpha = 0;
                                                                     this.m_gemSprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_gem");
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        addr787:
                                                                        §§push(Singleton.utility);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr791:
                                                                           §§push(§§pop().m_screenControllers);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr794:
                                                                              §§push(§§pop().m_topDownScreen);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop().m_topDownMovementScreen);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr805);
                                                                                 }
                                                                                 §§goto(addr850);
                                                                              }
                                                                              §§goto(addr847);
                                                                           }
                                                                        }
                                                                        §§goto(addr877);
                                                                     }
                                                                     §§goto(addr924);
                                                                  }
                                                                  §§goto(addr850);
                                                               }
                                                               §§goto(addr847);
                                                            }
                                                            §§goto(addr844);
                                                         }
                                                         §§goto(addr791);
                                                      }
                                                      addr805:
                                                      §§pop().m_topVisualLayer.addChild(this.m_gemSprite);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         this.m_gemSprite.alpha = 0;
                                                         this.m_sageSealBackgroundSprite = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_background");
                                                         §§push(Singleton.utility);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop().m_screenControllers);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr844:
                                                               §§push(§§pop().m_topDownScreen);
                                                               if(!_loc4_)
                                                               {
                                                                  addr847:
                                                                  §§push(§§pop().m_topDownMovementScreen);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr850:
                                                                     §§pop().m_topVisualLayer.addChild(this.m_sageSealBackgroundSprite);
                                                                     §§goto(addr854);
                                                                  }
                                                               }
                                                               §§goto(addr877);
                                                            }
                                                         }
                                                         §§goto(addr877);
                                                      }
                                                      addr854:
                                                      this.m_sageSealBackgroundSprite.alpha = 0;
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr865:
                                                         this.m_sageSealSprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_sageSeal_6");
                                                         addr877:
                                                         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_sageSealSprite);
                                                         if(_loc3_)
                                                         {
                                                            this.m_sageSealSprite.alpha = 0;
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               this.m_healedPlusSprite = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_healAnimation_crosses");
                                                               this.m_healedPlusSprite.x = 0;
                                                               §§goto(addr905);
                                                            }
                                                            §§goto(addr941);
                                                         }
                                                         §§goto(addr949);
                                                      }
                                                      addr905:
                                                      this.m_healedPlusSprite.y = 0;
                                                      §§goto(addr909);
                                                   }
                                                   §§goto(addr847);
                                                }
                                                §§goto(addr794);
                                             }
                                             §§goto(addr877);
                                          }
                                          §§goto(addr787);
                                       }
                                       §§goto(addr877);
                                    }
                                    addr909:
                                    addChild(this.m_healedPlusSprite);
                                    this.m_healedPlusSprite.alpha = 0;
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr924:
                                       this.m_healedTextSprite = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_healAnimation_healed");
                                       if(!_loc4_)
                                       {
                                          this.m_healedTextSprite.x = -6;
                                          this.m_healedTextSprite.y = -28;
                                          addr941:
                                          addChild(this.m_healedTextSprite);
                                       }
                                       this.m_healedTextSprite.alpha = 0;
                                       addr949:
                                       this.m_chatBox = new StandardChatBox();
                                    }
                                    §§push(this.m_chatBox);
                                    if(!_loc4_)
                                    {
                                       §§pop().AddSpriteFirstTime("menus_speechBubble",0,0,1,1,0,Singleton.utility.m_screenControllers.m_topDownScreen);
                                       §§push(this.m_chatBox);
                                    }
                                    §§pop().Cleanup();
                                    this.SetDirectionForStill(Singleton.dynamicData.m_charDirectionsForSave);
                                    return;
                                 }
                                 §§goto(addr659);
                              }
                              §§goto(addr650);
                           }
                           §§goto(addr905);
                        }
                        §§goto(addr865);
                     }
                     §§goto(addr850);
                  }
                  addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT]);
                  this.m_walkingAnimationIncrementor = 0;
                  §§goto(addr130);
               }
               §§goto(addr101);
            }
            §§goto(addr108);
         }
         §§goto(addr101);
      }
      
      public function PlayMoneyAnimation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Singleton.utility.m_soundController.PlaySound("tower_moneyPickup");
            if(!(_loc3_ && _loc1_))
            {
               addr27:
               this.m_moneySprite.alpha = 0;
               if(_loc2_)
               {
                  this.m_moneySprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
                  if(_loc2_)
                  {
                     addr47:
                     this.m_moneySprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
                  }
               }
               var _loc1_:TimelineLite = new TimelineLite();
               if(_loc2_)
               {
                  _loc1_.append(new TweenLite(this.m_moneySprite,0.2,{}));
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.append(new TweenLite(this.m_moneySprite,1,{"alpha":1}));
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr104:
                        _loc1_.append(new TweenLite(this.m_moneySprite,0.5,{}));
                        if(_loc2_)
                        {
                           addr114:
                           _loc1_.append(new TweenLite(this.m_moneySprite,0.5,{"alpha":0}));
                        }
                     }
                     _loc1_ = new TimelineLite();
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.append(new TweenLite(this.m_moneySprite,0.2,{}));
                        if(_loc2_)
                        {
                           _loc1_.append(new TweenLite(this.m_moneySprite,1,{"y":"-50"}));
                        }
                     }
                     return;
                  }
                  §§goto(addr114);
               }
               §§goto(addr104);
            }
            §§goto(addr47);
         }
         §§goto(addr27);
      }
      
      public function PlayGemAnimation() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            Singleton.utility.m_soundController.PlaySound("tower_gemPickup",0.6);
            if(!(_loc2_ && _loc3_))
            {
               this.m_gemSprite.alpha = 0;
               if(_loc3_ || _loc3_)
               {
                  this.m_gemSprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
                  if(_loc3_ || _loc1_)
                  {
                  }
               }
               §§goto(addr71);
            }
            this.m_gemSprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
         }
         addr71:
         var _loc1_:TimelineLite = new TimelineLite();
         if(!_loc2_)
         {
            _loc1_.append(new TweenLite(this.m_gemSprite,0.2,{}));
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.append(new TweenLite(this.m_gemSprite,1,{"alpha":1}));
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr116);
               }
               §§goto(addr131);
            }
         }
         addr116:
         _loc1_.append(new TweenLite(this.m_gemSprite,0.5,{}));
         if(!(_loc2_ && _loc3_))
         {
            addr131:
            _loc1_.append(new TweenLite(this.m_gemSprite,0.5,{"alpha":0}));
         }
         _loc1_ = new TimelineLite();
         if(!_loc2_)
         {
            _loc1_.append(new TweenLite(this.m_gemSprite,0.2,{}));
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.append(new TweenLite(this.m_gemSprite,1,{"y":"-50"}));
            }
         }
      }
      
      public function PlaySageSealAnimation() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            Singleton.utility.m_soundController.PlaySound("tower_gemPickup",0.6);
         }
         var _loc1_:Array = ["menus_plantMedallion","menus_fireMedallion","menus_electricMedallion","menus_undeadMedallion","menus_plantWizardMedallion","menus_undeadWizardMedallion","menus_undeadWizardMedallion"];
         §§push(Singleton.dynamicData.m_currFloorOfTower);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop() / 5));
         }
         var _loc2_:* = §§pop();
         §§push(Singleton.dynamicData.m_currFloorOfTower);
         if(_loc6_ || Boolean(_loc1_))
         {
            §§push(int(§§pop() % 5));
         }
         var _loc3_:* = §§pop();
         §§push(Singleton.utility);
         if(_loc6_ || Boolean(this))
         {
            §§push(§§pop().m_screenControllers);
            if(!_loc5_)
            {
               §§push(§§pop().m_topDownScreen);
               if(_loc6_)
               {
                  §§push(§§pop().m_topDownMovementScreen);
                  if(_loc6_)
                  {
                     §§pop().m_topVisualLayer.removeChild(this.m_sageSealSprite);
                     if(_loc6_)
                     {
                        §§push(this);
                        §§push(Singleton.utility.m_spriteHandler);
                        §§push("sageSeal_");
                        if(_loc6_)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              §§push(1);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_)
                                    {
                                       §§goto(addr113);
                                    }
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                        addr113:
                        §§push(§§pop() + "_");
                        if(!(_loc5_ && _loc3_))
                        {
                           addr122:
                           §§push(§§pop() + (_loc3_ + 1));
                        }
                        §§pop().m_sageSealSprite = §§pop().CreateSprite(§§pop());
                        Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_sageSealSprite);
                        this.m_sageSealSprite.alpha = 0;
                        if(!(_loc5_ && _loc3_))
                        {
                           this.m_sageSealSprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
                           this.m_sageSealSprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
                        }
                        §§goto(addr172);
                     }
                     addr172:
                     this.m_sageSealBackgroundSprite.alpha = 0;
                     this.m_sageSealBackgroundSprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
                     if(!_loc5_)
                     {
                        this.m_sageSealBackgroundSprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
                     }
                     var _loc4_:TimelineLite;
                     (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealSprite,0.2,{}));
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        _loc4_.append(new TweenLite(this.m_sageSealSprite,1,{"alpha":1}));
                        if(_loc6_ || Boolean(this))
                        {
                           _loc4_.append(new TweenLite(this.m_sageSealSprite,1,{}));
                           if(_loc6_)
                           {
                              _loc4_.append(new TweenLite(this.m_sageSealSprite,0.5,{"alpha":0}));
                           }
                        }
                     }
                     (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealSprite,0.2,{}));
                     if(!_loc5_)
                     {
                        _loc4_.append(new TweenLite(this.m_sageSealSprite,1,{"y":"-50"}));
                     }
                     (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealBackgroundSprite,0.2,{}));
                     if(!_loc5_)
                     {
                        _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,1,{"alpha":1}));
                        if(!(_loc5_ && _loc2_))
                        {
                           _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,1,{}));
                           if(_loc6_ || _loc2_)
                           {
                           }
                           (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealBackgroundSprite,0.2,{}));
                           §§goto(addr345);
                        }
                        _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,0.5,{"alpha":0}));
                     }
                     addr345:
                     if(_loc6_ || _loc3_)
                     {
                        _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,1,{"y":"-50"}));
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function PlayKeyAnimation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            Singleton.utility.m_soundController.PlaySound("tower_keyPickup",0.5);
            if(_loc2_ || Boolean(this))
            {
               this.m_keySprite.alpha = 0;
               if(!_loc3_)
               {
                  this.m_keySprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
                  if(!(_loc3_ && _loc1_))
                  {
                     this.m_keySprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
                  }
               }
            }
         }
         var _loc1_:TimelineLite = new TimelineLite();
         if(!_loc3_)
         {
            _loc1_.append(new TweenLite(this.m_keySprite,0.2,{}));
            if(_loc2_ || _loc2_)
            {
               _loc1_.append(new TweenLite(this.m_keySprite,1,{"alpha":1}));
               if(_loc2_)
               {
                  addr110:
                  _loc1_.append(new TweenLite(this.m_keySprite,0.5,{}));
                  if(_loc2_)
                  {
                  }
                  addr130:
                  _loc1_ = new TimelineLite();
                  if(!_loc3_)
                  {
                     _loc1_.append(new TweenLite(this.m_keySprite,0.2,{}));
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr158:
                        _loc1_.append(new TweenLite(this.m_keySprite,1,{"y":"-50"}));
                     }
                     return;
                  }
                  §§goto(addr158);
               }
               _loc1_.append(new TweenLite(this.m_keySprite,0.5,{"alpha":0}));
               §§goto(addr130);
            }
         }
         §§goto(addr110);
      }
      
      public function FinishActivate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            §§push(this.m_hasEarnedANewKey);
            §§push(this.m_hasEarnedANewKey);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(this.m_hasEarnedMoney);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        addr53:
                        if(§§pop())
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              this.PlayKeyAnimation();
                              if(_loc3_ || _loc2_)
                              {
                                 TweenLite.to(this,0.7,{"onComplete":this.PlayMoneyAnimation});
                                 this.m_hasEarnedANewKey = false;
                                 addr316:
                                 if(!_loc2_)
                                 {
                                    §§goto(addr328);
                                 }
                              }
                              else
                              {
                                 addr101:
                                 §§push(this.m_hasEarnedANewSageSeal);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       addr113:
                                       if(§§pop())
                                       {
                                          §§push(Singleton.dynamicData.GetHighestFloor());
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop());
                                             if(!_loc2_)
                                             {
                                                _loc1_ = §§pop();
                                                §§push(_loc1_);
                                             }
                                          }
                                          if(§§pop() < 31)
                                          {
                                             if(!_loc2_)
                                             {
                                                this.PlaySageSealAnimation();
                                                if(!_loc2_)
                                                {
                                                   addr137:
                                                   TweenLite.to(this,1.9,{"onComplete":this.PlayKeyAnimation});
                                                   §§push(Singleton.utility);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop().UnlockNextFloor();
                                                      §§push(Singleton.utility);
                                                   }
                                                   §§pop().m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
                                                   if(_loc2_ && Boolean(_loc1_))
                                                   {
                                                      addr259:
                                                      TweenLite.to(this,0.7,{"onComplete":this.PlayGemAnimation});
                                                      if(_loc2_)
                                                      {
                                                         addr310:
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr218:
                                                   this.PlayKeyAnimation();
                                                   TweenLite.to(this,0.7,{"onComplete":this.PlayGemAnimation});
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      addr288:
                                                      this.PlayMoneyAnimation();
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   else
                                                   {
                                                      addr235:
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr343);
                                             }
                                             §§goto(addr316);
                                          }
                                          §§goto(addr137);
                                       }
                                       else
                                       {
                                          §§push(this.m_hasEarnedANewKey);
                                          if(!(_loc2_ && Boolean(_loc1_)))
                                          {
                                             §§push(§§pop());
                                             if(!(_loc2_ && Boolean(_loc1_)))
                                             {
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         addr199:
                                                         §§pop();
                                                         §§push(this.m_hasEarnedANewGem);
                                                         if(_loc3_ || Boolean(_loc1_))
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr217:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr218);
                                                               }
                                                               else
                                                               {
                                                                  addr240:
                                                                  §§push(this.m_hasEarnedANewSageSeal);
                                                                  if(this.m_hasEarnedANewSageSeal)
                                                                  {
                                                                     addr241:
                                                                     §§pop();
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr251:
                                                                        §§push(this.m_hasEarnedANewGem);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr254:
                                                                           if(§§pop())
                                                                           {
                                                                              this.PlaySageSealAnimation();
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§goto(addr259);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr301:
                                                                                 this.PlayGemAnimation();
                                                                                 if(!(_loc3_ || Boolean(this)))
                                                                                 {
                                                                                    addr314:
                                                                                    this.PlaySageSealAnimation();
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.m_hasEarnedANewKey);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr274:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    this.PlayKeyAnimation();
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.m_hasEarnedMoney);
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr288);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr314);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr300:
                                                                                 if(!this.m_hasEarnedANewGem)
                                                                                 {
                                                                                    if(this.m_hasEarnedANewSageSeal)
                                                                                    {
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr254);
                                                               }
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr274);
                                          }
                                          §§goto(addr241);
                                       }
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr343);
                           }
                           addr328:
                           this.m_hasEarnedMoney = false;
                           if(!(_loc2_ && _loc2_))
                           {
                              this.m_hasEarnedANewGem = false;
                              if(_loc3_)
                              {
                                 addr343:
                                 this.m_hasEarnedANewSageSeal = false;
                              }
                              this.UpdateAnimationState();
                           }
                           return;
                        }
                        §§push(this.m_hasEarnedANewKey);
                        if(!_loc2_)
                        {
                           addr83:
                           §§push(§§pop());
                           §§push(§§pop());
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop();
                                    §§goto(addr101);
                                 }
                                 §§goto(addr274);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr241);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr83);
               }
               §§goto(addr53);
            }
            §§goto(addr240);
         }
         §§goto(addr235);
      }
      
      public function UpdateAnimationState() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               if(§§pop() >= this.m_stillSpritesMale.length)
               {
                  §§push(Input.kd("a","LEFT"));
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(§§pop())
                     {
                        this.SetDirectionForAnimation(OrientationState.ORIENTATION_LEFT);
                        if(_loc2_ || Boolean(this))
                        {
                           this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT] = true;
                           if(!_loc3_)
                           {
                              addr68:
                              §§push(Input.kd("d","RIGHT"));
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr82:
                                       this.SetDirectionForAnimation(OrientationState.ORIENTATION_RIGHT);
                                       if(_loc2_)
                                       {
                                          this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT] = true;
                                          addr101:
                                          §§push(Input.kd("w","UP"));
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§goto(addr112);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr68);
                  }
                  addr112:
                  if(§§pop())
                  {
                     this.SetDirectionForAnimation(OrientationState.ORIENTATION_UP);
                     addr117:
                     this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP] = true;
                     if(_loc2_)
                     {
                     }
                     loop2:
                     while(true)
                     {
                        this.m_walkingAnimationsFeMale[_loc1_].GotoFrame(0);
                        _loc1_++;
                        addr197:
                        loop1:
                        while(true)
                        {
                           §§push(_loc1_);
                           addr198:
                           while(true)
                           {
                              if(§§pop() >= this.m_stillSpritesMale.length)
                              {
                                 break loop1;
                              }
                              this.m_walkingAnimationsMale[_loc1_].GotoFrame(0);
                              if(!(_loc2_ || _loc3_))
                              {
                                 break loop1;
                              }
                              continue loop2;
                           }
                           continue loop2;
                        }
                        §§goto(addr202);
                     }
                     addr190:
                  }
                  §§push(Input.kd("s","DOWN"));
                  if(_loc2_)
                  {
                     addr131:
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           this.SetDirectionForAnimation(OrientationState.ORIENTATION_DOWN);
                           this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN] = true;
                           §§goto(addr149);
                        }
                        addr168:
                        §§goto(addr197);
                     }
                     §§goto(addr149);
                  }
               }
               continue;
               addr149:
               if(this.AreAllAnimationsComplete())
               {
                  addr152:
                  this.SetDirectionForStill(this.m_currDirection);
                  this.m_walkingAnimationIncrementor = 0;
                  §§push(0);
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr198);
               }
               addr202:
               return;
            }
            break;
         }
         _loc1_ = §§pop();
         §§goto(addr168);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         super.UpdateFullFrames();
         if(Input.kd("a","LEFT"))
         {
            if(_loc2_ || Boolean(this))
            {
               if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT])
               {
                  this.SetDirectionForAnimation(OrientationState.ORIENTATION_LEFT);
                  this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT] = true;
                  addr45:
                  if(Input.kd("d","RIGHT"))
                  {
                     if(_loc2_)
                     {
                        if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT])
                        {
                           this.SetDirectionForAnimation(OrientationState.ORIENTATION_RIGHT);
                           this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT] = true;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr75:
                              §§push(Input.kd("w","UP"));
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 if(§§pop())
                                 {
                                    if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP])
                                    {
                                       if(_loc2_)
                                       {
                                          this.SetDirectionForAnimation(OrientationState.ORIENTATION_UP);
                                          this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP] = true;
                                          if(!_loc3_)
                                          {
                                             addr107:
                                             if(Input.kd("s","DOWN"))
                                             {
                                                if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN])
                                                {
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      this.SetDirectionForAnimation(OrientationState.ORIENTATION_DOWN);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN] = true;
                                                         addr142:
                                                         if(Input.ku("a","LEFT"))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT] = false;
                                                               if(this.AreAllAnimationsComplete())
                                                               {
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr165:
                                                                     this.SetDirectionForStill(OrientationState.ORIENTATION_LEFT);
                                                                  }
                                                                  addr181:
                                                                  §§push(Input.ku("d","RIGHT"));
                                                                  if(_loc2_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT] = false;
                                                                           if(_loc2_)
                                                                           {
                                                                              addr205:
                                                                              if(this.AreAllAnimationsComplete())
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    this.SetDirectionForStill(OrientationState.ORIENTATION_RIGHT);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr233:
                                                                                       if(Input.ku("w","UP"))
                                                                                       {
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP] = false;
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                §§push(this.AreAllAnimationsComplete());
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr262:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         this.SetDirectionForStill(OrientationState.ORIENTATION_UP);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr281:
                                                                                                            §§push(Input.ku("s","DOWN"));
                                                                                                            if(_loc2_ || Boolean(this))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN] = false;
                                                                                                                     §§goto(addr301);
                                                                                                                  }
                                                                                                                  §§goto(addr334);
                                                                                                               }
                                                                                                               §§goto(addr320);
                                                                                                            }
                                                                                                            §§goto(addr371);
                                                                                                            addr276:
                                                                                                         }
                                                                                                         §§goto(addr388);
                                                                                                      }
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr281);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§goto(addr233);
                                                                                 }
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           §§goto(addr409);
                                                                        }
                                                                        §§goto(addr388);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               else
                                                               {
                                                                  this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§goto(addr181);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr411);
                                                }
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr353);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr304);
                  }
                  §§goto(addr75);
               }
               §§goto(addr45);
            }
            addr301:
            if(this.AreAllAnimationsComplete())
            {
               addr304:
               this.SetDirectionForStill(OrientationState.ORIENTATION_DOWN);
               addr320:
               §§push(this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT]);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        addr395:
                        if(!_loc3_)
                        {
                           addr334:
                           §§pop();
                           §§push(this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT]);
                        }
                        if(!§§pop())
                        {
                           this.IncrementAnimation();
                           if(!(_loc2_ || Boolean(this)))
                           {
                              addr411:
                              while(_loc1_ < this.m_stillSpritesMale.length)
                              {
                                 this.m_walkingAnimationsMale[_loc1_].GotoFrame(0);
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    break;
                                 }
                                 this.m_walkingAnimationsFeMale[_loc1_].GotoFrame(0);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 _loc1_++;
                                 if(_loc3_ && Boolean(this))
                                 {
                                    break;
                                 }
                              }
                           }
                           return;
                        }
                        this.m_walkingAnimationIncrementor = 0;
                        addr409:
                        _loc1_ = 0;
                        §§goto(addr411);
                        §§goto(addr411);
                     }
                     if(§§pop())
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           this.SetDirectionForStill(OrientationState.ORIENTATION_RIGHT);
                           §§goto(addr353);
                        }
                        addr353:
                        return;
                     }
                     §§push(this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP]);
                     §§push(this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP]);
                  }
                  if(§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr371:
                        §§pop();
                        §§push(this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN]);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr395);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr388:
                        this.SetDirectionForStill(OrientationState.ORIENTATION_UP);
                        §§goto(addr392);
                     }
                     else
                     {
                        §§goto(addr409);
                     }
                  }
                  else
                  {
                     addr393:
                     §§goto(addr395);
                     §§push(this.AreAllAnimationsComplete());
                  }
                  §§goto(addr409);
               }
               §§goto(addr334);
               addr308:
            }
            else
            {
               this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr320);
               }
            }
            addr392:
            return;
         }
         §§goto(addr45);
      }
      
      private function AreAllAnimationsComplete() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_isAnimatingInDirection.length)
         {
            if(this.m_isAnimatingInDirection[_loc1_])
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(false);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
                  addr63:
                  return §§pop();
               }
            }
            else
            {
               _loc1_++;
               if(!_loc2_)
               {
                  break;
               }
            }
         }
         §§goto(addr63);
         §§push(true);
      }
      
      private function GetCurrentDirectionWeAreAnimating() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() < this.m_isAnimatingInDirection.length)
               {
                  if(this.m_isAnimatingInDirection[_loc1_])
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  else
                  {
                     _loc1_++;
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
               }
               break;
            }
            break;
         }
         return §§pop();
      }
      
      public function IncrementAnimation() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc4_ && _loc3_))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_walkingAnimationIncrementor);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.m_walkingAnimationIncrementor = _loc3_;
            }
            if(_loc5_ || Boolean(_loc1_))
            {
               addr50:
               §§push(this.m_walkingAnimationIncrementor);
               if(_loc5_ || Boolean(_loc2_))
               {
                  if(§§pop() > 1)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr76:
                        _loc1_ = 0;
                     }
                     do
                     {
                        if(_loc1_ < this.m_stillSpritesMale.length)
                        {
                           this.m_walkingAnimationsMale[_loc1_].PlayNextFrame();
                           if(!_loc4_)
                           {
                              this.m_walkingAnimationsFeMale[_loc1_].PlayNextFrame();
                              if(!(_loc5_ || _loc3_))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     while(!(_loc5_ || _loc3_));
                     
                     this.m_walkingAnimationIncrementor = 0;
                  }
                  return;
               }
            }
            §§goto(addr76);
         }
         §§goto(addr50);
      }
      
      private function SetDirectionForAnimation(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.m_currDirection = param1;
         §§push(Singleton.dynamicData);
         if(_loc3_)
         {
            §§pop().m_charDirectionsForSave = this.m_currDirection;
            this.SetAllTheDirectionSpritesToOff();
            §§push(Singleton.dynamicData);
         }
         if(§§pop().m_isMale)
         {
            this.m_walkingAnimationsMale[param1].visible = true;
         }
         else
         {
            this.m_walkingAnimationsFeMale[param1].visible = true;
         }
      }
      
      public function SetDirectionForStill(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.m_currDirection = param1;
         §§push(Singleton.dynamicData);
         if(_loc3_)
         {
            §§pop().m_charDirectionsForSave = this.m_currDirection;
            this.SetAllTheDirectionSpritesToOff();
            if(_loc3_ || _loc2_)
            {
               §§goto(addr49);
            }
            §§goto(addr51);
         }
         addr49:
         if(Singleton.dynamicData.m_isMale)
         {
            addr51:
            this.m_stillSpritesMale[param1].visible = true;
         }
         else
         {
            this.m_stillSpritesFeMale[param1].visible = true;
         }
      }
      
      private function SetAllTheDirectionSpritesToOff() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               break;
            }
            if(§§pop() >= this.m_stillSpritesMale.length)
            {
               §§push(0);
               if(!_loc2_)
               {
                  break;
               }
               loop2:
               while(true)
               {
                  if(§§pop() >= this.m_stillSpritesMale.length)
                  {
                     addr50:
                     break;
                  }
                  this.m_stillSpritesMale[_loc1_].visible = false;
                  this.m_stillSpritesFeMale[_loc1_].visible = false;
                  _loc1_++;
                  if(_loc2_ && Boolean(_loc1_))
                  {
                     break;
                  }
                  addr78:
                  while(true)
                  {
                     continue loop2;
                     §§goto(addr50);
                  }
               }
               return;
            }
            this.m_walkingAnimationsMale[_loc1_].visible = false;
            this.m_walkingAnimationsFeMale[_loc1_].visible = false;
            _loc1_++;
         }
         _loc1_ = §§pop();
         §§goto(addr78);
      }
      
      public function BringInCharChatBoxWithText(param1:String, param2:Function = null, param3:Function = null, param4:Function = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.m_chatBox.AddSprite();
            this.m_chatBox.SetFunctions(param2,param3,param4);
            this.m_chatBox.BringInWithText(param1,"Inner Monologue");
            §§push(this.m_chatBox);
            if(_loc6_ || Boolean(param1))
            {
               §§pop().m_currSprite.x = x + 45;
               §§push(this.m_chatBox);
               if(!_loc5_)
               {
                  §§goto(addr62);
               }
               §§goto(addr80);
            }
            addr62:
            §§pop().m_currSprite.y = y - 30;
            §§goto(addr67);
         }
         addr67:
         if(this.m_chatBox.m_currSprite.x + this.m_chatBox.m_currSprite.width > 700)
         {
            addr80:
            this.m_chatBox.m_currSprite.x = x - 225;
         }
      }
      
      public function UpdateChatBox() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_chatBox.Update();
         }
      }
      
      public function PlayHealedAnimation() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         Singleton.utility.m_soundController.PlaySound("tower_healstone",0.2);
         if(_loc3_ || _loc3_)
         {
            this.m_healedPlusSprite.x = 0;
            if(!_loc2_)
            {
               addr33:
               this.m_healedPlusSprite.y = 0;
            }
            this.m_healedPlusSprite.alpha = 0;
            if(!_loc2_)
            {
               this.m_healedTextSprite.alpha = 0;
               TweenLite.to(this.m_healedPlusSprite,2.7,{"y":-100});
            }
            var _loc1_:TimelineLite = new TimelineLite();
            if(_loc3_ || _loc3_)
            {
               _loc1_.append(new TweenLite(this.m_healedTextSprite,0.4,{"alpha":1}));
               if(!_loc2_)
               {
                  addr85:
                  _loc1_.append(new TweenLite(this.m_healedTextSprite,1.2,{}));
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.append(new TweenLite(this.m_healedTextSprite,1,{"alpha":0}));
                  }
               }
               _loc1_ = new TimelineLite();
               if(!_loc2_)
               {
                  _loc1_.append(new TweenLite(this.m_healedPlusSprite,0.4,{"alpha":1}));
                  if(_loc3_)
                  {
                     _loc1_.append(new TweenLite(this.m_healedPlusSprite,0.2,{}));
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.append(new TweenLite(this.m_healedPlusSprite,2,{"alpha":0}));
                     }
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr33);
      }
   }
}
