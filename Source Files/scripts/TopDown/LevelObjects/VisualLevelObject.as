package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class VisualLevelObject
   {
       
      
      protected var m_spriteName:String;
      
      protected var m_initialX:int;
      
      protected var m_initialY:int;
      
      protected var m_initialScaleX:Number;
      
      protected var m_initialScaleY:Number;
      
      protected var m_initialRotation:Number;
      
      protected var m_addToSprite:Sprite;
      
      public var m_currSprite:Sprite;
      
      public var m_isVisible:Boolean;
      
      public function VisualLevelObject()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function AddSpriteFirstTime(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Sprite, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         this.m_spriteName = param1;
         if(!_loc10_)
         {
            this.m_initialX = param2;
            this.m_initialY = param3;
            this.m_initialScaleX = param4;
            this.m_initialScaleY = param5;
            this.m_initialRotation = param6;
            if(_loc9_ || Boolean(this))
            {
               this.m_addToSprite = param7;
               if(!(_loc10_ && Boolean(param2)))
               {
                  addr64:
                  this.m_isVisible = param8;
                  if(_loc9_ || Boolean(param1))
                  {
                     this.AddSprite();
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_currSprite = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
         this.m_currSprite.x = this.m_initialX;
         if(_loc2_)
         {
            this.m_currSprite.y = this.m_initialY;
            this.m_currSprite.scaleX = this.m_initialScaleX;
         }
         this.m_currSprite.scaleY = this.m_initialScaleY;
         this.m_currSprite.rotation = this.m_initialRotation;
         this.m_addToSprite.addChild(this.m_currSprite);
         this.m_currSprite.visible = this.m_isVisible;
      }
      
      public function Cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.m_addToSprite.removeChild(this.m_currSprite);
         }
      }
   }
}
