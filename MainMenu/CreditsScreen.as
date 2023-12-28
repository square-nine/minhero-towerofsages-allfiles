package MainMenu
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.MainMenuStates;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class CreditsScreen extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_returnButton:TCButton;
      
      public function CreditsScreen()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_credits_background");
         if(_loc2_ || _loc2_)
         {
            addChild(this.m_background);
            this.m_returnButton = new TCButton(this.ExitOut,"mainMenu_credits_returnButton");
            if(_loc2_)
            {
               §§push(this.m_returnButton);
               if(!_loc1_)
               {
                  §§push(281);
                  if(!_loc1_)
                  {
                     §§pop().x = §§pop();
                     addr65:
                     §§push(this.m_returnButton);
                     §§push(436);
                  }
                  §§pop().y = §§pop();
                  §§goto(addr67);
               }
               §§goto(addr65);
            }
            addr67:
            addChild(this.m_returnButton);
            if(_loc2_)
            {
               visible = false;
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            visible = true;
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr45);
            }
            §§goto(addr55);
         }
         addr45:
         alpha = 0;
         if(!(_loc1_ && _loc1_))
         {
            addr55:
            TweenLite.to(this,0.7,{
               "alpha":1,
               "y":"50"
            });
         }
      }
      
      public function ExitOut(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            TweenLite.to(this,0.7,{
               "alpha":0,
               "y":"-50",
               "onComplete":this.FinishExitOut
            });
            if(_loc3_)
            {
               addr37:
               Singleton.utility.m_screenControllers.m_mainMenuScreen.BringBackInCreditsButton();
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function FinishExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            Singleton.utility.m_screenControllers.m_mainMenuScreen.m_currState = MainMenuStates.MAIN_MENU_TITLE_SCREEN;
            if(_loc2_)
            {
               visible = false;
            }
         }
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(alpha == 1)
            {
               if(_loc1_ || Boolean(this))
               {
                  this.m_returnButton.m_isActive = true;
               }
            }
         }
      }
   }
}
