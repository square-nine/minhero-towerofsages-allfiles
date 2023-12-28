package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.TutorialPopup;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionSelectOptionsMenu extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_detailsButton:TCButton;
      
      private var m_skillTreeButton:TCButton;
      
      private var m_cancelButton:TCButton;
      
      private var m_unspentTalentPointsPopup:TutorialPopup;
      
      private var m_gemPopup:TutorialPopup;
      
      public function MinionSelectOptionsMenu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_selectionPopUp_background");
            if(!_loc5_)
            {
               addChild(this.m_background);
               if(_loc4_)
               {
                  §§push(15);
                  if(!_loc5_)
                  {
                     _loc1_ = §§pop();
                     if(_loc4_)
                     {
                        addr40:
                        §§push(15);
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           addr44:
                           §§push(39);
                        }
                     }
                     §§goto(addr44);
                  }
                  var _loc3_:* = §§pop();
                  this.m_detailsButton = new TCButton(this.DetailsButtonHasBeenPressed,"menus_selectionPopUp_detailsButton");
                  if(!_loc5_)
                  {
                     §§push(this.m_detailsButton);
                     if(!_loc5_)
                     {
                        §§push(_loc1_);
                        if(_loc4_ || Boolean(this))
                        {
                           §§pop().x = §§pop();
                           addr70:
                           §§push(this.m_detailsButton);
                           §§push(_loc2_);
                        }
                        §§pop().y = §§pop() + _loc3_ * 0;
                        if(!(_loc5_ && Boolean(this)))
                        {
                           this.m_background.addChild(this.m_detailsButton);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              this.m_skillTreeButton = new TCButton(this.SkillTreeButtonHasBeenPressed,"menus_selectionPopUp_skillsTreeButton");
                           }
                           §§push(this.m_skillTreeButton);
                           if(!_loc5_)
                           {
                              §§push(_loc1_);
                              if(!(_loc5_ && Boolean(_loc1_)))
                              {
                                 §§pop().x = §§pop();
                                 addr205:
                                 if(_loc4_)
                                 {
                                    addr119:
                                    §§push(this.m_skillTreeButton);
                                    §§push(_loc2_);
                                 }
                                 this.m_unspentTalentPointsPopup.y = 48;
                                 this.m_background.addChild(this.m_unspentTalentPointsPopup);
                                 this.m_gemPopup = new TutorialPopup();
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr225);
                                 }
                                 §§goto(addr269);
                              }
                              §§pop().y = §§pop() + _loc3_ * 1;
                              if(!_loc5_)
                              {
                                 this.m_background.addChild(this.m_skillTreeButton);
                              }
                              this.m_cancelButton = new TCButton(this.CancelButtonHasBeenPressed,"menus_selectionPopUp_cancelButton");
                              if(!(_loc5_ && Boolean(_loc1_)))
                              {
                                 §§push(this.m_cancelButton);
                                 if(_loc4_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc4_)
                                    {
                                       §§pop().x = §§pop();
                                       addr163:
                                       §§push(this.m_cancelButton);
                                       §§push(105);
                                    }
                                    §§pop().y = §§pop();
                                    this.m_background.addChild(this.m_cancelButton);
                                    this.m_unspentTalentPointsPopup = new TutorialPopup();
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       §§push(this.m_unspentTalentPointsPopup);
                                       if(_loc4_ || Boolean(_loc1_))
                                       {
                                          §§pop().Create("tutorial_newTalentPointsPopup_side");
                                          §§push(this.m_unspentTalentPointsPopup);
                                          if(_loc4_ || Boolean(this))
                                          {
                                             addr201:
                                             §§push(-92);
                                             if(_loc4_)
                                             {
                                                §§pop().x = §§pop();
                                             }
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr269);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr119);
                        }
                        addr225:
                        §§push(this.m_gemPopup);
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           §§pop().Create("tutorial_firstGem_side");
                           if(!_loc5_)
                           {
                              addr238:
                              §§push(this.m_gemPopup);
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 §§goto(addr254);
                              }
                              §§goto(addr260);
                           }
                           §§goto(addr269);
                        }
                        addr254:
                        §§push(-37);
                        if(_loc4_)
                        {
                           §§pop().x = §§pop();
                           addr260:
                           §§push(this.m_gemPopup);
                           §§push(11);
                        }
                        §§pop().y = §§pop();
                        this.m_background.addChild(this.m_gemPopup);
                        if(_loc4_)
                        {
                           addr269:
                           this.m_background.visible = false;
                        }
                        return;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr205);
               }
               §§goto(addr40);
            }
            §§goto(addr44);
         }
         §§goto(addr40);
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_currMinion = param1;
            this.m_background.x = 0;
            this.m_background.y = 0;
            TweenLite.killTweensOf(this.m_background);
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
            if(!_loc3_)
            {
               if(param1.m_availableTalentPoints > 0)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.m_unspentTalentPointsPopup);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(true);
                        if(_loc2_ || Boolean(param1))
                        {
                           §§pop().visible = §§pop();
                        }
                        else
                        {
                           addr80:
                           §§pop().visible = §§pop();
                        }
                        §§push(Singleton.dynamicData);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(TutorialTypes.TUTORIAL_GEMS);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(!§§pop());
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop();
                                          addr118:
                                          §§push(Singleton.dynamicData.GetOwnedGemAt(0) == null);
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr128:
                                             §§push(!§§pop());
                                          }
                                       }
                                       §§goto(addr128);
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr144:
                                          §§push(this.m_gemPopup);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(true);
                                             if(_loc2_)
                                             {
                                                §§pop().visible = §§pop();
                                                if(!_loc3_)
                                                {
                                                   addr159:
                                                }
                                             }
                                             else
                                             {
                                                addr163:
                                                §§pop().visible = §§pop();
                                             }
                                             return;
                                          }
                                          addr162:
                                          §§push(false);
                                          §§goto(addr163);
                                       }
                                       §§goto(addr159);
                                    }
                                    else
                                    {
                                       §§push(this.m_gemPopup);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr128);
                           }
                        }
                        §§goto(addr118);
                     }
                     else
                     {
                        addr79:
                        §§push(false);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr144);
               }
               else
               {
                  §§push(this.m_unspentTalentPointsPopup);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr144);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimation(this.m_background);
         }
      }
      
      private function DetailsButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.ExitOut();
            if(!(_loc3_ && Boolean(param1)))
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.AnimateToMinionDetials();
               if(!_loc3_)
               {
                  if(this.m_currMinion == Singleton.dynamicData.GetOwnedMinionAt(0))
                  {
                     if(_loc2_)
                     {
                        addr61:
                        this.FinishBringingInTheDetails();
                        if(!_loc3_)
                        {
                           addr65:
                        }
                     }
                     §§goto(addr65);
                  }
                  else
                  {
                     TweenLite.to(this,0.4,{"onComplete":this.FinishBringingInTheDetails});
                  }
                  return;
               }
               §§goto(addr61);
            }
            §§goto(addr65);
         }
         §§goto(addr61);
      }
      
      private function FinishBringingInTheDetails() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Singleton.utility);
            if(!_loc2_)
            {
               §§push(§§pop().m_screenControllers);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop().m_topDownScreen);
                  if(!_loc2_)
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(_loc1_ || _loc1_)
                     {
                        §§pop().m_minionDetailsScreen.BringIn(this.m_currMinion);
                        §§goto(addr71);
                     }
                     §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_STATS;
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr67);
         }
         addr71:
         if(_loc1_ || Boolean(this))
         {
            addr67:
            §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
         }
      }
      
      private function SkillTreeButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.ExitOut();
            if(!_loc3_)
            {
               §§push(Singleton.utility);
               if(_loc2_ || Boolean(param1))
               {
                  §§push(§§pop().m_screenControllers);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(_loc2_)
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(_loc2_)
                        {
                           §§pop().m_minionSelectMenu.ExitOut();
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Singleton.utility);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().m_screenControllers);
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr70:
                                    §§push(§§pop().m_topDownScreen);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§§pop().m_topDownMenuScreen);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§goto(addr86);
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr114);
                              }
                           }
                           §§goto(addr130);
                        }
                        addr86:
                        §§pop().ApplyMenuExitOutAnimationJustFade(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(Singleton.utility);
                           if(_loc2_)
                           {
                              §§push(§§pop().m_screenControllers);
                              if(!_loc3_)
                              {
                                 addr114:
                                 §§push(§§pop().m_topDownScreen);
                                 if(_loc2_)
                                 {
                                    addr117:
                                    §§push(§§pop().m_topDownMenuScreen);
                                    if(!_loc3_)
                                    {
                                       addr120:
                                       §§pop().m_talentTreeScreen.BringIn(this.m_currMinion);
                                       §§goto(addr134);
                                    }
                                    §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_TALENT_TREE;
                                    §§goto(addr134);
                                 }
                              }
                           }
                           §§goto(addr130);
                        }
                        addr134:
                        if(!_loc3_)
                        {
                           addr130:
                           §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
                        }
                        return;
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr70);
               }
               §§goto(addr130);
            }
            §§goto(addr120);
         }
         §§goto(addr130);
      }
      
      private function SwitchButtonHasBeenPressed(param1:MouseEvent) : void
      {
      }
      
      private function CancelButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.ExitOut();
            if(!(_loc2_ && _loc2_))
            {
               addr25:
               §§push(Singleton.utility);
               if(!_loc2_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(_loc3_)
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(!_loc2_)
                        {
                           §§pop().m_minionSelectMenu.BringBackInFromMinionOptions();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr71:
                              Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
                           }
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr71);
         }
         §§goto(addr25);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_detailsButton.m_isActive = true;
            if(_loc1_)
            {
               this.m_skillTreeButton.m_isActive = true;
               if(_loc1_)
               {
                  this.m_cancelButton.m_isActive = true;
               }
            }
         }
      }
   }
}
