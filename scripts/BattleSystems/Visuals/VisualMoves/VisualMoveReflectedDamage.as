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
   
   public class VisualMoveReflectedDamage extends BaseVisualMove
   {
       
      
      private var m_statBackground:Sprite;
      
      public function VisualMoveReflectedDamage()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && Boolean(this)))
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
               this.m_statBackground = Singleton.utility.m_spriteHandler.CreateSprite("visualMove_reflectedDamage");
               if(_loc6_ || Boolean(param1))
               {
                  m_addedToSprite.addChild(this.m_statBackground);
                  if(_loc6_ || Boolean(this))
                  {
                     addr55:
                     this.m_statBackground.alpha = 0;
                  }
               }
               §§goto(addr55);
            }
            var _loc5_:TextFormat;
            (_loc5_ = new TextFormat()).color = 15066856;
            if(!(_loc7_ && Boolean(this)))
            {
               _loc5_.size = 20;
               if(_loc6_)
               {
                  _loc5_.font = "BurbinCasual";
                  if(_loc6_ || Boolean(this))
                  {
                     addr95:
                     _loc5_.align = TextFormatAlign.LEFT;
                     if(_loc6_ || Boolean(param1))
                     {
                        this.m_statBackground.visible = false;
                     }
                  }
                  return;
               }
            }
            §§goto(addr95);
         }
         §§goto(addr55);
      }
      
      override public function PlayMove() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.PlayMove();
            if(_loc3_)
            {
               addr25:
               this.m_statBackground.visible = true;
               if(_loc3_)
               {
                  this.m_statBackground.x = m_minionAttackedVisual.x - this.m_statBackground.width / 2;
                  if(_loc3_)
                  {
                     addr44:
                     this.m_statBackground.y = m_minionAttackedVisual.y - m_minionAttackedVisual.m_minionSprite.height - 100;
                  }
               }
               var _loc1_:TimelineLite = new TimelineLite();
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.append(new TweenLite(this.m_statBackground,0.2,{"alpha":1}));
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.append(new TweenLite(this.m_statBackground,0.4,{}));
                     if(!_loc2_)
                     {
                        addr107:
                        _loc1_.append(new TweenLite(this.m_statBackground,0.2,{
                           "alpha":0,
                           "onComplete":this.CleanupMove
                        }));
                        if(_loc3_)
                        {
                           TweenLite.to(this.m_statBackground,0.8,{"x":"-30"});
                        }
                     }
                     return;
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr44);
         }
         §§goto(addr25);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.CleanupMove();
            if(_loc2_ || Boolean(this))
            {
               m_addedToSprite.removeChild(this.m_statBackground);
            }
         }
      }
   }
}
