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
         super();
         this.m_talentTreeControllerScreen = new TalentTreeControllerScreen();
      }
      
      public function LoadSprites() : void
      {
         this.m_backgroundNormalSize = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
         addChild(this.m_backgroundNormalSize);
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         this.m_returnButton.x = 2;
         this.m_returnButton.y = 356;
         addChild(this.m_returnButton);
         this.m_talentTreeControllerScreen.LoadSprites();
         addChild(this.m_talentTreeControllerScreen);
         this.visible = false;
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         this.m_isAnimationFinished = false;
         this.PlayWhooshSound();
         this.m_talentTreeControllerScreen.BringIn(param1,this.ReturnButtonPressed);
         scaleX = 0.18;
         scaleY = 0.18;
         var _loc2_:BattleScreenMinionVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(param1);
         x = _loc2_.x - _loc2_.m_minionSprite.x;
         y = _loc2_.y + _loc2_.m_minionSprite.y;
         visible = true;
         alpha = 0;
         var _loc3_:TimelineLite = new TimelineLite();
         _loc3_.append(new TweenLite(this,0.3,{"alpha":1}));
         _loc3_.append(new TweenLite(this,0.6,{"y":-90}));
         _loc3_.append(new TweenLite(this,0.1,{"y":-420}));
         _loc3_.append(new TweenLite(this,0.1,{
            "scaleY":1,
            "scaleX":1,
            "onComplete":this.PlayWhooshSound
         }));
         _loc3_.append(new TweenLite(this,0.1,{"x":177}));
         _loc3_.append(new TweenLite(this,1.2,{
            "y":30,
            "onComplete":this.FinishBringInAnimation
         }));
      }
      
      private function FinishBringInAnimation() : void
      {
         this.m_isAnimationFinished = true;
      }
      
      private function PlayWhooshSound() : void
      {
         Singleton.utility.m_soundController.PlaySound("battle_whoosh");
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         this.m_talentTreeControllerScreen.ExitOut();
      }
      
      private function ReturnButtonPressed(param1:MouseEvent = null) : void
      {
         this.ExitOut();
         if(Singleton.utility.m_screenControllers.m_battleScreen.m_currState == BattleScreenStates.BSS_VICTORY_MENUS)
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_winScreen.ExitTalentPointScreen();
         }
         else
         {
            Singleton.utility.m_screenControllers.m_battleScreen.m_loseScreen.ExitTalentPointScreen();
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         if(!this.m_isAnimationFinished)
         {
            return;
         }
         this.m_talentTreeControllerScreen.UpdateFullFrames();
         this.m_returnButton.m_isActive = true;
      }
   }
}
