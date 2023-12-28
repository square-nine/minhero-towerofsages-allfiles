package SharedObjects.BaseInterfacePieces
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class ConformationBox extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_questionText:TextField;
      
      private var m_yesButton:TCButton;
      
      private var m_noButton:TCButton;
      
      private var m_onYesFunction:Function;
      
      private var m_onNoFunction:Function;
      
      public var m_isOpen:Boolean;
      
      public function ConformationBox(param1:String = "Are you sure?")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TextFormat = null;
         if(_loc3_ || Boolean(param1))
         {
            super();
            if(!_loc4_)
            {
               this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("conformationBox_background");
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr41:
                  addChild(this.m_background);
               }
               _loc2_ = new TextFormat();
               _loc2_.color = 16382457;
               _loc2_.size = 16;
               _loc2_.font = "BurbinCasual";
               _loc2_.align = TextFormatAlign.CENTER;
               if(_loc3_)
               {
                  this.m_questionText = new TextField();
                  this.m_questionText.x = 7;
                  if(_loc3_)
                  {
                     this.m_questionText.y = 11;
                     this.m_questionText.embedFonts = true;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this.m_questionText.defaultTextFormat = _loc2_;
                        if(!_loc4_)
                        {
                           this.m_questionText.wordWrap = true;
                           this.m_questionText.autoSize = TextFieldAutoSize.CENTER;
                           if(!(_loc4_ && _loc3_))
                           {
                              this.m_questionText.text = param1;
                              this.m_questionText.width = 200;
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.m_questionText.selectable = false;
                                 if(!_loc4_)
                                 {
                                    addr139:
                                    addChild(this.m_questionText);
                                    if(!_loc4_)
                                    {
                                       this.m_yesButton = new TCButton(this.OnYesPressed,"conformationBox_yesButton");
                                       if(_loc3_)
                                       {
                                          §§push(this.m_yesButton);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§push(5);
                                             if(_loc3_)
                                             {
                                                §§pop().x = §§pop();
                                                addr169:
                                                §§push(this.m_yesButton);
                                                §§push(42);
                                             }
                                             §§pop().y = §§pop();
                                             if(_loc3_ || Boolean(_loc2_))
                                             {
                                                addr178:
                                                addChild(this.m_yesButton);
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   addr189:
                                                   this.m_noButton = new TCButton(this.OnNoPressed,"conformationBox_noButton");
                                                   addr196:
                                                   §§push(this.m_noButton);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(105);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr218:
                                                         §§push(this.m_noButton);
                                                         §§push(42);
                                                      }
                                                      §§pop().y = §§pop();
                                                      addChild(this.m_noButton);
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr218);
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr229);
                                    }
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr139);
                     }
                     addr224:
                     this.m_isOpen = false;
                     if(_loc3_)
                     {
                        addr229:
                        this.visible = false;
                        §§goto(addr232);
                     }
                     addr232:
                     return;
                  }
                  §§goto(addr178);
               }
               §§goto(addr229);
            }
         }
         §§goto(addr41);
      }
      
      public function BringIn(param1:Function = null, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.m_onYesFunction = param1;
            if(_loc3_ || Boolean(param2))
            {
               this.m_onNoFunction = param2;
               if(!_loc4_)
               {
                  §§goto(addr44);
               }
               §§goto(addr49);
            }
            addr44:
            this.m_isOpen = true;
            if(_loc3_)
            {
               addr49:
               this.visible = true;
            }
            this.m_yesButton.m_alwaysActive = true;
            if(_loc3_)
            {
               this.m_noButton.m_alwaysActive = true;
            }
            §§goto(addr62);
         }
         addr62:
      }
      
      private function OnYesPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_isOpen = false;
            this.visible = false;
            if(_loc3_ || Boolean(param1))
            {
               this.m_yesButton.m_alwaysActive = false;
               if(_loc3_ || Boolean(param1))
               {
                  this.m_noButton.m_alwaysActive = false;
                  if(_loc2_ && Boolean(this))
                  {
                  }
                  §§goto(addr86);
               }
               §§push(this.m_onYesFunction);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr83:
                        §§push(this.m_onYesFunction);
                     }
                  }
                  §§goto(addr86);
               }
               §§pop().call();
               §§goto(addr86);
            }
            §§goto(addr83);
         }
         addr86:
      }
      
      private function OnNoPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.m_isOpen = false;
            if(!(_loc2_ && _loc3_))
            {
               addr38:
               this.visible = false;
               this.m_yesButton.m_alwaysActive = false;
               if(!_loc2_)
               {
                  this.m_noButton.m_alwaysActive = false;
                  if(_loc3_ || _loc2_)
                  {
                  }
                  addr75:
                  this.m_onNoFunction.call();
                  addr76:
                  return;
                  addr73:
               }
               §§push(this.m_onNoFunction);
               if(_loc3_)
               {
                  if(§§pop() != null)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr38);
      }
   }
}
