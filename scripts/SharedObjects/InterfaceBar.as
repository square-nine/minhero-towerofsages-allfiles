package SharedObjects
{
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class InterfaceBar extends Sprite
   {
       
      
      public var m_barEndPiece:Sprite;
      
      public var m_bar:Sprite;
      
      public var m_mask:Sprite;
      
      public var m_currBarSize:Number;
      
      public function InterfaceBar(param1:String, param2:String = "")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            this.m_bar = Singleton.utility.m_spriteHandler.CreateSprite(param1);
            if(_loc3_)
            {
               this.m_bar.cacheAsBitmap = true;
               if(_loc3_)
               {
                  addChild(this.m_bar);
                  if(_loc3_)
                  {
                     if(param2 != "")
                     {
                        this.m_barEndPiece = Singleton.utility.m_spriteHandler.CreateSprite(param2);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr67:
                           addChild(this.m_barEndPiece);
                           this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite(param1);
                           this.m_mask.cacheAsBitmap = true;
                           addChild(this.m_mask);
                           if(_loc3_ || Boolean(param1))
                           {
                              addr100:
                              this.m_bar.mask = this.m_mask;
                           }
                           addr71:
                        }
                        return;
                     }
                     this.m_barEndPiece = new Sprite();
                  }
                  §§goto(addr67);
               }
               §§goto(addr100);
            }
            §§goto(addr67);
         }
         §§goto(addr71);
      }
      
      public function CleanUp() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            removeChild(this.m_bar);
            if(_loc2_)
            {
               removeChild(this.m_barEndPiece);
               if(!_loc1_)
               {
                  removeChild(this.m_mask);
               }
            }
         }
      }
      
      public function SetBarSize(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(0);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() < §§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           param1 = §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              addr91:
                              if(param1 == 0)
                              {
                                 if(_loc2_)
                                 {
                                    this.m_bar.visible = false;
                                    if(_loc2_)
                                    {
                                       addr101:
                                       this.m_barEndPiece.visible = false;
                                       addr114:
                                       this.m_barEndPiece.visible = false;
                                       if(_loc2_)
                                       {
                                       }
                                       addr147:
                                       this.m_currBarSize = param1;
                                       return;
                                       addr105:
                                    }
                                    this.m_bar.x = (this.m_bar.width - this.m_barEndPiece.width) * (param1 - 1);
                                    if(_loc2_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr101);
                              }
                              else
                              {
                                 this.m_bar.visible = true;
                                 addr110:
                                 this.m_barEndPiece.visible = true;
                              }
                              §§goto(addr114);
                           }
                           else
                           {
                              addr83:
                              §§push(1);
                           }
                        }
                        §§goto(addr91);
                     }
                     §§push(§§pop());
                     if(_loc2_)
                     {
                        param1 = §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr91);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr101);
               }
               else
               {
                  §§push(param1);
                  if(_loc2_ || _loc2_)
                  {
                     addr72:
                     §§push(1);
                     if(!_loc3_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr83);
                           }
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr91);
                  }
               }
            }
            §§goto(addr91);
         }
         §§goto(addr72);
      }
      
      public function AnimateToBarSize(param1:Number, param2:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         §§push(0);
         if(!(_loc4_ && Boolean(param2)))
         {
            if(§§pop() < §§pop())
            {
               if(_loc5_ || Boolean(param1))
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc5_ || Boolean(param2))
                     {
                        param1 = §§pop();
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr92:
                           addr94:
                           if(param1 > 0)
                           {
                              addr95:
                              this.m_bar.visible = true;
                              if(!_loc4_)
                              {
                                 this.m_barEndPiece.visible = true;
                              }
                           }
                           this.m_barEndPiece.visible = false;
                           addr128:
                           §§push(this.m_bar.width - this.m_barEndPiece.width);
                           §§push(param1);
                           if(!_loc4_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:int = §§pop() * §§pop();
                           if(_loc5_)
                           {
                              TweenLite.to(this.m_bar,param2,{
                                 "x":_loc3_,
                                 "onComplete":this.FinishBarAnimation,
                                 "onCompleteParams":[param1]
                              });
                              if(_loc5_)
                              {
                                 addr148:
                                 this.m_currBarSize = param1;
                              }
                              return;
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr95);
                     }
                  }
               }
               §§goto(addr128);
            }
            else
            {
               §§push(param1);
               §§push(1);
               if(_loc5_ || Boolean(param1))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(1);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              param1 = §§pop();
                           }
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr92);
               }
            }
         }
         §§goto(addr94);
      }
      
      private function FinishBarAnimation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 == 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.m_bar.visible = false;
                  if(_loc3_ || _loc3_)
                  {
                     this.m_barEndPiece.visible = false;
                  }
               }
            }
         }
      }
   }
}
