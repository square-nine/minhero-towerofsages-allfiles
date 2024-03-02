package TopDown.LevelObjects
{
   import SharedObjects.Animation;
   import SharedObjects.GameObject;
   import States.OrientationState;
   import TopDown.LevelObjects.ChatBox.StandardChatBox;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class MainChar extends GameObject
   {
       
      
      public var m_currDirection:int;
      
      private var m_stillSpritesMale:Vector.<Sprite>;
      
      private var m_walkingAnimationsMale:Vector.<Animation>;
      
      private var m_stillSpritesFeMale:Vector.<Sprite>;
      
      private var m_walkingAnimationsFeMale:Vector.<Animation>;
      
      private var m_isAnimatingInDirection:Vector.<Boolean>;
      
      private var m_walkingAnimationIncrementor:int;
      
      public var m_hasEarnedANewKey:Boolean;
      
      public var m_hasEarnedMoney:Boolean;
      
      public var m_hasEarnedANewGem:Boolean;
      
      public var m_hasEarnedANewSageSeal:Boolean;
      
      private var m_keySprite:Sprite;
      
      private var m_moneySprite:Sprite;
      
      private var m_gemSprite:Sprite;
      
      private var m_sageSealSprite:Sprite;
      
      private var m_sageSealBackgroundSprite:Sprite;
      
      private var m_healedTextSprite:Sprite;
      
      private var m_healedPlusSprite:Sprite;
      
      public var m_chatBox:StandardChatBox;
      
      public function MainChar()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_stillSpritesMale = new Vector.<Sprite>(4);
         this.m_walkingAnimationsMale = new Vector.<Animation>(4);
         this.m_stillSpritesMale[OrientationState.ORIENTATION_UP] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_back_still");
         addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_UP]);
         this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_front_still");
         addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN]);
         this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_side_still");
         addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT]);
         this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_male_side_still");
         addChild(this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT]);
         this.m_walkingAnimationIncrementor = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_stillSpritesMale.length)
         {
            this.m_walkingAnimationsMale[_loc1_] = new Animation();
            addChild(this.m_walkingAnimationsMale[_loc1_]);
            _loc1_++;
         }
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_UP].Create("mainCharacter_male_back_",10);
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_DOWN].Create("mainCharacter_male_front_",10);
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].Create("mainCharacter_male_side_",10);
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_RIGHT].Create("mainCharacter_male_side_",10);
         this.m_stillSpritesFeMale = new Vector.<Sprite>(4);
         this.m_walkingAnimationsFeMale = new Vector.<Animation>(4);
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_back_still");
         addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP]);
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_front_still");
         addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN]);
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_side_still");
         addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT]);
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT] = Singleton.utility.m_spriteHandler.CreateSprite("mainCharacter_female_side_still");
         addChild(this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT]);
         this.m_walkingAnimationIncrementor = 0;
         _loc1_ = 0;
         while(_loc1_ < this.m_stillSpritesFeMale.length)
         {
            this.m_walkingAnimationsFeMale[_loc1_] = new Animation();
            addChild(this.m_walkingAnimationsFeMale[_loc1_]);
            _loc1_++;
         }
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_UP].Create("mainCharacter_female_back_",10);
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_DOWN].Create("mainCharacter_female_front_",10);
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].Create("mainCharacter_female_side_",10);
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_RIGHT].Create("mainCharacter_female_side_",10);
         this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
         this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT].x = 59 + 8;
         this.m_stillSpritesMale[OrientationState.ORIENTATION_LEFT].y = 7;
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].x = 59 + 8;
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_LEFT].y = 7;
         this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT].x = 8 - 1;
         this.m_stillSpritesMale[OrientationState.ORIENTATION_RIGHT].y = 7;
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_RIGHT].x = 8 - 1;
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_RIGHT].y = 7;
         this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN].x = 3;
         this.m_stillSpritesMale[OrientationState.ORIENTATION_DOWN].y = 2;
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_DOWN].x = 3;
         this.m_walkingAnimationsMale[OrientationState.ORIENTATION_DOWN].y = 2;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT].x = 80;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_LEFT].y = 7;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].scaleX = -1;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].x = 80;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_LEFT].y = 7;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT].x = -7;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_RIGHT].y = 7;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_RIGHT].x = -7;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_RIGHT].y = 7;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN].x = 4;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_DOWN].y = 2 + 6;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_DOWN].x = 3;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_DOWN].y = 2 + 3;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP].x = 0;
         this.m_stillSpritesFeMale[OrientationState.ORIENTATION_UP].y = 4;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_UP].x = 0;
         this.m_walkingAnimationsFeMale[OrientationState.ORIENTATION_UP].y = 7;
         this.m_isAnimatingInDirection = new Vector.<Boolean>(4);
         _loc1_ = 0;
         while(_loc1_ < this.m_stillSpritesMale.length)
         {
            this.m_isAnimatingInDirection[_loc1_] = false;
            _loc1_++;
         }
         this.m_keySprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_key");
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_keySprite);
         this.m_keySprite.alpha = 0;
         this.m_moneySprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_money");
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_moneySprite);
         this.m_moneySprite.alpha = 0;
         this.m_gemSprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_gem");
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_gemSprite);
         this.m_gemSprite.alpha = 0;
         this.m_sageSealBackgroundSprite = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_background");
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_sageSealBackgroundSprite);
         this.m_sageSealBackgroundSprite.alpha = 0;
         this.m_sageSealSprite = Singleton.utility.m_spriteHandler.CreateSprite("hud_inGame_sageSeal_6");
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_sageSealSprite);
         this.m_sageSealSprite.alpha = 0;
         this.m_healedPlusSprite = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_healAnimation_crosses");
         this.m_healedPlusSprite.x = 0;
         this.m_healedPlusSprite.y = 0;
         addChild(this.m_healedPlusSprite);
         this.m_healedPlusSprite.alpha = 0;
         this.m_healedTextSprite = Singleton.utility.m_spriteHandler.CreateSprite("generalRoom_healAnimation_healed");
         this.m_healedTextSprite.x = -6;
         this.m_healedTextSprite.y = -28;
         addChild(this.m_healedTextSprite);
         this.m_healedTextSprite.alpha = 0;
         this.m_chatBox = new StandardChatBox();
         this.m_chatBox.AddSpriteFirstTime("menus_speechBubble",0,0,1,1,0,Singleton.utility.m_screenControllers.m_topDownScreen);
         this.m_chatBox.Cleanup();
         this.SetDirectionForStill(Singleton.dynamicData.m_charDirectionsForSave);
      }
      
      public function PlayMoneyAnimation() : void
      {
         Singleton.utility.m_soundController.PlaySound("tower_moneyPickup");
         this.m_moneySprite.alpha = 0;
         this.m_moneySprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
         this.m_moneySprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_moneySprite,0.2,{}));
         _loc1_.append(new TweenLite(this.m_moneySprite,1,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_moneySprite,0.5,{}));
         _loc1_.append(new TweenLite(this.m_moneySprite,0.5,{"alpha":0}));
         _loc1_ = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_moneySprite,0.2,{}));
         _loc1_.append(new TweenLite(this.m_moneySprite,1,{"y":"-50"}));
      }
      
      public function PlayGemAnimation() : void
      {
         Singleton.utility.m_soundController.PlaySound("tower_gemPickup",0.6);
         this.m_gemSprite.alpha = 0;
         this.m_gemSprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
         this.m_gemSprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_gemSprite,0.2,{}));
         _loc1_.append(new TweenLite(this.m_gemSprite,1,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_gemSprite,0.5,{}));
         _loc1_.append(new TweenLite(this.m_gemSprite,0.5,{"alpha":0}));
         _loc1_ = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_gemSprite,0.2,{}));
         _loc1_.append(new TweenLite(this.m_gemSprite,1,{"y":"-50"}));
      }
      
      public function PlaySageSealAnimation() : void
      {
         Singleton.utility.m_soundController.PlaySound("tower_gemPickup",0.6);
         var _loc2_:int = Singleton.dynamicData.m_currFloorOfTower / 5;
         var _loc3_:int = Singleton.dynamicData.m_currFloorOfTower % 5;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.removeChild(this.m_sageSealSprite);
         this.m_sageSealSprite = Singleton.utility.m_spriteHandler.CreateSprite("sageSeal_" + (_loc2_ + 1) + "_" + (_loc3_ + 1));
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.addChild(this.m_sageSealSprite);
         this.m_sageSealSprite.alpha = 0;
         this.m_sageSealSprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
         this.m_sageSealSprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
         this.m_sageSealBackgroundSprite.alpha = 0;
         this.m_sageSealBackgroundSprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
         this.m_sageSealBackgroundSprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
         var _loc4_:TimelineLite;
         (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealSprite,0.2,{}));
         _loc4_.append(new TweenLite(this.m_sageSealSprite,1,{"alpha":1}));
         _loc4_.append(new TweenLite(this.m_sageSealSprite,1,{}));
         _loc4_.append(new TweenLite(this.m_sageSealSprite,0.5,{"alpha":0}));
         (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealSprite,0.2,{}));
         _loc4_.append(new TweenLite(this.m_sageSealSprite,1,{"y":"-50"}));
         (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealBackgroundSprite,0.2,{}));
         _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,1,{"alpha":1}));
         _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,1,{}));
         _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,0.5,{"alpha":0}));
         (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_sageSealBackgroundSprite,0.2,{}));
         _loc4_.append(new TweenLite(this.m_sageSealBackgroundSprite,1,{"y":"-50"}));
      }
      
      public function PlayKeyAnimation() : void
      {
         Singleton.utility.m_soundController.PlaySound("tower_keyPickup",0.5);
         this.m_keySprite.alpha = 0;
         this.m_keySprite.x = x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.x;
         this.m_keySprite.y = y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_topVisualLayer.y;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_keySprite,0.2,{}));
         _loc1_.append(new TweenLite(this.m_keySprite,1,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_keySprite,0.5,{}));
         _loc1_.append(new TweenLite(this.m_keySprite,0.5,{"alpha":0}));
         _loc1_ = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_keySprite,0.2,{}));
         _loc1_.append(new TweenLite(this.m_keySprite,1,{"y":"-50"}));
      }
      
      public function FinishActivate() : void
      {
         var _loc1_:int = 0;
         if(this.m_hasEarnedANewKey && this.m_hasEarnedMoney)
         {
            this.PlayKeyAnimation();
            TweenLite.to(this,0.7,{"onComplete":this.PlayMoneyAnimation});
         }
         else if(this.m_hasEarnedANewKey && this.m_hasEarnedANewSageSeal)
         {
            _loc1_ = Singleton.dynamicData.GetHighestFloor();
            if(_loc1_ < 31)
            {
               this.PlaySageSealAnimation();
            }
            TweenLite.to(this,1.9,{"onComplete":this.PlayKeyAnimation});
            Singleton.utility.UnlockNextFloor();
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
         }
         else if(this.m_hasEarnedANewKey && this.m_hasEarnedANewGem)
         {
            this.PlayKeyAnimation();
            TweenLite.to(this,0.7,{"onComplete":this.PlayGemAnimation});
         }
         else if(this.m_hasEarnedANewSageSeal && this.m_hasEarnedANewGem)
         {
            this.PlaySageSealAnimation();
            TweenLite.to(this,0.7,{"onComplete":this.PlayGemAnimation});
         }
         else if(this.m_hasEarnedANewKey)
         {
            this.PlayKeyAnimation();
         }
         else if(this.m_hasEarnedMoney)
         {
            this.PlayMoneyAnimation();
         }
         else if(this.m_hasEarnedANewGem)
         {
            this.PlayGemAnimation();
         }
         else if(this.m_hasEarnedANewSageSeal)
         {
            this.PlaySageSealAnimation();
         }
         this.m_hasEarnedANewKey = false;
         this.m_hasEarnedMoney = false;
         this.m_hasEarnedANewGem = false;
         this.m_hasEarnedANewSageSeal = false;
         this.UpdateAnimationState();
      }
      
      public function UpdateAnimationState() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_stillSpritesMale.length)
         {
            this.m_isAnimatingInDirection[_loc1_] = false;
            _loc1_++;
         }
         if(Input.kd("a","LEFT"))
         {
            this.SetDirectionForAnimation(OrientationState.ORIENTATION_LEFT);
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT] = true;
         }
         if(Input.kd("d","RIGHT"))
         {
            this.SetDirectionForAnimation(OrientationState.ORIENTATION_RIGHT);
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT] = true;
         }
         if(Input.kd("w","UP"))
         {
            this.SetDirectionForAnimation(OrientationState.ORIENTATION_UP);
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP] = true;
         }
         if(Input.kd("s","DOWN"))
         {
            this.SetDirectionForAnimation(OrientationState.ORIENTATION_DOWN);
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN] = true;
         }
         if(this.AreAllAnimationsComplete())
         {
            this.SetDirectionForStill(this.m_currDirection);
            this.m_walkingAnimationIncrementor = 0;
            _loc1_ = 0;
            while(_loc1_ < this.m_stillSpritesMale.length)
            {
               this.m_walkingAnimationsMale[_loc1_].GotoFrame(0);
               this.m_walkingAnimationsFeMale[_loc1_].GotoFrame(0);
               _loc1_++;
            }
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:int = 0;
         super.UpdateFullFrames();
         if(Input.kd("a","LEFT"))
         {
            if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT])
            {
               this.SetDirectionForAnimation(OrientationState.ORIENTATION_LEFT);
               this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT] = true;
            }
         }
         if(Input.kd("d","RIGHT"))
         {
            if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT])
            {
               this.SetDirectionForAnimation(OrientationState.ORIENTATION_RIGHT);
               this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT] = true;
            }
         }
         if(Input.kd("w","UP"))
         {
            if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP])
            {
               this.SetDirectionForAnimation(OrientationState.ORIENTATION_UP);
               this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP] = true;
            }
         }
         if(Input.kd("s","DOWN"))
         {
            if(!this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN])
            {
               this.SetDirectionForAnimation(OrientationState.ORIENTATION_DOWN);
               this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN] = true;
            }
         }
         if(Input.ku("a","LEFT"))
         {
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT] = false;
            if(this.AreAllAnimationsComplete())
            {
               this.SetDirectionForStill(OrientationState.ORIENTATION_LEFT);
            }
            else
            {
               this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
            }
         }
         if(Input.ku("d","RIGHT"))
         {
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT] = false;
            if(this.AreAllAnimationsComplete())
            {
               this.SetDirectionForStill(OrientationState.ORIENTATION_RIGHT);
            }
            else
            {
               this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
            }
         }
         if(Input.ku("w","UP"))
         {
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP] = false;
            if(this.AreAllAnimationsComplete())
            {
               this.SetDirectionForStill(OrientationState.ORIENTATION_UP);
            }
            else
            {
               this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
            }
         }
         if(Input.ku("s","DOWN"))
         {
            this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN] = false;
            if(this.AreAllAnimationsComplete())
            {
               this.SetDirectionForStill(OrientationState.ORIENTATION_DOWN);
            }
            else
            {
               this.SetDirectionForAnimation(this.GetCurrentDirectionWeAreAnimating());
            }
         }
         if(this.m_isAnimatingInDirection[OrientationState.ORIENTATION_LEFT] && this.m_isAnimatingInDirection[OrientationState.ORIENTATION_RIGHT])
         {
            this.SetDirectionForStill(OrientationState.ORIENTATION_RIGHT);
            return;
         }
         if(this.m_isAnimatingInDirection[OrientationState.ORIENTATION_UP] && this.m_isAnimatingInDirection[OrientationState.ORIENTATION_DOWN])
         {
            this.SetDirectionForStill(OrientationState.ORIENTATION_UP);
            return;
         }
         if(!this.AreAllAnimationsComplete())
         {
            this.IncrementAnimation();
         }
         else
         {
            this.m_walkingAnimationIncrementor = 0;
            _loc1_ = 0;
            while(_loc1_ < this.m_stillSpritesMale.length)
            {
               this.m_walkingAnimationsMale[_loc1_].GotoFrame(0);
               this.m_walkingAnimationsFeMale[_loc1_].GotoFrame(0);
               _loc1_++;
            }
         }
      }
      
      private function AreAllAnimationsComplete() : Boolean
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_isAnimatingInDirection.length)
         {
            if(this.m_isAnimatingInDirection[_loc1_])
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
      
      private function GetCurrentDirectionWeAreAnimating() : int
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_isAnimatingInDirection.length)
         {
            if(this.m_isAnimatingInDirection[_loc1_])
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return 0;
      }
      
      public function IncrementAnimation() : void
      {
         var _loc1_:int = 0;
         ++this.m_walkingAnimationIncrementor;
         if(this.m_walkingAnimationIncrementor > 1)
         {
            _loc1_ = 0;
            while(_loc1_ < this.m_stillSpritesMale.length)
            {
               this.m_walkingAnimationsMale[_loc1_].PlayNextFrame();
               this.m_walkingAnimationsFeMale[_loc1_].PlayNextFrame();
               _loc1_++;
            }
            this.m_walkingAnimationIncrementor = 0;
         }
      }
      
      private function SetDirectionForAnimation(param1:int) : void
      {
         this.m_currDirection = param1;
         Singleton.dynamicData.m_charDirectionsForSave = this.m_currDirection;
         this.SetAllTheDirectionSpritesToOff();
         if(Singleton.dynamicData.m_isMale)
         {
            this.m_walkingAnimationsMale[param1].visible = true;
         }
         else
         {
            this.m_walkingAnimationsFeMale[param1].visible = true;
         }
      }
      
      public function SetDirectionForStill(param1:int) : void
      {
         this.m_currDirection = param1;
         Singleton.dynamicData.m_charDirectionsForSave = this.m_currDirection;
         this.SetAllTheDirectionSpritesToOff();
         if(Singleton.dynamicData.m_isMale)
         {
            this.m_stillSpritesMale[param1].visible = true;
         }
         else
         {
            this.m_stillSpritesFeMale[param1].visible = true;
         }
      }
      
      private function SetAllTheDirectionSpritesToOff() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_stillSpritesMale.length)
         {
            this.m_walkingAnimationsMale[_loc1_].visible = false;
            this.m_walkingAnimationsFeMale[_loc1_].visible = false;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.m_stillSpritesMale.length)
         {
            this.m_stillSpritesMale[_loc1_].visible = false;
            this.m_stillSpritesFeMale[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function BringInCharChatBoxWithText(param1:String, param2:Function = null, param3:Function = null, param4:Function = null) : void
      {
         this.m_chatBox.AddSprite();
         this.m_chatBox.SetFunctions(param2,param3,param4);
         this.m_chatBox.BringInWithText(param1,"Inner Monologue");
         this.m_chatBox.m_currSprite.x = x + 45;
         this.m_chatBox.m_currSprite.y = y - 30;
         if(this.m_chatBox.m_currSprite.x + this.m_chatBox.m_currSprite.width > 700)
         {
            this.m_chatBox.m_currSprite.x = x - 225;
         }
      }
      
      public function UpdateChatBox() : void
      {
         this.m_chatBox.Update();
      }
      
      public function PlayHealedAnimation() : void
      {
         Singleton.utility.m_soundController.PlaySound("tower_healstone",0.2);
         this.m_healedPlusSprite.x = 0;
         this.m_healedPlusSprite.y = 0;
         this.m_healedPlusSprite.alpha = 0;
         this.m_healedTextSprite.alpha = 0;
         TweenLite.to(this.m_healedPlusSprite,2.7,{"y":-100});
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_healedTextSprite,0.4,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_healedTextSprite,1.2,{}));
         _loc1_.append(new TweenLite(this.m_healedTextSprite,1,{"alpha":0}));
         _loc1_ = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_healedPlusSprite,0.4,{"alpha":1}));
         _loc1_.append(new TweenLite(this.m_healedPlusSprite,0.2,{}));
         _loc1_.append(new TweenLite(this.m_healedPlusSprite,2,{"alpha":0}));
      }
   }
}
