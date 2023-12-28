package BattleSystems.LoseScreen
{
   import BattleSystems.Other.BaseBattleFinishScreen;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class LoseScreen extends BaseBattleFinishScreen
   {
       
      
      private var m_blackBackground:Sprite;
      
      private var m_loseText:TextField;
      
      public function LoseScreen()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function LoadSprites(param1:Sprite) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super.LoadSprites(param1);
         if(_loc4_)
         {
            this.m_blackBackground = new Sprite();
            if(!(_loc3_ && Boolean(this)))
            {
               this.m_blackBackground.graphics.beginFill(0);
               this.m_blackBackground.graphics.drawRect(0,0,700,525);
            }
            this.m_blackBackground.graphics.endFill();
            if(!_loc3_)
            {
               addr49:
               param1.addChild(this.m_blackBackground);
            }
            var _loc2_:TextFormat = new TextFormat();
            _loc2_.color = 15066856;
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.size = 18;
               if(_loc4_)
               {
                  §§goto(addr79);
               }
               §§goto(addr115);
            }
            addr79:
            _loc2_.font = "BurbinCasual";
            _loc2_.align = TextFormatAlign.CENTER;
            if(!_loc3_)
            {
               this.m_loseText = new TextField();
               this.m_loseText.embedFonts = true;
               if(!(_loc3_ && _loc3_))
               {
                  this.m_loseText.defaultTextFormat = _loc2_;
               }
               this.m_loseText.text = "Your minions have collapsed,  you rush to heal them";
               this.m_loseText.width = 700;
               addr115:
               this.m_loseText.y = 234;
               this.m_loseText.selectable = false;
            }
            param1.addChild(this.m_loseText);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               this.m_loseText.visible = false;
               this.m_blackBackground.visible = false;
            }
            return;
         }
         §§goto(addr49);
      }
      
      override public function BringInScreen(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.BringInScreen(param1);
            if(_loc2_)
            {
               §§push(Singleton.utility.m_analyticsController);
               §§push("Death");
               §§push("");
               if(_loc2_)
               {
                  §§push(Singleton.dynamicData);
                  if(!_loc3_)
                  {
                     §§push(§§pop().m_currFloorOfTower);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc3_)
                        {
                           addr56:
                           §§push(§§pop() + "_");
                           if(_loc2_ || _loc2_)
                           {
                              addr68:
                              §§push(§§pop() + Singleton.dynamicData.m_currRoomOfTower);
                           }
                        }
                        §§pop().LogCounterMetric(§§pop(),§§pop());
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr68);
               }
               §§goto(addr56);
            }
         }
         addr70:
      }
      
      override protected function GotoTopDownScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_loseText.visible = true;
            if(!_loc2_)
            {
               this.m_blackBackground.visible = true;
               if(!_loc2_)
               {
                  this.m_loseText.alpha = 0;
                  if(_loc3_ || _loc3_)
                  {
                     this.m_blackBackground.alpha = 0;
                     if(_loc3_)
                     {
                        addr45:
                        Singleton.utility.m_soundController.PlaySound("battle_lose",0.5);
                     }
                  }
                  §§goto(addr45);
               }
               var _loc1_:TimelineLite = new TimelineLite();
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.append(new TweenLite(this.m_blackBackground,0.5,{}));
                  if(!_loc2_)
                  {
                     _loc1_.append(new TweenLite(this.m_blackBackground,1,{"alpha":1}));
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.append(new TweenLite(this.m_blackBackground,1.5,{"onComplete":this.GotoTopDownScreen_part2}));
                        if(_loc3_ || Boolean(this))
                        {
                           addr114:
                           _loc1_.append(new TweenLite(this.m_blackBackground,0.5,{"onComplete":this.TurnOffLoseScreen}));
                        }
                     }
                  }
                  _loc1_ = new TimelineLite();
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.append(new TweenLite(this.m_loseText,0.5,{}));
                     if(!_loc2_)
                     {
                        _loc1_.append(new TweenLite(this.m_loseText,1,{"alpha":1}));
                     }
                  }
                  return;
               }
               §§goto(addr114);
            }
         }
         §§goto(addr45);
      }
      
      public function GotoTopDownScreen_part2() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Singleton.dynamicData);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().SetToReturnToOnDeathPoint();
               if(_loc2_ || _loc2_)
               {
                  addr54:
                  Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
                  if(_loc1_ && _loc1_)
                  {
                  }
                  §§goto(addr68);
               }
               Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
               addr68:
               return;
            }
         }
         §§goto(addr54);
      }
      
      private function TurnOffLoseScreen() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_loseText.visible = false;
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_blackBackground.visible = false;
            }
         }
      }
      
      override public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.m_blackBackground.visible)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  return;
               }
            }
            super.Update();
         }
      }
   }
}
