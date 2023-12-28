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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.LoadSprites();
            if(!(_loc2_ && _loc2_))
            {
               this.m_sponsorButton = new TCButton(this.GotoSponsorWebsite,"mainMenu_titleScreen_sponsorLogo");
               if(_loc1_)
               {
                  §§push(this.m_sponsorButton);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(255);
                     if(!_loc2_)
                     {
                        §§pop().x = §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           addr75:
                           this.m_sponsorButton.y = 130;
                           if(!_loc2_)
                           {
                              addChild(this.m_sponsorButton);
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr75);
      }
      
      public function GotoSponsorWebsite(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:URLRequest = new URLRequest("http://sogood.com/");
         if(!(_loc3_ && Boolean(param1)))
         {
            navigateToURL(_loc2_,"_self");
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.UpdateFullFrames();
            if(_loc1_ || _loc2_)
            {
               this.m_sponsorButton.m_isActive = true;
            }
         }
      }
   }
}
