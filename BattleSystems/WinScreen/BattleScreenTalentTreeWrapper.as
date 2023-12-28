package BattleSystems.WinScreen
{
   import BattleSystems.Visuals.BattleScreenMinionVisual;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.TalentTree.TalentTreeControllerScreen;
   import States.BattleScreenStates;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class BattleScreenTalentTreeWrapper extends GameObject
   {
       
      
      private var m_returnButton:TCButton;
      
      private var m_talentTreeControllerScreen:TalentTreeControllerScreen;
      
      public var m_backgroundNormalSize:Sprite;
      
      private var m_isAnimationFinished:Boolean;
      
      public function BattleScreenTalentTreeWrapper()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_)
            {
               this.m_talentTreeControllerScreen = new TalentTreeControllerScreen();
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_backgroundNormalSize = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
         if(_loc2_ || _loc2_)
         {
            addChild(this.m_backgroundNormalSize);
            this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
            §§push(this.m_returnButton);
            if(_loc2_)
            {
               §§push(2);
               if(!_loc1_)
               {
                  §§pop().x = §§pop();
                  addr63:
                  §§push(this.m_returnButton);
                  §§push(356);
               }
               §§pop().y = §§pop();
               addChild(this.m_returnButton);
               if(_loc2_)
               {
                  this.m_talentTreeControllerScreen.LoadSprites();
                  addChild(this.m_talentTreeControllerScreen);
               }
               §§goto(addr78);
            }
            §§goto(addr63);
         }
         addr78:
         this.visible = false;
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.m_isAnimationFinished = false;
            if(_loc4_)
            {
               this.PlayWhooshSound();
               if(_loc4_)
               {
                  addr24:
                  this.m_talentTreeControllerScreen.BringIn(param1,this.ReturnButtonPressed);
                  if(!_loc5_)
                  {
                     scaleX = 0.18;
                     if(_loc4_ || _loc2_)
                     {
                        addr42:
                        scaleY = 0.18;
                     }
                  }
               }
               var _loc2_:BattleScreenMinionVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(param1);
               if(_loc4_ || _loc3_)
               {
                  x = _loc2_.x - _loc2_.m_minionSprite.x;
                  if(_loc4_)
                  {
                     addr71:
                     y = _loc2_.y + _loc2_.m_minionSprite.y;
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        visible = true;
                        if(_loc4_ || _loc3_)
                        {
                           addr103:
                           alpha = 0;
                        }
                        var _loc3_:TimelineLite = new TimelineLite();
                        if(_loc4_)
                        {
                           _loc3_.append(new TweenLite(this,0.3,{"alpha":1}));
                           if(_loc4_)
                           {
                              _loc3_.append(new TweenLite(this,0.6,{"y":-90}));
                              if(!_loc5_)
                              {
                                 _loc3_.append(new TweenLite(this,0.1,{"y":-420}));
                                 _loc3_.append(new TweenLite(this,0.1,{
                                    "scaleY":1,
                                    "scaleX":1,
                                    "onComplete":this.PlayWhooshSound
                                 }));
                              }
                              §§goto(addr175);
                           }
                           _loc3_.append(new TweenLite(this,0.1,{"x":177}));
                           if(_loc5_)
                           {
                           }
                           §§goto(addr175);
                        }
                        addr175:
                        _loc3_.append(new TweenLite(this,1.2,{
                           "y":30,
                           "onComplete":this.FinishBringInAnimation
                        }));
                        return;
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr71);
            }
            §§goto(addr42);
         }
         §§goto(addr24);
      }
      
      private function FinishBringInAnimation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_isAnimationFinished = true;
         }
      }
      
      private function PlayWhooshSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            Singleton.utility.m_soundController.PlaySound("battle_whoosh");
         }
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
            if(_loc2_)
            {
               addr37:
               this.m_talentTreeControllerScreen.ExitOut();
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function ReturnButtonPressed(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.ExitOut();
            if(_loc3_)
            {
               §§push(Singleton.utility);
               if(_loc3_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(!_loc2_)
                  {
                     §§push(§§pop().m_battleScreen);
                     if(_loc3_)
                     {
                        if(§§pop().m_currState == BattleScreenStates.BSS_VICTORY_MENUS)
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              §§push(Singleton.utility);
                              if(!_loc2_)
                              {
                                 addr59:
                                 §§push(§§pop().m_screenControllers);
                                 if(_loc3_)
                                 {
                                    addr62:
                                    §§push(§§pop().m_battleScreen);
                                    if(!_loc2_)
                                    {
                                       §§pop().m_winScreen.ExitTalentPointScreen();
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr74:
                                       §§pop().m_loseScreen.ExitTalentPointScreen();
                                    }
                                    §§goto(addr76);
                                 }
                                 §§goto(addr74);
                              }
                              else
                              {
                                 addr72:
                                 §§push(§§pop().m_screenControllers);
                              }
                              §§goto(addr74);
                              §§push(§§pop().m_battleScreen);
                           }
                           §§goto(addr76);
                        }
                        else
                        {
                           §§push(Singleton.utility);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr62);
               }
               §§goto(addr59);
            }
         }
         addr76:
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super.UpdateFullFrames();
            if(_loc2_ || Boolean(this))
            {
               if(!this.m_isAnimationFinished)
               {
                  if(!_loc1_)
                  {
                     return;
                  }
               }
               else
               {
                  this.m_talentTreeControllerScreen.UpdateFullFrames();
                  if(_loc2_ || _loc1_)
                  {
                     addr62:
                     this.m_returnButton.m_isActive = true;
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
   }
}
