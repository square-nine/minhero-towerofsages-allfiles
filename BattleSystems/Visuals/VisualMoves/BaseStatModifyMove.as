package BattleSystems.Visuals.VisualMoves
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BaseStatModifyMove extends BaseVisualMove
   {
       
      
      private var m_statBackground:Sprite;
      
      private var m_statText:TextField;
      
      public var m_isPositiveIncrease:Boolean;
      
      public var m_statName:String;
      
      public function BaseStatModifyMove()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               m_moveTime = 0.9;
               if(_loc2_)
               {
                  addr37:
                  this.m_statName = "none";
                  if(!_loc1_)
                  {
                     addr42:
                     this.m_isPositiveIncrease = true;
                  }
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr37);
      }
      
      override public function CreateMove(param1:Sprite, param2:BaseMinionMove, param3:OwnedMinion, param4:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         super.CreateMove(param1,param2,param3,param4);
         if(this.m_isPositiveIncrease)
         {
            this.m_statBackground = Singleton.utility.m_spriteHandler.CreateSprite("visualMove_statIncrease");
            addr40:
            m_addedToSprite.addChild(this.m_statBackground);
            this.m_statBackground.alpha = 0;
         }
         else
         {
            this.m_statBackground = Singleton.utility.m_spriteHandler.CreateSprite("visualMove_statDecrease");
            if(_loc7_)
            {
               §§goto(addr40);
            }
         }
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat()).color = 15066856;
         _loc5_.size = 20;
         if(_loc7_)
         {
            _loc5_.font = "BurbinCasual";
            if(_loc7_ || Boolean(this))
            {
               _loc5_.align = TextFormatAlign.LEFT;
            }
            this.m_statText = new TextField();
            if(_loc7_ || Boolean(this))
            {
               §§goto(addr92);
            }
            §§goto(addr122);
         }
         addr92:
         this.m_statText.x = 28;
         this.m_statText.embedFonts = true;
         if(!_loc6_)
         {
            this.m_statText.defaultTextFormat = _loc5_;
            this.m_statText.text = this.m_statName;
            this.m_statText.width = 100;
            addr122:
            this.m_statText.selectable = false;
         }
         this.m_statBackground.addChild(this.m_statText);
         this.m_statBackground.visible = false;
      }
      
      override public function PlayMove() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.PlayMove();
            if(m_minionAttackedVisual == null)
            {
               this.CleanupMove();
               return;
            }
            if(this.m_isPositiveIncrease)
            {
               §§push(Singleton.utility);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§pop().m_soundController);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push("battle_buff");
                     if(!_loc3_)
                     {
                        §§push(0.5);
                        if(_loc2_)
                        {
                           §§pop().PlaySound(§§pop(),§§pop());
                           if(_loc2_)
                           {
                              addr64:
                              this.m_statBackground.visible = true;
                              if(_loc3_ && _loc1_)
                              {
                              }
                              §§goto(addr104);
                           }
                           this.m_statBackground.x = m_minionAttackedVisual.x - this.m_statBackground.width / 2;
                           this.m_statBackground.y = m_minionAttackedVisual.y - m_minionAttackedVisual.m_minionSprite.height - 50;
                           addr104:
                           var _loc1_:TimelineLite = new TimelineLite();
                           if(_loc2_)
                           {
                              _loc1_.append(new TweenLite(this.m_statBackground,0.2,{"alpha":1}));
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 _loc1_.append(new TweenLite(this.m_statBackground,0.4,{}));
                                 if(_loc2_ || _loc2_)
                                 {
                                    _loc1_.append(new TweenLite(this.m_statBackground,0.2,{
                                       "alpha":0,
                                       "onComplete":this.CleanupMove
                                    }));
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              TweenLite.to(this.m_statBackground,0.8,{"y":"-50"});
                           }
                           addr172:
                           return;
                        }
                        addr63:
                        §§pop().PlaySound(§§pop(),§§pop());
                        §§goto(addr64);
                     }
                     else
                     {
                        addr62:
                        §§push(0.4);
                     }
                     §§goto(addr63);
                  }
                  else
                  {
                     addr61:
                     §§push("battle_debuff");
                  }
                  §§goto(addr62);
               }
               else
               {
                  addr60:
                  §§push(§§pop().m_soundController);
               }
               §§goto(addr61);
            }
            else
            {
               §§push(Singleton.utility);
            }
            §§goto(addr60);
         }
         §§goto(addr64);
      }
      
      override protected function CleanupMove() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.CleanupMove();
            if(!_loc2_)
            {
               this.m_statBackground.removeChild(this.m_statText);
               if(_loc1_ || _loc1_)
               {
                  addr38:
                  m_addedToSprite.removeChild(this.m_statBackground);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
