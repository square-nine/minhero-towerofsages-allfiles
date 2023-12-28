package MainMenu
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class CharCreationPopup extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_charIcon:Sprite;
      
      private var m_enterNameText:TextField;
      
      private var m_maleSelectButton:TCButton;
      
      private var m_femaleSelectButton:TCButton;
      
      private var m_genderSelectIcon:Sprite;
      
      private var m_okButton:TCButton;
      
      private var m_deleteButton:TCButton;
      
      public function CharCreationPopup()
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreationBackground");
         if(_loc2_)
         {
            addChild(this.m_background);
            this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_maleIcon_fullSized");
            if(_loc2_)
            {
               this.m_charIcon.x = 300;
               if(!_loc3_)
               {
                  this.m_charIcon.y = 17;
                  if(_loc2_)
                  {
                     addChild(this.m_charIcon);
                     this.m_genderSelectIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_maleFemaleSelectedIcon");
                     if(!(_loc3_ && _loc1_))
                     {
                        this.m_genderSelectIcon.x = 143;
                        this.m_genderSelectIcon.y = 128;
                        addChild(this.m_genderSelectIcon);
                        this.m_maleSelectButton = new TCButton(this.SelectMale,"mainMenu_characterCreation_maleIcon");
                        if(_loc2_)
                        {
                           §§push(this.m_maleSelectButton);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(143);
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§pop().x = §§pop();
                                 addr160:
                                 if(_loc2_)
                                 {
                                    addr108:
                                    §§push(this.m_maleSelectButton);
                                    §§push(128);
                                 }
                                 §§push(this.m_okButton);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(118);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§pop().x = §§pop();
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr195:
                                          this.m_okButton.y = 179;
                                       }
                                       addChild(this.m_okButton);
                                       if(_loc2_)
                                       {
                                          this.m_deleteButton = new TCButton(this.ClosePressed,"mainMenu_saveSlot_deleteButton");
                                          addr209:
                                          §§push(this.m_deleteButton);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(450);
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§pop().x = §§pop();
                                                addr240:
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr236:
                                                   §§push(this.m_deleteButton);
                                                   §§push(13);
                                                }
                                                addChild(this.m_deleteButton);
                                                var _loc1_:TextFormat = new TextFormat();
                                                if(!_loc3_)
                                                {
                                                   _loc1_.color = 1053720;
                                                   _loc1_.size = 26;
                                                   if(!(_loc3_ && Boolean(_loc1_)))
                                                   {
                                                      _loc1_.font = "BurbinCasual";
                                                      _loc1_.align = TextFormatAlign.LEFT;
                                                      if(_loc2_ || Boolean(_loc1_))
                                                      {
                                                         this.m_enterNameText = new TextField();
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            this.m_enterNameText.embedFonts = true;
                                                            if(_loc2_)
                                                            {
                                                               this.m_enterNameText.defaultTextFormat = _loc1_;
                                                               this.m_enterNameText.type = "input";
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  addr309:
                                                                  this.m_enterNameText.x = 145;
                                                                  addr313:
                                                                  this.m_enterNameText.y = 81;
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr373);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         addr317:
                                                         this.m_enterNameText.width = 150;
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            this.m_enterNameText.height = 37;
                                                            addr332:
                                                            this.m_enterNameText.border = true;
                                                            addr336:
                                                            this.m_enterNameText.background = true;
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               this.m_enterNameText.backgroundColor = 14474460;
                                                            }
                                                            this.m_enterNameText.restrict = "0-9 a-z A-Z";
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               this.m_enterNameText.maxChars = 10;
                                                               addr373:
                                                               this.m_enterNameText.text = "Ryder";
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                               }
                                                               §§goto(addr391);
                                                            }
                                                            addChild(this.m_enterNameText);
                                                            visible = false;
                                                         }
                                                         addr391:
                                                         return;
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr336);
                                                }
                                                §§goto(addr313);
                                             }
                                             §§pop().y = §§pop();
                                             if(_loc2_)
                                             {
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr240);
                                    }
                                 }
                                 §§goto(addr195);
                              }
                              §§pop().y = §§pop();
                              if(_loc2_)
                              {
                                 addr112:
                                 addChild(this.m_maleSelectButton);
                                 this.m_femaleSelectButton = new TCButton(this.SelectFeMale,"mainMenu_characterCreation_femaleIcon");
                                 if(!_loc3_)
                                 {
                                    §§push(this.m_femaleSelectButton);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       §§push(188);
                                       if(!_loc3_)
                                       {
                                          §§pop().x = §§pop();
                                          addr140:
                                          §§push(this.m_femaleSelectButton);
                                          §§push(128);
                                       }
                                       §§pop().y = §§pop();
                                       addr142:
                                       addChild(this.m_femaleSelectButton);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          this.m_okButton = new TCButton(this.OkPressed,"mainMenu_characterCreation_okButton");
                                          §§goto(addr160);
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr112);
               }
               §§goto(addr160);
            }
            §§goto(addr140);
         }
         §§goto(addr240);
      }
      
      public function textInputCapture(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_enterNameText.selectable = true;
            if(_loc3_ || _loc2_)
            {
               Singleton.utility.m_stage.focus = this.m_enterNameText;
            }
         }
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_enterNameText.visible = true;
            if(!_loc1_)
            {
               this.m_enterNameText.text = "Ryder";
               if(_loc2_)
               {
                  §§goto(addr42);
               }
            }
            §§goto(addr52);
         }
         addr42:
         this.SelectMale(null);
         if(_loc2_ || Boolean(this))
         {
            addr52:
            this.m_enterNameText.setSelection(this.m_enterNameText.text.length,this.m_enterNameText.text.length);
         }
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_enterNameText.visible = false;
            if(_loc2_)
            {
               Singleton.utility.m_stage.focus = null;
            }
         }
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_maleSelectButton.m_isActive = true;
            if(!_loc2_)
            {
               this.m_femaleSelectButton.m_isActive = true;
               if(_loc1_ || _loc2_)
               {
                  addr46:
                  this.m_okButton.m_isActive = true;
                  if(_loc1_ || _loc1_)
                  {
                     addr57:
                     this.m_deleteButton.m_isActive = true;
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr46);
      }
      
      private function SelectMale(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.m_enterNameText.text == "Vala")
            {
               this.m_enterNameText.text = "Ryder";
               if(_loc2_ || _loc2_)
               {
                  this.m_enterNameText.setSelection(this.m_enterNameText.text.length,this.m_enterNameText.text.length);
                  addr49:
                  Singleton.dynamicData.m_isMale = true;
                  this.m_genderSelectIcon.x = this.m_maleSelectButton.x;
                  removeChild(this.m_charIcon);
                  if(_loc2_)
                  {
                     this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_maleIcon_fullSized");
                     this.m_charIcon.x = 306;
                     this.m_charIcon.y = 29;
                     addChild(this.m_charIcon);
                  }
               }
               Singleton.utility.m_stage.focus = this.m_enterNameText;
               §§goto(addr97);
            }
            §§goto(addr49);
         }
         addr97:
      }
      
      private function SelectFeMale(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.m_enterNameText.text == "Ryder")
         {
            this.m_enterNameText.text = "Vala";
            this.m_enterNameText.setSelection(this.m_enterNameText.text.length,this.m_enterNameText.text.length);
         }
         Singleton.dynamicData.m_isMale = false;
         this.m_genderSelectIcon.x = this.m_femaleSelectButton.x;
         removeChild(this.m_charIcon);
         this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_characterCreation_femaleIcon_fullSized");
         this.m_charIcon.x = 306;
         this.m_charIcon.y = 29;
         addChild(this.m_charIcon);
         if(_loc3_ || Boolean(this))
         {
            Singleton.utility.m_stage.focus = this.m_enterNameText;
         }
      }
      
      private function OkPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Singleton.dynamicData);
            if(_loc3_ || Boolean(param1))
            {
               §§push(Singleton.dynamicData);
               if(!_loc2_)
               {
                  §§push(§§pop().m_saveSlot);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().SetCharName(§§pop(),this.m_enterNameText.text);
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        addr67:
                        Singleton.dynamicData.SetIsSaveSlotInUse(Singleton.dynamicData.m_saveSlot,true);
                        if(_loc3_)
                        {
                           Singleton.utility.m_screenControllers.m_mainMenuScreen.StartTheEnterGameForTheFirstTimeAnimaiton();
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private function ClosePressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            Singleton.utility.m_screenControllers.m_mainMenuScreen.AnimateOutTheCharSelectionScreen();
         }
      }
   }
}
