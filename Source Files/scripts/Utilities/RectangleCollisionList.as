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
         super();
         this.m_target = param1;
         this.m_collisionObjects = new Vector.<Sprite>();
         this.m_isMouseOverActives = new Vector.<Boolean>();
         Singleton.utility.m_stage.addEventListener(MouseEvent.MOUSE_MOVE,this.CheckForOnOver);
      }
      
      public function checkCollisions() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.m_collisionObjects.length)
         {
            if(this.m_collisionObjects[_loc2_] != null)
            {
               if(Singleton.utility.m_collController.RectDisplayObjectCollision(this.m_target,this.m_collisionObjects[_loc2_]))
               {
                  _loc1_.push(this.m_collisionObjects[_loc2_]);
               }
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         this.m_collisionObjects = new Vector.<Sprite>();
         this.m_isMouseOverActives = new Vector.<Boolean>();
      }
      
      public function removeItem(param1:Sprite) : void
      {
         var _loc2_:int = this.m_collisionObjects.indexOf(param1);
         this.m_collisionObjects[_loc2_] = null;
         this.m_collisionObjects.splice(_loc2_,1);
         this.m_isMouseOverActives[_loc2_] = null;
         this.m_isMouseOverActives.splice(_loc2_,1);
      }
      
      public function addItem(param1:Sprite, param2:Boolean = true) : void
      {
         this.m_collisionObjects.push(param1);
         this.m_isMouseOverActives.push(param2);
      }
      
      private function CheckForOnOver(param1:MouseEvent) : void
      {
         this.m_target.x = param1.stageX;
         this.m_target.y = param1.stageY;
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
                     Mouse.cursor = "button";
                     this.m_previousOnOverState = true;
                  }
                  else
                  {
                     _loc3_ = true;
                  }
               }
            }
            _loc4_++;
         }
         if(this.m_previousOnOverState && (!_loc2_ || _loc3_))
         {
            Mouse.cursor = "auto";
            this.m_previousOnOverState = false;
         }
      }
   }
}
