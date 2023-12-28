package LevelSelect
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   
   public class TextFromSprites extends Sprite
   {
       
      
      public function TextFromSprites()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function SetText(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Sprite = null;
         var _loc5_:Sprite = null;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.GetSpriteForNumber(_loc2_.slice(_loc4_,_loc4_ + 1));
            if(_loc6_ || Boolean(param1))
            {
               if(_loc3_ != null)
               {
                  if(_loc6_)
                  {
                     addr57:
                     _loc5_.x = _loc3_.x + _loc3_.width + 5;
                     if(_loc6_)
                     {
                        addr68:
                        if(_loc4_ == 1)
                        {
                           if(_loc6_ || Boolean(param1))
                           {
                              _loc5_.y = 21;
                              if(_loc6_)
                              {
                                 addr90:
                                 addChild(_loc5_);
                              }
                           }
                           _loc3_ = _loc5_;
                           if(_loc6_)
                           {
                              _loc4_++;
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr68);
            }
            §§goto(addr57);
         }
      }
      
      private function GetSpriteForNumber(param1:String) : Sprite
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(Singleton.utility.m_spriteHandler);
         §§push("roomSelect_roomFont_");
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(§§pop() + param1);
         }
         return §§pop().CreateSprite(§§pop());
      }
   }
}
