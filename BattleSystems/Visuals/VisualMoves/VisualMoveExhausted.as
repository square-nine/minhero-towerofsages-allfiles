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
   
   public class VisualMoveExhausted extends BaseVisualMove
   {
       
      
      private var m_statBackground:Sprite;
      
      public function VisualMoveExhausted()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               addr25:
               m_moveTime = 0.9;
            }
            return;
         }
         §§goto(addr25);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || Boolean(param1))
         {
            super.CreateMove(param1,param2,param3,param4);
            if(!_loc6_)
            {
               addr29:
               this.m_statBackground = Singleton.utility.m_spriteHandler.CreateSprite("visualMove_exhausted");
               if(!_loc6_)
               {
                  m_addedToSprite.addChild(this.m_statBackground);
                  if(_loc7_ || Boolean(param3))
                  {
                     this.m_statBackground.alpha = 0;
                  }
               }
            }
            var _loc5_:TextFormat;
            (_loc5_ = new TextFormat()).color = 15066856;
            if(!(_loc6_ && Boolean(param2)))
            {
               _loc5_.size = 20;
               if(!(_loc6_ && Boolean(param1)))
               {
                  _loc5_.font = "BurbinCasual";
                  if(_loc7_)
                  {
                     _loc5_.align = TextFormatAlign.LEFT;
                     if(_loc7_)
                     {
                     }
                     §§goto(addr106);
                  }
                  this.m_statBackground.visible = false;
               }
            }
            addr106:
            return;
         }
         §§goto(addr29);
      }
      
      override public function PlayMove() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.PlayMove();
            if(!(_loc2_ && _loc2_))
            {
               this.m_statBackground.visible = true;
               if(_loc3_ || _loc2_)
               {
                  addr41:
                  Singleton.utility.m_soundController.PlaySound("battle_exhausted",0.9);
                  if(_loc3_ || _loc3_)
                  {
                     this.m_statBackground.x = m_minionAttackedVisual.x - this.m_statBackground.width / 2;
                     if(_loc3_ || _loc2_)
                     {
                        addr79:
                        this.m_statBackground.y = m_minionAttackedVisual.y - m_minionAttackedVisual.m_minionSprite.height - 50;
                     }
                  }
               }
               var _loc1_:TimelineLite = new TimelineLite();
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.append(new TweenLite(this.m_statBackground,0.2,{"alpha":1}));
                  if(_loc3_)
                  {
                     _loc1_.append(new TweenLite(this.m_statBackground,0.4,{}));
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr135:
                        _loc1_.append(new TweenLite(this.m_statBackground,0.2,{
                           "alpha":0,
                           "onComplete":this.CleanupMove
                        }));
                        if(_loc2_)
                        {
                        }
                        §§goto(addr158);
                     }
                     TweenLite.to(this.m_statBackground,0.8,{"y":"-50"});
                     addr158:
                     return;
                  }
               }
               §§goto(addr135);
            }
            §§goto(addr41);
         }
         §§goto(addr79);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.CleanupMove();
            if(_loc2_)
            {
               m_addedToSprite.removeChild(this.m_statBackground);
            }
         }
      }
   }
}
