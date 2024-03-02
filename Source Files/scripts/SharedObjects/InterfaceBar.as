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
         super();
         this.m_bar = Singleton.utility.m_spriteHandler.CreateSprite(param1);
         this.m_bar.cacheAsBitmap = true;
         addChild(this.m_bar);
         if(param2 != "")
         {
            this.m_barEndPiece = Singleton.utility.m_spriteHandler.CreateSprite(param2);
         }
         else
         {
            this.m_barEndPiece = new Sprite();
         }
         addChild(this.m_barEndPiece);
         this.m_mask = Singleton.utility.m_spriteHandler.CreateSprite(param1);
         this.m_mask.cacheAsBitmap = true;
         addChild(this.m_mask);
         this.m_bar.mask = this.m_mask;
      }
      
      public function CleanUp() : void
      {
         removeChild(this.m_bar);
         removeChild(this.m_barEndPiece);
         removeChild(this.m_mask);
      }
      
      public function SetBarSize(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         else if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 == 0)
         {
            this.m_bar.visible = false;
            this.m_barEndPiece.visible = false;
         }
         else
         {
            this.m_bar.visible = true;
            this.m_barEndPiece.visible = true;
         }
         this.m_barEndPiece.visible = false;
         this.m_bar.x = (this.m_bar.width - this.m_barEndPiece.width) * (param1 - 1);
         this.m_currBarSize = param1;
      }
      
      public function AnimateToBarSize(param1:Number, param2:Number = 1) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         else if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 > 0)
         {
            this.m_bar.visible = true;
            this.m_barEndPiece.visible = true;
         }
         this.m_barEndPiece.visible = false;
         var _loc3_:int = (this.m_bar.width - this.m_barEndPiece.width) * (param1 - 1);
         TweenLite.to(this.m_bar,param2,{
            "x":_loc3_,
            "onComplete":this.FinishBarAnimation,
            "onCompleteParams":[param1]
         });
         this.m_currBarSize = param1;
      }
      
      private function FinishBarAnimation(param1:Number) : void
      {
         if(param1 == 0)
         {
            this.m_bar.visible = false;
            this.m_barEndPiece.visible = false;
         }
      }
   }
}
