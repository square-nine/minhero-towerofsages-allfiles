package SharedObjects.Gems
{
   import States.StatType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class GemVisuals extends Sprite
   {
       
      
      public var m_shapeSprite:Sprite;
      
      public var m_mask:Sprite;
      
      public var m_gemColors:Vector.<Sprite>;
      
      public function GemVisuals()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function SetGem(param1:OwnedGem) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(this.m_shapeSprite != null)
         {
            this.Cleanup();
         }
         §§push(param1.m_tier);
         if(_loc6_)
         {
            if(§§pop() < 12)
            {
               §§push(this);
               §§push(Singleton.utility.m_spriteHandler);
               §§push("gemTier");
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + param1.m_tier);
                  if(_loc6_ || Boolean(param1))
                  {
                     addr48:
                     §§push(§§pop() + "_shape");
                  }
                  §§pop().m_shapeSprite = §§pop().CreateSprite(§§pop());
                  addr60:
                  this.m_gemColors = new Vector.<Sprite>(12);
                  addr68:
                  var _loc2_:int = 0;
                  var _loc3_:* = 0;
                  var _loc4_:int = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc5_)
                     {
                        §§push(5);
                        if(_loc6_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 addChild(this.m_shapeSprite);
                                 §§push(param1.m_tier);
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 §§push(param1.GetRatioOfStat(_loc4_));
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * this.m_gemColors.length);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       _loc3_ = §§pop();
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr116);
                                    }
                                 }
                                 if(§§pop() > 12)
                                 {
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§push(12);
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          addr116:
                                          _loc3_ = §§pop();
                                          addr117:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_)
                                             {
                                                break loop0;
                                             }
                                             if(§§pop() >= _loc3_)
                                             {
                                                continue loop0;
                                             }
                                             this.m_gemColors[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite(this.GetColorBasedOnStat(_loc4_));
                                             this.m_gemColors[_loc2_].x = this.m_shapeSprite.width / 2;
                                             this.m_gemColors[_loc2_].y = this.m_shapeSprite.height / 2;
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             this.m_gemColors[_loc2_].rotation = param1.m_facetPositions[_loc2_];
                                             addChild(this.m_gemColors[_loc2_]);
                                             _loc2_++;
                                          }
                                          addr203:
                                          §§push(this);
                                          §§push(Singleton.utility.m_spriteHandler);
                                          §§push("gemTier");
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() + param1.m_tier);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() + "_mask");
                                             }
                                          }
                                          §§pop().m_mask = §§pop().CreateSprite(§§pop());
                                          addr241:
                                          addChild(this.m_mask);
                                          addr245:
                                          this.m_mask.cacheAsBitmap = true;
                                          mask = this.m_mask;
                                          if(_loc6_)
                                          {
                                             this.cacheAsBitmap = true;
                                          }
                                          return;
                                          §§push(§§pop());
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr245);
                        }
                        addr202:
                        if(§§pop() < §§pop())
                        {
                           §§goto(addr203);
                        }
                        else
                        {
                           this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite("gemTier11_mask");
                           if(_loc6_ || Boolean(this))
                           {
                              §§goto(addr241);
                           }
                        }
                        §§goto(addr116);
                     }
                     break;
                  }
                  §§goto(addr202);
                  §§push(12);
               }
               §§goto(addr48);
            }
            else
            {
               this.m_shapeSprite = Singleton.utility.m_spriteHandler.CreateSprite("gemTier11_shape");
            }
            §§goto(addr60);
         }
         §§goto(addr68);
      }
      
      private function GetColorBasedOnStat(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               §§push(StatType.STAT_HEALTH);
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr155);
                  }
                  else
                  {
                     §§push(StatType.STAT_ENERGY);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr105:
                                 §§push(1);
                                 if(!_loc3_)
                                 {
                                    addr144:
                                 }
                              }
                              else
                              {
                                 §§goto(addr149);
                              }
                              §§goto(addr155);
                           }
                           else
                           {
                              §§push(StatType.STAT_ATTACK);
                              if(_loc3_ || _loc2_)
                              {
                                 addr118:
                                 §§push(_loc2_);
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr133:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(2);
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             §§goto(addr144);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr149);
                                       }
                                       §§goto(addr155);
                                    }
                                    else
                                    {
                                       §§push(StatType.STAT_HEALING);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr148);
                              }
                              addr148:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr149);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr155:
                              addr156:
                              switch(_loc3_ ? 0 : 3)
                              {
                                 case 0:
                                    §§push("gemCornerRed");
                                    if(_loc3_ || _loc3_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr40);
                                    break;
                                 case 1:
                                    §§push("gemCornerPurple");
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr40:
                                       return §§pop();
                                    }
                                    break;
                                 case 2:
                                    §§push("gemCornerOrange");
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr57);
                                    break;
                                 case 3:
                                    §§push("gemCornerYellow");
                                    if(!_loc4_)
                                    {
                                       addr57:
                                       return §§pop();
                                    }
                                    break;
                                 default:
                                    §§push("gemCornerBlue");
                              }
                              return §§pop();
                              §§push(_loc2_);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr118);
            }
            §§goto(addr105);
         }
         §§goto(addr156);
      }
      
      public function Cleanup() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_gemColors.length)
         {
            removeChild(this.m_gemColors[_loc1_]);
            if(_loc3_)
            {
               _loc1_++;
            }
         }
         removeChild(this.m_shapeSprite);
         if(!_loc2_)
         {
            this.m_shapeSprite = null;
            mask = null;
            removeChild(this.m_mask);
            this.m_mask = null;
         }
      }
   }
}
