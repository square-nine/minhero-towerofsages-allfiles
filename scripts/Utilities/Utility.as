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
   import States.GameState;
   import States.StarUpgradeTypes;
   import States.TrainerType;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         if(!_loc2_)
         {
            this._spriteHandler = new SpriteHandler();
            this._screenControllers = new ScreenController();
            if(_loc1_ || _loc2_)
            {
               this._collController = new CollisionController();
               if(!_loc2_)
               {
                  this.m_soundController = new SoundController();
               }
               this.m_analyticsController = new AnalyticsController();
               if(!_loc2_)
               {
                  this.m_tutorialHandler = new TutorialHandler();
                  if(!(_loc2_ && _loc1_))
                  {
                     addr73:
                     this.m_bonusItemPopup = new BonusItemsPopup();
                     if(_loc1_ || _loc2_)
                     {
                        this._allButtons = new Vector.<TCButton>();
                        this.m_mover = new Mover();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      private function IsMoveAMoveWeShouldAdd(param1:int, param2:Vector.<int>) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:BaseMinionMove = null;
         var _loc3_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param1);
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= param2.length)
            {
               return false;
            }
            _loc4_ = Singleton.staticData.GetBaseMinionMove(param2[_loc5_]);
            if(_loc7_)
            {
               continue;
            }
            §§push(_loc3_.m_moveClass);
            if(_loc6_)
            {
               §§push(_loc4_.m_moveClass);
               if(_loc6_ || Boolean(param1))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ || Boolean(this)))
                        {
                           break;
                        }
                        §§pop();
                        if(_loc6_ || Boolean(this))
                        {
                           addr85:
                           §§push(_loc3_.m_moveTier <= _loc4_.m_moveTier);
                           if(_loc7_)
                           {
                              break;
                           }
                           addr95:
                           if(§§pop())
                           {
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 §§push(true);
                                 break;
                              }
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr85);
         }
         return §§pop();
      }
      
      public function AutoBuildMovesForMinion(param1:OwnedMinion, param2:Vector.<int>) : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:Vector.<int> = null;
         var _loc8_:MinionTalentTreeDataNode = null;
         var _loc11_:* = false;
         var _loc12_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         if(!(_loc21_ && _loc3_))
         {
            if(param1.m_availableTalentPoints == 0)
            {
               if(!_loc21_)
               {
                  §§goto(addr44);
               }
            }
            var _loc3_:* = false;
            var _loc4_:* = 0;
            while(true)
            {
               §§push(_loc4_);
               if(_loc20_)
               {
                  if(§§pop() < param1.m_baseMinion.m_spealizationMoves.length)
                  {
                     §§push(this.IsMoveAMoveWeShouldAdd(param1.m_baseMinion.m_spealizationMoves[_loc4_],param2));
                     if(_loc20_)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(_loc20_)
                        {
                           param1.AddMove(param1.m_baseMinion.m_spealizationMoves[_loc4_]);
                        }
                        §§push(true);
                        if(!(_loc21_ && _loc3_))
                        {
                           _loc3_ = §§pop();
                           if(!_loc21_)
                           {
                              addr100:
                              if(!_loc3_)
                              {
                                 if(_loc20_)
                                 {
                                    §§push(Math.random() * 300);
                                    if(!(_loc21_ && Boolean(this)))
                                    {
                                       §§push(§§pop());
                                       if(!_loc21_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc21_ && Boolean(param1)))
                                          {
                                             _loc17_ = §§pop();
                                             if(_loc20_ || Boolean(param2))
                                             {
                                                §§push(200);
                                                if(_loc20_)
                                                {
                                                   addr136:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      §§push(_loc17_);
                                                      if(!_loc21_)
                                                      {
                                                         addr155:
                                                         §§push(100);
                                                      }
                                                      break;
                                                   }
                                                   if(!(_loc21_ && Boolean(this)))
                                                   {
                                                      param1.AddMove(param1.m_baseMinion.m_spealizationMoves[0]);
                                                      addr181:
                                                      §§push(int(Math.random() * 300));
                                                      break;
                                                      addr151:
                                                   }
                                                   §§goto(addr181);
                                                   §§goto(addr181);
                                                }
                                                if(§§pop() > §§pop())
                                                {
                                                   addr157:
                                                   param1.AddMove(param1.m_baseMinion.m_spealizationMoves[2]);
                                                   if(_loc20_)
                                                   {
                                                   }
                                                   §§goto(addr181);
                                                }
                                                else
                                                {
                                                   param1.AddMove(param1.m_baseMinion.m_spealizationMoves[1]);
                                                   if(!(_loc21_ && Boolean(param2)))
                                                   {
                                                      §§goto(addr181);
                                                   }
                                                   addr187:
                                                   _loc6_ = new Vector.<int>();
                                                   if(!_loc21_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc20_)
                                                      {
                                                         §§push(200);
                                                         if(_loc20_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(!(_loc21_ && Boolean(param2)))
                                                               {
                                                                  _loc6_.push(2,0,1);
                                                                  if(_loc21_ && Boolean(param1))
                                                                  {
                                                                     addr232:
                                                                     _loc6_.push(0,1,2);
                                                                     if(_loc20_)
                                                                     {
                                                                        addr239:
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            else
                                                            {
                                                               addr224:
                                                               if(_loc5_ > 100)
                                                               {
                                                                  if(_loc20_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr232);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc6_.push(1,2,0);
                                                               }
                                                            }
                                                            var _loc7_:MinionTalentTree = param1.m_baseMinion.GetTalentTree(param1.m_currSpecialization);
                                                            var _loc9_:int = 0;
                                                            var _loc10_:int = 0;
                                                            var _loc13_:int = 0;
                                                            var _loc14_:int = 0;
                                                            var _loc15_:int = 0;
                                                            if(_loc20_)
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(_loc15_);
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(25);
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(_loc20_ || Boolean(param2))
                                                                           {
                                                                              §§push(param1.m_maxTalentPoints);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(param1.m_availableTalentPoints);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    addr682:
                                                                                    _loc12_ = §§pop() - §§pop();
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       addr688:
                                                                                       §§push(param1.m_maxTalentPoints);
                                                                                       §§push(10);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             addr695:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   addr698:
                                                                                                   §§pop();
                                                                                                   if(!(_loc21_ && Boolean(param2)))
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(!(_loc21_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr716:
                                                                                                         if(§§pop() < 11)
                                                                                                         {
                                                                                                            addr718:
                                                                                                            _loc9_ = 0;
                                                                                                            addr720:
                                                                                                            _loc4_ = 0;
                                                                                                            addr879:
                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                            {
                                                                                                               addr852:
                                                                                                               §§push(_loc4_);
                                                                                                               break;
                                                                                                            }
                                                                                                            this.BuildMinionTalentTreeForJustMovesWeShouldAdd(param1,param2,param1.m_baseMinion.GetTalentTree(_loc4_));
                                                                                                            _loc4_++;
                                                                                                            if(_loc4_ < param1.m_baseMinion.m_spealizationMoves.length)
                                                                                                            {
                                                                                                               if(_loc4_ != param1.m_currSpecialization)
                                                                                                               {
                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr879);
                                                                                                            }
                                                                                                            var _loc16_:int = 0;
                                                                                                            if(!(_loc21_ && Boolean(param2)))
                                                                                                            {
                                                                                                               addr975:
                                                                                                               if(_loc16_ < 10)
                                                                                                               {
                                                                                                                  §§push(int(Math.random() * 3));
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                     {
                                                                                                                        _loc19_ = §§pop();
                                                                                                                        if(_loc20_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(param1.m_currSpecialization);
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    this.BuildMinionTalentTreeRandomly(param1,param1.m_baseMinion.GetTalentTree(_loc19_));
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       addr944:
                                                                                                                                       §§push(param1.m_availableTalentPoints);
                                                                                                                                       if(_loc20_ || Boolean(param2))
                                                                                                                                       {
                                                                                                                                          addr960:
                                                                                                                                          §§push(0);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             addr963:
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc21_ && Boolean(param1))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr975);
                                                                                                                                                }
                                                                                                                                                addr978:
                                                                                                                                                return;
                                                                                                                                                addr971:
                                                                                                                                             }
                                                                                                                                             _loc16_++;
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr975);
                                                                                                                                             }
                                                                                                                                             §§goto(addr978);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr975);
                                                                                                                                    }
                                                                                                                                    §§goto(addr971);
                                                                                                                                 }
                                                                                                                                 §§goto(addr975);
                                                                                                                              }
                                                                                                                              §§goto(addr944);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr960);
                                                                                                                     }
                                                                                                                     §§goto(addr963);
                                                                                                                  }
                                                                                                                  §§goto(addr960);
                                                                                                               }
                                                                                                               §§goto(addr978);
                                                                                                            }
                                                                                                            §§goto(addr944);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr720);
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr879);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr716);
                                                                                          }
                                                                                          §§goto(addr698);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr879);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr720);
                                                                           }
                                                                           §§goto(addr879);
                                                                        }
                                                                        else
                                                                        {
                                                                           if(param1.m_availableTalentPoints == 0)
                                                                           {
                                                                              return;
                                                                           }
                                                                           §§push(false);
                                                                           if(_loc20_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!(_loc20_ || _loc3_))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          if(§§pop() >= 3)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(param1.m_maxTalentPoints - param1.m_availableTalentPoints);
                                                                                                if(!(_loc21_ && Boolean(param1)))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc20_ || Boolean(param1))
                                                                                                   {
                                                                                                      _loc12_ = §§pop();
                                                                                                      _loc14_++;
                                                                                                      if(!(_loc21_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(3);
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               addr436:
                                                                                                               if((_loc9_ = §§pop()) > _loc14_)
                                                                                                               {
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        addr446:
                                                                                                                        if(_loc9_ > 3)
                                                                                                                        {
                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                           {
                                                                                                                              _loc9_ = 3;
                                                                                                                              addr458:
                                                                                                                              §§push(!_loc11_);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc20_ || Boolean(param1))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr471:
                                                                                                                                       §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             addr477:
                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                             {
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc20_ || Boolean(param2))
                                                                                                                                             {
                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                loop4:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(_loc20_ || Boolean(param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(3);
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_));
                                                                                                                                                      if(!(_loc21_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         if(_loc20_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               _loc18_ = §§pop();
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  loop8:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                     addr635:
                                                                                                                                                                     loop7:
                                                                                                                                                                     while(§§pop() < _loc8_.m_moves.length)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.IsMoveOwned(_loc8_.m_moves[_loc18_]));
                                                                                                                                                                        if(_loc20_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_.m_isDependantOnPreviousRowMove);
                                                                                                                                                                              if(!(_loc21_ && Boolean(param2)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                 if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr562:
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr571:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_ - 1).DoesTheMinionHaveAllTheMovesInNode(param1));
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr586:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc20_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc18_++;
                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr633:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr586);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr594:
                                                                                                                                                                                          param1.AddMove(_loc8_.m_moves[_loc18_]);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc13_++;
                                                                                                                                                                                             if(!(_loc21_ && Boolean(param2)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1000);
                                                                                                                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                                                                   §§push(1000);
                                                                                                                                                                                                   if(_loc21_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                if(_loc21_ && _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr633);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr586);
                                                                                                                                                                                             §§goto(addr594);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                          addr600:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr586);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr562);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr586);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr571);
                                                                                                                                                                     }
                                                                                                                                                                     _loc4_++;
                                                                                                                                                                     continue loop4;
                                                                                                                                                                  }
                                                                                                                                                                  addr634:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr600);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr635);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr634);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr736:
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc20_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            if(_loc20_ || Boolean(param1))
                                                                                                                                                            {
                                                                                                                                                               addr847:
                                                                                                                                                               addr846:
                                                                                                                                                               if(_loc18_ >= _loc8_.m_moves.length)
                                                                                                                                                               {
                                                                                                                                                                  addr851:
                                                                                                                                                                  _loc4_++;
                                                                                                                                                                  §§goto(addr852);
                                                                                                                                                               }
                                                                                                                                                               §§push(param1.IsMoveOwned(_loc8_.m_moves[_loc18_]));
                                                                                                                                                               if(_loc20_ || Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_.m_isDependantOnPreviousRowMove);
                                                                                                                                                                     if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        if(_loc20_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc20_ || Boolean(param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr796:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_ - 1).DoesTheMinionHaveAllTheMovesInNode(param1));
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr811:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          param1.AddMove(_loc8_.m_moves[_loc18_]);
                                                                                                                                                                                          §§push(1000);
                                                                                                                                                                                          if(_loc20_ || Boolean(param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                                                                             if(!(_loc21_ && Boolean(this)))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr834:
                                                                                                                                                                                                §§push(1000);
                                                                                                                                                                                                if(!(_loc21_ && Boolean(param2)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr845:
                                                                                                                                                                                                      _loc18_++;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr847);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr846);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr847);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr845);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr811);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr834);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr811);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr796);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr845);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr811);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr851);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr847);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr718);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr852);
                                                                                                                                                }
                                                                                                                                                §§goto(addr879);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr688);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break loop3;
                                                                                                                                       }
                                                                                                                                       addr472:
                                                                                                                                    }
                                                                                                                                    §§goto(addr477);
                                                                                                                                 }
                                                                                                                                 §§goto(addr695);
                                                                                                                              }
                                                                                                                              §§goto(addr477);
                                                                                                                           }
                                                                                                                           §§goto(addr718);
                                                                                                                        }
                                                                                                                        §§goto(addr458);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr718);
                                                                                                               }
                                                                                                               §§goto(addr446);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr682);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr436);
                                                                                                      }
                                                                                                      §§goto(addr718);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr436);
                                                                                             }
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_));
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc20_ || Boolean(this))
                                                                                                   {
                                                                                                      _loc18_ = §§pop();
                                                                                                      loop11:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                         loop12:
                                                                                                         while(§§pop() < _loc8_.m_moves.length)
                                                                                                         {
                                                                                                            §§push(this.IsMoveAMoveWeShouldAdd(_loc8_.m_moves[_loc18_],param2));
                                                                                                            if(_loc20_ || _loc3_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  §§push(param1.IsMoveOwned(_loc8_.m_moves[_loc18_]));
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     addr336:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     if(_loc21_ && Boolean(param1))
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     param1.AddMove(_loc8_.m_moves[_loc18_]);
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        _loc13_++;
                                                                                                                        §§push(true);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(1000);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     addr373:
                                                                                                                  }
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  if(!(_loc21_ && Boolean(param2)))
                                                                                                                  {
                                                                                                                     §§push(1000);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        if(!(_loc20_ || Boolean(this)))
                                                                                                                        {
                                                                                                                           break loop12;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr373);
                                                                                                            }
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                         addr390:
                                                                                                         _loc4_++;
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr365);
                                                                                                }
                                                                                                §§goto(addr390);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr736);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr718);
                                                                                 }
                                                                                 §§goto(addr472);
                                                                              }
                                                                              addr275:
                                                                           }
                                                                           §§goto(addr471);
                                                                        }
                                                                     }
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        §§goto(addr736);
                                                                        §§push(_loc7_.GetMovesAt(_loc6_[_loc4_],_loc9_));
                                                                     }
                                                                     if(_loc20_ || Boolean(this))
                                                                     {
                                                                        §§goto(addr698);
                                                                     }
                                                                     §§goto(addr718);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr239);
                                                }
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr151);
                              }
                           }
                           §§goto(addr181);
                        }
                     }
                  }
                  §§goto(addr100);
               }
               break;
            }
            _loc5_ = §§pop();
            §§goto(addr187);
         }
         addr44:
      }
      
      public function BuildMinionTalentTreeForJustMovesWeShouldAdd(param1:OwnedMinion, param2:Vector.<int>, param3:MinionTalentTree) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:Vector.<int> = null;
         var _loc6_:MinionTalentTreeDataNode = null;
         var _loc8_:* = false;
         var _loc9_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         if(!(_loc15_ && Boolean(this)))
         {
            _loc4_ = Math.random() * 300;
         }
         _loc5_ = new Vector.<int>();
         if(!_loc15_)
         {
            §§push(_loc4_);
            if(!(_loc15_ && Boolean(this)))
            {
               §§push(200);
               if(_loc14_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc15_)
                     {
                        _loc5_.push(2,0,1);
                        if(_loc15_ && Boolean(this))
                        {
                           addr101:
                        }
                        addr107:
                        §§push(0);
                     }
                     §§goto(addr101);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!_loc15_)
                     {
                        addr81:
                        if(§§pop() > 100)
                        {
                           if(_loc14_ || Boolean(param1))
                           {
                              _loc5_.push(0,1,2);
                              if(!(_loc15_ && Boolean(param2)))
                              {
                                 §§goto(addr101);
                              }
                           }
                        }
                        else
                        {
                           _loc5_.push(1,2,0);
                        }
                        §§goto(addr107);
                     }
                  }
                  var _loc7_:* = §§pop();
                  var _loc10_:int = 0;
                  var _loc11_:int = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc11_);
                     loop1:
                     while(true)
                     {
                        §§push(8);
                        while(§§pop() < §§pop())
                        {
                           §§push(param1.m_availableTalentPoints);
                           if(_loc14_ || Boolean(param3))
                           {
                              §§push(0);
                              if(_loc15_ && Boolean(this))
                              {
                                 continue;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    return;
                                 }
                                 addr259:
                                 §§push(_loc8_);
                              }
                              else
                              {
                                 §§push(false);
                                 if(_loc14_)
                                 {
                                    _loc8_ = §§pop();
                                    §§push(0);
                                    if(!_loc14_)
                                    {
                                       continue loop1;
                                    }
                                    _loc12_ = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc12_);
                                       if(!(_loc14_ || Boolean(this)))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §§push(3);
                                          if(_loc14_ || Boolean(param2))
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §§goto(addr259);
                                             }
                                             else
                                             {
                                                _loc6_ = param3.GetMovesAt(_loc5_[_loc12_],_loc7_);
                                                if(!_loc15_)
                                                {
                                                   §§push(0);
                                                   if(_loc14_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc13_);
                                                         loop6:
                                                         while(§§pop() < _loc6_.m_moves.length)
                                                         {
                                                            §§push(this.IsMoveAMoveWeShouldAdd(_loc6_.m_moves[_loc13_],param2));
                                                            if(_loc14_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(_loc14_)
                                                               {
                                                                  §§push(param1.IsMoveOwned(_loc6_.m_moves[_loc13_]));
                                                                  if(!(_loc15_ && Boolean(param2)))
                                                                  {
                                                                     addr196:
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     param1.AddMove(_loc6_.m_moves[_loc13_]);
                                                                     _loc10_++;
                                                                     if(!_loc14_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(true);
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(1000);
                                                                     if(_loc14_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           addr212:
                                                                           while(true)
                                                                           {
                                                                              §§push(1000);
                                                                              if(_loc15_ && Boolean(this))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr211:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(_loc15_ && Boolean(param1))
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  addr208:
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr208);
                                             }
                                          }
                                          addr279:
                                          §§push(int(§§pop() / §§pop()));
                                          if(_loc14_ || Boolean(this))
                                          {
                                             addr288:
                                             _loc7_ = §§pop();
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              §§push(_loc10_);
                              if(!(_loc15_ && Boolean(param1)))
                              {
                                 §§push(3);
                                 if(!_loc14_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr288);
                           }
                           §§goto(addr250);
                        }
                        addr300:
                        return;
                     }
                  }
               }
            }
            §§goto(addr81);
         }
         §§goto(addr101);
      }
      
      public function AddExpToMinions(param1:Boolean = true) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc5_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc2_:* = 850;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc12_ || Boolean(_loc3_))
            {
               while(§§pop() < 5)
               {
                  §§push(Singleton.dynamicData);
                  if(_loc13_)
                  {
                     §§push(int(§§pop().m_opponentsMinions[0].m_currLevel));
                     break loop0;
                  }
                  if(§§pop().m_opponentsMinions[_loc4_] != null)
                  {
                     if(_loc12_ || Boolean(_loc2_))
                     {
                        _loc3_++;
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        if(_loc12_ || Boolean(_loc3_))
                        {
                           §§push(int(§§pop() + this.GetExtraExpValue(Singleton.dynamicData.m_opponentsMinions[_loc4_].m_expGainRate)));
                           if(_loc13_)
                           {
                              break loop0;
                           }
                           _loc2_ = §§pop();
                           if(!_loc12_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                        continue;
                     }
                  }
                  continue loop0;
               }
               addr88:
               §§goto(addr90);
               §§push(Singleton.dynamicData);
            }
            break;
         }
         var _loc6_:* = §§pop();
         var _loc7_:Number = 0;
         var _loc8_:int = 5;
         var _loc9_:int = 0;
         loop2:
         while(true)
         {
            §§push(_loc9_);
            loop3:
            while(true)
            {
               §§push(_loc8_);
               loop4:
               while(§§pop() < §§pop())
               {
                  §§push(uint(_loc2_));
                  if(!(_loc13_ && Boolean(this)))
                  {
                     _loc5_ = §§pop();
                     §§push(Singleton.dynamicData);
                     if(_loc12_)
                     {
                        §§push(_loc9_);
                        if(!_loc13_)
                        {
                           §§push(§§pop().GetOwnedMinionAt(§§pop()));
                           if(_loc12_)
                           {
                              if(§§pop() != null)
                              {
                                 if(_loc12_)
                                 {
                                    §§push(Singleton.dynamicData);
                                    if(!(_loc13_ && Boolean(_loc2_)))
                                    {
                                       §§push(_loc9_);
                                       if(_loc12_ || Boolean(_loc3_))
                                       {
                                          §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                          if(_loc12_)
                                          {
                                             §§push(§§pop().m_currLevel);
                                             if(_loc12_)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc13_)
                                                {
                                                   _loc7_ = §§pop() - §§pop();
                                                   if(!(_loc13_ && Boolean(this)))
                                                   {
                                                      §§push(Singleton.dynamicData);
                                                      if(_loc12_)
                                                      {
                                                         §§push(§§pop().m_currFloorOfTower);
                                                         §§push(0);
                                                         if(_loc13_)
                                                         {
                                                            continue;
                                                         }
                                                         addr173:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               §§push(int(Math.random() * 3));
                                                               §§push(int(Math.random() * 3));
                                                               if(_loc13_)
                                                               {
                                                                  continue;
                                                               }
                                                               _loc10_ = §§pop();
                                                               if(!(_loc13_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc12_ || Boolean(_loc3_))
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(_loc12_ || Boolean(_loc3_))
                                                                     {
                                                                        §§push(_loc7_);
                                                                        §§push(_loc10_);
                                                                        if(_loc12_ || Boolean(_loc3_))
                                                                        {
                                                                           addr227:
                                                                           _loc7_ = §§pop() + §§pop();
                                                                           §§push(_loc7_);
                                                                           §§push(0);
                                                                           if(_loc12_ || param1)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 addr238:
                                                                                 §§push(0);
                                                                                 if(!(_loc13_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    _loc11_ = §§pop();
                                                                                    if(!(_loc13_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          addr286:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= _loc7_)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   break loop4;
                                                                                                }
                                                                                                §§push(_loc5_);
                                                                                                §§push(50);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      addr295:
                                                                                                      §§push(50);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      _loc5_ = §§pop();
                                                                                                   }
                                                                                                   addr347:
                                                                                                   §§push(_loc5_);
                                                                                                   §§push(this.GetExtraExpModifyValue(Singleton.dynamicData.GetOwnedMinionAt(_loc9_).m_expGainRate));
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr357:
                                                                                                      §§push(_loc5_ = §§pop() * §§pop());
                                                                                                      §§push(1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_EXP) * 0.05);
                                                                                                      if(_loc12_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         addr376:
                                                                                                         §§push(uint(§§pop() * §§pop()));
                                                                                                         if(!(_loc13_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr386:
                                                                                                            if(!param1)
                                                                                                            {
                                                                                                               if(!(_loc13_ && param1))
                                                                                                               {
                                                                                                                  addr397:
                                                                                                                  _loc5_ *= 0.75;
                                                                                                                  addr396:
                                                                                                               }
                                                                                                               addr426:
                                                                                                               _loc9_++;
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            Singleton.dynamicData.GetOwnedMinionAt(_loc9_).m_currentExp = Singleton.dynamicData.GetOwnedMinionAt(_loc9_).m_currentExp + _loc5_;
                                                                                                            addr409:
                                                                                                            if(_loc13_ && param1)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            §§goto(addr426);
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      §§goto(addr397);
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                   addr300:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   if(!(_loc13_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!(_loc13_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc13_ && Boolean(this)))
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§goto(addr300);
                                                                                                         }
                                                                                                         §§goto(addr347);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr309:
                                                                                                         if(§§pop() < 0)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(!(_loc13_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * (§§pop() / 3));
                                                                                                                     if(_loc12_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr336:
                                                                                                                        §§push(§§pop() * -1);
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              addr342:
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 §§goto(addr347);
                                                                                                                              }
                                                                                                                              §§goto(addr397);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr357);
                                                                                                                     }
                                                                                                                     §§goto(addr397);
                                                                                                                  }
                                                                                                                  §§goto(addr336);
                                                                                                               }
                                                                                                               §§goto(addr357);
                                                                                                            }
                                                                                                            §§goto(addr347);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr347);
                                                                                                   }
                                                                                                }
                                                                                                addr257:
                                                                                             }
                                                                                             §§goto(addr357);
                                                                                             continue loop5;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr295);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    §§goto(addr309);
                                                                                 }
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   §§goto(addr386);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr286);
                                          }
                                       }
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr426);
                           }
                        }
                     }
                     §§goto(addr386);
                  }
                  §§goto(addr257);
               }
               return;
            }
         }
      }
      
      public function GetExtraExpValue(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(ExpGainRates.EXP_GAIN_RATE_VERY_EASY);
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     addr135:
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        addr78:
                        §§push(0);
                     }
                     else
                     {
                        addr119:
                        §§push(2);
                        if(_loc4_)
                        {
                           addr127:
                           §§push(§§pop() === _loc2_ ? 3 : 4);
                        }
                        else
                        {
                           addr122:
                        }
                     }
                     if(_loc3_)
                     {
                        switch(§§pop())
                        {
                           case 0:
                              §§push(-70);
                              if(_loc3_)
                              {
                                 return §§pop();
                              }
                              break;
                           case 1:
                              break;
                           case 2:
                              §§push(35);
                              if(_loc3_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr42);
                              break;
                           case 3:
                              §§push(70);
                              if(_loc3_)
                              {
                                 addr42:
                                 return §§pop();
                              }
                              §§goto(addr140);
                              break;
                           default:
                              addr140:
                              return §§pop();
                              return 0;
                        }
                        return §§pop();
                     }
                     §§goto(addr140);
                  }
                  else
                  {
                     §§push(ExpGainRates.EXP_GAIN_RATE_EASY);
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        addr85:
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(1);
                              if(!_loc3_)
                              {
                                 §§goto(addr122);
                              }
                              §§goto(addr135);
                           }
                           else
                           {
                              §§goto(addr119);
                           }
                        }
                        else
                        {
                           §§push(ExpGainRates.EXP_GAIN_RATE_HARD);
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr119);
                                    }
                                    §§goto(addr129);
                                 }
                                 else
                                 {
                                    §§push(ExpGainRates.EXP_GAIN_RATE_VERY_HARD);
                                    if(_loc3_)
                                    {
                                       §§goto(addr127);
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr127);
                           }
                        }
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr85);
            }
            §§goto(addr78);
         }
         §§goto(addr140);
      }
      
      public function GetExtraExpModifyValue(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            var _loc2_:* = §§pop();
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(ExpGainRates.EXP_GAIN_RATE_VERY_EASY);
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr143);
                     }
                     §§goto(addr137);
                  }
                  else
                  {
                     §§push(ExpGainRates.EXP_GAIN_RATE_EASY);
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_)
                           {
                              addr105:
                              §§push(1);
                           }
                           else
                           {
                              §§goto(addr137);
                           }
                        }
                        else
                        {
                           §§push(ExpGainRates.EXP_GAIN_RATE_HARD);
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(_loc3_ || Boolean(this))
                              {
                                 addr119:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(2);
                                       if(_loc3_)
                                       {
                                          addr132:
                                       }
                                       §§goto(addr143);
                                    }
                                    else
                                    {
                                       §§goto(addr137);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr135);
                                    §§push(ExpGainRates.EXP_GAIN_RATE_VERY_HARD);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr132);
                        }
                        addr143:
                        §§push(0);
                        if(_loc4_ && Boolean(this))
                        {
                           addr135:
                           §§push(§§pop() === _loc2_ ? 3 : 4);
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr151);
                        }
                        return §§pop();
                     }
                     §§goto(addr119);
                  }
               }
               §§goto(addr119);
            }
            §§goto(addr105);
         }
         addr151:
         switch(§§pop())
         {
            case 0:
               §§push(1.2);
               if(!(_loc4_ && _loc3_))
               {
                  return §§pop();
               }
               break;
            case 1:
               §§push(1.1);
               if(!_loc4_)
               {
                  return §§pop();
               }
               break;
            case 2:
               §§push(0.9);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr47);
               break;
            case 3:
               addr47:
               return §§pop();
               return 0.8;
            default:
               return 1;
         }
         return §§pop();
      }
      
      public function BuildMinionTalentTreeRandomly(param1:OwnedMinion, param2:MinionTalentTree) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:Vector.<int> = null;
         var _loc5_:MinionTalentTreeDataNode = null;
         var _loc8_:* = false;
         var _loc9_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         if(_loc14_)
         {
            _loc3_ = Math.random() * 300;
         }
         _loc4_ = new Vector.<int>();
         if(_loc14_ || Boolean(param1))
         {
            §§push(_loc3_);
            if(!(_loc13_ && Boolean(_loc3_)))
            {
               §§push(200);
               if(_loc14_ || Boolean(_loc3_))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc13_)
                     {
                        _loc4_.push(2,0,1);
                        if(!(_loc14_ || Boolean(param2)))
                        {
                           addr100:
                           _loc4_.push(0,1,2);
                           if(_loc14_)
                           {
                              addr107:
                           }
                        }
                        addr114:
                        var _loc6_:int = 0;
                        var _loc7_:int = 0;
                        var _loc10_:int = 0;
                        loop0:
                        while(true)
                        {
                           §§push(_loc10_);
                           §§push(20);
                           loop1:
                           while(§§pop() < §§pop())
                           {
                              §§push(param1.m_availableTalentPoints);
                              §§push(0);
                              if(!(_loc13_ && Boolean(param1)))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    return;
                                 }
                                 §§push(false);
                                 if(!_loc13_)
                                 {
                                    §§push(_loc8_ = §§pop());
                                    if(_loc14_ || Boolean(param2))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             §§push(_loc7_);
                                             §§push(0);
                                             if(_loc13_ && Boolean(param2))
                                             {
                                                continue;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(_loc7_);
                                                §§push(3);
                                                if(_loc14_ || Boolean(this))
                                                {
                                                   addr174:
                                                   _loc6_ = §§pop() / §§pop();
                                                   addr177:
                                                   addr178:
                                                   if(!_loc8_)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr181:
                                                      _loc11_ = 0;
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         §§push(3);
                                                         if(!_loc13_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  _loc5_ = param2.GetMovesAt(_loc4_[_loc11_],_loc6_);
                                                                  if(_loc14_ || Boolean(param2))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc14_ || Boolean(param2))
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              addr312:
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= _loc5_.m_moves.length)
                                                                                 {
                                                                                    addr316:
                                                                                    _loc11_++;
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(param1.IsMoveOwned(_loc5_.m_moves[_loc12_]));
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(_loc5_.m_isDependantOnPreviousRowMove);
                                                                                    if(!(_loc13_ && Boolean(param2)))
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc14_ || Boolean(param1))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr243:
                                                                                                §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2.GetMovesAt(_loc4_[_loc11_],_loc6_ - 1).DoesTheMinionHaveAllTheMovesInNode(param1));
                                                                                                   if(_loc14_ || Boolean(this))
                                                                                                   {
                                                                                                      addr260:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      addr260:
                                                                                                   }
                                                                                                   §§goto(addr243);
                                                                                                }
                                                                                                addr244:
                                                                                             }
                                                                                             §§goto(addr260);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(!(_loc13_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                param1.AddMove(_loc5_.m_moves[_loc12_]);
                                                                                                _loc7_++;
                                                                                                if(_loc14_ || Boolean(param2))
                                                                                                {
                                                                                                   addr283:
                                                                                                   §§push(1000);
                                                                                                   if(!(_loc14_ || Boolean(this)))
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   _loc11_ = §§pop();
                                                                                                }
                                                                                                §§push(1000);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   if(_loc14_ || Boolean(param2))
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§goto(addr243);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr321:
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   _loc10_++;
                                                   if(_loc13_ && Boolean(this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr174);
                           }
                           return;
                        }
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     §§push(_loc3_);
                     if(_loc14_ || Boolean(param2))
                     {
                        §§push(100);
                     }
                     §§goto(addr114);
                  }
               }
               if(§§pop() > §§pop())
               {
                  if(!(_loc13_ && Boolean(param1)))
                  {
                     §§goto(addr100);
                  }
               }
               else
               {
                  _loc4_.push(1,2,0);
               }
            }
            §§goto(addr114);
         }
         §§goto(addr107);
      }
      
      public function DisplayAllExp(param1:int, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:OwnedMinion = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:OwnedMinion = null;
         var _loc4_:Boolean = false;
         var _loc5_:Array = [0,1,2,4,5,6,7,9,10,11,12,14,15,16,17,19,20,21,22,23,24,25,26,27,28,29,30];
         var _loc6_:Array = [0,1,2,4,5,6,3,7,9,10,11,8,12,14,15,16,13,17,19,20,21,22,23,24,25,26,27,28,29,30];
         var _loc7_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc7_);
            loop1:
            while(true)
            {
               §§push(param1);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc16_)
                     {
                        §§goto(addr654);
                     }
                  }
                  else
                  {
                     if(_loc4_)
                     {
                        _loc8_ = int(_loc6_[_loc7_]);
                        if(_loc17_ || param3)
                        {
                           addr124:
                           §§push(Singleton.dynamicData);
                           §§push(_loc8_);
                           if(!(_loc16_ && param2))
                           {
                              §§pop().m_currFloorOfTower = §§pop();
                              if(_loc17_ || Boolean(this))
                              {
                                 §§push(Singleton.dynamicData.m_currFloorOfTower == 4);
                                 if(!(Singleton.dynamicData.m_currFloorOfTower == 4))
                                 {
                                    §§pop();
                                    if(!_loc16_)
                                    {
                                       §§push(Singleton.dynamicData.m_currFloorOfTower);
                                       if(_loc17_)
                                       {
                                          §§push(9);
                                          if(_loc17_ || param3)
                                          {
                                             addr166:
                                             §§push(§§pop() == §§pop());
                                             if(!(§§pop() == §§pop()))
                                             {
                                                §§pop();
                                                §§push(Singleton.dynamicData);
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop().m_currFloorOfTower);
                                                   if(!_loc17_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(14);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         addr182:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               §§pop();
                                                               §§push(Singleton.dynamicData.m_currFloorOfTower);
                                                               §§push(19);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc17_ || param2)
                                                                  {
                                                                     addr201:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc16_ && Boolean(this)))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(Singleton.dynamicData.m_currFloorOfTower);
                                                                              if(_loc17_ || param2)
                                                                              {
                                                                                 §§push(24);
                                                                                 if(!(_loc17_ || param3))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr231:
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc16_ && param3))
                                                                                 {
                                                                                    addr239:
                                                                                    §§push(§§pop());
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc17_ || Boolean(param1))
                                                                                          {
                                                                                             addr250:
                                                                                             §§pop();
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr253:
                                                                                                §§push(Singleton.dynamicData);
                                                                                                if(!(_loc16_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop().m_currFloorOfTower);
                                                                                                   §§push(29);
                                                                                                   if(!(_loc16_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr272:
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr276:
                                                                                                            §§pop();
                                                                                                            if(!(_loc16_ && Boolean(param1)))
                                                                                                            {
                                                                                                               addr289:
                                                                                                               if(Singleton.dynamicData.m_currFloorOfTower == 30)
                                                                                                               {
                                                                                                                  §§push(Singleton.staticData);
                                                                                                                  if(!(_loc16_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     §§push(§§pop().m_trainerSystem);
                                                                                                                     if(!(_loc16_ && param3))
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(_loc17_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc17_ || param2)
                                                                                                                           {
                                                                                                                              §§pop().LoadTrianer(§§pop(),§§pop());
                                                                                                                              §§push(Singleton.staticData);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().m_trainerSystem);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr338:
                                                                                                                                    §§push(§§pop().GetCurrentTrainer());
                                                                                                                                    if(!(_loc16_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().m_trainerType);
                                                                                                                                       if(_loc17_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                this.AddExpToMinions();
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   _loc12_ = 0;
                                                                                                                                                   loop17:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      addr427:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= 5)
                                                                                                                                                         {
                                                                                                                                                            break loop2;
                                                                                                                                                         }
                                                                                                                                                         §§push(Singleton.dynamicData);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr372:
                                                                                                                                                            loop25:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(_loc17_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if((_loc13_ = §§pop()) != null)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc13_.m_baseMinion.m_evolutionLevel == _loc13_.m_currLevel)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                           var _loc14_:*;
                                                                                                                                                                           §§push((_loc14_ = _loc13_).m_minionDexID);
                                                                                                                                                                           if(_loc17_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + 1);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc15_:* = §§pop();
                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc14_.m_minionDexID = _loc15_;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc16_ && param2)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     _loc12_++;
                                                                                                                                                                     continue loop17;
                                                                                                                                                                  }
                                                                                                                                                                  addr550:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if((_loc13_ = §§pop()) != null)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_.m_currLevel);
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_.m_baseMinion.m_evolutionLevel);
                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc17_ || Boolean(this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push((_loc14_ = _loc13_).m_minionDexID);
                                                                                                                                                                                       if(_loc17_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc14_.m_minionDexID = _loc15_;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr606:
                                                                                                                                                                                       if(_loc17_ || Boolean(param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr601:
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          §§push(5);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc12_++;
                                                                                                                                                                                       loop6:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(50);
                                                                                                                                                                                             addr611:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop6;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Singleton.dynamicData);
                                                                                                                                                                                                §§push(_loc12_);
                                                                                                                                                                                                break loop25;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       loop3:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc9_++;
                                                                                                                                                                                          if(!(_loc16_ && Boolean(this)))
                                                                                                                                                                                          {
                                                                                                                                                                                             loop4:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                addr621:
                                                                                                                                                                                                loop5:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() >= 7)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr625:
                                                                                                                                                                                                      _loc10_ = Singleton.staticData.GetRandomMinionForFloor(_loc8_);
                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         Singleton.dynamicData.AddToOwnedMinions(_loc10_);
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      Singleton.utility.UnlockNextFloor();
                                                                                                                                                                                                      continue loop0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(Singleton.staticData);
                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().m_trainerSystem);
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                               addr460:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().LoadTrianer(§§pop(),§§pop());
                                                                                                                                                                                                                  if(_loc17_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Singleton.staticData);
                                                                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().m_trainerSystem);
                                                                                                                                                                                                                           addr473:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().GetCurrentTrainer());
                                                                                                                                                                                                                              addr474:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().m_trainerType);
                                                                                                                                                                                                                                 if(!(_loc16_ && Boolean(this)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop5;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr664);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr472:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr625);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr508:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop3;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr459:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr473);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr455:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr472);
                                                                                                                                                                                                   §§goto(addr625);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(!(_loc16_ && Boolean(param1)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                                                                   if(!(_loc16_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(!param2);
                                                                                                                                                                                                         §§push(!param2);
                                                                                                                                                                                                         addr501:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  addr503:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                     §§push(TrainerType.HARD_TRAINER);
                                                                                                                                                                                                                     addr506:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                                                                        addr507:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr508);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(!param3);
                                                                                                                                                                                                                              §§push(!param3);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(TrainerType.EXPERT_TRAINER);
                                                                                                                                                                                                                                             if(!(_loc17_ || Boolean(this)))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr654);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr517:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr610);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr514:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr512:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr502:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr507);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr498:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr517);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr654:
                                                                                                                                                                                             addr653:
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr657:
                                                                                                                                                                                                   Singleton.dynamicData.m_currFloorOfTower = _loc6_[param1];
                                                                                                                                                                                                   Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
                                                                                                                                                                                                   addr672:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr664:
                                                                                                                                                                                                Singleton.dynamicData.m_currFloorOfTower = _loc5_[param1];
                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr672);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             return;
                                                                                                                                                                                             addr620:
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr607:
                                                                                                                                                                                       §§goto(addr657);
                                                                                                                                                                                       addr612:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr606);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr601);
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr606);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr601);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr606);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr550);
                                                                                                                                                            }
                                                                                                                                                            addr372:
                                                                                                                                                            addr549:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr657);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr498);
                                                                                                                                             }
                                                                                                                                             §§goto(addr514);
                                                                                                                                          }
                                                                                                                                          §§goto(addr610);
                                                                                                                                       }
                                                                                                                                       §§goto(addr427);
                                                                                                                                    }
                                                                                                                                    §§goto(addr474);
                                                                                                                                 }
                                                                                                                                 §§goto(addr473);
                                                                                                                              }
                                                                                                                              §§goto(addr455);
                                                                                                                           }
                                                                                                                           §§goto(addr460);
                                                                                                                        }
                                                                                                                        §§goto(addr459);
                                                                                                                     }
                                                                                                                     §§goto(addr338);
                                                                                                                  }
                                                                                                                  §§goto(addr625);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc9_ = 1;
                                                                                                                  if(_loc17_ || param2)
                                                                                                                  {
                                                                                                                     §§goto(addr620);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr530);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr653);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr289);
                                                                                                      }
                                                                                                      §§goto(addr512);
                                                                                                   }
                                                                                                   §§goto(addr289);
                                                                                                }
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                          §§goto(addr507);
                                                                                       }
                                                                                       §§goto(addr272);
                                                                                    }
                                                                                    §§goto(addr501);
                                                                                 }
                                                                                 §§goto(addr502);
                                                                              }
                                                                              §§goto(addr621);
                                                                           }
                                                                           §§goto(addr540);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr507);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr506);
                                                }
                                                §§goto(addr372);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr611);
                                       }
                                       §§goto(addr427);
                                    }
                                    §§goto(addr253);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr503);
                           }
                           §§goto(addr549);
                        }
                        §§goto(addr612);
                     }
                     else
                     {
                        §§push(int(_loc5_[_loc7_]));
                        if(!(_loc17_ || param2))
                        {
                           continue loop1;
                        }
                        _loc8_ = §§pop();
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr657);
               }
               Singleton.utility.UnlockNextFloor();
               if(_loc17_ || param2)
               {
                  continue loop0;
               }
               §§goto(addr657);
            }
         }
      }
      
      public function UnlockNextFloor() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         this.m_screenControllers.m_topDownScreen.m_gemShop.CreateNewGems();
         §§push(Singleton.dynamicData);
         if(!_loc3_)
         {
            §§push(§§pop().m_currFloorOfTower);
            if(!_loc3_)
            {
               §§push(2);
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              §§push(Singleton.dynamicData.m_currFloorOfTower == 7);
                              if(_loc2_)
                              {
                                 addr62:
                                 §§push(§§pop());
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop();
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             §§push(Singleton.dynamicData.m_currFloorOfTower);
                                             if(_loc2_)
                                             {
                                                addr88:
                                                §§push(§§pop() == 12);
                                                §§push(§§pop() == 12);
                                                if(!_loc3_)
                                                {
                                                   addr91:
                                                   if(!§§pop())
                                                   {
                                                      if(_loc2_ || Boolean(_loc1_))
                                                      {
                                                         §§pop();
                                                         §§push(Singleton.dynamicData);
                                                         if(_loc2_ || Boolean(_loc1_))
                                                         {
                                                            §§push(§§pop().m_currFloorOfTower);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(17);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     addr128:
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(Singleton.dynamicData);
                                                                        if(!(_loc3_ && Boolean(_loc1_)))
                                                                        {
                                                                           §§push(Singleton.dynamicData);
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().m_currFloorOfTower);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§push(2);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§pop().SetHasUnlockedFloor(§§pop(),§§pop());
                                                                                          if(_loc3_ && _loc3_)
                                                                                          {
                                                                                             addr190:
                                                                                             §§push(Singleton.dynamicData);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                addr201:
                                                                                                §§push(§§pop().m_currFloorOfTower);
                                                                                                §§push(11);
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   addr211:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr222:
                                                                                                            §§push(Singleton.dynamicData.m_currFloorOfTower == 16);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               addr225:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr227:
                                                                                                                  §§pop();
                                                                                                                  §§push(Singleton.dynamicData);
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr239:
                                                                                                                     §§push(§§pop().m_currFloorOfTower == 21);
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        addr242:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr243:
                                                                                                                           §§push(Singleton.dynamicData);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(Singleton.dynamicData);
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr256:
                                                                                                                                 §§push(§§pop().m_currFloorOfTower);
                                                                                                                                 if(_loc2_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    §§push(3);
                                                                                                                                    if(_loc2_ || Boolean(_loc1_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc2_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          addr281:
                                                                                                                                          if(!§§pop().GetHasUnlockedFloor(§§pop()))
                                                                                                                                          {
                                                                                                                                             if(_loc2_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr289:
                                                                                                                                                §§push(Singleton.dynamicData);
                                                                                                                                                §§push(Singleton.dynamicData);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().m_currFloorOfTower);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr298:
                                                                                                                                                      §§push(3);
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr309:
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().SetHasUnlockedFloor(§§pop(),§§pop());
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr317:
                                                                                                                                                                  §§push(Singleton.dynamicData.m_currFloorOfTower);
                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr334:
                                                                                                                                                                        §§push(§§pop() / 5);
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr332:
                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                        }
                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                        §§push(Singleton.dynamicData);
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr339:
                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                           if(_loc2_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().SetAnimateNewFloor(§§pop(),true);
                                                                                                                                                                              addr349:
                                                                                                                                                                              §§push(Singleton.dynamicData);
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr353:
                                                                                                                                                                                 §§push(Singleton.dynamicData);
                                                                                                                                                                                 if(_loc2_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr362:
                                                                                                                                                                                    §§push(§§pop().m_currFloorOfTower);
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc2_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr376:
                                                                                                                                                                                             §§push(true);
                                                                                                                                                                                             if(_loc2_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr391:
                                                                                                                                                                                                §§pop().SetHasUnlockedFloor(§§pop(),§§pop());
                                                                                                                                                                                                if(_loc2_ || Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr409);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr407:
                                                                                                                                                                                             §§push(true);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().SetHasUnlockedFloor(§§pop(),§§pop());
                                                                                                                                                                                          §§goto(addr409);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr406:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr407);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr405:
                                                                                                                                                                                       §§goto(addr406);
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr406);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr405);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr402:
                                                                                                                                                                                 §§push(Singleton.dynamicData);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr405);
                                                                                                                                                                              §§push(§§pop().m_currFloorOfTower);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr405);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr353);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr332);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr334);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr349);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr391);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr376);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr406);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr405);
                                                                                                                                                }
                                                                                                                                                §§goto(addr362);
                                                                                                                                             }
                                                                                                                                             §§goto(addr334);
                                                                                                                                          }
                                                                                                                                          §§goto(addr349);
                                                                                                                                       }
                                                                                                                                       §§goto(addr309);
                                                                                                                                    }
                                                                                                                                    §§goto(addr406);
                                                                                                                                 }
                                                                                                                                 §§goto(addr298);
                                                                                                                              }
                                                                                                                              §§goto(addr362);
                                                                                                                           }
                                                                                                                           §§goto(addr317);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(Singleton.dynamicData);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr281);
                                                                                                                  }
                                                                                                                  §§goto(addr402);
                                                                                                               }
                                                                                                               §§goto(addr242);
                                                                                                            }
                                                                                                            §§goto(addr281);
                                                                                                         }
                                                                                                         §§goto(addr243);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr225);
                                                                                                }
                                                                                                §§goto(addr222);
                                                                                             }
                                                                                             §§goto(addr353);
                                                                                          }
                                                                                          addr409:
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr391);
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr406);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr181:
                                                                        §§push(Singleton.dynamicData.m_currFloorOfTower == 6);
                                                                        §§push(Singleton.dynamicData.m_currFloorOfTower == 6);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr190);
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr225);
                                                                     }
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr289);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr243);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr181);
               }
               §§goto(addr222);
            }
            §§goto(addr239);
         }
         §§goto(addr201);
      }
      
      public function CheckForSiteLock() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:URLRequest = null;
      }
      
      private function GetTrainerTypeName(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || Boolean(param1))
         {
            var _loc2_:* = §§pop();
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(TrainerType.NORMAL_TRAINER);
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(_loc3_ || _loc2_ ? 0 : 3);
                  }
                  else
                  {
                     §§push(TrainerType.HARD_TRAINER);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr163);
                              }
                              else
                              {
                                 addr151:
                                 addr163:
                                 addr164:
                                 switch(1)
                                 {
                                    case 0:
                                       §§push("Normal Trainer");
                                       if(_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    case 1:
                                       §§push("Hard Traner");
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    case 2:
                                       §§push("Boss Trainer");
                                       if(_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    case 3:
                                       §§push("Expert Trainer");
                                       if(_loc3_ || _loc3_)
                                       {
                                          return §§pop();
                                       }
                                       addr57:
                                       §§push(§§pop() + param1);
                                       break;
                                    default:
                                       §§push("");
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr57);
                                       }
                                 }
                                 return §§pop();
                                 §§push(2);
                              }
                           }
                           else
                           {
                              §§push(TrainerType.BOSS_TRAINER);
                              §§push(_loc2_);
                              if(_loc3_ || Boolean(param1))
                              {
                              }
                              addr156:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr157);
                              }
                              else
                              {
                                 §§goto(addr163);
                                 §§push(4);
                              }
                           }
                           §§goto(addr163);
                        }
                        if(§§pop() === §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr151);
                           }
                           else
                           {
                              §§goto(addr157);
                           }
                        }
                        else
                        {
                           §§goto(addr156);
                           §§push(TrainerType.EXPERT_TRAINER);
                           §§push(_loc2_);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr163);
               }
               §§goto(addr156);
            }
            §§goto(addr157);
         }
         §§goto(addr164);
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
