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
         super();
      }
      
      public function AddSpriteFirstTime(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Sprite, param8:Boolean = true) : void
      {
         this.m_spriteName = param1;
         this.m_initialX = param2;
         this.m_initialY = param3;
         this.m_initialScaleX = param4;
         this.m_initialScaleY = param5;
         this.m_initialRotation = param6;
         this.m_addToSprite = param7;
         this.m_isVisible = param8;
         this.AddSprite();
      }
      
      public function AddSprite() : void
      {
         this.m_currSprite = Singleton.utility.m_spriteHandler.CreateSprite(this.m_spriteName);
         this.m_currSprite.x = this.m_initialX;
         this.m_currSprite.y = this.m_initialY;
         this.m_currSprite.scaleX = this.m_initialScaleX;
         this.m_currSprite.scaleY = this.m_initialScaleY;
         this.m_currSprite.rotation = this.m_initialRotation;
         this.m_addToSprite.addChild(this.m_currSprite);
         this.m_currSprite.visible = this.m_isVisible;
      }
      
      public function Cleanup() : void
      {
         this.m_addToSprite.removeChild(this.m_currSprite);
      }
   }
}
