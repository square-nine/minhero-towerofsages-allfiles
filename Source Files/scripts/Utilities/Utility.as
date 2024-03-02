package Utilities
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.MinionTalentTree;
   import Minions.MinionTalentTreeDataNode;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BonusItemsPopup;
   import SharedObjects.TutorialHandler;
   import States.ExpGainRates;
   import States.StarUpgradeTypes;
   import States.TrainerType;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.net.URLRequest;
   
   public class Utility
   {
       
      
      private var _spriteHandler:SpriteHandler;
      
      private var _screenControllers:ScreenController;
      
      private var _collController:CollisionController;
      
      public var m_analyticsController:AnalyticsController;
      
      public var m_stage:Stage;
      
      public var m_mover:Mover;
      
      public var m_globalMouseMovementUpdateFunction:Function;
      
      public var m_soundController:SoundController;
      
      public var m_tutorialHandler:TutorialHandler;
      
      public var m_bonusItemPopup:BonusItemsPopup;
      
      public var m_mousePointObject:Sprite;
      
      private var _allButtons:Vector.<TCButton>;
      
      public function Utility()
      {
         super();
         this._spriteHandler = new SpriteHandler();
         this._screenControllers = new ScreenController();
         this._collController = new CollisionController();
         this.m_soundController = new SoundController();
         this.m_analyticsController = new AnalyticsController();
         this.m_tutorialHandler = new TutorialHandler();
         this.m_bonusItemPopup = new BonusItemsPopup();
         this._allButtons = new Vector.<TCButton>();
         this.m_mover = new Mover();
      }
      
      private function IsMoveAMoveWeShouldAdd(param1:int, param2:Vector.<int>) : Boolean
      {
         var _loc4_:BaseMinionMove = null;
         var _loc3_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param1);
         var _loc5_:int = 0;
         while(_loc5_ < param2.length)
         {
            _loc4_ = Singleton.staticData.GetBaseMinionMove(param2[_loc5_]);
            if(_loc3_.m_moveClass == _loc4_.m_moveClass && _loc3_.m_moveTier <= _loc4_.m_moveTier)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }
      
      public function AutoBuildMovesForMinion(param1:OwnedMinion, param2:Vector.<int>) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Vector.<int> = null;
         var _loc8_:MinionTalentTreeDataNode = null;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         if(param1.m_availableTalentPoints == 0)
         {
            return;
         }
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < param1.m_baseMinion.m_spealizationMoves.length)
         {
            if(this.IsMoveAMoveWeShouldAdd(param1.m_baseMinion.m_spealizationMoves[_loc4_],param2))
            {
               param1.AddMove(param1.m_baseMinion.m_spealizationMoves[_loc4_]);
               _loc3_ = true;
               break;
            }
            _loc4_++;
         }
         if(!_loc3_)
         {
            if((_loc17_ = Math.random() * 300) > 200)
            {
               param1.AddMove(param1.m_baseMinion.m_spealizationMoves[0]);
            }
            else if(_loc17_ > 100)
            {
               param1.AddMove(param1.m_baseMinion.m_spealizationMoves[2]);
            }
            else
            {
               param1.AddMove(param1.m_baseMinion.m_spealizationMoves[1]);
            }
         }
         _loc5_ = Math.random() * 300;
         _loc6_ = new Vector.<int>();
         if(_loc5_ > 200)
         {
            _loc6_.push(2,0,1);
         }
         else if(_loc5_ > 100)
         {
            _loc6_.push(0,1,2);
         }
         else
         {
            _loc6_.push(1,2,0);
         }
         var _loc7_:MinionTalentTree = param1.m_baseMinion.GetTalentTree(param1.m_currSpecialization);
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         while(_loc15_ < 25)
         {
            if(param1.m_availableTalentPoints == 0)
            {
               return;
            }
            _loc11_ = false;
            _loc4_ = 0;
            while(_loc4_ < 3)
            {
               _loc8_ = _loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_);
               _loc18_ = 0;
               while(_loc18_ < _loc8_.m_moves.length)
               {
                  if(this.IsMoveAMoveWeShouldAdd(_loc8_.m_moves[_loc18_],param2))
                  {
                     if(!param1.IsMoveOwned(_loc8_.m_moves[_loc18_]))
                     {
                        param1.AddMove(_loc8_.m_moves[_loc18_]);
                        _loc13_++;
                        _loc11_ = true;
                        _loc4_ = 1000;
                        _loc18_ = 1000;
                     }
                  }
                  _loc18_++;
               }
               _loc4_++;
            }
            if(!_loc11_)
            {
               _loc12_ = param1.m_maxTalentPoints - param1.m_availableTalentPoints;
               _loc14_++;
               if((_loc9_ = _loc13_ / 3) > _loc14_)
               {
                  _loc9_ = _loc14_;
               }
               if(_loc9_ > 3)
               {
                  _loc9_ = 3;
               }
            }
            if(!_loc11_ && _loc10_ == _loc9_)
            {
               _loc4_ = 0;
               while(_loc4_ < 3)
               {
                  _loc8_ = _loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_);
                  _loc18_ = 0;
                  while(_loc18_ < _loc8_.m_moves.length)
                  {
                     if(!param1.IsMoveOwned(_loc8_.m_moves[_loc18_]))
                     {
                        if(!_loc8_.m_isDependantOnPreviousRowMove || _loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_ - 1).DoesTheMinionHaveAllTheMovesInNode(param1))
                        {
                           param1.AddMove(_loc8_.m_moves[_loc18_]);
                           _loc13_++;
                           _loc4_ = 1000;
                           _loc18_ = 1000;
                        }
                     }
                     _loc18_++;
                  }
                  _loc4_++;
               }
            }
            _loc10_ = _loc9_;
            _loc15_++;
         }
         _loc12_ = param1.m_maxTalentPoints - param1.m_availableTalentPoints;
         if(param1.m_maxTalentPoints > 10 && _loc12_ < 11)
         {
            _loc9_ = 0;
            _loc4_ = 0;
            while(_loc4_ < 3)
            {
               _loc8_ = _loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_);
               _loc18_ = 0;
               while(_loc18_ < _loc8_.m_moves.length)
               {
                  if(!param1.IsMoveOwned(_loc8_.m_moves[_loc18_]))
                  {
                     if(!_loc8_.m_isDependantOnPreviousRowMove || _loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_ - 1).DoesTheMinionHaveAllTheMovesInNode(param1))
                     {
                        param1.AddMove(_loc8_.m_moves[_loc18_]);
                        _loc4_ = 1000;
                        _loc18_ = 1000;
                     }
                  }
                  _loc18_++;
               }
               _loc4_++;
            }
         }
         _loc4_ = 0;
         while(_loc4_ < param1.m_baseMinion.m_spealizationMoves.length)
         {
            if(_loc4_ != param1.m_currSpecialization)
            {
               this.BuildMinionTalentTreeForJustMovesWeShouldAdd(param1,param2,param1.m_baseMinion.GetTalentTree(_loc4_));
            }
            _loc4_++;
         }
         var _loc16_:int = 0;
         while(_loc16_ < 10)
         {
            if((_loc19_ = Math.random() * 3) != param1.m_currSpecialization)
            {
               this.BuildMinionTalentTreeRandomly(param1,param1.m_baseMinion.GetTalentTree(_loc19_));
            }
            if(param1.m_availableTalentPoints == 0)
            {
               break;
            }
            _loc16_++;
         }
      }
      
      public function BuildMinionTalentTreeForJustMovesWeShouldAdd(param1:OwnedMinion, param2:Vector.<int>, param3:MinionTalentTree) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Vector.<int> = null;
         var _loc6_:MinionTalentTreeDataNode = null;
         var _loc8_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         _loc4_ = Math.random() * 300;
         _loc5_ = new Vector.<int>();
         if(_loc4_ > 200)
         {
            _loc5_.push(2,0,1);
         }
         else if(_loc4_ > 100)
         {
            _loc5_.push(0,1,2);
         }
         else
         {
            _loc5_.push(1,2,0);
         }
         var _loc7_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         while(_loc11_ < 8)
         {
            if(param1.m_availableTalentPoints == 0)
            {
               return;
            }
            _loc8_ = false;
            _loc12_ = 0;
            while(_loc12_ < 3)
            {
               _loc6_ = param3.GetMovesAt(_loc5_[_loc12_],_loc7_);
               _loc13_ = 0;
               while(_loc13_ < _loc6_.m_moves.length)
               {
                  if(this.IsMoveAMoveWeShouldAdd(_loc6_.m_moves[_loc13_],param2))
                  {
                     if(!param1.IsMoveOwned(_loc6_.m_moves[_loc13_]))
                     {
                        param1.AddMove(_loc6_.m_moves[_loc13_]);
                        _loc10_++;
                        _loc8_ = true;
                        _loc12_ = 1000;
                        _loc13_ = 1000;
                     }
                  }
                  _loc13_++;
               }
               _loc12_++;
            }
            if(!_loc8_)
            {
               _loc7_ = _loc10_ / 3;
            }
            _loc11_++;
         }
      }
      
      public function AddExpToMinions(param1:Boolean = true) : void
      {
         var _loc5_:uint = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc2_:int = 850;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc4_] != null)
            {
               _loc3_++;
               _loc2_ += this.GetExtraExpValue(Singleton.dynamicData.m_opponentsMinions[_loc4_].m_expGainRate);
            }
            _loc4_++;
         }
         var _loc6_:int = Singleton.dynamicData.m_opponentsMinions[0].m_currLevel;
         var _loc7_:Number = 0;
         var _loc9_:int = 0;
         while(_loc9_ < 5)
         {
            _loc5_ = uint(_loc2_);
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc9_) != null)
            {
               _loc7_ = Singleton.dynamicData.GetOwnedMinionAt(_loc9_).m_currLevel - _loc6_;
               if(Singleton.dynamicData.m_currFloorOfTower > 0)
               {
                  _loc10_ = (_loc10_ = Math.random() * 3) - 1;
                  _loc7_ += _loc10_;
               }
               if(_loc7_ > 0)
               {
                  _loc11_ = 0;
                  while(_loc11_ < _loc7_)
                  {
                     _loc5_ /= 2;
                     _loc11_++;
                  }
                  if(_loc5_ < 50)
                  {
                     _loc5_ = 50;
                  }
               }
               else if(_loc7_ < 0)
               {
                  _loc5_ += _loc7_ * (_loc2_ / 3) * -1;
               }
               _loc5_ = (_loc5_ *= this.GetExtraExpModifyValue(Singleton.dynamicData.GetOwnedMinionAt(_loc9_).m_expGainRate)) * (1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_EXP) * 0.05);
               if(!param1)
               {
                  _loc5_ *= 0.75;
               }
               Singleton.dynamicData.GetOwnedMinionAt(_loc9_).m_currentExp = Singleton.dynamicData.GetOwnedMinionAt(_loc9_).m_currentExp + _loc5_;
            }
            _loc9_++;
         }
      }
      
      public function GetExtraExpValue(param1:int) : Number
      {
         switch(param1)
         {
            case ExpGainRates.EXP_GAIN_RATE_VERY_EASY:
               return -70;
            case ExpGainRates.EXP_GAIN_RATE_EASY:
               return -35;
            case ExpGainRates.EXP_GAIN_RATE_HARD:
               return 35;
            case ExpGainRates.EXP_GAIN_RATE_VERY_HARD:
               return 70;
            default:
               return 0;
         }
      }
      
      public function GetExtraExpModifyValue(param1:int) : Number
      {
         switch(param1)
         {
            case ExpGainRates.EXP_GAIN_RATE_VERY_EASY:
               return 1.2;
            case ExpGainRates.EXP_GAIN_RATE_EASY:
               return 1.1;
            case ExpGainRates.EXP_GAIN_RATE_HARD:
               return 0.9;
            case ExpGainRates.EXP_GAIN_RATE_VERY_HARD:
               return 0.8;
            default:
               return 1;
         }
      }
      
      public function BuildMinionTalentTreeRandomly(param1:OwnedMinion, param2:MinionTalentTree) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Vector.<int> = null;
         var _loc5_:MinionTalentTreeDataNode = null;
         var _loc8_:Boolean = false;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         _loc3_ = Math.random() * 300;
         _loc4_ = new Vector.<int>();
         if(_loc3_ > 200)
         {
            _loc4_.push(2,0,1);
         }
         else if(_loc3_ > 100)
         {
            _loc4_.push(0,1,2);
         }
         else
         {
            _loc4_.push(1,2,0);
         }
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc10_:int = 0;
         while(_loc10_ < 20)
         {
            if(param1.m_availableTalentPoints == 0)
            {
               return;
            }
            if(!(_loc8_ = false))
            {
               if(_loc7_ != 0)
               {
                  _loc6_ = _loc7_ / 3;
               }
            }
            if(!_loc8_)
            {
               _loc11_ = 0;
               while(_loc11_ < 3)
               {
                  _loc5_ = param2.GetMovesAt(_loc4_[_loc11_],_loc6_);
                  _loc12_ = 0;
                  while(_loc12_ < _loc5_.m_moves.length)
                  {
                     if(!param1.IsMoveOwned(_loc5_.m_moves[_loc12_]))
                     {
                        if(!_loc5_.m_isDependantOnPreviousRowMove || param2.GetMovesAt(_loc4_[_loc11_],_loc6_ - 1).DoesTheMinionHaveAllTheMovesInNode(param1))
                        {
                           param1.AddMove(_loc5_.m_moves[_loc12_]);
                           _loc7_++;
                           _loc11_ = 1000;
                           _loc12_ = 1000;
                        }
                     }
                     _loc12_++;
                  }
                  _loc11_++;
               }
            }
            _loc10_++;
         }
      }
      
      public function DisplayAllExp(param1:int, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:OwnedMinion = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:OwnedMinion = null;
         var _loc5_:Array = [0,1,2,4,5,6,7,9,10,11,12,14,15,16,17,19,20,21,22,23,24,25,26,27,28,29,30];
         var _loc7_:int = 0;
         while(_loc7_ < param1)
         {
            _loc8_ = int(_loc5_[_loc7_]);
            Singleton.dynamicData.m_currFloorOfTower = _loc8_;
            if(Singleton.dynamicData.m_currFloorOfTower == 4 || Singleton.dynamicData.m_currFloorOfTower == 9 || Singleton.dynamicData.m_currFloorOfTower == 14 || Singleton.dynamicData.m_currFloorOfTower == 19 || Singleton.dynamicData.m_currFloorOfTower == 24 || Singleton.dynamicData.m_currFloorOfTower == 29 || Singleton.dynamicData.m_currFloorOfTower == 30)
            {
               Singleton.staticData.m_trainerSystem.LoadTrianer(_loc8_,0);
               _loc11_ = Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType;
               this.AddExpToMinions();
               _loc12_ = 0;
               while(_loc12_ < 5)
               {
                  if((_loc13_ = Singleton.dynamicData.GetOwnedMinionAt(_loc12_)) != null)
                  {
                     if(_loc13_.m_baseMinion.m_evolutionLevel == _loc13_.m_currLevel)
                     {
                        ++_loc13_.m_minionDexID;
                     }
                  }
                  _loc12_++;
               }
               Singleton.utility.UnlockNextFloor();
            }
            else
            {
               _loc9_ = 1;
               while(_loc9_ < 7)
               {
                  Singleton.staticData.m_trainerSystem.LoadTrianer(_loc8_,_loc9_);
                  _loc11_ = Singleton.staticData.m_trainerSystem.GetCurrentTrainer().m_trainerType;
                  if(!(!param2 && _loc11_ == TrainerType.HARD_TRAINER))
                  {
                     if(!(!param3 && _loc11_ == TrainerType.EXPERT_TRAINER))
                     {
                        this.AddExpToMinions();
                        _loc12_ = 0;
                        while(_loc12_ < 50)
                        {
                           if((_loc13_ = Singleton.dynamicData.GetOwnedMinionAt(_loc12_)) != null)
                           {
                              if(_loc13_.m_currLevel >= _loc13_.m_baseMinion.m_evolutionLevel)
                              {
                                 ++_loc13_.m_minionDexID;
                              }
                              if(_loc12_ < 5)
                              {
                              }
                           }
                           _loc12_++;
                        }
                     }
                  }
                  _loc9_++;
               }
               _loc10_ = Singleton.staticData.GetRandomMinionForFloor(_loc8_);
               Singleton.dynamicData.AddToOwnedMinions(_loc10_);
               Singleton.utility.UnlockNextFloor();
            }
            _loc7_++;
         }
         Singleton.dynamicData.m_currFloorOfTower = _loc5_[param1];
         Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
      }
      
      public function UnlockNextFloor() : void
      {
         var _loc1_:int = 0;
         this.m_screenControllers.m_topDownScreen.m_gemShop.CreateNewGems();
         if(Singleton.dynamicData.m_currFloorOfTower == 2 || Singleton.dynamicData.m_currFloorOfTower == 7 || Singleton.dynamicData.m_currFloorOfTower == 12 || Singleton.dynamicData.m_currFloorOfTower == 17)
         {
            Singleton.dynamicData.SetHasUnlockedFloor(Singleton.dynamicData.m_currFloorOfTower + 2,true);
         }
         else if(Singleton.dynamicData.m_currFloorOfTower == 6 || Singleton.dynamicData.m_currFloorOfTower == 11 || Singleton.dynamicData.m_currFloorOfTower == 16 || Singleton.dynamicData.m_currFloorOfTower == 21)
         {
            if(!Singleton.dynamicData.GetHasUnlockedFloor(Singleton.dynamicData.m_currFloorOfTower - 3))
            {
               Singleton.dynamicData.SetHasUnlockedFloor(Singleton.dynamicData.m_currFloorOfTower - 3,true);
               _loc1_ = (Singleton.dynamicData.m_currFloorOfTower - 1) / 5 - 1;
               Singleton.dynamicData.SetAnimateNewFloor(_loc1_,true);
            }
            Singleton.dynamicData.SetHasUnlockedFloor(Singleton.dynamicData.m_currFloorOfTower + 1,true);
         }
         else
         {
            Singleton.dynamicData.SetHasUnlockedFloor(Singleton.dynamicData.m_currFloorOfTower + 1,true);
         }
      }
      
      public function CheckForSiteLock() : void
      {
      }
      
      private function GetTrainerTypeName(param1:int) : String
      {
         switch(param1)
         {
            case TrainerType.NORMAL_TRAINER:
               return "Normal Trainer";
            case TrainerType.HARD_TRAINER:
               return "Hard Traner";
            case TrainerType.BOSS_TRAINER:
               return "Boss Trainer";
            case TrainerType.EXPERT_TRAINER:
               return "Expert Trainer";
            default:
               return "" + param1;
         }
      }
      
      public function get m_spriteHandler() : SpriteHandler
      {
         return this._spriteHandler;
      }
      
      public function get m_screenControllers() : ScreenController
      {
         return this._screenControllers;
      }
      
      public function get m_allButtons() : Vector.<TCButton>
      {
         return this._allButtons;
      }
      
      public function get m_collController() : CollisionController
      {
         return this._collController;
      }
   }
}
