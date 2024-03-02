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
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("mainMenu_credits_background");
         addChild(this.m_background);
         this.m_returnButton = new TCButton(this.ExitOut,"mainMenu_credits_returnButton");
         this.m_returnButton.x = 281;
         this.m_returnButton.y = 436;
         addChild(this.m_returnButton);
         visible = false;
      }
      
      public function BringIn() : void
      {
         visible = true;
         alpha = 0;
         TweenLite.to(this,0.7,{
            "alpha":1,
            "y":"50"
         });
      }
      
      public function ExitOut(param1:MouseEvent = null) : void
      {
         TweenLite.to(this,0.7,{
            "alpha":0,
            "y":"-50",
            "onComplete":this.FinishExitOut
         });
         Singleton.utility.m_screenControllers.m_mainMenuScreen.BringBackInCreditsButton();
      }
      
      public function FinishExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_mainMenuScreen.m_currState = MainMenuStates.MAIN_MENU_TITLE_SCREEN;
         visible = false;
      }
      
      public function Update() : void
      {
         if(alpha == 1)
         {
            this.m_returnButton.m_isActive = true;
         }
      }
   }
}
