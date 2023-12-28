package TopDown.Menus
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class ActionAvailbleIcon extends Sprite
   {
       
      
      private var m_up:Sprite;
      
      private var m_down:Sprite;
      
      public var m_currButtonZone:int;
      
      public function ActionAvailbleIcon(param1:String, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               this.m_up = Singleton.utility.m_spriteHandler.CreateSprite(param1);
               if(_loc4_ || Boolean(this))
               {
                  this.m_up.x = 0;
                  §§goto(addr34);
               }
               §§goto(addr69);
            }
            §§goto(addr47);
         }
         addr34:
         if(!_loc3_)
         {
            addr47:
            this.m_up.y = 0;
            addChild(this.m_up);
            this.m_down = Singleton.utility.m_spriteHandler.CreateSprite(param2);
            addr69:
            this.m_down.x = 0;
         }
         this.m_down.y = 0;
         addChild(this.m_down);
         this.m_down.alpha = 0;
         if(!_loc3_)
         {
            this.m_currButtonZone = -99;
         }
      }
      
      public function TryAndReStartAnimation(param1:int, param2:Number = 3) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.m_currButtonZone != param1)
            {
               TweenLite.killTweensOf(this.m_down,false);
               TweenLite.killTweensOf(this.m_up,false);
               if(_loc4_ || Boolean(param1))
               {
                  addr56:
                  this.m_up.alpha = 1;
                  this.m_down.alpha = 0;
                  TweenLite.to(this.m_down,param2,{"onComplete":this.LoopAnimation});
               }
               this.m_currButtonZone = param1;
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function LoopAnimation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TimelineLite = new TimelineLite();
         if(!_loc3_)
         {
            _loc1_.append(new TweenLite(this.m_down,0.1,{"alpha":0}));
            if(_loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr43);
         }
         addr31:
         _loc1_.append(new TweenLite(this.m_down,0.1,{"alpha":1}));
         if(_loc2_)
         {
            addr43:
            _loc1_.append(new TweenLite(this.m_down,0.3,{}));
            if(_loc2_ || Boolean(this))
            {
               _loc1_.append(new TweenLite(this.m_down,0.1,{"alpha":0}));
               if(_loc2_)
               {
               }
               §§goto(addr88);
            }
            _loc1_.append(new TweenLite(this.m_down,2,{"onComplete":this.LoopAnimation}));
         }
         addr88:
         _loc1_ = new TimelineLite();
         if(!_loc3_)
         {
            _loc1_.append(new TweenLite(this.m_up,0.1,{"alpha":1}));
            if(!_loc3_)
            {
               _loc1_.append(new TweenLite(this.m_up,0.1,{"alpha":0}));
               if(_loc2_)
               {
               }
               §§goto(addr140);
            }
            _loc1_.append(new TweenLite(this.m_up,0.3,{}));
            if(_loc3_ && Boolean(_loc1_))
            {
            }
            §§goto(addr140);
         }
         addr140:
         _loc1_.append(new TweenLite(this.m_up,0.1,{"alpha":1}));
      }
   }
}
