package SharedObjects.TalentTree
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class TalentTreeControllerScreen extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_buttonsBackground:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_resetModeButton:TCButton;
      
      private var m_simpleModeButton:TCButton;
      
      private var m_advancedModeButton:TCButton;
      
      private var m_talentSpecailizationScreen:TalentSpecailizationScreen;
      
      private var m_talentTreeAdvancedModeScreen:TalentTreeAdvancedModeScreen;
      
      private var m_closeOutFunction:Function;
      
      public function TalentTreeControllerScreen()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_background");
            this.m_background.x = 17;
            if(!_loc1_)
            {
               this.m_background.y = 20;
               if(_loc2_ || _loc1_)
               {
                  addr45:
                  addChild(this.m_background);
                  if(!_loc1_)
                  {
                     this.m_buttonsBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_buttonBackground");
                     if(_loc2_ || _loc1_)
                     {
                        this.m_buttonsBackground.x = 262;
                        this.m_buttonsBackground.y = 340;
                        if(_loc2_)
                        {
                           addChild(this.m_buttonsBackground);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              this.m_simpleModeButton = new TCButton(this.SimpleModeButtonPressed,"menus_skillTree_simpleButton");
                              §§push(this.m_simpleModeButton);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(275);
                                 if(_loc2_)
                                 {
                                    §§pop().x = §§pop();
                                    addr128:
                                    §§push(this.m_simpleModeButton);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(351);
                                    }
                                    §§pop().alpha = 0.3;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addChild(this.m_simpleModeButton);
                                       this.m_advancedModeButton = new TCButton(this.SimpleModeButtonPressed,"menus_skillTree_advancedButton");
                                       §§push(this.m_advancedModeButton);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§push(275);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §§pop().x = §§pop();
                                             addr177:
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                addr175:
                                                §§push(this.m_advancedModeButton);
                                                §§push(351);
                                             }
                                             addChild(this.m_advancedModeButton);
                                             if(!_loc1_)
                                             {
                                                this.m_resetModeButton = new TCButton(this.ResetButtonPressed,"menus_skillTree_resetButton");
                                                §§push(this.m_resetModeButton);
                                                if(!_loc1_)
                                                {
                                                   §§push(276);
                                                   if(_loc2_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr200:
                                                      §§push(this.m_resetModeButton);
                                                      §§push(361);
                                                   }
                                                   §§pop().y = §§pop();
                                                   addChild(this.m_resetModeButton);
                                                   if(_loc2_)
                                                   {
                                                      addr208:
                                                      this.m_talentSpecailizationScreen = new TalentSpecailizationScreen(this.SetTreeToSpecializationAndRefreshTheTalentTree);
                                                      addr214:
                                                      this.m_talentSpecailizationScreen.LoadSprites();
                                                      addChild(this.m_talentSpecailizationScreen);
                                                      addr228:
                                                      this.m_talentTreeAdvancedModeScreen = new TalentTreeAdvancedModeScreen(this.RefreshTalentTree);
                                                      if(!_loc1_)
                                                      {
                                                         addr236:
                                                         this.m_talentTreeAdvancedModeScreen.LoadSprites();
                                                         if(_loc2_)
                                                         {
                                                            addr241:
                                                            addChild(this.m_talentTreeAdvancedModeScreen);
                                                         }
                                                      }
                                                      addr245:
                                                      this.visible = false;
                                                      return;
                                                      addr217:
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr236);
                                          }
                                          §§pop().y = §§pop();
                                          §§goto(addr177);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§pop().y = §§pop();
                                 if(!_loc1_)
                                 {
                                    §§goto(addr128);
                                    §§push(this.m_simpleModeButton);
                                 }
                                 §§goto(addr245);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr177);
               }
               §§goto(addr217);
            }
            §§goto(addr208);
         }
         §§goto(addr45);
      }
      
      public function BringIn(param1:OwnedMinion, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.visible = true;
         if(_loc4_)
         {
            this.m_talentSpecailizationScreen.visible = false;
            if(!(_loc3_ && _loc3_))
            {
               this.m_talentTreeAdvancedModeScreen.visible = false;
               if(!(_loc3_ && _loc3_))
               {
                  addr55:
                  this.m_currMinion = param1;
               }
               this.m_closeOutFunction = param2;
               this.SetTreeToSpecializationAndRefreshTheTalentTree();
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function SetTreeToSpecializationAndRefreshTheTalentTree() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_talentTreeAdvancedModeScreen.SetTabToCurrentSpecialization(this.m_currMinion);
            if(!_loc1_)
            {
               this.RefreshTalentTree();
            }
         }
      }
      
      public function RefreshTalentTree() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.m_currMinion);
            if(_loc1_)
            {
               §§push(§§pop().m_maxTalentPoints);
               if(!_loc2_)
               {
                  §§push(this.m_currMinion.m_availableTalentPoints);
                  if(!_loc2_)
                  {
                     if(§§pop() == §§pop())
                     {
                        this.m_talentSpecailizationScreen.BringIn(this.m_currMinion);
                        if(_loc1_)
                        {
                           §§push(this.m_resetModeButton);
                           if(!_loc2_)
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 §§pop().visible = §§pop();
                                 §§push(this.m_simpleModeButton);
                                 if(!_loc2_)
                                 {
                                    §§push(false);
                                    if(_loc1_)
                                    {
                                       §§pop().visible = §§pop();
                                       addr56:
                                       §§push(this.m_advancedModeButton);
                                       if(!_loc2_)
                                       {
                                          §§push(false);
                                          if(!_loc2_)
                                          {
                                             §§pop().visible = §§pop();
                                             this.m_buttonsBackground.visible = false;
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr173:
                                                §§push(this.m_closeOutFunction);
                                                if(_loc1_ || Boolean(this))
                                                {
                                                   §§push(§§pop() == null);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§pop();
                                                               if(_loc1_)
                                                               {
                                                                  addr218:
                                                                  if(this.m_currMinion.m_availableTalentPoints == 0)
                                                                  {
                                                                     addr221:
                                                                     this.m_closeOutFunction.call();
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr218);
                                                }
                                             }
                                             §§goto(addr221);
                                          }
                                          else
                                          {
                                             addr144:
                                             §§pop().visible = §§pop();
                                             this.m_buttonsBackground.visible = true;
                                          }
                                          §§goto(addr173);
                                       }
                                       else
                                       {
                                          addr136:
                                          §§push(false);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§goto(addr144);
                                          }
                                          else
                                          {
                                             addr161:
                                             §§pop().visible = §§pop();
                                             this.m_buttonsBackground.visible = true;
                                             this.m_talentTreeAdvancedModeScreen.BringIn(this.m_currMinion);
                                             if(_loc1_)
                                             {
                                                §§goto(addr173);
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                    }
                                    else
                                    {
                                       addr124:
                                       §§pop().visible = §§pop();
                                       if(_loc1_)
                                       {
                                          §§push(this.m_advancedModeButton);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§goto(addr136);
                                          }
                                          else
                                          {
                                             addr160:
                                             §§push(false);
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr144);
                                 }
                                 else
                                 {
                                    addr121:
                                    §§push(false);
                                    if(_loc1_)
                                    {
                                       §§goto(addr124);
                                    }
                                    else
                                    {
                                       addr157:
                                       §§pop().visible = §§pop();
                                       §§push(this.m_advancedModeButton);
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              else
                              {
                                 addr153:
                                 §§pop().visible = §§pop();
                                 addr156:
                                 §§push(this.m_simpleModeButton);
                                 §§push(false);
                              }
                              §§goto(addr157);
                           }
                           else
                           {
                              addr96:
                              §§push(true);
                              if(_loc1_ || _loc1_)
                              {
                                 §§pop().visible = §§pop();
                                 §§push(this.m_simpleModeButton);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr121);
                                 }
                                 else
                                 {
                                    §§goto(addr156);
                                 }
                              }
                              else
                              {
                                 §§goto(addr153);
                              }
                              §§goto(addr153);
                           }
                        }
                        §§goto(addr153);
                     }
                     else
                     {
                        §§push(Singleton.dynamicData.m_isTalentTreeInSimpleMode);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              §§push(this.m_resetModeButton);
                              if(_loc1_ || _loc2_)
                              {
                                 §§goto(addr96);
                              }
                              else
                              {
                                 addr152:
                                 §§push(true);
                              }
                              §§goto(addr153);
                           }
                           else
                           {
                              §§push(this.m_resetModeButton);
                           }
                           §§goto(addr152);
                        }
                     }
                  }
               }
            }
            §§goto(addr218);
         }
         §§goto(addr56);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.m_talentSpecailizationScreen);
            if(_loc2_)
            {
               if(§§pop().visible)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr50:
                     this.m_talentSpecailizationScreen.ExitOut();
                     if(!(_loc1_ && _loc2_))
                     {
                        addr58:
                     }
                  }
                  §§goto(addr58);
               }
               else if(Singleton.dynamicData.m_isTalentTreeInSimpleMode)
               {
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  this.m_talentTreeAdvancedModeScreen.CleanUp();
               }
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr58);
      }
      
      public function ResetButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.m_currMinion.ResetMoves();
            if(!(_loc3_ && Boolean(this)))
            {
               if(Singleton.dynamicData.m_isTalentTreeInSimpleMode)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr78:
                     this.RefreshTalentTree();
                  }
               }
               else
               {
                  §§push(this.m_talentTreeAdvancedModeScreen);
                  if(!_loc3_)
                  {
                     §§pop().ExitOut();
                     if(_loc2_ || _loc3_)
                     {
                        §§push(this.m_talentTreeAdvancedModeScreen);
                     }
                     §§goto(addr78);
                  }
                  §§pop().CleanUp();
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr78);
                  }
               }
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function SimpleModeButtonPressed(param1:MouseEvent) : void
      {
      }
      
      public function AdvancedModeButtonPressed(param1:MouseEvent) : void
      {
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.UpdateFullFrames();
         if(_loc1_)
         {
            §§push(this.m_talentSpecailizationScreen);
            if(_loc1_ || _loc2_)
            {
               if(§§pop().visible)
               {
                  addr37:
                  this.m_talentSpecailizationScreen.UpdateFullFrames();
               }
               else
               {
                  this.m_resetModeButton.m_isActive = true;
                  if(!_loc2_)
                  {
                     if(!Singleton.dynamicData.m_isTalentTreeInSimpleMode)
                     {
                        this.m_talentTreeAdvancedModeScreen.UpdateFullFrames();
                     }
                     §§goto(addr53);
                  }
               }
               addr53:
               return;
            }
         }
         §§goto(addr37);
      }
   }
}
