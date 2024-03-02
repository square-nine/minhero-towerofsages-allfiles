package LevelSelect
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class TextFromSprites extends Sprite
   {
       
      
      public function TextFromSprites()
      {
         super();
      }
      
      public function SetText(param1:String) : void
      {
         var _loc3_:Sprite = null;
         var _loc5_:Sprite = null;
         var _loc2_:String = param1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.GetSpriteForNumber(_loc2_.slice(_loc4_,_loc4_ + 1));
            if(_loc3_ != null)
            {
               _loc5_.x = _loc3_.x + _loc3_.width + 5;
            }
            if(_loc4_ == 1)
            {
               _loc5_.y = 21;
            }
            addChild(_loc5_);
            _loc3_ = _loc5_;
            _loc4_++;
         }
      }
      
      private function GetSpriteForNumber(param1:String) : Sprite
      {
         return Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_roomFont_" + param1);
      }
   }
}
