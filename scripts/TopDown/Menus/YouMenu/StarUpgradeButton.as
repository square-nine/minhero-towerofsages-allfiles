package TopDown.Menus.YouMenu
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class StarUpgradeButton extends Sprite
   {
       
      
      public var m_starUpgradeButton:TCButton;
      
      private var m_starIcon:Sprite;
      
      private var m_starsText:TextField;
      
      private var m_rankText:TextField;
      
      private var m_position:int;
      
      public function StarUpgradeButton(param1:Function = null, param2:int = 0, param3:String = "menus_youMenu_starUpgradeButtonAttack")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(_loc5_)
            {
               this.m_starUpgradeButton = new TCButton(param1,param3);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(this.m_starUpgradeButton);
                  §§push("");
                  if(_loc5_)
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().ActivateTooltip(§§pop());
                  if(!(_loc4_ && Boolean(param3)))
                  {
                     addr62:
                     this.m_position = param2;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         addChild(this.m_starUpgradeButton);
         if(!(_loc2_ && _loc3_))
         {
            this.m_starIcon = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryStar");
            if(!_loc2_)
            {
               addr34:
               this.m_starIcon.x = 41;
            }
            this.m_starIcon.y = 65;
            this.m_starIcon.scaleX = 0.35;
            this.m_starIcon.scaleY = 0.35;
            addChild(this.m_starIcon);
            var _loc1_:TextFormat = new TextFormat();
            _loc1_.color = 16382457;
            if(_loc3_ || _loc3_)
            {
               _loc1_.size = 15;
               _loc1_.font = "BurbinCasual";
               _loc1_.align = TextFormatAlign.RIGHT;
               if(_loc3_)
               {
                  this.m_starsText = new TextField();
               }
               this.m_starsText.embedFonts = true;
               if(_loc3_)
               {
                  this.m_starsText.defaultTextFormat = _loc1_;
                  this.m_starsText.wordWrap = true;
                  this.m_starsText.autoSize = TextFieldAutoSize.CENTER;
                  this.m_starsText.text = "999";
                  this.m_starsText.width = 50;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.m_starsText.x = -8;
                     this.m_starsText.y = 62;
                  }
                  this.m_starsText.selectable = false;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addChild(this.m_starsText);
                     if(_loc3_ || Boolean(this))
                     {
                        this.m_rankText = new TextField();
                        this.m_rankText.embedFonts = true;
                        addr163:
                        _loc1_.size = 13;
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.align = TextFormatAlign.CENTER;
                           this.m_rankText.defaultTextFormat = _loc1_;
                           this.m_rankText.wordWrap = true;
                           this.m_rankText.autoSize = TextFieldAutoSize.CENTER;
                           if(_loc3_ || _loc3_)
                           {
                              addr197:
                              this.m_rankText.text = "Rank 99";
                              addr201:
                              this.m_rankText.width = 70;
                              this.m_rankText.x = 3;
                              this.m_rankText.y = -18;
                              this.m_rankText.selectable = false;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addChild(this.m_rankText);
                              }
                           }
                           return;
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr201);
               }
               §§goto(addr163);
            }
            §§goto(addr197);
         }
         §§goto(addr34);
      }
      
      public function UpdateInformationNeeded(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array("Increase all your minions health to","Increase all your minions energy to","Increase all your minions attack to","Increase all your minions healing to","Increase all your minions speed to","Increase your movement speed to","Increase your exp to","Extra money is given out");
         var _loc4_:Array = new Array(2,2,2,4,2,10,5,2);
         if(!_loc5_)
         {
            §§push(this.m_position);
            if(_loc6_)
            {
               §§push(7);
               if(!(_loc5_ && Boolean(this)))
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(this.m_starUpgradeButton);
                     if(_loc6_ || Boolean(this))
                     {
                        §§pop().SetPopupText(_loc3_[this.m_position]);
                     }
                     else
                     {
                        addr77:
                        §§push(_loc3_[this.m_position] + " ");
                        if(_loc6_ || Boolean(param2))
                        {
                           §§push(§§pop() + _loc4_[this.m_position] * (param2 + 1));
                           if(_loc6_ || Boolean(param1))
                           {
                              addr106:
                              §§push(§§pop() + "%");
                           }
                           §§pop().SetPopupText(§§pop());
                           this.m_starsText.text = "" + param1;
                           addr124:
                           addr123:
                           addr122:
                           if(param2 == 0)
                           {
                              this.m_rankText.text = "";
                              if(_loc5_ && Boolean(param2))
                              {
                              }
                           }
                           else
                           {
                              this.m_rankText.text = "Rank " + param2;
                           }
                           return;
                           addr109:
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(this.m_starUpgradeButton);
                  }
                  §§goto(addr77);
               }
               §§goto(addr124);
            }
            §§goto(addr123);
         }
         §§goto(addr122);
      }
   }
}
