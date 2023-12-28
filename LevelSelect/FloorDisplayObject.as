package LevelSelect
{
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class FloorDisplayObject extends Sprite
   {
       
      
      public var m_background:Sprite;
      
      public var m_floorText:TextFromSprites;
      
      public var m_floor:int;
      
      public var m_sageSeal:Sprite;
      
      public var m_levelOverlay:Sprite;
      
      public var m_lockIcon:Sprite;
      
      public function FloorDisplayObject(param1:int)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this.m_floor = param1;
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "roomSelect_plantRoom";
         if(this.m_floor > 29)
         {
            _loc1_ = "roomSelect_towerTop";
            if(_loc2_)
            {
               addr113:
               _loc1_ = "roomSelect_plantRoom";
            }
         }
         else if(this.m_floor > 26)
         {
            §§push("roomSelect_undeadRoom");
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_ = §§pop();
               addr157:
               this.m_background = Singleton.utility.m_spriteHandler.CreateSprite(_loc1_);
               addChild(this.m_background);
               this.m_floorText = new TextFromSprites();
               this.m_floorText.y = 28;
               addChild(this.m_floorText);
            }
            else
            {
               addr147:
               _loc1_ = §§pop();
               if(_loc3_)
               {
                  §§goto(addr157);
               }
            }
            §§goto(addr180);
         }
         else
         {
            §§push(this.m_floor);
            if(!_loc2_)
            {
               §§push(24);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop() > §§pop())
                  {
                     _loc1_ = "roomSelect_electricRoom";
                     if(_loc2_)
                     {
                        addr121:
                        _loc1_ = "roomSelect_undeadRoom";
                     }
                     §§goto(addr157);
                  }
                  else
                  {
                     §§push(this.m_floor);
                     §§push(23);
                  }
                  §§goto(addr157);
               }
               if(§§pop() > §§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_ = "roomSelect_plantRoom";
                     §§goto(addr157);
                  }
                  §§goto(addr180);
               }
               else
               {
                  §§push(this.m_floor);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop() > 21)
                     {
                        §§push("roomSelect_fireRoom");
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                           §§goto(addr157);
                        }
                        else
                        {
                           §§goto(addr113);
                        }
                     }
                     else
                     {
                        §§push(this.m_floor);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr103:
                           if(§§pop() > 19)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr113);
                              }
                              else
                              {
                                 §§goto(addr121);
                              }
                           }
                           else
                           {
                              §§push(this.m_floor);
                              if(_loc3_)
                              {
                                 if(§§pop() > 14)
                                 {
                                    §§goto(addr121);
                                 }
                                 else
                                 {
                                    §§push(this.m_floor);
                                    if(_loc2_ && _loc2_)
                                    {
                                    }
                                    addr144:
                                    if(§§pop() > 4)
                                    {
                                       §§goto(addr147);
                                       §§push("roomSelect_fireRoom");
                                    }
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr157);
                        }
                        if(§§pop() > 9)
                        {
                           if(!_loc2_)
                           {
                              §§push("roomSelect_electricRoom");
                              if(!_loc2_)
                              {
                                 _loc1_ = §§pop();
                                 addr141:
                                 §§goto(addr157);
                              }
                              else
                              {
                                 §§goto(addr147);
                              }
                           }
                           §§goto(addr141);
                        }
                        else
                        {
                           §§push(this.m_floor);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr144);
               }
            }
            §§goto(addr103);
         }
         §§goto(addr157);
      }
      
      public function SetFloor(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || Boolean(param1))
         {
            §§push(§§pop() / 5);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(param1);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() % 5);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               §§push(§§pop());
            }
            param1 = §§pop();
         }
         var _loc3_:Array = ["generalRoom_plantMedallionStatue","generalRoom_fireMedallionStatue","generalRoom_electricMedallionStatue","generalRoom_undeadMedallionStatue","generalRoom_plantWizardMedallionStatue","generalRoom_undeadWizardMedallionStatue"];
         var _loc4_:Array = ["roomSelect_grassRares","roomSelect_fireRares","roomSelect_electricRares","roomSelect_undeadRares"];
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(7);
            if(!_loc6_)
            {
               if(§§pop() == §§pop())
               {
                  this.m_sageSeal = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_grandSageIcon");
                  if(!_loc6_)
                  {
                     this.m_sageSeal.x = 52;
                     this.m_sageSeal.y = -26;
                     if(_loc5_)
                     {
                        addChild(this.m_sageSeal);
                     }
                     else
                     {
                        addr160:
                        addChild(this.m_sageSeal);
                     }
                     §§goto(addr329);
                  }
                  else
                  {
                     addr264:
                     §§push(this.m_floorText);
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§push(0.9);
                        if(_loc5_)
                        {
                           addr276:
                           §§pop().scaleY = §§pop();
                           addr277:
                           §§push(this.m_floorText);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              addr286:
                              §§push("");
                              if(_loc5_)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr305:
                                       §§push(§§pop() + "z");
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr314:
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().SetText(§§pop());
                                       §§push(this.m_floorText);
                                       if(_loc5_)
                                       {
                                          §§goto(addr328);
                                       }
                                       §§goto(addr391);
                                    }
                                 }
                                 §§goto(addr314);
                              }
                              §§goto(addr305);
                           }
                           §§goto(addr391);
                        }
                        addr328:
                        §§pop().x = 105 - this.m_floorText.width / 2;
                        §§goto(addr329);
                     }
                     §§goto(addr286);
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(5);
                     if(_loc5_ || _loc2_)
                     {
                        addr115:
                        if(§§pop() == §§pop())
                        {
                           this.m_sageSeal = Singleton.utility.m_spriteHandler.CreateSprite(_loc3_[_loc2_ - 1]);
                           this.m_sageSeal.scaleX = 0.8;
                           if(!_loc6_)
                           {
                              this.m_sageSeal.scaleY = this.m_sageSeal.scaleX;
                              if(_loc5_ || Boolean(param1))
                              {
                                 this.m_sageSeal.x = 80;
                                 this.m_sageSeal.y = 32;
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    §§goto(addr160);
                                 }
                                 else
                                 {
                                    addr226:
                                    this.m_sageSeal.scaleY = this.m_sageSeal.scaleX;
                                    if(_loc5_)
                                    {
                                       addr234:
                                       this.m_sageSeal.x = 26;
                                       this.m_sageSeal.y = 20;
                                       addChild(this.m_sageSeal);
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          addr329:
                                          this.m_levelOverlay = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_towerCovered");
                                          this.m_levelOverlay.x = 25;
                                          §§goto(addr340);
                                       }
                                       §§goto(addr377);
                                    }
                                 }
                                 addr340:
                                 this.m_levelOverlay.y = 8;
                                 if(_loc5_ || _loc2_)
                                 {
                                    this.m_levelOverlay.scaleY = 0.99;
                                    addChild(this.m_levelOverlay);
                                    this.m_lockIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_towerCoveredLock");
                                    this.m_lockIcon.x = 83;
                                    addr377:
                                    this.m_lockIcon.y = 16;
                                    addChild(this.m_lockIcon);
                                    this.m_levelOverlay.visible = true;
                                    addr391:
                                    this.m_floorText.visible = false;
                                 }
                                 return;
                              }
                              §§goto(addr277);
                              §§goto(addr377);
                           }
                           §§goto(addr234);
                        }
                        else
                        {
                           §§push(param1);
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§push(4);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 addr181:
                                 §§push(§§pop() == §§pop());
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§pop();
                                          addr203:
                                          §§push(_loc2_ < 5);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    this.m_sageSeal = Singleton.utility.m_spriteHandler.CreateSprite(_loc4_[_loc2_ - 1]);
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       this.m_sageSeal.scaleX = 0.8;
                                       §§goto(addr226);
                                    }
                                    §§goto(addr329);
                                 }
                                 else
                                 {
                                    §§push(this.m_floorText);
                                    if(!_loc6_)
                                    {
                                       §§push(0.9);
                                       if(_loc5_)
                                       {
                                          §§pop().scaleX = §§pop();
                                          if(!_loc6_)
                                          {
                                             §§goto(addr264);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr328);
                                 }
                              }
                           }
                           §§goto(addr203);
                        }
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr203);
               }
               §§goto(addr328);
            }
            §§goto(addr115);
         }
         §§goto(addr203);
      }
      
      public function UpdateFloor(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(param1);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(29);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(param2);
                        }
                        if(§§pop())
                        {
                           this.m_levelOverlay.visible = false;
                           §§push(this.m_floorText);
                           if(!_loc3_)
                           {
                              §§push(true);
                              if(_loc4_ || param2)
                              {
                                 §§pop().visible = §§pop();
                                 if(_loc4_)
                                 {
                                    this.m_lockIcon.visible = false;
                                 }
                                 §§goto(addr255);
                              }
                              else
                              {
                                 addr250:
                                 §§pop().visible = §§pop();
                              }
                              addr251:
                              this.m_lockIcon.visible = false;
                           }
                           else
                           {
                              addr208:
                              §§pop().alpha = 0;
                              if(!(_loc3_ && param2))
                              {
                                 TweenLite.to(this.m_floorText,0.9,{
                                    "delay":3.3,
                                    "alpha":1
                                 });
                                 addr234:
                                 addr217:
                              }
                              §§goto(addr234);
                           }
                        }
                        else
                        {
                           §§push(Singleton.dynamicData);
                           if(_loc4_ || Boolean(param1))
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().GetHighestStarCount(§§pop()));
                                 if(_loc4_)
                                 {
                                    addr92:
                                    §§push(0);
                                    if(_loc4_ || param2)
                                    {
                                       addr102:
                                       §§push(§§pop() == §§pop());
                                       if(§§pop() == §§pop())
                                       {
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             §§push(Singleton.dynamicData);
                                             if(_loc4_ || param2)
                                             {
                                                §§push(param1);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop().GetHasUnlockedFloor(§§pop()));
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr129);
                                                }
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr217);
                                       }
                                       addr129:
                                       if(§§pop())
                                       {
                                          TweenLite.to(this,0.1,{
                                             "delay":2,
                                             "onComplete":Singleton.utility.m_soundController.PlaySound,
                                             "onCompleteParams":["tower_doorUnlock",1]
                                          });
                                          this.m_levelOverlay.visible = true;
                                          this.m_levelOverlay.scaleY = 0.99;
                                          TweenLite.to(this.m_levelOverlay,0.9,{
                                             "delay":2.7,
                                             "scaleY":0
                                          });
                                          this.m_lockIcon.visible = true;
                                          this.m_lockIcon.alpha = 1;
                                          if(_loc4_ || param2)
                                          {
                                             TweenLite.to(this.m_lockIcon,0.5,{
                                                "delay":2.2,
                                                "alpha":0
                                             });
                                             §§push(this.m_floorText);
                                             if(_loc4_)
                                             {
                                                §§push(true);
                                                if(_loc4_)
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(this.m_floorText);
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr208);
                                                      }
                                                      else
                                                      {
                                                         addr249:
                                                         §§push(true);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr250);
                                             }
                                             §§goto(addr249);
                                          }
                                          else
                                          {
                                             addr241:
                                             this.m_levelOverlay.visible = false;
                                             if(_loc4_)
                                             {
                                                §§goto(addr249);
                                                §§push(this.m_floorText);
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                       else
                                       {
                                          addr238:
                                          if(Singleton.dynamicData.GetHighestStarCount(param1) > 0)
                                          {
                                             §§goto(addr241);
                                          }
                                          §§goto(addr255);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr238);
                        }
                        addr255:
                        return;
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr129);
               }
               §§goto(addr102);
            }
            §§goto(addr92);
         }
         §§goto(addr234);
      }
   }
}
