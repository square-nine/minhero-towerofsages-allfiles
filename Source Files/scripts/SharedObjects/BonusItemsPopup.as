package SharedObjects
{
   import Minions.OwnedMinion;
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.MinionDexID;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BonusItemsPopup extends Sprite
   {
       
      
      private var _isActive:Boolean;
      
      private var m_titleText:TextField;
      
      private var m_descriptionText:TextField;
      
      private var m_textFormat:TextFormat;
      
      private var m_bigBackground:Sprite;
      
      private var m_sureButton:TCButton;
      
      private var m_noButton:TCButton;
      
      private var m_okButton:TCButton;
      
      private var m_sponsorPatch:Sprite;
      
      private var m_extraGemSocketIcon:Sprite;
      
      private var m_extraMinionIcon:Sprite;
      
      private var m_isExtraGemsBeingAdded:Boolean;
      
      private var m_yourItemsHaveBeenAddedText:TextField;
      
      public function BonusItemsPopup()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               addr37:
               this._isActive = false;
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this);
         this.x = 144;
         if(!(_loc2_ && Boolean(this)))
         {
            this.y = 19;
            if(_loc1_)
            {
               this.visible = false;
               this.m_bigBackground = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_backgroundLarge");
               addChild(this.m_bigBackground);
               if(!(_loc2_ && _loc2_))
               {
                  this.m_sponsorPatch = Singleton.utility.m_spriteHandler.CreateSprite("bonusItems_sponsorPatch");
                  if(_loc1_)
                  {
                     this.m_sponsorPatch.x = 116;
                     this.m_sponsorPatch.y = 30;
                     addChild(this.m_sponsorPatch);
                     if(!_loc2_)
                     {
                        this.m_extraGemSocketIcon = Singleton.utility.m_spriteHandler.CreateSprite("bonusItems_gemsBackground");
                        if(_loc1_ || Boolean(this))
                        {
                           this.m_extraGemSocketIcon.x = 99;
                           this.m_extraGemSocketIcon.y = 238;
                           if(_loc1_)
                           {
                              addChild(this.m_extraGemSocketIcon);
                              this.m_extraGemSocketIcon.visible = false;
                              this.m_extraMinionIcon = Singleton.utility.m_spriteHandler.CreateSprite("bonusItems_minionBackground");
                              if(!(_loc2_ && _loc2_))
                              {
                                 this.m_extraMinionIcon.x = 126;
                                 if(!_loc2_)
                                 {
                                    this.m_extraMinionIcon.y = 182;
                                    this.m_extraMinionIcon.visible = false;
                                    addChild(this.m_extraMinionIcon);
                                    if(_loc1_)
                                    {
                                       addr144:
                                       this.m_textFormat = new TextFormat();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.m_textFormat.color = 16382457;
                                          if(_loc1_ || Boolean(this))
                                          {
                                             this.m_textFormat.size = 28;
                                             this.m_textFormat.font = "BurbinCasual";
                                             if(_loc1_)
                                             {
                                                this.m_textFormat.align = TextFormatAlign.CENTER;
                                                this.m_titleText = new TextField();
                                                this.m_titleText.embedFonts = true;
                                                this.m_titleText.x = 20;
                                                addr193:
                                                this.m_titleText.y = 111;
                                                if(_loc1_)
                                                {
                                                   this.m_titleText.defaultTextFormat = this.m_textFormat;
                                                   this.m_titleText.wordWrap = true;
                                                   addr208:
                                                   this.m_titleText.autoSize = TextFieldAutoSize.CENTER;
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      this.m_titleText.text = "Get extra gem sockets";
                                                      if(_loc1_)
                                                      {
                                                         addr226:
                                                         this.m_titleText.width = 380;
                                                         this.m_titleText.selectable = false;
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            addChild(this.m_titleText);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               this.m_textFormat.size = 15;
                                                               this.m_descriptionText = new TextField();
                                                               if(!_loc2_)
                                                               {
                                                                  addr269:
                                                                  this.m_descriptionText.embedFonts = true;
                                                                  if(!_loc2_)
                                                                  {
                                                                     this.m_descriptionText.defaultTextFormat = this.m_textFormat;
                                                                     addr280:
                                                                     this.m_descriptionText.wordWrap = true;
                                                                     addr284:
                                                                     this.m_descriptionText.autoSize = TextFieldAutoSize.CENTER;
                                                                     this.m_descriptionText.text = "Take a second to check out some other\nawesome games and get extra gem\nsockets for all your minions";
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        addr300:
                                                                        this.m_descriptionText.width = 353;
                                                                        addr304:
                                                                        this.m_descriptionText.x = 30;
                                                                        if(!(_loc2_ && Boolean(this)))
                                                                        {
                                                                           this.m_descriptionText.y = 149;
                                                                           this.m_descriptionText.selectable = false;
                                                                           addr323:
                                                                           addChild(this.m_descriptionText);
                                                                        }
                                                                        addr482:
                                                                        this.m_noButton.y = 338 + 10;
                                                                        addr485:
                                                                        addChild(this.m_noButton);
                                                                        if(_loc1_)
                                                                        {
                                                                           addr498:
                                                                           this.m_okButton = new TCButton(this.NoThanksButtonPressed,"tutorial_okButton");
                                                                        }
                                                                        §§push(this.m_okButton);
                                                                        if(_loc1_)
                                                                        {
                                                                           §§push(143);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr515:
                                                                              §§push(this.m_okButton);
                                                                              §§push(390);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           §§goto(addr517);
                                                                        }
                                                                        §§goto(addr515);
                                                                        addr479:
                                                                        addr481:
                                                                     }
                                                                     this.m_textFormat.color = 5604052;
                                                                     this.m_yourItemsHaveBeenAddedText = new TextField();
                                                                     if(_loc1_)
                                                                     {
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§goto(addr413);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                         §§goto(addr498);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr498);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr280);
                              }
                              §§goto(addr446);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr399);
                     }
                     §§goto(addr300);
                  }
                  §§goto(addr498);
               }
               §§goto(addr284);
            }
            addr337:
            this.m_yourItemsHaveBeenAddedText.embedFonts = true;
            if(!_loc2_)
            {
               this.m_yourItemsHaveBeenAddedText.defaultTextFormat = this.m_textFormat;
               this.m_yourItemsHaveBeenAddedText.wordWrap = true;
               if(_loc1_)
               {
                  this.m_yourItemsHaveBeenAddedText.autoSize = TextFieldAutoSize.CENTER;
                  this.m_yourItemsHaveBeenAddedText.text = "Your items have been added";
                  this.m_yourItemsHaveBeenAddedText.width = 353;
                  this.m_yourItemsHaveBeenAddedText.x = 30;
               }
               this.m_yourItemsHaveBeenAddedText.y = 368;
               if(_loc1_ || _loc2_)
               {
                  this.m_yourItemsHaveBeenAddedText.selectable = false;
                  if(!(_loc2_ && _loc1_))
                  {
                     addChild(this.m_yourItemsHaveBeenAddedText);
                     if(!_loc2_)
                     {
                        addr399:
                        this.m_sureButton = new TCButton(this.OkButtonPressed,"bonusItems_sureButton");
                        if(_loc1_ || Boolean(this))
                        {
                           addr413:
                           §§push(this.m_sureButton);
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(214);
                              if(_loc1_ || Boolean(this))
                              {
                                 §§pop().x = §§pop();
                                 addr446:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr440:
                                    §§push(this.m_sureButton);
                                    §§push(338);
                                 }
                                 addChild(this.m_sureButton);
                                 this.m_noButton = new TCButton(this.NoThanksButtonPressed,"bonusItems_noThanksButton");
                                 if(!_loc2_)
                                 {
                                    §§push(this.m_noButton);
                                    if(!_loc2_)
                                    {
                                       §§push(70);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          §§pop().x = §§pop();
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§goto(addr479);
                                          }
                                          §§goto(addr517);
                                       }
                                       §§goto(addr482);
                                    }
                                    §§goto(addr481);
                                 }
                                 §§goto(addr482);
                              }
                              §§pop().y = §§pop() + 10;
                              if(_loc1_)
                              {
                                 §§goto(addr446);
                              }
                              §§goto(addr485);
                           }
                           §§goto(addr440);
                        }
                        §§goto(addr446);
                     }
                     §§goto(addr517);
                  }
                  §§goto(addr515);
               }
               §§goto(addr482);
            }
            addr517:
            addChild(this.m_okButton);
            return;
         }
         §§goto(addr280);
      }
      
      private function OkButtonPressed(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:OwnedMinion = null;
         if(!_loc7_)
         {
            if(this.m_isExtraGemsBeingAdded)
            {
               if(!_loc7_)
               {
                  §§push(Singleton.dynamicData);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(true);
                     if(_loc6_ || Boolean(this))
                     {
                        §§pop().m_isExtraSponsorGemsIn = §§pop();
                        if(!(_loc7_ && Boolean(this)))
                        {
                           this.m_yourItemsHaveBeenAddedText.text = "Your gem sockets have been added";
                           if(_loc7_ && Boolean(this))
                           {
                              addr71:
                              this.m_yourItemsHaveBeenAddedText.text = "Your minion is in storage";
                              addr75:
                              _loc5_ = new OwnedMinion(MinionDexID.DEX_ID_titan_2);
                              if(_loc6_)
                              {
                                 Singleton.dynamicData.AddToOwnedMinions(_loc5_);
                                 if(_loc6_)
                                 {
                                    _loc5_.SetLevel(60);
                                    if(_loc7_)
                                    {
                                    }
                                    addr107:
                                    var _loc2_:StaticData = Singleton.staticData;
                                    §§push(_loc2_.m_sponsorURL_part1);
                                    if(_loc6_ || Boolean(param1))
                                    {
                                       §§push(§§pop() + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5);
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:URLRequest = new URLRequest(_loc3_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       navigateToURL(_loc4_);
                                       if(_loc6_)
                                       {
                                          this.m_sureButton.visible = false;
                                          if(!(_loc7_ && Boolean(_loc2_)))
                                          {
                                             addr202:
                                             this.m_noButton.visible = false;
                                             if(!_loc7_)
                                             {
                                                this.m_okButton.visible = true;
                                                if(!_loc7_)
                                                {
                                                   addr214:
                                                   this.m_yourItemsHaveBeenAddedText.visible = true;
                                                }
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr107);
                              }
                              _loc5_.CalculateCurrStats();
                              if(_loc6_)
                              {
                                 _loc5_.ReFillHealthAndEnergy();
                              }
                           }
                           else
                           {
                              addr59:
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr75);
                  }
                  else
                  {
                     addr62:
                     §§push(true);
                  }
                  §§pop().m_isExtraSponsorMinionEarned = §§pop();
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     §§goto(addr71);
                  }
               }
               §§goto(addr71);
            }
            else
            {
               §§push(Singleton.dynamicData);
            }
            §§goto(addr62);
         }
         §§goto(addr71);
      }
      
      private function NoThanksButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.ExitOut();
         }
      }
      
      public function BringIn(param1:Boolean, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.visible = true;
         if(_loc3_)
         {
            this._isActive = true;
            this.m_isExtraGemsBeingAdded = param1;
            if(!_loc4_)
            {
               Singleton.utility.m_soundController.PlaySound("battle_whoosh_falling_deepSound",1);
               if(param1)
               {
                  this.m_titleText.text = "Get extra gem sockets!";
                  addr38:
                  this.m_descriptionText.text = "Take a second to check out some other\nawesome games and get extra gem\nsockets for all your minions";
                  this.m_extraGemSocketIcon.visible = true;
                  this.m_extraMinionIcon.visible = false;
                  addr85:
                  this.m_okButton.visible = false;
                  if(_loc3_)
                  {
                     this.m_yourItemsHaveBeenAddedText.visible = false;
                     if(_loc3_)
                     {
                        this.m_sureButton.visible = true;
                        addr97:
                        if(!_loc4_)
                        {
                           §§goto(addr110);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr110);
                  }
               }
               else
               {
                  this.m_titleText.text = "Get another Titan!";
                  if(!(_loc4_ && param1))
                  {
                     this.m_descriptionText.text = "Take a second to check out some other\nawesome games and get another Titan";
                     if(!_loc4_)
                     {
                        this.m_extraGemSocketIcon.visible = false;
                        if(!_loc4_)
                        {
                           addr81:
                           this.m_extraMinionIcon.visible = true;
                           §§goto(addr85);
                        }
                        §§goto(addr119);
                     }
                     addr110:
                     this.m_noButton.visible = true;
                     this.alpha = 0;
                     if(_loc3_)
                     {
                        addr119:
                        TweenLite.to(this,0.6,{
                           "alpha":1,
                           "delay":param2
                        });
                     }
                     return;
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr81);
         }
         §§goto(addr38);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            TweenLite.to(this,0.5,{
               "alpha":0,
               "onComplete":this.FinishExitOut
            });
         }
      }
      
      private function FinishExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.visible = false;
            if(!_loc1_)
            {
               this._isActive = false;
            }
         }
      }
      
      public function get m_isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!visible)
            {
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
            else
            {
               this.m_sureButton.m_isActive = this.m_sureButton.visible;
               if(!(_loc1_ && _loc1_))
               {
                  addr60:
                  this.m_noButton.m_isActive = this.m_noButton.visible;
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr79);
               }
               this.m_okButton.m_isActive = this.m_okButton.visible;
            }
            addr79:
            return;
         }
         §§goto(addr60);
      }
   }
}
