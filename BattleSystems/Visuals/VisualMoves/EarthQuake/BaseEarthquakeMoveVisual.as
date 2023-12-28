package BattleSystems.Visuals.VisualMoves.EarthQuake
{
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BaseEarthquakeMoveVisual extends BaseVisualMove
   {
       
      
      private var _intensity:Number;
      
      private var _numberOfShakes:int;
      
      private var _shakeDistance:Number;
      
      public function BaseEarthquakeMoveVisual(param1:Number = 0.05, param2:int = 5, param3:Number = 10)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this._intensity = param1;
               if(!_loc4_)
               {
                  this._numberOfShakes = param2;
                  if(!_loc4_)
                  {
                     addr37:
                     this._shakeDistance = param3;
                     if(!_loc4_)
                     {
                        addr42:
                        §§push(§§findproperty(m_moveTime));
                        §§push(0.05);
                        if(_loc5_)
                        {
                           §§push(this._intensity);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * (this._numberOfShakes * 0.5));
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_)
                                 {
                                    §§goto(addr67);
                                 }
                                 §§goto(addr77);
                              }
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr67);
                     }
                  }
                  addr67:
                  §§push(§§pop() * this._numberOfShakes);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr77:
                     §§push(§§pop() + 0.15);
                  }
                  §§pop().m_moveTime = §§pop();
                  return;
               }
               §§goto(addr42);
            }
         }
         §§goto(addr37);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super.CreateMove(param1,param2,param3,param4);
         }
      }
      
      override public function PlayMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.PlayMove();
            if(_loc2_)
            {
               §§goto(addr24);
            }
            §§goto(addr40);
         }
         addr24:
         PlayMainSound();
         if(_loc2_ || Boolean(this))
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.ShakeScreen(this._intensity,this._numberOfShakes,this._shakeDistance);
            addr40:
         }
         var _loc1_:TimelineLite = new TimelineLite();
         if(!_loc3_)
         {
            _loc1_.append(new TweenLite(this,m_moveTime - 0.15,{"onComplete":this.CleanupMove}));
         }
      }
      
      override protected function CleanupMove() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super.CleanupMove();
         }
      }
   }
}
