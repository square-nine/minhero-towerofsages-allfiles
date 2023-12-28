package TopDown.Menus.MinionPedia
{
   import Minions.BaseMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionPediaMinionSelect extends Sprite
   {
       
      
      public var m_backgroundButton:TCButton;
      
      private var m_minionName:TextField;
      
      private var m_checkBox:Sprite;
      
      private var m_ownedIcon:Sprite;
      
      private var m_minionIndex:int;
      
      public function MinionPediaMinionSelect(param1:int)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_ || _loc3_)
            {
               this.m_minionIndex = param1;
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.m_backgroundButton = new TCButton(this.MinionSelected,"minionPedia_minionSelectBackground");
            addChild(this.m_backgroundButton);
            if(_loc3_ || Boolean(this))
            {
               this.m_checkBox = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_seenIcon");
               this.m_checkBox.x = 200;
               addr50:
               this.m_checkBox.y = 10;
            }
            addChild(this.m_checkBox);
            var _loc1_:TextFormat = new TextFormat();
            if(_loc3_)
            {
               _loc1_.color = 16382457;
               if(!_loc2_)
               {
                  _loc1_.size = 21;
               }
               _loc1_.font = "BurbinCasual";
               _loc1_.align = TextFormatAlign.LEFT;
               if(_loc3_ || Boolean(_loc1_))
               {
                  this.m_minionName = new TextField();
                  if(!_loc2_)
                  {
                     this.m_minionName.embedFonts = true;
                     this.m_minionName.defaultTextFormat = _loc1_;
                     this.m_minionName.wordWrap = true;
                     this.m_minionName.autoSize = TextFieldAutoSize.LEFT;
                     this.m_minionName.width = 250;
                     this.m_minionName.x = 7;
                     this.m_minionName.y = 3;
                     addr128:
                     this.m_minionName.selectable = false;
                     if(!_loc2_)
                     {
                        addr141:
                        addChild(this.m_minionName);
                        this.m_ownedIcon = Singleton.utility.m_spriteHandler.CreateSprite("minionPedia_OwnedIcon");
                     }
                  }
                  this.m_ownedIcon.x = 200;
                  this.m_ownedIcon.y = 2;
                  addChild(this.m_ownedIcon);
                  return;
               }
               §§goto(addr141);
            }
            §§goto(addr128);
         }
         §§goto(addr50);
      }
      
      public function BringIn() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:BaseMinion = Singleton.staticData.GetBaseMinion(this.m_minionIndex);
         §§push(Singleton.dynamicData);
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(this.m_minionIndex);
            if(_loc3_)
            {
               §§push(§§pop().GetHasMinionBeenSeen(§§pop()));
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  if(!§§pop())
                  {
                     _loc2_ = "????????";
                     if(_loc4_)
                     {
                     }
                     addr68:
                     §§push(this.m_minionIndex);
                     if(_loc3_)
                     {
                        §§push(10);
                        if(!_loc4_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 this.m_minionName.text = "00" + (this.m_minionIndex + 1) + "   " + _loc2_;
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    addr151:
                                    if(Singleton.dynamicData.GetIsMinionOwned(this.m_minionIndex))
                                    {
                                       addr157:
                                       this.m_ownedIcon.visible = true;
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       this.m_ownedIcon.visible = false;
                                    }
                                 }
                                 else
                                 {
                                    addr117:
                                    this.m_minionName.text = "0" + (this.m_minionIndex + 1) + "   " + _loc2_;
                                    §§goto(addr151);
                                 }
                                 §§goto(addr151);
                              }
                              return;
                           }
                           addr113:
                           §§push(this.m_minionIndex);
                           §§push(99);
                           §§goto(addr151);
                        }
                        if(§§pop() < §§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr117);
                           }
                           §§goto(addr157);
                        }
                        else
                        {
                           this.m_minionName.text = "" + (this.m_minionIndex + 1) + "   " + _loc2_;
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr113);
                  }
                  else
                  {
                     §§push(_loc1_.m_baseMinionName);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr68);
                     }
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      private function MinionSelected(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionPedia.SelectMinion(this.m_minionIndex);
         }
      }
   }
}
