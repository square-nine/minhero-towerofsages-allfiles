package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.TalentTree.TalentTreeControllerScreen;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import flash.events.MouseEvent;
   
   public class TopDownTalentTreeWrapper extends GameObject
   {
       
      
      private var m_returnButton:TCButton;
      
      private var m_talentTreeControllerScreen:TalentTreeControllerScreen;
      
      public function TopDownTalentTreeWrapper()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!_loc1_)
            {
               this.m_talentTreeControllerScreen = new TalentTreeControllerScreen();
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         §§push(this.m_returnButton);
         if(_loc2_)
         {
            §§push(2);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().x = §§pop();
               addr43:
               §§push(this.m_returnButton);
               §§push(356);
            }
            §§pop().y = §§pop();
            addChild(this.m_returnButton);
            if(_loc2_ || _loc1_)
            {
               this.m_talentTreeControllerScreen.LoadSprites();
               if(!(_loc1_ && _loc2_))
               {
                  addChild(this.m_talentTreeControllerScreen);
               }
               this.visible = false;
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
            if(_loc3_)
            {
               addr25:
               this.m_talentTreeControllerScreen.BringIn(param1);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
            if(!(_loc2_ && _loc1_))
            {
               addr36:
               this.m_talentTreeControllerScreen.ExitOut();
            }
            return;
         }
         §§goto(addr36);
      }
      
      private function ReturnButtonPressed(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.ExitOut();
            if(!_loc2_)
            {
               §§push(Singleton.utility);
               if(_loc3_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(_loc3_)
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop().m_minionSelectMenu.BringIn();
                           §§goto(addr74);
                        }
                        §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
                        §§goto(addr74);
                     }
                  }
               }
            }
            §§goto(addr70);
         }
         addr74:
         if(!(_loc2_ && Boolean(this)))
         {
            addr70:
            §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.UpdateFullFrames();
            if(!(_loc2_ && _loc2_))
            {
               this.m_talentTreeControllerScreen.UpdateFullFrames();
               if(_loc1_ || Boolean(this))
               {
               }
               §§goto(addr45);
            }
            this.m_returnButton.m_isActive = true;
         }
         addr45:
      }
   }
}
