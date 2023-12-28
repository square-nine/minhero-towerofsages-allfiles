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
   
   public class VisualMoveCharging extends BaseVisualMove
   {
       
      
      private var m_statBackground:Sprite;
      
      public function VisualMoveCharging()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               m_moveTime = 0.9;
            }
         }
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super.CreateMove(param1,param2,param3,param4);
            if(_loc6_)
            {
               this.m_statBackground = Singleton.utility.m_spriteHandler.CreateSprite("visualMove_charging");
               if(!(_loc7_ && Boolean(param3)))
               {
                  §§goto(addr37);
               }
            }
            §§goto(addr50);
         }
         addr37:
         m_addedToSprite.addChild(this.m_statBackground);
         if(_loc6_)
         {
            addr50:
            this.m_statBackground.alpha = 0;
         }
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat()).color = 15066856;
         if(!(_loc7_ && Boolean(param2)))
         {
            _loc5_.size = 20;
            if(_loc6_ || Boolean(param3))
            {
               _loc5_.font = "BurbinCasual";
               if(!_loc7_)
               {
                  _loc5_.align = TextFormatAlign.LEFT;
                  if(_loc7_ && Boolean(param3))
                  {
                  }
               }
               §§goto(addr105);
            }
            this.m_statBackground.visible = false;
         }
         addr105:
      }
      
      override public function PlayMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            super.PlayMove();
            if(_loc2_ || _loc3_)
            {
               Singleton.utility.m_soundController.PlaySound("battle_charging",0.4);
               if(_loc2_ || _loc3_)
               {
                  this.m_statBackground.visible = true;
                  if(!_loc3_)
                  {
                     addr48:
                     this.m_statBackground.x = m_minionAttackedVisual.x - this.m_statBackground.width / 2;
                     if(_loc2_)
                     {
                        addr68:
                        this.m_statBackground.y = m_minionAttackedVisual.y - m_minionAttackedVisual.m_minionSprite.height - 50;
                     }
                  }
                  var _loc1_:TimelineLite = new TimelineLite();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.append(new TweenLite(this.m_statBackground,0.2,{"alpha":1}));
                     if(_loc2_)
                     {
                        _loc1_.append(new TweenLite(this.m_statBackground,0.4,{}));
                        if(!_loc3_)
                        {
                           addr119:
                           _loc1_.append(new TweenLite(this.m_statBackground,0.2,{
                              "alpha":0,
                              "onComplete":this.CleanupMove
                           }));
                           if(_loc2_)
                           {
                              addr134:
                              TweenLite.to(this.m_statBackground,0.8,{"y":"-50"});
                           }
                        }
                        return;
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr119);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr68);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.CleanupMove();
            if(_loc1_ || Boolean(this))
            {
               m_addedToSprite.removeChild(this.m_statBackground);
            }
         }
      }
   }
}
