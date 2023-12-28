package BattleSystems.Visuals.VisualMoves
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class VisualMoveMiss extends BaseVisualMove
   {
       
      
      private var m_statBackground:Sprite;
      
      public function VisualMoveMiss()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               m_moveTime = 0.9;
            }
         }
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || Boolean(this))
         {
            super.CreateMove(param1,param2,param3,param4);
            if(_loc6_ || Boolean(param1))
            {
               this.m_statBackground = Singleton.utility.m_spriteHandler.CreateSprite("visualMove_moveMissed");
               if(!_loc7_)
               {
                  m_addedToSprite.addChild(this.m_statBackground);
                  if(_loc6_ || Boolean(param3))
                  {
                     addr60:
                     this.m_statBackground.alpha = 0;
                  }
               }
            }
            var _loc5_:TextFormat;
            (_loc5_ = new TextFormat()).color = 15066856;
            if(_loc6_)
            {
               _loc5_.size = 20;
               if(!(_loc7_ && Boolean(param3)))
               {
                  addr90:
                  _loc5_.font = "BurbinCasual";
                  if(!_loc7_)
                  {
                     §§goto(addr95);
                  }
                  §§goto(addr106);
               }
               addr95:
               _loc5_.align = TextFormatAlign.LEFT;
               if(!(_loc7_ && Boolean(param3)))
               {
                  addr106:
                  this.m_statBackground.visible = false;
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr60);
      }
      
      override public function PlayMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            super.PlayMove();
            if(_loc2_ || Boolean(this))
            {
               Singleton.utility.m_soundController.PlaySound("battle_whoosh_sword_swipe",0.5);
               if(_loc2_)
               {
               }
               §§goto(addr43);
            }
            this.m_statBackground.visible = true;
            if(_loc2_)
            {
            }
            §§goto(addr43);
         }
         addr43:
         this.m_statBackground.x = m_minionAttackedVisual.x - this.m_statBackground.width / 2;
         if(_loc2_ || Boolean(this))
         {
            this.m_statBackground.y = m_minionAttackedVisual.y - m_minionAttackedVisual.m_minionSprite.height - 50;
         }
         var _loc1_:TimelineLite = new TimelineLite();
         if(!_loc3_)
         {
            _loc1_.append(new TweenLite(this.m_statBackground,0.2,{"alpha":1}));
            if(_loc2_)
            {
               _loc1_.append(new TweenLite(this.m_statBackground,0.4,{}));
               if(_loc2_)
               {
               }
               §§goto(addr134);
            }
            _loc1_.append(new TweenLite(this.m_statBackground,0.2,{
               "alpha":0,
               "onComplete":this.CleanupMove
            }));
            if(_loc3_ && Boolean(_loc1_))
            {
            }
            §§goto(addr134);
         }
         addr134:
         TweenLite.to(this.m_statBackground,0.8,{"y":"-50"});
      }
      
      override protected function CleanupMove() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super.CleanupMove();
            if(!(_loc2_ && _loc1_))
            {
               m_addedToSprite.removeChild(this.m_statBackground);
            }
         }
      }
   }
}
