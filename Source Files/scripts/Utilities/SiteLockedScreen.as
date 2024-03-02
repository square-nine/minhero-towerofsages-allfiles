package Utilities
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseScreen;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class SiteLockedScreen extends BaseScreen
   {
       
      
      public var m_sponsorButton:TCButton;
      
      public function SiteLockedScreen()
      {
         super();
      }
      
      override public function LoadSprites() : void
      {
         super.LoadSprites();
         this.m_sponsorButton = new TCButton(this.GotoSponsorWebsite,"mainMenu_titleScreen_sponsorLogo");
         this.m_sponsorButton.x = 255;
         this.m_sponsorButton.y = 130;
         addChild(this.m_sponsorButton);
      }
      
      public function GotoSponsorWebsite(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest("http://sogood.com/");
         navigateToURL(_loc2_,"_self");
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_sponsorButton.m_isActive = true;
      }
   }
}
