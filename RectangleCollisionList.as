package Utilities
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   
   public class RectangleCollisionList
   {
       
      
      private var m_target:Sprite;
      
      private var m_collisionObjects:Vector.<Sprite>;
      
      private var m_isMouseOverActives:Vector.<Boolean>;
      
      private var m_previousOnOverState:Boolean;
      
      public function RectangleCollisionList(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               this.m_target = param1;
               if(_loc3_)
               {
                  this.m_collisionObjects = new Vector.<Sprite>();
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     this.m_isMouseOverActives = new Vector.<Boolean>();
                     if(_loc3_)
                     {
                        addr65:
                        Singleton.utility.m_stage.addEventListener(MouseEvent.MOUSE_MOVE,this.CheckForOnOver);
                     }
                  }
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function checkCollisions() : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.m_collisionObjects.length)
         {
            if(this.m_collisionObjects[_loc2_] == null)
            {
               if(_loc4_)
               {
                  continue;
               }
            }
            else
            {
               if(!Singleton.utility.m_collController.RectDisplayObjectCollision(this.m_target,this.m_collisionObjects[_loc2_]))
               {
                  continue;
               }
               if(_loc3_ && Boolean(_loc2_))
               {
                  continue;
               }
            }
            _loc1_.push(this.m_collisionObjects[_loc2_]);
            if(!(_loc4_ || Boolean(_loc2_)))
            {
               break;
            }
            _loc2_++;
            if(_loc3_)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_collisionObjects = new Vector.<Sprite>();
            if(!(_loc2_ && _loc2_))
            {
               addr35:
               this.m_isMouseOverActives = new Vector.<Boolean>();
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function removeItem(param1:Sprite) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.m_collisionObjects.indexOf(param1);
         if(!_loc4_)
         {
            this.m_collisionObjects[_loc2_] = null;
            if(_loc3_)
            {
               this.m_collisionObjects.splice(_loc2_,1);
               addr35:
               if(_loc3_ || Boolean(param1))
               {
                  §§goto(addr54);
               }
               §§goto(addr61);
            }
            addr54:
            this.m_isMouseOverActives[_loc2_] = null;
            if(!_loc4_)
            {
               addr61:
               this.m_isMouseOverActives.splice(_loc2_,1);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function addItem(param1:Sprite, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.m_collisionObjects.push(param1);
            if(!(_loc4_ && Boolean(param1)))
            {
               addr38:
               this.m_isMouseOverActives.push(param2);
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function CheckForOnOver(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.m_target.x = param1.stageX;
            if(_loc6_)
            {
               this.m_target.y = param1.stageY;
            }
         }
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < this.m_isMouseOverActives.length)
         {
            if(this.m_collisionObjects[_loc4_] != null)
            {
               if(Singleton.utility.m_collController.RectDisplayObjectCollision(this.m_target,this.m_collisionObjects[_loc4_]))
               {
                  if(this.m_isMouseOverActives[_loc4_])
                  {
                     _loc2_ = true;
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     Mouse.cursor = "button";
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     this.m_previousOnOverState = true;
                     if(_loc5_ && _loc2_)
                     {
                        §§goto(addr157);
                     }
                  }
                  else
                  {
                     _loc3_ = true;
                  }
               }
            }
            _loc4_++;
         }
         §§push(this.m_previousOnOverState);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop());
            if(_loc6_)
            {
               if(§§pop())
               {
                  §§pop();
                  if(!_loc5_)
                  {
                     addr124:
                     §§push(!_loc2_);
                     if(!!_loc2_)
                     {
                        if(_loc6_ || Boolean(this))
                        {
                           addr132:
                           §§pop();
                           §§push(_loc3_);
                           if(_loc6_ || _loc3_)
                           {
                           }
                           §§goto(addr149);
                        }
                        addr149:
                        if(§§pop())
                        {
                           if(_loc6_ || Boolean(param1))
                           {
                              §§goto(addr157);
                           }
                           §§goto(addr167);
                        }
                        addr157:
                        Mouse.cursor = "auto";
                        if(!(_loc5_ && _loc3_))
                        {
                           addr167:
                           this.m_previousOnOverState = false;
                        }
                        return;
                        §§push(§§pop());
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr157);
               }
               §§goto(addr149);
            }
            §§goto(addr124);
         }
         §§goto(addr132);
      }
   }
}
