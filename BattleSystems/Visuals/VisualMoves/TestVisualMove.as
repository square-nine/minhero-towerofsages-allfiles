package BattleSystems.Visuals.VisualMoves
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class TestVisualMove extends BaseVisualMove
   {
       
      
      private var m_whiteFlash:Sprite;
      
      public function TestVisualMove()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr19:
               m_moveTime = 0.4;
            }
            return;
         }
         §§goto(addr19);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         super.CreateMove(param1,param2,param3,param4);
         this.m_whiteFlash = new Sprite();
         this.m_whiteFlash.graphics.beginFill(16777215);
         if(_loc5_)
         {
            this.m_whiteFlash.graphics.drawRect(0,0,700,525);
            this.m_whiteFlash.graphics.endFill();
         }
         param1.addChild(this.m_whiteFlash);
         this.m_whiteFlash.alpha = 0;
         this.m_whiteFlash.visible = false;
      }
      
      override public function PlayMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.PlayMove();
            if(_loc2_)
            {
               addr19:
               Singleton.utility.m_soundController.PlaySound("battle_hit_thump_splat");
            }
            var _loc1_:TimelineLite = new TimelineLite();
            if(!_loc3_)
            {
               _loc1_.append(new TweenLite(this.m_whiteFlash,0.2,{"alpha":1}));
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.append(new TweenLite(this.m_whiteFlash,0.2,{
                     "alpha":0,
                     "onComplete":this.CleanupMove
                  }));
               }
            }
            return;
         }
         §§goto(addr19);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super.CleanupMove();
            if(_loc2_)
            {
               addr25:
               m_addedToSprite.removeChild(this.m_whiteFlash);
            }
            return;
         }
         §§goto(addr25);
      }
   }
}
