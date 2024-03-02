package BattleSystems.Visuals
{
   import BattleSystems.Visuals.Backgrounds.BattleBackground;
   import BattleSystems.Visuals.BattleMods.ExtraMinionsModVisuals;
   import BattleSystems.Visuals.BattleMods.MoveTimerModVisuals;
   import BattleSystems.Visuals.BattleMods.ResurectionModVisuals;
   import BattleSystems.Visuals.BattleMods.ShieldModVisuals;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.BattleScreenViualControllerStates;
   import States.TutorialTypes;
   import Utilities.RectangleCollisionList;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BattleScreenVisualController
   {
       
      
      private var m_currBackground:BattleBackground;
      
      private var m_minionsTurnIndicator:Sprite;
      
      public var m_visualImpactsForMinionsForPlayer:Vector.<Vector.<Sprite>>;
      
      public var m_visualImpactsForMinionsForOpponent:Vector.<Vector.<Sprite>>;
      
      public var m_visualMinionsForPlayer:Vector.<BattleScreenMinionVisual>;
      
      public var m_visualMinionsForOpponent:Vector.<BattleScreenMinionVisual>;
      
      private var m_greyedOutLayer:Sprite;
      
      private const m_greyedOutAmount:Number = 0.55;
      
      public var m_visualMinionsForPlayerOverGrey:Vector.<BattleScreenMinionVisual>;
      
      public var m_visualMinionsForOpponentOverGrey:Vector.<BattleScreenMinionVisual>;
      
      private var m_mousePointObject:Sprite;
      
      private var m_selectedMinion:OwnedMinion;
      
      private var m_currMinionWeAreGettingAMoveFor:OwnedMinion;
      
      private var m_currBattleScreenMinionVisualObject:BattleScreenMinionVisual;
      
      public var m_currState:int;
      
      public var m_collList:RectangleCollisionList;
      
      private var m_movesSelectButton:TCButton;
      
      private var m_flash:Sprite;
      
      public var m_shieldMod:ShieldModVisuals;
      
      public var m_moveTimerMod:MoveTimerModVisuals;
      
      public var m_extraMinionsMod:ExtraMinionsModVisuals;
      
      public var m_resurectionMod:ResurectionModVisuals;
      
      public var m_tombstoneSprites:Vector.<Sprite>;
      
      public var m_tombstoneCountTexts:Vector.<TextField>;
      
      public var m_moveSelectTutorial:Sprite;
      
      public var m_opponentSelectTutorial:Sprite;
      
      public var m_selectMinionTutorial:Sprite;
      
      public var m_deselectMinionTutorial:Sprite;
      
      public var m_spaceToSkipTutorial:Sprite;
      
      public function BattleScreenVisualController()
      {
         super();
         this.m_currBackground = new BattleBackground();
         this.m_visualMinionsForOpponent = new Vector.<BattleScreenMinionVisual>(5);
         this.m_visualMinionsForPlayer = new Vector.<BattleScreenMinionVisual>(5);
         this.m_visualMinionsForOpponentOverGrey = new Vector.<BattleScreenMinionVisual>(5);
         this.m_visualMinionsForPlayerOverGrey = new Vector.<BattleScreenMinionVisual>(5);
         this.m_currState = BattleScreenViualControllerStates.BSVCS_NOT_ACTIVE;
      }
      
      public function BringInGroundDamageForMinion(param1:OwnedMinion, param2:int) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_) == param1)
            {
               TweenLite.to(this.m_visualImpactsForMinionsForPlayer[_loc3_][param2],0.7,{
                  "delay":0.15,
                  "alpha":1
               });
            }
            if(Singleton.dynamicData.m_opponentsMinions[_loc3_] == param1)
            {
               TweenLite.to(this.m_visualImpactsForMinionsForOpponent[_loc3_][param2],0.7,{
                  "delay":0.15,
                  "alpha":1
               });
            }
            _loc3_++;
         }
      }
      
      public function LoadSprites(param1:Sprite) : void
      {
         var _loc7_:Vector.<Sprite> = null;
         var _loc8_:Vector.<Sprite> = null;
         var _loc9_:int = 0;
         this.m_currBackground.AddBackground(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc2_] = new BattleScreenMinionVisual();
            this.m_visualMinionsForPlayer[_loc2_] = new BattleScreenMinionVisual();
            _loc2_++;
         }
         this.m_visualMinionsForOpponent[0].x = 424;
         this.m_visualMinionsForOpponent[0].y = 260;
         this.m_visualMinionsForOpponent[1].x = 520;
         this.m_visualMinionsForOpponent[1].y = 347;
         this.m_visualMinionsForOpponent[2].x = 450;
         this.m_visualMinionsForOpponent[2].y = 463;
         this.m_visualMinionsForOpponent[3].x = 614;
         this.m_visualMinionsForOpponent[3].y = 278;
         this.m_visualMinionsForOpponent[4].x = 618;
         this.m_visualMinionsForOpponent[4].y = 434;
         this.m_visualMinionsForPlayer[0].x = 289;
         this.m_visualMinionsForPlayer[0].y = 260;
         this.m_visualMinionsForPlayer[1].x = 209;
         this.m_visualMinionsForPlayer[1].y = 347;
         this.m_visualMinionsForPlayer[2].x = 287;
         this.m_visualMinionsForPlayer[2].y = 463;
         this.m_visualMinionsForPlayer[3].x = 99;
         this.m_visualMinionsForPlayer[3].y = 280;
         this.m_visualMinionsForPlayer[4].x = 115;
         this.m_visualMinionsForPlayer[4].y = 439;
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc2_].y += 34;
            this.m_visualMinionsForPlayer[_loc2_].y += 34;
            _loc2_++;
         }
         var _loc3_:Array = [50,60,66,53];
         var _loc4_:Array = [30,45,44,38];
         this.m_visualImpactsForMinionsForPlayer = new Vector.<Vector.<Sprite>>(5);
         this.m_visualImpactsForMinionsForOpponent = new Vector.<Vector.<Sprite>>(5);
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc7_ = new Vector.<Sprite>(4);
            _loc8_ = new Vector.<Sprite>(4);
            _loc9_ = 0;
            while(_loc9_ < 4)
            {
               _loc7_[_loc9_] = Singleton.utility.m_spriteHandler.CreateSprite("groundCrack_" + (_loc9_ + 1));
               _loc7_[_loc9_].x = this.m_visualMinionsForPlayer[_loc5_].x + _loc3_[_loc9_];
               _loc7_[_loc9_].y = this.m_visualMinionsForPlayer[_loc5_].y - _loc4_[_loc9_];
               _loc7_[_loc9_].scaleX = -1;
               _loc7_[_loc9_].alpha = 0;
               param1.addChild(_loc7_[_loc9_]);
               _loc8_[_loc9_] = Singleton.utility.m_spriteHandler.CreateSprite("groundCrack_" + (_loc9_ + 1));
               _loc8_[_loc9_].x = this.m_visualMinionsForOpponent[_loc5_].x - _loc3_[_loc9_];
               _loc8_[_loc9_].y = this.m_visualMinionsForOpponent[_loc5_].y - _loc4_[_loc9_];
               _loc8_[_loc9_].alpha = 0;
               param1.addChild(_loc8_[_loc9_]);
               _loc9_++;
            }
            this.m_visualImpactsForMinionsForPlayer[_loc5_] = _loc7_;
            this.m_visualImpactsForMinionsForOpponent[_loc5_] = _loc8_;
            _loc5_++;
         }
         this.m_minionsTurnIndicator = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenCurrMinionsTurn");
         param1.addChild(this.m_minionsTurnIndicator);
         this.m_minionsTurnIndicator.alpha = 0;
         this.m_shieldMod = new ShieldModVisuals();
         this.m_shieldMod.x = 304;
         this.m_shieldMod.y = 119;
         this.m_shieldMod.LoadSprites();
         param1.addChild(this.m_shieldMod);
         this.m_moveTimerMod = new MoveTimerModVisuals();
         this.m_moveTimerMod.x = 304;
         this.m_moveTimerMod.y = 82;
         this.m_moveTimerMod.LoadSprites();
         param1.addChild(this.m_moveTimerMod);
         this.m_extraMinionsMod = new ExtraMinionsModVisuals();
         this.m_extraMinionsMod.x = 268;
         this.m_extraMinionsMod.y = 82;
         this.m_extraMinionsMod.LoadSprites();
         param1.addChild(this.m_extraMinionsMod);
         this.m_resurectionMod = new ResurectionModVisuals();
         this.m_resurectionMod.x = 319;
         this.m_resurectionMod.y = 123;
         this.m_resurectionMod.LoadSprites();
         param1.addChild(this.m_resurectionMod);
         this.m_tombstoneSprites = new Vector.<Sprite>(5);
         this.m_tombstoneCountTexts = new Vector.<TextField>(5);
         var _loc6_:TextFormat;
         (_loc6_ = new TextFormat()).color = 15066856;
         _loc6_.size = 28;
         _loc6_.font = "BurbinCasual";
         _loc6_.align = TextFormatAlign.CENTER;
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            this.m_tombstoneSprites[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("modStone_tombstone");
            param1.addChild(this.m_tombstoneSprites[_loc2_]);
            this.m_tombstoneSprites[_loc2_].x = this.m_visualMinionsForOpponent[_loc2_].x - this.m_tombstoneSprites[_loc2_].width / 2;
            this.m_tombstoneSprites[_loc2_].y = this.m_visualMinionsForOpponent[_loc2_].y - this.m_tombstoneSprites[_loc2_].height;
            this.m_tombstoneSprites[_loc2_].visible = false;
            this.m_tombstoneCountTexts[_loc2_] = new TextField();
            this.m_tombstoneCountTexts[_loc2_].x = 16;
            this.m_tombstoneCountTexts[_loc2_].y = 25;
            this.m_tombstoneCountTexts[_loc2_].embedFonts = true;
            this.m_tombstoneCountTexts[_loc2_].defaultTextFormat = _loc6_;
            this.m_tombstoneCountTexts[_loc2_].wordWrap = true;
            this.m_tombstoneCountTexts[_loc2_].autoSize = TextFieldAutoSize.CENTER;
            this.m_tombstoneCountTexts[_loc2_].text = "9";
            this.m_tombstoneCountTexts[_loc2_].width = 50;
            this.m_tombstoneCountTexts[_loc2_].selectable = false;
            this.m_tombstoneSprites[_loc2_].addChild(this.m_tombstoneCountTexts[_loc2_]);
            _loc2_++;
         }
         param1.addChild(this.m_visualMinionsForOpponent[0]);
         param1.addChild(this.m_visualMinionsForOpponent[3]);
         param1.addChild(this.m_visualMinionsForOpponent[1]);
         param1.addChild(this.m_visualMinionsForOpponent[4]);
         param1.addChild(this.m_visualMinionsForOpponent[2]);
         param1.addChild(this.m_visualMinionsForPlayer[0]);
         param1.addChild(this.m_visualMinionsForPlayer[3]);
         param1.addChild(this.m_visualMinionsForPlayer[1]);
         param1.addChild(this.m_visualMinionsForPlayer[4]);
         param1.addChild(this.m_visualMinionsForPlayer[2]);
         this.m_greyedOutLayer = new Sprite();
         this.m_greyedOutLayer.graphics.beginFill(0);
         this.m_greyedOutLayer.graphics.drawRect(0,0,700,525);
         this.m_greyedOutLayer.graphics.endFill();
         param1.addChild(this.m_greyedOutLayer);
         this.m_greyedOutLayer.alpha = 0;
         this.m_movesSelectButton = new TCButton(this.ReturnToMoves,"battleScreenMenus_movesDeselectButton");
         param1.addChild(this.m_movesSelectButton);
         this.m_movesSelectButton.visible = false;
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            this.m_visualMinionsForOpponentOverGrey[_loc2_] = new BattleScreenMinionVisual();
            this.m_visualMinionsForOpponentOverGrey[_loc2_].x = this.m_visualMinionsForOpponent[_loc2_].x;
            this.m_visualMinionsForOpponentOverGrey[_loc2_].y = this.m_visualMinionsForOpponent[_loc2_].y;
            this.m_visualMinionsForPlayerOverGrey[_loc2_] = new BattleScreenMinionVisual();
            this.m_visualMinionsForPlayerOverGrey[_loc2_].x = this.m_visualMinionsForPlayer[_loc2_].x;
            this.m_visualMinionsForPlayerOverGrey[_loc2_].y = this.m_visualMinionsForPlayer[_loc2_].y;
            _loc2_++;
         }
         param1.addChild(this.m_visualMinionsForOpponentOverGrey[0]);
         param1.addChild(this.m_visualMinionsForOpponentOverGrey[3]);
         param1.addChild(this.m_visualMinionsForOpponentOverGrey[1]);
         param1.addChild(this.m_visualMinionsForOpponentOverGrey[4]);
         param1.addChild(this.m_visualMinionsForOpponentOverGrey[2]);
         param1.addChild(this.m_visualMinionsForPlayerOverGrey[0]);
         param1.addChild(this.m_visualMinionsForPlayerOverGrey[3]);
         param1.addChild(this.m_visualMinionsForPlayerOverGrey[1]);
         param1.addChild(this.m_visualMinionsForPlayerOverGrey[4]);
         param1.addChild(this.m_visualMinionsForPlayerOverGrey[2]);
         this.m_mousePointObject = new Sprite();
         this.m_mousePointObject.graphics.beginFill(16777215,1);
         this.m_mousePointObject.graphics.drawRect(0,0,1,1);
         this.m_mousePointObject.graphics.endFill();
         param1.addChild(this.m_mousePointObject);
         this.m_mousePointObject.visible = false;
         this.m_moveSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_chooseAMove");
         this.m_moveSelectTutorial.x = 306;
         this.m_moveSelectTutorial.y = 33;
         param1.addChild(this.m_moveSelectTutorial);
         this.m_moveSelectTutorial.visible = false;
         this.m_opponentSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_chooseAnOpponetsMinion");
         this.m_opponentSelectTutorial.x = 465;
         this.m_opponentSelectTutorial.y = 122;
         param1.addChild(this.m_opponentSelectTutorial);
         this.m_opponentSelectTutorial.visible = false;
         this.m_selectMinionTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_selectYourMinion");
         this.m_selectMinionTutorial.x = 465;
         this.m_selectMinionTutorial.y = 122;
         param1.addChild(this.m_selectMinionTutorial);
         this.m_selectMinionTutorial.visible = false;
         this.m_deselectMinionTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_clickGroundToDeselectMinion");
         this.m_deselectMinionTutorial.x = 43;
         this.m_deselectMinionTutorial.y = 387;
         param1.addChild(this.m_deselectMinionTutorial);
         this.m_deselectMinionTutorial.visible = false;
         this.m_spaceToSkipTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_spaceToSkip");
         this.m_spaceToSkipTutorial.x = 8;
         this.m_spaceToSkipTutorial.y = 485;
         param1.addChild(this.m_spaceToSkipTutorial);
         this.m_spaceToSkipTutorial.visible = false;
         this.m_collList = new RectangleCollisionList(this.m_mousePointObject);
         this.m_flash = new Sprite();
         param1.addChild(this.m_flash);
         this.m_flash.visible = false;
         param1.addEventListener(MouseEvent.MOUSE_UP,this.reportClick);
      }
      
      public function ResetAllPositions() : void
      {
         var _loc5_:int = 0;
         this.m_visualMinionsForOpponent[0].x = 424;
         this.m_visualMinionsForOpponent[0].y = 260;
         this.m_visualMinionsForOpponent[1].x = 520;
         this.m_visualMinionsForOpponent[1].y = 347;
         this.m_visualMinionsForOpponent[2].x = 450;
         this.m_visualMinionsForOpponent[2].y = 463;
         this.m_visualMinionsForOpponent[3].x = 614;
         this.m_visualMinionsForOpponent[3].y = 278;
         this.m_visualMinionsForOpponent[4].x = 618;
         this.m_visualMinionsForOpponent[4].y = 434;
         this.m_visualMinionsForPlayer[0].x = 289;
         this.m_visualMinionsForPlayer[0].y = 260;
         this.m_visualMinionsForPlayer[1].x = 209;
         this.m_visualMinionsForPlayer[1].y = 347;
         this.m_visualMinionsForPlayer[2].x = 287;
         this.m_visualMinionsForPlayer[2].y = 463;
         this.m_visualMinionsForPlayer[3].x = 99;
         this.m_visualMinionsForPlayer[3].y = 280;
         this.m_visualMinionsForPlayer[4].x = 115;
         this.m_visualMinionsForPlayer[4].y = 439;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].y += 34;
            this.m_visualMinionsForPlayer[_loc1_].y += 34;
            _loc1_++;
         }
         var _loc2_:Array = [50,60,66,53];
         var _loc3_:Array = [30,45,44,38];
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            _loc5_ = 0;
            while(_loc5_ < 4)
            {
               this.m_visualImpactsForMinionsForPlayer[_loc4_][_loc5_].x = this.m_visualMinionsForPlayer[_loc4_].x + _loc2_[_loc5_];
               this.m_visualImpactsForMinionsForPlayer[_loc4_][_loc5_].y = this.m_visualMinionsForPlayer[_loc4_].y - _loc3_[_loc5_];
               this.m_visualImpactsForMinionsForOpponent[_loc4_][_loc5_].x = this.m_visualMinionsForOpponent[_loc4_].x - _loc2_[_loc5_];
               this.m_visualImpactsForMinionsForOpponent[_loc4_][_loc5_].y = this.m_visualMinionsForOpponent[_loc4_].y - _loc3_[_loc5_];
               _loc5_++;
            }
            _loc4_++;
         }
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            this.m_tombstoneSprites[_loc1_].x = this.m_visualMinionsForOpponent[_loc1_].x - this.m_tombstoneSprites[_loc1_].width / 2;
            this.m_tombstoneSprites[_loc1_].y = this.m_visualMinionsForOpponent[_loc1_].y - this.m_tombstoneSprites[_loc1_].height;
            this.m_tombstoneSprites[_loc1_].visible = false;
            this.m_tombstoneCountTexts[_loc1_].x = 16;
            this.m_tombstoneCountTexts[_loc1_].y = 25;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponentOverGrey[_loc1_].x = this.m_visualMinionsForOpponent[_loc1_].x;
            this.m_visualMinionsForOpponentOverGrey[_loc1_].y = this.m_visualMinionsForOpponent[_loc1_].y;
            this.m_visualMinionsForPlayerOverGrey[_loc1_].x = this.m_visualMinionsForPlayer[_loc1_].x;
            this.m_visualMinionsForPlayerOverGrey[_loc1_].y = this.m_visualMinionsForPlayer[_loc1_].y;
            _loc1_++;
         }
      }
      
      public function SetupVisuals() : void
      {
         var _loc3_:int = 0;
         this.ResetAllPositions();
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            _loc3_ = 0;
            while(_loc3_ < 4)
            {
               this.m_visualImpactsForMinionsForPlayer[_loc1_][_loc3_].alpha = 0;
               this.m_visualImpactsForMinionsForOpponent[_loc1_][_loc3_].alpha = 0;
               _loc3_++;
            }
            _loc1_++;
         }
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc2_] != null)
            {
               this.m_visualMinionsForOpponent[_loc2_].SetNewMinion(Singleton.dynamicData.m_opponentsMinions[_loc2_],false);
               this.m_visualMinionsForOpponentOverGrey[_loc2_].SetNewMinion(Singleton.dynamicData.m_opponentsMinions[_loc2_],false);
               this.m_visualMinionsForOpponentOverGrey[_loc2_].alpha = 0;
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) != null)
            {
               this.m_visualMinionsForPlayer[_loc2_].SetNewMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc2_),true);
               this.m_visualMinionsForPlayerOverGrey[_loc2_].SetNewMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc2_),true);
               this.m_visualMinionsForPlayerOverGrey[_loc2_].alpha = 0;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            this.m_tombstoneSprites[_loc2_].visible = false;
            _loc2_++;
         }
         this.m_spaceToSkipTutorial.visible = false;
         this.m_selectMinionTutorial.visible = false;
         this.m_shieldMod.CheckForActivation();
         this.m_moveTimerMod.CheckForActivation();
         this.m_extraMinionsMod.CheckForActivation();
         this.m_resurectionMod.CheckForActivation();
      }
      
      public function PlayIntroAnimation() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            TweenLite.to(this,1 + _loc1_ * 0.2,{"onComplete":this.m_visualMinionsForOpponent[_loc2_].AnimateIn});
            _loc1_++;
            TweenLite.to(this,1 + _loc1_ * 0.2,{"onComplete":this.m_visualMinionsForPlayer[_loc2_].AnimateIn});
            _loc1_++;
            _loc2_++;
         }
         TweenLite.to(this,0.8,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_whoosh_magic4",0.8]
         });
         this.m_currBackground.StartTheBringInAnimation();
      }
      
      public function UpdateMinionHealth() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].UpdateHealth();
            this.m_visualMinionsForOpponentOverGrey[_loc1_].UpdateHealth();
            this.m_visualMinionsForPlayer[_loc1_].UpdateHealth();
            this.m_visualMinionsForPlayerOverGrey[_loc1_].UpdateHealth();
            _loc1_++;
         }
      }
      
      public function UpdateMinionVisuals() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].UpdateVisuals();
            this.m_visualMinionsForOpponentOverGrey[_loc1_].UpdateVisuals();
            this.m_visualMinionsForPlayer[_loc1_].UpdateVisuals();
            this.m_visualMinionsForPlayerOverGrey[_loc1_].UpdateVisuals();
            _loc1_++;
         }
      }
      
      public function UpdateTombstoneVisuals(param1:int, param2:int) : void
      {
         this.m_tombstoneCountTexts[param1].text = "" + param2;
      }
      
      public function AnimateInTombstoneVisuals(param1:int) : void
      {
         if(!this.m_tombstoneSprites[param1].visible)
         {
            this.m_tombstoneSprites[param1].visible = true;
            this.m_tombstoneSprites[param1].alpha = 0;
            TweenLite.to(this.m_tombstoneSprites[param1],0.5,{"alpha":1});
         }
      }
      
      public function AnimateOutTombstoneVisuals(param1:int) : void
      {
         TweenLite.to(this.m_tombstoneSprites[param1],0.5,{
            "alpha":0,
            "onComplete":this.FinishAnimatingOutTombstone,
            "onCompleteParams":[param1]
         });
      }
      
      private function FinishAnimatingOutTombstone(param1:int) : void
      {
         this.m_tombstoneSprites[param1].visible = false;
      }
      
      public function Update() : void
      {
         this.m_currBackground.Update();
         if(this.m_currState == BattleScreenViualControllerStates.BSVCS_GETTING_MOVE)
         {
            if(this.m_currBattleScreenMinionVisualObject != null && this.m_selectedMinion == this.m_currMinionWeAreGettingAMoveFor)
            {
               this.m_currBattleScreenMinionVisualObject.UpdateFullFrames();
            }
         }
         else if(this.m_currState == BattleScreenViualControllerStates.BSVCS_SELECTING_ENEMIES_FOR_MOVE || this.m_currState == BattleScreenViualControllerStates.BSVCS_SELECTING_ALLIES_FOR_MOVE)
         {
            this.m_movesSelectButton.m_isActive = true;
         }
      }
      
      private function GreyOutFor(param1:Vector.<OwnedMinion>) : void
      {
         var _loc3_:BattleScreenMinionVisual = null;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            TweenLite.to(this.m_visualMinionsForOpponentOverGrey[_loc2_],0.3,{"alpha":0});
            TweenLite.to(this.m_visualMinionsForPlayerOverGrey[_loc2_],0.3,{"alpha":0});
            _loc2_++;
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_ = this.GetMinionTopLayerVisualObjectFor(param1[_loc4_]);
            TweenLite.to(_loc3_,0.3,{"alpha":1});
            _loc4_++;
         }
         TweenLite.to(this.m_greyedOutLayer,0.5,{"alpha":this.m_greyedOutAmount});
      }
      
      public function GetMinionTopLayerVisualObjectFor(param1:OwnedMinion) : BattleScreenMinionVisual
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualMinionsForPlayerOverGrey.length)
         {
            if(this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion == param1)
            {
               return this.m_visualMinionsForPlayerOverGrey[_loc2_];
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_visualMinionsForOpponentOverGrey.length)
         {
            if(this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion == param1)
            {
               return this.m_visualMinionsForOpponentOverGrey[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function GetMinionBottomLayerVisualObjectFor(param1:OwnedMinion) : BattleScreenMinionVisual
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualMinionsForPlayer.length)
         {
            if(this.m_visualMinionsForPlayer[_loc2_].m_currMinion == param1)
            {
               return this.m_visualMinionsForPlayer[_loc2_];
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_visualMinionsForOpponent.length)
         {
            if(this.m_visualMinionsForOpponent[_loc2_].m_currMinion == param1)
            {
               return this.m_visualMinionsForOpponent[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function SetupTheGetForAiMinion(param1:OwnedMinion) : void
      {
         this.m_currBattleScreenMinionVisualObject = this.GetMinionTopLayerVisualObjectFor(param1);
         this.m_currState = BattleScreenViualControllerStates.BSVCS_NOT_ACTIVE;
         this.m_selectedMinion = param1;
         this.m_currMinionWeAreGettingAMoveFor = this.m_selectedMinion;
         this.m_minionsTurnIndicator.x = this.m_currBattleScreenMinionVisualObject.x - 52;
         this.m_minionsTurnIndicator.y = this.m_currBattleScreenMinionVisualObject.y - 40;
         TweenLite.to(this.m_minionsTurnIndicator,0.3,{"alpha":1});
         this.m_selectMinionTutorial.x = this.m_currBattleScreenMinionVisualObject.x - 10;
         this.m_selectMinionTutorial.y = this.m_currBattleScreenMinionVisualObject.y - 160;
      }
      
      public function CloseGetMoveForCurrentMinion() : void
      {
         this.m_currBattleScreenMinionVisualObject.m_moveSelector.FinishExitOut();
      }
      
      public function OpenUpTheGetMoveFor(param1:OwnedMinion) : void
      {
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION))
         {
            TweenLite.to(this.m_selectMinionTutorial,0.5,{
               "delay":0.2,
               "alpha":0
            });
         }
         this.m_collList.dispose();
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(this.m_visualMinionsForPlayer[_loc2_].m_currMinion != null && this.m_visualMinionsForPlayer[_loc2_].m_currMinion.m_currHealth > 0)
            {
               this.m_collList.addItem(this.m_visualMinionsForPlayer[_loc2_].m_minionSprite);
            }
            _loc2_++;
         }
         this.m_currBattleScreenMinionVisualObject = this.GetMinionTopLayerVisualObjectFor(param1);
         this.m_currState = BattleScreenViualControllerStates.BSVCS_GETTING_MOVE;
         this.m_selectedMinion = param1;
         this.m_currMinionWeAreGettingAMoveFor = this.m_selectedMinion;
         this.m_minionsTurnIndicator.x = this.m_currBattleScreenMinionVisualObject.x - 52;
         this.m_minionsTurnIndicator.y = this.m_currBattleScreenMinionVisualObject.y - 40;
         TweenLite.to(this.m_minionsTurnIndicator,0.3,{"alpha":1});
         this.m_selectMinionTutorial.x = this.m_currBattleScreenMinionVisualObject.x - 10;
         this.m_selectMinionTutorial.y = this.m_currBattleScreenMinionVisualObject.y - 160;
         this.m_movesSelectButton.x = this.m_currBattleScreenMinionVisualObject.x - 28;
         this.m_movesSelectButton.y = this.m_currBattleScreenMinionVisualObject.y - 85 - this.m_currBattleScreenMinionVisualObject.m_minionSprite.height;
         var _loc3_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
         _loc3_.push(param1);
         this.GreyOutFor(_loc3_);
         this.m_currBattleScreenMinionVisualObject.m_moveSelector.BringIn(param1 == this.m_currMinionWeAreGettingAMoveFor);
         this.m_collList.addItem(this.m_currBattleScreenMinionVisualObject.m_moveSelector.m_collisionBackground,false);
      }
      
      public function SetupSelectAnEnemy() : void
      {
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENEMY_SELECT))
         {
            this.m_opponentSelectTutorial.visible = true;
            this.m_opponentSelectTutorial.alpha = 0;
            TweenLite.to(this.m_opponentSelectTutorial,0.5,{
               "delay":0.2,
               "alpha":1
            });
         }
         this.m_currState = BattleScreenViualControllerStates.BSVCS_SELECTING_ENEMIES_FOR_MOVE;
         this.m_currBattleScreenMinionVisualObject.m_moveSelector.ExitOut();
         var _loc1_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualMinionsForOpponentOverGrey.length)
         {
            if(this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion != null && this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion.m_currHealth > 0 && !this.m_visualMinionsForOpponent[_loc2_].m_currMinion.m_isBattleModShieldActive)
            {
               _loc1_.push(this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion);
            }
            _loc2_++;
         }
         this.GreyOutFor(_loc1_);
         this.m_collList.dispose();
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            if(this.m_visualMinionsForOpponent[_loc2_].m_currMinion != null && this.m_visualMinionsForOpponent[_loc2_].m_currMinion.m_currHealth > 0 && !this.m_visualMinionsForOpponent[_loc2_].m_currMinion.m_isBattleModShieldActive)
            {
               this.m_collList.addItem(this.m_visualMinionsForOpponent[_loc2_].m_minionSprite);
            }
            _loc2_++;
         }
         this.m_movesSelectButton.visible = true;
      }
      
      public function SetupSelectAnAlly() : void
      {
         this.m_currState = BattleScreenViualControllerStates.BSVCS_SELECTING_ALLIES_FOR_MOVE;
         this.m_currBattleScreenMinionVisualObject.m_moveSelector.ExitOut();
         var _loc1_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
         var _loc2_:int = 0;
         while(_loc2_ < this.m_visualMinionsForPlayerOverGrey.length)
         {
            if(this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion != null && this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion.m_currHealth > 0)
            {
               _loc1_.push(this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion);
            }
            _loc2_++;
         }
         this.GreyOutFor(_loc1_);
         this.m_collList.dispose();
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            if(this.m_visualMinionsForPlayer[_loc2_].m_currMinion != null && this.m_visualMinionsForPlayer[_loc2_].m_currMinion.m_currHealth > 0)
            {
               this.m_collList.addItem(this.m_visualMinionsForPlayer[_loc2_].m_minionSprite);
            }
            _loc2_++;
         }
         this.m_movesSelectButton.visible = true;
      }
      
      public function SetupVisualsForTheWinningScreen() : void
      {
         this.m_collList.dispose();
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForPlayer[_loc1_].TurnOffInterface();
            this.m_visualMinionsForPlayerOverGrey[_loc1_].TurnOffInterface();
            _loc1_++;
         }
         TweenLite.to(this,0.4,{"onComplete":this.BringTheDeadMinoionsBackIn});
         if(Singleton.dynamicData.m_currFloorOfTower > 0 || Singleton.dynamicData.m_currRoomOfTower != 1)
         {
            this.m_spaceToSkipTutorial.visible = true;
         }
      }
      
      public function TurnOffTopLayerMinions() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            TweenLite.to(this.m_visualMinionsForOpponentOverGrey[_loc1_],0.3,{"alpha":0});
            TweenLite.to(this.m_visualMinionsForPlayerOverGrey[_loc1_],0.3,{"alpha":0});
            _loc1_++;
         }
      }
      
      private function BringTheDeadMinoionsBackIn() : void
      {
         this.TurnOffTopLayerMinions();
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            if(this.m_visualMinionsForPlayer[_loc1_].m_currMinion != null && this.m_visualMinionsForPlayer[_loc1_].m_currMinion.m_currHealth < 1)
            {
               this.m_visualMinionsForPlayer[_loc1_].MakeVisualFromDeath();
            }
            _loc1_++;
         }
      }
      
      public function TurnOnExpBarForMinion(param1:OwnedMinion) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).TurnOnExpBar();
         this.GetMinionTopLayerVisualObjectFor(param1).TurnOnExpBar();
      }
      
      public function TurnOffExpBarForMinion(param1:OwnedMinion) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).TurnOffExpBar();
         this.GetMinionTopLayerVisualObjectFor(param1).TurnOffExpBar();
      }
      
      public function AnimateExpBarForMinion(param1:OwnedMinion, param2:Number) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).AnimateExpBarTo(param2,1);
         this.GetMinionTopLayerVisualObjectFor(param1).AnimateExpBarTo(param2,1);
      }
      
      public function PlaySuperEffectiveAnimation(param1:OwnedMinion) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).PlayASuperEffectiveAttackHasHit();
         this.GetMinionTopLayerVisualObjectFor(param1).PlayASuperEffectiveAttackHasHit();
      }
      
      public function PlayNotEffectiveAnimation(param1:OwnedMinion) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).PlayANotEffectiveAttackHasHit();
         this.GetMinionTopLayerVisualObjectFor(param1).PlayANotEffectiveAttackHasHit();
      }
      
      public function PlayRedirectedAnimation(param1:OwnedMinion) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).PlayRedirectedHasHappened();
         this.GetMinionTopLayerVisualObjectFor(param1).PlayRedirectedHasHappened();
      }
      
      public function PlayCritAnimation(param1:OwnedMinion) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).PlayACritAttackHasHit();
         this.GetMinionTopLayerVisualObjectFor(param1).PlayACritAttackHasHit();
      }
      
      public function SetExpBarForMinion(param1:OwnedMinion, param2:Number) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).SetExpBarTo(param2);
         this.GetMinionTopLayerVisualObjectFor(param1).SetExpBarTo(param2);
      }
      
      public function SetScreenToPlayMoveVisuals() : void
      {
         this.m_currState = BattleScreenViualControllerStates.BSVCS_NOT_ACTIVE;
         this.m_movesSelectButton.visible = false;
         TweenLite.to(this.m_greyedOutLayer,0.5,{"alpha":0});
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].SetIsSelected(false);
            this.m_visualMinionsForPlayer[_loc1_].SetIsSelected(false);
            this.m_visualMinionsForOpponentOverGrey[_loc1_].SetIsSelected(false);
            this.m_visualMinionsForPlayerOverGrey[_loc1_].SetIsSelected(false);
            _loc1_++;
         }
         TweenLite.to(this.m_minionsTurnIndicator,0.3,{"alpha":0});
      }
      
      private function ReturnToMoves(param1:MouseEvent) : void
      {
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENEMY_SELECT))
         {
            TweenLite.to(this.m_opponentSelectTutorial,0.5,{"alpha":0});
         }
         this.m_movesSelectButton.visible = false;
         Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.Reset();
         Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.m_currMinion = this.m_currMinionWeAreGettingAMoveFor;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc2_].SetIsSelected(false);
            this.m_visualMinionsForPlayer[_loc2_].SetIsSelected(false);
            this.m_visualMinionsForOpponentOverGrey[_loc2_].SetIsSelected(false);
            this.m_visualMinionsForPlayerOverGrey[_loc2_].SetIsSelected(false);
            _loc2_++;
         }
         this.OpenUpTheGetMoveFor(this.m_currMinionWeAreGettingAMoveFor);
      }
      
      public function MakeMoveForCurrentMinion(param1:OwnedMinion) : void
      {
         this.GetMinionBottomLayerVisualObjectFor(param1).MakeMove();
         this.GetMinionTopLayerVisualObjectFor(param1).MakeMove();
      }
      
      public function FlashScreen(param1:Number = 0.2, param2:Number = 0.2, param3:uint = 16777215) : void
      {
         this.m_flash.visible = true;
         this.m_flash.alpha = 0;
         this.m_flash.graphics.clear();
         this.m_flash.graphics.beginFill(param3);
         this.m_flash.graphics.drawRect(0,0,700,525);
         this.m_flash.graphics.endFill();
         var _loc4_:TimelineLite;
         (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_flash,param1,{"alpha":1}));
         _loc4_.append(new TweenLite(this.m_flash,param2,{
            "alpha":0,
            "onComplete":this.FinishFlash
         }));
      }
      
      private function FinishFlash() : void
      {
         this.m_flash.visible = false;
      }
      
      public function ShakeScreen(param1:Number = 0.05, param2:int = 5, param3:Number = 10) : void
      {
         var _loc6_:int = 0;
         this.m_currBackground.ShakeScreen(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            this.AddShakeToObject(this.m_visualMinionsForOpponent[_loc4_],param1,param2,param3);
            this.AddShakeToObject(this.m_visualMinionsForOpponentOverGrey[_loc4_],param1,param2,param3);
            this.AddShakeToObject(this.m_visualMinionsForPlayer[_loc4_],param1,param2,param3);
            this.AddShakeToObject(this.m_visualMinionsForPlayerOverGrey[_loc4_],param1,param2,param3);
            _loc4_++;
         }
         this.AddShakeToObject(this.m_shieldMod,param1,param2,param3);
         this.AddShakeToObject(this.m_moveTimerMod,param1,param2,param3);
         this.AddShakeToObject(this.m_extraMinionsMod,param1,param2,param3);
         this.AddShakeToObject(this.m_resurectionMod,param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < this.m_tombstoneSprites.length)
         {
            this.AddShakeToObject(this.m_tombstoneSprites[_loc5_],param1,param2,param3);
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = 0;
            while(_loc6_ < 4)
            {
               if(this.m_visualImpactsForMinionsForPlayer[_loc5_][_loc6_].alpha != 0)
               {
                  this.AddShakeToObject(this.m_visualImpactsForMinionsForPlayer[_loc5_][_loc6_],param1,param2,param3);
               }
               if(this.m_visualImpactsForMinionsForOpponent[_loc5_][_loc6_].alpha != 0)
               {
                  this.AddShakeToObject(this.m_visualImpactsForMinionsForOpponent[_loc5_][_loc6_],param1,param2,param3);
               }
               _loc6_++;
            }
            _loc5_++;
         }
      }
      
      private function AddShakeToObject(param1:Sprite, param2:Number, param3:int, param4:Number) : void
      {
         var _loc5_:TimelineLite = new TimelineLite();
         var _loc6_:int = 0;
         while(_loc6_ < param3)
         {
            _loc5_.append(new TweenLite(param1,0.05 + param2 * (_loc6_ * 0.5),{"x":"" + param4}));
            _loc5_.append(new TweenLite(param1,0.05 + param2 * (_loc6_ * 0.5),{"x":"-" + param4}));
            _loc6_++;
         }
      }
      
      public function Cleanup() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].Cleanup();
            this.m_visualMinionsForOpponentOverGrey[_loc1_].Cleanup();
            this.m_visualMinionsForPlayer[_loc1_].Cleanup();
            this.m_visualMinionsForPlayerOverGrey[_loc1_].Cleanup();
            _loc1_++;
         }
      }
      
      public function reportClick(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Vector.<OwnedMinion> = null;
         if(Singleton.utility.m_screenControllers.m_battleScreen.m_conformationBox.m_isOpen)
         {
            return;
         }
         if(this.m_currState == BattleScreenViualControllerStates.BSVCS_GETTING_MOVE)
         {
            this.m_mousePointObject.x = param1.stageX;
            this.m_mousePointObject.y = param1.stageY;
            _loc2_ = this.m_collList.checkCollisions();
            if(_loc2_.length == 1)
            {
               _loc3_ = new Array();
               _loc4_ = 0;
               while(_loc4_ < _loc2_.length)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this.m_visualMinionsForPlayer.length)
                  {
                     if(_loc2_[_loc4_] == this.m_visualMinionsForPlayer[_loc5_].m_minionSprite)
                     {
                        _loc3_.push(this.m_visualMinionsForPlayer[_loc5_]);
                     }
                     _loc5_++;
                  }
                  _loc4_++;
               }
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  if(this.m_selectedMinion != _loc3_[_loc4_].m_currMinion)
                  {
                     (_loc6_ = new Vector.<OwnedMinion>()).push(_loc3_[_loc4_].m_currMinion);
                     this.GreyOutFor(_loc6_);
                     if(this.m_currBattleScreenMinionVisualObject != null)
                     {
                        this.m_collList.removeItem(this.m_currBattleScreenMinionVisualObject.m_moveSelector.m_collisionBackground);
                     }
                     this.m_selectedMinion = _loc3_[_loc4_].m_currMinion;
                     this.m_currBattleScreenMinionVisualObject = this.GetMinionTopLayerVisualObjectFor(this.m_selectedMinion);
                     this.m_currBattleScreenMinionVisualObject.m_moveSelector.BringIn(this.m_selectedMinion == this.m_currMinionWeAreGettingAMoveFor);
                     this.m_collList.addItem(this.m_currBattleScreenMinionVisualObject.m_moveSelector.m_collisionBackground,false);
                     if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION))
                     {
                        TweenLite.to(this.m_selectMinionTutorial,0.5,{
                           "delay":0.2,
                           "alpha":0
                        });
                     }
                     if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION) && this.m_deselectMinionTutorial.visible)
                     {
                        TweenLite.to(this.m_deselectMinionTutorial,0.5,{
                           "delay":0.2,
                           "alpha":0
                        });
                     }
                     if(this.m_selectedMinion == this.m_currMinionWeAreGettingAMoveFor)
                     {
                        Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION,true);
                        break;
                     }
                     if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION))
                     {
                        this.m_deselectMinionTutorial.visible = true;
                        this.m_deselectMinionTutorial.alpha = 0;
                        TweenLite.to(this.m_deselectMinionTutorial,0.5,{
                           "delay":0.2,
                           "alpha":1
                        });
                     }
                     if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVE_SELECT))
                     {
                        TweenLite.to(this.m_moveSelectTutorial,0.5,{"alpha":0});
                     }
                     break;
                  }
                  _loc4_++;
               }
            }
            if(_loc2_.length == 0 && this.m_selectedMinion != null)
            {
               TweenLite.to(this.m_greyedOutLayer,0.5,{"alpha":0});
               this.TurnOffTopLayerMinions();
               this.GetMinionTopLayerVisualObjectFor(this.m_selectedMinion).m_moveSelector.ExitOut();
               this.m_collList.removeItem(this.m_currBattleScreenMinionVisualObject.m_moveSelector.m_collisionBackground);
               this.m_selectedMinion = null;
               this.m_currBattleScreenMinionVisualObject = null;
               if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION))
               {
                  this.m_selectMinionTutorial.visible = true;
                  this.m_selectMinionTutorial.alpha = 0;
                  TweenLite.to(this.m_selectMinionTutorial,0.5,{
                     "delay":0.2,
                     "alpha":1
                  });
               }
               if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION) && this.m_deselectMinionTutorial.visible)
               {
                  TweenLite.to(this.m_deselectMinionTutorial,0.5,{
                     "delay":0.2,
                     "alpha":0
                  });
                  Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION,true);
               }
            }
         }
         else if(this.m_currState == BattleScreenViualControllerStates.BSVCS_SELECTING_ENEMIES_FOR_MOVE)
         {
            this.m_mousePointObject.x = param1.stageX;
            this.m_mousePointObject.y = param1.stageY;
            _loc2_ = this.m_collList.checkCollisions();
            if(_loc2_.length == 1)
            {
               _loc3_ = new Array();
               _loc4_ = 0;
               while(_loc4_ < _loc2_.length)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this.m_visualMinionsForPlayer.length)
                  {
                     if(_loc2_[_loc4_] == this.m_visualMinionsForOpponent[_loc5_].m_minionSprite)
                     {
                        _loc3_.push(this.m_visualMinionsForOpponentOverGrey[_loc5_]);
                        if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENEMY_SELECT))
                        {
                           TweenLite.to(this.m_opponentSelectTutorial,0.5,{"alpha":0});
                           Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENEMY_SELECT,true);
                        }
                     }
                     _loc5_++;
                  }
                  _loc4_++;
               }
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  if(_loc3_[_loc4_].ToggleIsSelected())
                  {
                     Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.AddToEnemiesItHits(_loc3_[_loc4_].m_currMinion);
                  }
                  else
                  {
                     Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.RemoveFromEnemiesItHits(_loc3_[_loc4_].m_currMinion);
                  }
                  _loc4_++;
               }
            }
         }
         else if(this.m_currState == BattleScreenViualControllerStates.BSVCS_SELECTING_ALLIES_FOR_MOVE)
         {
            this.m_mousePointObject.x = param1.stageX;
            this.m_mousePointObject.y = param1.stageY;
            _loc2_ = this.m_collList.checkCollisions();
            if(_loc2_.length == 1)
            {
               _loc3_ = new Array();
               _loc4_ = 0;
               while(_loc4_ < _loc2_.length)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this.m_visualMinionsForPlayer.length)
                  {
                     if(_loc2_[_loc4_] == this.m_visualMinionsForPlayer[_loc5_].m_minionSprite)
                     {
                        _loc3_.push(this.m_visualMinionsForPlayerOverGrey[_loc5_]);
                     }
                     _loc5_++;
                  }
                  _loc4_++;
               }
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  if(_loc3_[_loc4_].ToggleIsSelected())
                  {
                     Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.AddToAlliesItHits(_loc3_[_loc4_].m_currMinion);
                  }
                  else
                  {
                     Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.RemoveFromAlliesItHits(_loc3_[_loc4_].m_currMinion);
                  }
                  _loc4_++;
               }
            }
         }
      }
   }
}
