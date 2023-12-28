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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr24:
               this.m_currBackground = new BattleBackground();
               if(!(_loc2_ && _loc2_))
               {
                  this.m_visualMinionsForOpponent = new Vector.<BattleScreenMinionVisual>(5);
                  if(_loc1_ || _loc2_)
                  {
                     this.m_visualMinionsForPlayer = new Vector.<BattleScreenMinionVisual>(5);
                  }
                  §§goto(addr95);
               }
               this.m_visualMinionsForOpponentOverGrey = new Vector.<BattleScreenMinionVisual>(5);
               if(!(_loc2_ && _loc2_))
               {
                  this.m_visualMinionsForPlayerOverGrey = new Vector.<BattleScreenMinionVisual>(5);
                  this.m_currState = BattleScreenViualControllerStates.BSVCS_NOT_ACTIVE;
               }
            }
            addr95:
            return;
         }
         §§goto(addr24);
      }
      
      public function BringInGroundDamageForMinion(param1:OwnedMinion, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            §§push(Singleton.dynamicData);
            if(!_loc4_)
            {
               if(§§pop().GetOwnedMinionAt(_loc3_) == param1)
               {
                  if(!(_loc5_ || Boolean(this)))
                  {
                     break;
                  }
                  TweenLite.to(this.m_visualImpactsForMinionsForPlayer[_loc3_][param2],0.7,{
                     "delay":0.15,
                     "alpha":1
                  });
                  if(_loc5_)
                  {
                     addr56:
                     if(Singleton.dynamicData.m_opponentsMinions[_loc3_] == param1)
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                        TweenLite.to(this.m_visualImpactsForMinionsForOpponent[_loc3_][param2],0.7,{
                           "delay":0.15,
                           "alpha":1
                        });
                        if(!_loc5_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc3_++;
                  if(_loc4_ && Boolean(param1))
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr56);
         }
      }
      
      public function LoadSprites(param1:Sprite) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:Vector.<Sprite> = null;
         var _loc8_:Vector.<Sprite> = null;
         var _loc9_:* = 0;
         if(_loc10_ || _loc2_)
         {
            this.m_currBackground.AddBackground(param1);
         }
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc11_)
            {
               §§push(5);
               if(!(_loc11_ && Boolean(param1)))
               {
                  if(§§pop() >= §§pop())
                  {
                     this.m_visualMinionsForOpponent[0].x = 424;
                     this.m_visualMinionsForOpponent[0].y = 260;
                     if(_loc10_ || Boolean(_loc2_))
                     {
                        this.m_visualMinionsForOpponent[1].x = 520;
                        addr90:
                        this.m_visualMinionsForOpponent[1].y = 347;
                        this.m_visualMinionsForOpponent[2].x = 450;
                        this.m_visualMinionsForOpponent[2].y = 463;
                     }
                     this.m_visualMinionsForOpponent[3].x = 614;
                     this.m_visualMinionsForOpponent[3].y = 278;
                     this.m_visualMinionsForOpponent[4].x = 618;
                     this.m_visualMinionsForOpponent[4].y = 434;
                     this.m_visualMinionsForPlayer[0].x = 289;
                     this.m_visualMinionsForPlayer[0].y = 260;
                     if(!(_loc11_ && Boolean(this)))
                     {
                        this.m_visualMinionsForPlayer[1].x = 209;
                        this.m_visualMinionsForPlayer[1].y = 347;
                        this.m_visualMinionsForPlayer[2].x = 287;
                        this.m_visualMinionsForPlayer[2].y = 463;
                        this.m_visualMinionsForPlayer[3].x = 99;
                        if(!(_loc11_ && Boolean(param1)))
                        {
                           this.m_visualMinionsForPlayer[3].y = 280;
                           this.m_visualMinionsForPlayer[4].x = 115;
                        }
                     }
                     this.m_visualMinionsForPlayer[4].y = 439;
                     if(!_loc11_)
                     {
                        §§push(0);
                        if(!(_loc11_ && _loc3_))
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc10_)
                              {
                              }
                              break loop0;
                           }
                           addr246:
                        }
                        while(true)
                        {
                           §§push(5);
                           if(!_loc11_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 this.m_visualMinionsForOpponent[_loc2_].y += 34;
                                 this.m_visualMinionsForPlayer[_loc2_].y += 34;
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    §§goto(addr246);
                                 }
                                 addr243:
                              }
                              break loop0;
                           }
                           break;
                        }
                        addr255:
                        var _loc3_:Array = null;
                        var _loc4_:Array = [30,45,44,38];
                        if(_loc10_)
                        {
                           this.m_visualImpactsForMinionsForPlayer = new Vector.<Vector.<Sprite>>(5);
                           if(_loc10_ || Boolean(_loc2_))
                           {
                              addr285:
                              this.m_visualImpactsForMinionsForOpponent = new Vector.<Vector.<Sprite>>(5);
                           }
                           var _loc5_:int = 0;
                           loop2:
                           while(_loc5_ < 5)
                           {
                              _loc7_ = new Vector.<Sprite>(4);
                              _loc8_ = new Vector.<Sprite>(4);
                              §§push(0);
                              if(!_loc11_)
                              {
                                 _loc9_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                 }
                                 addr465:
                              }
                              while(true)
                              {
                                 if(§§pop() >= 4)
                                 {
                                    if(!(_loc11_ && Boolean(this)))
                                    {
                                       addr475:
                                       this.m_visualImpactsForMinionsForPlayer[_loc5_] = _loc7_;
                                       break;
                                    }
                                    break;
                                 }
                                 _loc7_[_loc9_] = Singleton.utility.m_spriteHandler.CreateSprite("groundCrack_" + (_loc9_ + 1));
                                 if(!(_loc11_ && Boolean(_loc3_)))
                                 {
                                    _loc7_[_loc9_].x = this.m_visualMinionsForPlayer[_loc5_].x + _loc3_[_loc9_];
                                    if(_loc11_)
                                    {
                                       continue;
                                    }
                                    _loc7_[_loc9_].y = this.m_visualMinionsForPlayer[_loc5_].y - _loc4_[_loc9_];
                                    if(_loc10_)
                                    {
                                       _loc7_[_loc9_].scaleX = -1;
                                       if(_loc11_ && Boolean(_loc2_))
                                       {
                                          continue loop2;
                                       }
                                       _loc7_[_loc9_].alpha = 0;
                                       if(!(_loc11_ && Boolean(param1)))
                                       {
                                          param1.addChild(_loc7_[_loc9_]);
                                          _loc8_[_loc9_] = Singleton.utility.m_spriteHandler.CreateSprite("groundCrack_" + (_loc9_ + 1));
                                          if(_loc11_ && Boolean(param1))
                                          {
                                             break;
                                          }
                                          addr415:
                                          _loc8_[_loc9_].x = this.m_visualMinionsForOpponent[_loc5_].x - _loc3_[_loc9_];
                                          if(_loc10_)
                                          {
                                             addr430:
                                             _loc8_[_loc9_].y = this.m_visualMinionsForOpponent[_loc5_].y - _loc4_[_loc9_];
                                             _loc8_[_loc9_].alpha = 0;
                                             if(!_loc10_)
                                             {
                                                addr492:
                                                break;
                                             }
                                             param1.addChild(_loc8_[_loc9_]);
                                             if(_loc10_ || Boolean(_loc3_))
                                             {
                                                _loc9_++;
                                                if(!_loc11_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr475);
                                             }
                                             _loc5_++;
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                       §§goto(addr415);
                                    }
                                    §§goto(addr475);
                                 }
                                 §§goto(addr430);
                                 §§goto(addr475);
                              }
                              this.m_visualImpactsForMinionsForOpponent[_loc5_] = _loc8_;
                              if(_loc11_ && Boolean(this))
                              {
                                 continue;
                              }
                              §§goto(addr492);
                           }
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              this.m_minionsTurnIndicator = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenCurrMinionsTurn");
                              param1.addChild(this.m_minionsTurnIndicator);
                              this.m_minionsTurnIndicator.alpha = 0;
                              if(!(_loc11_ && Boolean(param1)))
                              {
                                 this.m_shieldMod = new ShieldModVisuals();
                                 §§push(this.m_shieldMod);
                                 if(!_loc11_)
                                 {
                                    §§push(304);
                                    if(!_loc11_)
                                    {
                                       §§pop().x = §§pop();
                                       if(!(_loc11_ && Boolean(_loc3_)))
                                       {
                                          §§push(this.m_shieldMod);
                                          if(!(_loc11_ && Boolean(_loc3_)))
                                          {
                                             addr554:
                                             §§pop().y = 119;
                                             if(!(_loc11_ && Boolean(_loc3_)))
                                             {
                                                addr564:
                                                this.m_shieldMod.LoadSprites();
                                                if(!_loc11_)
                                                {
                                                   param1.addChild(this.m_shieldMod);
                                                   this.m_moveTimerMod = new MoveTimerModVisuals();
                                                   §§push(this.m_moveTimerMod);
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(304);
                                                      if(_loc10_ || Boolean(_loc3_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            §§push(this.m_moveTimerMod);
                                                            if(!_loc11_)
                                                            {
                                                               addr600:
                                                               §§pop().y = 82;
                                                               if(!(_loc11_ && Boolean(this)))
                                                               {
                                                                  addr610:
                                                                  this.m_moveTimerMod.LoadSprites();
                                                               }
                                                               param1.addChild(this.m_moveTimerMod);
                                                               if(!(_loc11_ && Boolean(_loc3_)))
                                                               {
                                                                  this.m_extraMinionsMod = new ExtraMinionsModVisuals();
                                                                  if(_loc10_)
                                                                  {
                                                                     addr628:
                                                                     §§push(this.m_extraMinionsMod);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(268);
                                                                        if(!(_loc11_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           if(_loc10_ || Boolean(_loc3_))
                                                                           {
                                                                              §§push(this.m_extraMinionsMod);
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr653:
                                                                                 §§pop().y = 82;
                                                                                 §§push(this.m_extraMinionsMod);
                                                                                 addr652:
                                                                              }
                                                                              §§pop().LoadSprites();
                                                                              addr657:
                                                                              param1.addChild(this.m_extraMinionsMod);
                                                                              addr661:
                                                                              this.m_resurectionMod = new ResurectionModVisuals();
                                                                           }
                                                                           §§push(this.m_resurectionMod);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(319);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 addr686:
                                                                                 §§push(this.m_resurectionMod);
                                                                                 if(_loc10_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(123);
                                                                                 }
                                                                                 §§pop().LoadSprites();
                                                                                 param1.addChild(this.m_resurectionMod);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    this.m_tombstoneSprites = new Vector.<Sprite>(5);
                                                                                    addr707:
                                                                                    this.m_tombstoneCountTexts = new Vector.<TextField>(5);
                                                                                    var _loc6_:TextFormat;
                                                                                    (_loc6_ = new TextFormat()).color = 15066856;
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       _loc6_.size = 28;
                                                                                       _loc6_.font = "BurbinCasual";
                                                                                       _loc6_.align = TextFormatAlign.CENTER;
                                                                                       if(!(_loc11_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(5);
                                                                                                   if(!(_loc11_ && Boolean(this)))
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         param1.addChild(this.m_visualMinionsForOpponent[0]);
                                                                                                         param1.addChild(this.m_visualMinionsForOpponent[3]);
                                                                                                         param1.addChild(this.m_visualMinionsForOpponent[1]);
                                                                                                         param1.addChild(this.m_visualMinionsForOpponent[4]);
                                                                                                         param1.addChild(this.m_visualMinionsForOpponent[2]);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            param1.addChild(this.m_visualMinionsForPlayer[0]);
                                                                                                            param1.addChild(this.m_visualMinionsForPlayer[3]);
                                                                                                            addr947:
                                                                                                            param1.addChild(this.m_visualMinionsForPlayer[1]);
                                                                                                            param1.addChild(this.m_visualMinionsForPlayer[4]);
                                                                                                            param1.addChild(this.m_visualMinionsForPlayer[2]);
                                                                                                            this.m_greyedOutLayer = new Sprite();
                                                                                                            if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               this.m_greyedOutLayer.graphics.beginFill(0);
                                                                                                               this.m_greyedOutLayer.graphics.drawRect(0,0,700,525);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  this.m_greyedOutLayer.graphics.endFill();
                                                                                                                  param1.addChild(this.m_greyedOutLayer);
                                                                                                                  this.m_greyedOutLayer.alpha = 0;
                                                                                                                  this.m_movesSelectButton = new TCButton(this.ReturnToMoves,"battleScreenMenus_movesDeselectButton");
                                                                                                                  if(_loc10_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     param1.addChild(this.m_movesSelectButton);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr1023:
                                                                                                                        this.m_movesSelectButton.visible = false;
                                                                                                                        if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           addr1034:
                                                                                                                           §§push(0);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           loop8:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(5);
                                                                                                                              addr1108:
                                                                                                                              while(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 this.m_visualMinionsForOpponentOverGrey[_loc2_] = new BattleScreenMinionVisual();
                                                                                                                                 if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    this.m_visualMinionsForOpponentOverGrey[_loc2_].x = this.m_visualMinionsForOpponent[_loc2_].x;
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    this.m_visualMinionsForOpponentOverGrey[_loc2_].y = this.m_visualMinionsForOpponent[_loc2_].y;
                                                                                                                                    this.m_visualMinionsForPlayerOverGrey[_loc2_] = new BattleScreenMinionVisual();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.m_visualMinionsForPlayerOverGrey[_loc2_].x = this.m_visualMinionsForPlayer[_loc2_].x;
                                                                                                                                       this.m_visualMinionsForPlayerOverGrey[_loc2_].y = this.m_visualMinionsForPlayer[_loc2_].y;
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          _loc2_++;
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop8;
                                                                                                                                             }
                                                                                                                                             addr1106:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1213:
                                                                                                                                             param1.addChild(this.m_mousePointObject);
                                                                                                                                             this.m_mousePointObject.visible = false;
                                                                                                                                             this.m_moveSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_chooseAMove");
                                                                                                                                             if(_loc10_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                this.m_moveSelectTutorial.x = 306;
                                                                                                                                                if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                                                {
                                                                                                                                                   this.m_moveSelectTutorial.y = 33;
                                                                                                                                                   addr1250:
                                                                                                                                                   param1.addChild(this.m_moveSelectTutorial);
                                                                                                                                                   addr1254:
                                                                                                                                                   this.m_moveSelectTutorial.visible = false;
                                                                                                                                                   this.m_opponentSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_chooseAnOpponetsMinion");
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      this.m_opponentSelectTutorial.x = 465;
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         this.m_opponentSelectTutorial.y = 122;
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr1279:
                                                                                                                                                            param1.addChild(this.m_opponentSelectTutorial);
                                                                                                                                                            this.m_opponentSelectTutorial.visible = false;
                                                                                                                                                            if(!(_loc11_ && Boolean(this)))
                                                                                                                                                            {
                                                                                                                                                               this.m_selectMinionTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_selectYourMinion");
                                                                                                                                                               this.m_selectMinionTutorial.x = 465;
                                                                                                                                                               this.m_selectMinionTutorial.y = 122;
                                                                                                                                                               param1.addChild(this.m_selectMinionTutorial);
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               addr1369:
                                                                                                                                                               this.m_collList = new RectangleCollisionList(this.m_mousePointObject);
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  this.m_flash = new Sprite();
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     param1.addChild(this.m_flash);
                                                                                                                                                                     if(_loc10_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        addr1401:
                                                                                                                                                                        this.m_flash.visible = false;
                                                                                                                                                                        if(_loc10_ || Boolean(_loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr1412:
                                                                                                                                                                           param1.addEventListener(MouseEvent.MOUSE_UP,this.reportClick);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1412);
                                                                                                                                                            }
                                                                                                                                                            addr1334:
                                                                                                                                                            param1.addChild(this.m_deselectMinionTutorial);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               addr1340:
                                                                                                                                                               this.m_deselectMinionTutorial.visible = false;
                                                                                                                                                               this.m_spaceToSkipTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_spaceToSkip");
                                                                                                                                                               this.m_spaceToSkipTutorial.x = 8;
                                                                                                                                                            }
                                                                                                                                                            this.m_spaceToSkipTutorial.y = 485;
                                                                                                                                                         }
                                                                                                                                                         param1.addChild(this.m_spaceToSkipTutorial);
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            this.m_spaceToSkipTutorial.visible = false;
                                                                                                                                                            §§goto(addr1369);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1401);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1340);
                                                                                                                                                   }
                                                                                                                                                   addr1319:
                                                                                                                                                   this.m_deselectMinionTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_clickGroundToDeselectMinion");
                                                                                                                                                   this.m_deselectMinionTutorial.x = 43;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1334);
                                                                                                                                             }
                                                                                                                                             this.m_deselectMinionTutorial.y = 387;
                                                                                                                                             §§goto(addr1334);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    this.m_selectMinionTutorial.visible = false;
                                                                                                                                    §§goto(addr1319);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1250);
                                                                                                                              }
                                                                                                                              param1.addChild(this.m_visualMinionsForOpponentOverGrey[0]);
                                                                                                                              param1.addChild(this.m_visualMinionsForOpponentOverGrey[3]);
                                                                                                                              param1.addChild(this.m_visualMinionsForOpponentOverGrey[1]);
                                                                                                                              param1.addChild(this.m_visualMinionsForOpponentOverGrey[4]);
                                                                                                                              param1.addChild(this.m_visualMinionsForOpponentOverGrey[2]);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 param1.addChild(this.m_visualMinionsForPlayerOverGrey[0]);
                                                                                                                              }
                                                                                                                              param1.addChild(this.m_visualMinionsForPlayerOverGrey[3]);
                                                                                                                              addr1153:
                                                                                                                              param1.addChild(this.m_visualMinionsForPlayerOverGrey[1]);
                                                                                                                              param1.addChild(this.m_visualMinionsForPlayerOverGrey[4]);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 param1.addChild(this.m_visualMinionsForPlayerOverGrey[2]);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    this.m_mousePointObject = new Sprite();
                                                                                                                                    if(!(_loc11_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       this.m_mousePointObject.graphics.beginFill(16777215,1);
                                                                                                                                       if(!(_loc11_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          this.m_mousePointObject.graphics.drawRect(0,0,1,1);
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             this.m_mousePointObject.graphics.endFill();
                                                                                                                                             §§goto(addr1213);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1250);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1401);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1250);
                                                                                                                           }
                                                                                                                           addr1107:
                                                                                                                        }
                                                                                                                        §§goto(addr1081);
                                                                                                                     }
                                                                                                                     §§goto(addr1213);
                                                                                                                  }
                                                                                                                  §§goto(addr1153);
                                                                                                               }
                                                                                                               §§goto(addr1213);
                                                                                                            }
                                                                                                            §§goto(addr1254);
                                                                                                         }
                                                                                                         §§goto(addr1279);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.m_tombstoneSprites[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("modStone_tombstone");
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            param1.addChild(this.m_tombstoneSprites[_loc2_]);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               this.m_tombstoneSprites[_loc2_].x = this.m_visualMinionsForOpponent[_loc2_].x - this.m_tombstoneSprites[_loc2_].width / 2;
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  this.m_tombstoneSprites[_loc2_].y = this.m_visualMinionsForOpponent[_loc2_].y - this.m_tombstoneSprites[_loc2_].height;
                                                                                                                  this.m_tombstoneSprites[_loc2_].visible = false;
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     this.m_tombstoneCountTexts[_loc2_] = new TextField();
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].x = 16;
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].y = 25;
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].embedFonts = true;
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].defaultTextFormat = _loc6_;
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].wordWrap = true;
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].autoSize = TextFieldAutoSize.CENTER;
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].text = "9";
                                                                                                                        this.m_tombstoneCountTexts[_loc2_].width = 50;
                                                                                                                        if(!(_loc11_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           this.m_tombstoneCountTexts[_loc2_].selectable = false;
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr1369);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1034);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1369);
                                                                                                                  }
                                                                                                                  §§goto(addr1213);
                                                                                                               }
                                                                                                               §§goto(addr1153);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr947);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1340);
                                                                                                   }
                                                                                                   §§goto(addr1108);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             §§goto(addr1106);
                                                                                          }
                                                                                          §§goto(addr1107);
                                                                                       }
                                                                                       §§goto(addr1279);
                                                                                    }
                                                                                    §§goto(addr1023);
                                                                                 }
                                                                                 §§goto(addr707);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              addr684:
                                                                              §§push(this.m_resurectionMod);
                                                                           }
                                                                           §§goto(addr686);
                                                                        }
                                                                        §§goto(addr653);
                                                                     }
                                                                     §§goto(addr652);
                                                                  }
                                                                  §§goto(addr707);
                                                               }
                                                               §§goto(addr653);
                                                            }
                                                         }
                                                         §§goto(addr610);
                                                      }
                                                      §§goto(addr600);
                                                   }
                                                   §§goto(addr610);
                                                }
                                                §§goto(addr661);
                                             }
                                          }
                                          §§goto(addr564);
                                       }
                                       §§goto(addr657);
                                    }
                                    §§goto(addr554);
                                 }
                                 §§goto(addr564);
                              }
                              §§goto(addr628);
                           }
                           §§goto(addr684);
                        }
                        §§goto(addr285);
                     }
                     §§goto(addr243);
                  }
                  else
                  {
                     this.m_visualMinionsForOpponent[_loc2_] = new BattleScreenMinionVisual();
                     if(_loc10_)
                     {
                        this.m_visualMinionsForPlayer[_loc2_] = new BattleScreenMinionVisual();
                        _loc2_++;
                        if(_loc10_)
                        {
                           continue;
                        }
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr255);
            }
            break;
         }
         §§goto(addr255);
         §§push(60);
      }
      
      public function ResetAllPositions() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:int = 0;
         this.m_visualMinionsForOpponent[0].x = 424;
         this.m_visualMinionsForOpponent[0].y = 260;
         this.m_visualMinionsForOpponent[1].x = 520;
         this.m_visualMinionsForOpponent[1].y = 347;
         this.m_visualMinionsForOpponent[2].x = 450;
         this.m_visualMinionsForOpponent[2].y = 463;
         this.m_visualMinionsForOpponent[3].x = 614;
         this.m_visualMinionsForOpponent[3].y = 278;
         if(!_loc7_)
         {
            this.m_visualMinionsForOpponent[4].x = 618;
            this.m_visualMinionsForOpponent[4].y = 434;
            this.m_visualMinionsForPlayer[0].x = 289;
            if(!_loc7_)
            {
               this.m_visualMinionsForPlayer[0].y = 260;
               this.m_visualMinionsForPlayer[1].x = 209;
               this.m_visualMinionsForPlayer[1].y = 347;
               if(_loc6_ || Boolean(this))
               {
                  this.m_visualMinionsForPlayer[2].x = 287;
                  if(_loc7_)
                  {
                  }
                  addr126:
                  this.m_visualMinionsForPlayer[3].x = 99;
                  if(_loc6_ || Boolean(this))
                  {
                     this.m_visualMinionsForPlayer[3].y = 280;
                     this.m_visualMinionsForPlayer[4].x = 115;
                     if(!_loc7_)
                     {
                        addr153:
                        this.m_visualMinionsForPlayer[4].y = 439;
                     }
                  }
                  var _loc1_:* = 0;
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc6_)
                     {
                        addr213:
                        §§push(5);
                        if(!(_loc7_ && _loc3_))
                        {
                           if(§§pop() < §§pop())
                           {
                              this.m_visualMinionsForOpponent[_loc1_].y += 34;
                              if(_loc7_)
                              {
                                 continue;
                              }
                              this.m_visualMinionsForPlayer[_loc1_].y += 34;
                              if(_loc6_)
                              {
                                 _loc1_++;
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    continue;
                                 }
                              }
                           }
                           break;
                        }
                        var _loc2_:Array = null;
                        var _loc3_:Array = [30,45,44,38];
                        var _loc4_:int = 0;
                        if(_loc6_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(5);
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       _loc1_ = 0;
                                       addr407:
                                       §§push(_loc1_);
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          addr415:
                                          §§push(5);
                                          if(!(_loc7_ && Boolean(_loc3_)))
                                          {
                                             break loop1;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §§goto(addr490);
                                             }
                                             this.m_visualMinionsForOpponentOverGrey[_loc1_].x = this.m_visualMinionsForOpponent[_loc1_].x;
                                             this.m_visualMinionsForOpponentOverGrey[_loc1_].y = this.m_visualMinionsForOpponent[_loc1_].y;
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                this.m_visualMinionsForPlayerOverGrey[_loc1_].x = this.m_visualMinionsForPlayer[_loc1_].x;
                                                this.m_visualMinionsForPlayerOverGrey[_loc1_].y = this.m_visualMinionsForPlayer[_loc1_].y;
                                                if(_loc6_)
                                                {
                                                   _loc1_++;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       _loc1_ = §§pop();
                                    }
                                    else
                                    {
                                       _loc5_ = 0;
                                       do
                                       {
                                          §§push(_loc5_);
                                          §§push(4);
                                          if(!_loc6_)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop1;
                                          }
                                          _loc4_++;
                                          if(!(_loc7_ && Boolean(_loc2_)))
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr407);
                                       }
                                       while(this.m_visualImpactsForMinionsForPlayer[_loc4_][_loc5_].x = this.m_visualMinionsForPlayer[_loc4_].x + _loc2_[_loc5_], this.m_visualImpactsForMinionsForPlayer[_loc4_][_loc5_].y = this.m_visualMinionsForPlayer[_loc4_].y - _loc3_[_loc5_], if(_loc6_ || Boolean(_loc2_))
                                       {
                                          this.m_visualImpactsForMinionsForOpponent[_loc4_][_loc5_].x = this.m_visualMinionsForOpponent[_loc4_].x - _loc2_[_loc5_];
                                       }, this.m_visualImpactsForMinionsForOpponent[_loc4_][_loc5_].y = this.m_visualMinionsForOpponent[_loc4_].y - _loc3_[_loc5_], _loc5_++, !(_loc7_ && Boolean(_loc1_)));
                                       
                                    }
                                    §§goto(addr487);
                                 }
                              }
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    §§goto(addr407);
                                    §§push(0);
                                 }
                                 addr490:
                                 return;
                              }
                              this.m_tombstoneSprites[_loc1_].x = this.m_visualMinionsForOpponent[_loc1_].x - this.m_tombstoneSprites[_loc1_].width / 2;
                              this.m_tombstoneSprites[_loc1_].y = this.m_visualMinionsForOpponent[_loc1_].y - this.m_tombstoneSprites[_loc1_].height;
                              while(true)
                              {
                                 this.m_tombstoneSprites[_loc1_].visible = false;
                                 if(!_loc7_)
                                 {
                                    this.m_tombstoneCountTexts[_loc1_].x = 16;
                                    this.m_tombstoneCountTexts[_loc1_].y = 25;
                                    _loc1_++;
                                    if(_loc6_)
                                    {
                                       §§goto(addr407);
                                    }
                                    §§goto(addr457);
                                 }
                                 break loop4;
                              }
                              addr384:
                              §§goto(addr407);
                              §§goto(addr415);
                           }
                           §§goto(addr487);
                        }
                        §§goto(addr384);
                     }
                     break;
                  }
                  §§goto(addr213);
                  §§push(60);
               }
            }
            this.m_visualMinionsForPlayer[2].y = 463;
            if(_loc6_)
            {
               §§goto(addr126);
            }
            §§goto(addr153);
         }
         §§goto(addr126);
      }
      
      public function SetupVisuals() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            this.ResetAllPositions();
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || Boolean(_loc3_))
            {
               loop1:
               while(true)
               {
                  §§push(5);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop0;
                     }
                     §§push(0);
                     if(_loc4_)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                           §§push(4);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc4_)
                              {
                                 _loc1_++;
                              }
                              continue loop0;
                           }
                           this.m_visualImpactsForMinionsForPlayer[_loc1_][_loc3_].alpha = 0;
                           if(!(_loc5_ && _loc2_))
                           {
                              this.m_visualImpactsForMinionsForOpponent[_loc1_][_loc3_].alpha = 0;
                              if(_loc5_ && Boolean(_loc3_))
                              {
                                 continue;
                              }
                           }
                           _loc3_++;
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
            break;
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || Boolean(this))
            {
               §§push(5);
               if(_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                           break;
                        }
                        loop6:
                        while(true)
                        {
                           §§push(5);
                           addr210:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 this.m_tombstoneSprites[_loc2_].visible = false;
                                 _loc2_++;
                                 continue loop6;
                              }
                              this.m_spaceToSkipTutorial.visible = false;
                              if(_loc4_)
                              {
                                 this.m_selectMinionTutorial.visible = false;
                                 §§goto(addr221);
                              }
                              §§goto(addr253);
                           }
                        }
                     }
                     §§goto(addr238);
                  }
                  else
                  {
                     §§push(Singleton.dynamicData);
                     if(!_loc5_)
                     {
                        if(§§pop().m_opponentsMinions[_loc2_] != null)
                        {
                           this.m_visualMinionsForOpponent[_loc2_].SetNewMinion(Singleton.dynamicData.m_opponentsMinions[_loc2_],false);
                           this.m_visualMinionsForOpponentOverGrey[_loc2_].SetNewMinion(Singleton.dynamicData.m_opponentsMinions[_loc2_],false);
                           if(_loc4_)
                           {
                              this.m_visualMinionsForOpponentOverGrey[_loc2_].alpha = 0;
                              §§goto(addr132);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr132);
                     }
                     addr132:
                     if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) != null)
                     {
                        if(_loc4_)
                        {
                           addr140:
                           this.m_visualMinionsForPlayer[_loc2_].SetNewMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc2_),true);
                           this.m_visualMinionsForPlayerOverGrey[_loc2_].SetNewMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc2_),true);
                           this.m_visualMinionsForPlayerOverGrey[_loc2_].alpha = 0;
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              §§goto(addr173);
                           }
                           else
                           {
                              addr199:
                              §§goto(addr208);
                           }
                        }
                     }
                     addr173:
                     _loc2_++;
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr221);
                  }
                  return;
               }
               §§goto(addr210);
            }
            break;
         }
         _loc2_ = §§pop();
         §§goto(addr199);
      }
      
      public function PlayIntroAnimation() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= 5)
            {
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr97);
            }
            TweenLite.to(this,1 + _loc1_ * 0.2,{"onComplete":this.m_visualMinionsForOpponent[_loc2_].AnimateIn});
            _loc1_++;
            TweenLite.to(this,1 + _loc1_ * 0.2,{"onComplete":this.m_visualMinionsForPlayer[_loc2_].AnimateIn});
            if(_loc3_)
            {
               _loc1_++;
               if(_loc4_ && _loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         TweenLite.to(this,0.8,{
            "onComplete":Singleton.utility.m_soundController.PlaySound,
            "onCompleteParams":["battle_whoosh_magic4",0.8]
         });
         this.m_currBackground.StartTheBringInAnimation();
         addr97:
      }
      
      public function UpdateMinionHealth() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].UpdateHealth();
            if(!_loc3_)
            {
               this.m_visualMinionsForOpponentOverGrey[_loc1_].UpdateHealth();
               if(_loc3_ && _loc2_)
               {
               }
               break;
            }
            this.m_visualMinionsForPlayer[_loc1_].UpdateHealth();
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               this.m_visualMinionsForPlayerOverGrey[_loc1_].UpdateHealth();
               if(!_loc2_)
               {
                  break;
               }
            }
            _loc1_++;
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function UpdateMinionVisuals() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].UpdateVisuals();
            if(_loc3_)
            {
               this.m_visualMinionsForOpponentOverGrey[_loc1_].UpdateVisuals();
               if(_loc3_ || _loc2_)
               {
                  this.m_visualMinionsForPlayer[_loc1_].UpdateVisuals();
                  if(_loc3_)
                  {
                     this.m_visualMinionsForPlayerOverGrey[_loc1_].UpdateVisuals();
                     if(_loc2_ && Boolean(_loc1_))
                     {
                        continue;
                     }
                  }
               }
               _loc1_++;
               if(_loc2_)
               {
                  break;
               }
            }
         }
      }
      
      public function UpdateTombstoneVisuals(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param2))
         {
            this.m_tombstoneCountTexts[param1].text = "" + param2;
         }
      }
      
      public function AnimateInTombstoneVisuals(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.m_tombstoneSprites[param1].visible)
            {
               if(_loc2_ || Boolean(param1))
               {
                  addr40:
                  this.m_tombstoneSprites[param1].visible = true;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this.m_tombstoneSprites[param1].alpha = 0;
                     if(_loc3_)
                     {
                     }
                     §§goto(addr78);
                  }
                  TweenLite.to(this.m_tombstoneSprites[param1],0.5,{"alpha":1});
               }
            }
            addr78:
            return;
         }
         §§goto(addr40);
      }
      
      public function AnimateOutTombstoneVisuals(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            TweenLite.to(this.m_tombstoneSprites[param1],0.5,{
               "alpha":0,
               "onComplete":this.FinishAnimatingOutTombstone,
               "onCompleteParams":[param1]
            });
         }
      }
      
      private function FinishAnimatingOutTombstone(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(param1)))
         {
            this.m_tombstoneSprites[param1].visible = false;
         }
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            this.m_currBackground.Update();
            §§push(this.m_currState);
            if(!(_loc2_ && _loc2_))
            {
               §§push(BattleScreenViualControllerStates.BSVCS_GETTING_MOVE);
               if(!(_loc2_ && Boolean(this)))
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(this.m_currBattleScreenMinionVisualObject);
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(§§pop() != null);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(§§pop());
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr84:
                                    §§pop();
                                 }
                                 else
                                 {
                                    addr135:
                                    if(§§pop())
                                    {
                                       addr136:
                                       this.m_movesSelectButton.m_isActive = true;
                                    }
                                 }
                                 §§goto(addr140);
                              }
                              if(§§pop())
                              {
                                 addr100:
                                 this.m_currBattleScreenMinionVisualObject.UpdateFullFrames();
                              }
                              addr140:
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(this.m_selectedMinion == this.m_currMinionWeAreGettingAMoveFor);
                              }
                              return;
                           }
                           addr126:
                           if(!§§pop())
                           {
                              §§pop();
                              if(_loc1_)
                              {
                                 addr134:
                                 §§goto(addr135);
                                 §§push(this.m_currState == BattleScreenViualControllerStates.BSVCS_SELECTING_ALLIES_FOR_MOVE);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     §§push(this.m_currState);
                     if(_loc1_)
                     {
                        §§push(BattleScreenViualControllerStates.BSVCS_SELECTING_ENEMIES_FOR_MOVE);
                        if(!_loc2_)
                        {
                           addr117:
                           §§push(§§pop() == §§pop());
                           if(_loc1_ || Boolean(this))
                           {
                              §§goto(addr126);
                              §§push(§§pop());
                           }
                           §§goto(addr135);
                        }
                     }
                     §§goto(addr134);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr134);
         }
         §§goto(addr84);
      }
      
      private function GreyOutFor(param1:Vector.<OwnedMinion>) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:BattleScreenMinionVisual = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() < 5)
               {
                  TweenLite.to(this.m_visualMinionsForOpponentOverGrey[_loc2_],0.3,{"alpha":0});
                  if(_loc6_)
                  {
                     TweenLite.to(this.m_visualMinionsForPlayerOverGrey[_loc2_],0.3,{"alpha":0});
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  _loc2_++;
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               break;
            }
            break;
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            while(_loc4_ < param1.length)
            {
               _loc3_ = this.GetMinionTopLayerVisualObjectFor(param1[_loc4_]);
               if(_loc6_ || Boolean(this))
               {
                  TweenLite.to(_loc3_,0.3,{"alpha":1});
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(_loc6_)
            {
               addr103:
               TweenLite.to(this.m_greyedOutLayer,0.5,{"alpha":this.m_greyedOutAmount});
            }
            return;
         }
         §§goto(addr103);
      }
      
      public function GetMinionTopLayerVisualObjectFor(param1:OwnedMinion) : BattleScreenMinionVisual
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= this.m_visualMinionsForPlayerOverGrey.length)
               {
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        _loc2_ = §§pop();
                     }
                     break;
                  }
                  addr61:
               }
               else
               {
                  if(this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion != param1)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     return this.m_visualMinionsForPlayerOverGrey[_loc2_];
                  }
                  addr89:
                  while(true)
                  {
                     _loc2_++;
                     if(_loc3_)
                     {
                        addr92:
                        while(true)
                        {
                           §§push(_loc2_);
                           break loop0;
                        }
                        addr92:
                     }
                     §§goto(addr97);
                  }
               }
               §§goto(addr92);
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.m_visualMinionsForOpponentOverGrey.length)
            {
               if(this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion == param1)
               {
                  return this.m_visualMinionsForOpponentOverGrey[_loc2_];
               }
               §§goto(addr89);
            }
            break;
            §§goto(addr92);
         }
         addr97:
         return null;
      }
      
      public function GetMinionBottomLayerVisualObjectFor(param1:OwnedMinion) : BattleScreenMinionVisual
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && Boolean(param1)))
            {
               if(§§pop() >= this.m_visualMinionsForPlayer.length)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                  }
                  break;
               }
               if(this.m_visualMinionsForPlayer[_loc2_].m_currMinion == param1)
               {
                  if(!_loc3_)
                  {
                     return this.m_visualMinionsForPlayer[_loc2_];
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     break loop0;
                     addr84:
                     _loc2_++;
                  }
                  return null;
               }
               continue;
               addr90:
               addr85:
            }
            break;
         }
         while(true)
         {
            if(§§pop() >= this.m_visualMinionsForOpponent.length)
            {
               §§goto(addr90);
            }
            else
            {
               if(this.m_visualMinionsForOpponent[_loc2_].m_currMinion == param1)
               {
                  return this.m_visualMinionsForOpponent[_loc2_];
               }
               §§goto(addr84);
            }
         }
      }
      
      public function SetupTheGetForAiMinion(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.m_currBattleScreenMinionVisualObject = this.GetMinionTopLayerVisualObjectFor(param1);
         this.m_currState = BattleScreenViualControllerStates.BSVCS_NOT_ACTIVE;
         this.m_selectedMinion = param1;
         this.m_currMinionWeAreGettingAMoveFor = this.m_selectedMinion;
         this.m_minionsTurnIndicator.x = this.m_currBattleScreenMinionVisualObject.x - 52;
         if(_loc3_)
         {
            this.m_minionsTurnIndicator.y = this.m_currBattleScreenMinionVisualObject.y - 40;
            TweenLite.to(this.m_minionsTurnIndicator,0.3,{"alpha":1});
            this.m_selectMinionTutorial.x = this.m_currBattleScreenMinionVisualObject.x - 10;
         }
         this.m_selectMinionTutorial.y = this.m_currBattleScreenMinionVisualObject.y - 160;
      }
      
      public function CloseGetMoveForCurrentMinion() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_currBattleScreenMinionVisualObject.m_moveSelector.FinishExitOut();
         }
      }
      
      public function OpenUpTheGetMoveFor(param1:OwnedMinion) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION))
            {
               if(_loc5_)
               {
                  TweenLite.to(this.m_selectMinionTutorial,0.5,{
                     "delay":0.2,
                     "alpha":0
                  });
                  if(_loc4_)
                  {
                  }
                  addr39:
                  var _loc2_:int = 0;
                  do
                  {
                     if(_loc2_ < 5)
                     {
                        §§push(this.m_visualMinionsForPlayer[_loc2_].m_currMinion == null);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                        }
                        §§pop();
                        §§push(this.m_visualMinionsForPlayer[_loc2_].m_currMinion.m_currHealth > 0);
                        continue;
                     }
                     if(_loc5_ || Boolean(this))
                     {
                        this.m_currBattleScreenMinionVisualObject = this.GetMinionTopLayerVisualObjectFor(param1);
                        this.m_currState = BattleScreenViualControllerStates.BSVCS_GETTING_MOVE;
                        this.m_selectedMinion = param1;
                        this.m_currMinionWeAreGettingAMoveFor = this.m_selectedMinion;
                        this.m_minionsTurnIndicator.x = this.m_currBattleScreenMinionVisualObject.x - 52;
                        if(!(_loc4_ && _loc3_))
                        {
                           this.m_minionsTurnIndicator.y = this.m_currBattleScreenMinionVisualObject.y - 40;
                           addr136:
                           TweenLite.to(this.m_minionsTurnIndicator,0.3,{"alpha":1});
                           if(_loc5_)
                           {
                              break;
                           }
                           this.m_selectMinionTutorial.y = this.m_currBattleScreenMinionVisualObject.y - 160;
                           §§push(this.m_movesSelectButton);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§push(this.m_currBattleScreenMinionVisualObject);
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(§§pop().x - 28);
                                 if(_loc5_)
                                 {
                                    §§pop().x = §§pop();
                                    addr190:
                                    §§push(this.m_movesSelectButton);
                                    §§push(this.m_currBattleScreenMinionVisualObject.y - 85);
                                    if(!_loc4_)
                                    {
                                       addr195:
                                       §§push(§§pop() - this.m_currBattleScreenMinionVisualObject.m_minionSprite.height);
                                    }
                                    §§pop().y = §§pop();
                                    var _loc3_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       _loc3_.push(param1);
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          this.GreyOutFor(_loc3_);
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             addr241:
                                             this.m_currBattleScreenMinionVisualObject.m_moveSelector.BringIn(param1 == this.m_currMinionWeAreGettingAMoveFor);
                                             if(_loc4_)
                                             {
                                             }
                                             §§goto(addr259);
                                          }
                                          this.m_collList.addItem(this.m_currBattleScreenMinionVisualObject.m_moveSelector.m_collisionBackground,false);
                                          addr259:
                                          return;
                                       }
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr195);
                              }
                           }
                           §§goto(addr190);
                        }
                        break;
                     }
                     §§goto(addr136);
                  }
                  while(if(§§pop())
                  {
                     this.m_collList.addItem(this.m_visualMinionsForPlayer[_loc2_].m_minionSprite);
                  }, _loc2_++, !_loc4_);
                  
                  this.m_selectMinionTutorial.x = this.m_currBattleScreenMinionVisualObject.x - 10;
                  §§goto(addr136);
               }
            }
            this.m_collList.dispose();
         }
         §§goto(addr39);
      }
      
      public function SetupSelectAnEnemy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENEMY_SELECT))
            {
               if(_loc3_ || _loc2_)
               {
                  this.m_opponentSelectTutorial.visible = true;
                  if(!(_loc4_ && _loc3_))
                  {
                     this.m_opponentSelectTutorial.alpha = 0;
                     TweenLite.to(this.m_opponentSelectTutorial,0.5,{
                        "delay":0.2,
                        "alpha":1
                     });
                  }
               }
            }
            this.m_currState = BattleScreenViualControllerStates.BSVCS_SELECTING_ENEMIES_FOR_MOVE;
            if(!_loc4_)
            {
               addr59:
               this.m_currBattleScreenMinionVisualObject.m_moveSelector.ExitOut();
            }
            var _loc1_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
            var _loc2_:* = 0;
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() >= this.m_visualMinionsForOpponentOverGrey.length)
                  {
                     if(!_loc4_)
                     {
                        this.GreyOutFor(_loc1_);
                        §§push(this.m_collList);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().dispose();
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr172:
                              §§push(0);
                              if(!_loc4_)
                              {
                                 _loc2_ = §§pop();
                              }
                              break;
                           }
                           addr251:
                           while(true)
                           {
                              §§push(_loc2_);
                              break loop0;
                           }
                           addr251:
                        }
                        while(true)
                        {
                           §§pop().addItem(this.m_visualMinionsForOpponent[_loc2_].m_minionSprite);
                        }
                        addr237:
                     }
                  }
                  else
                  {
                     §§push(this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion != null);
                     §§push(this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion != null);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(this.m_visualMinionsForOpponentOverGrey[_loc2_].m_currMinion.m_currHealth > 0);
                        }
                        §§push(§§pop());
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr102:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§push(!this.m_visualMinionsForOpponent[_loc2_].m_currMinion.m_isBattleModShieldActive);
                                 continue;
                              }
                              §§goto(addr251);
                           }
                           loop1:
                           while(true)
                           {
                              §§pop();
                              §§push(this.m_visualMinionsForOpponent[_loc2_].m_currMinion.m_currHealth > 0);
                              addr210:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr211:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                          addr219:
                                          while(true)
                                          {
                                             §§pop();
                                             §§push(!this.m_visualMinionsForOpponent[_loc2_].m_currMinion.m_isBattleModShieldActive);
                                          }
                                          addr219:
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr237);
                                          §§push(this.m_collList);
                                       }
                                       addr243:
                                       while(true)
                                       {
                                          _loc2_++;
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§goto(addr251);
                                          }
                                          §§goto(addr258);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr201:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr201);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr210);
                        }
                        addr193:
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr243);
               }
               break;
            }
            while(true)
            {
               if(§§pop() >= 5)
               {
                  this.m_movesSelectButton.visible = true;
               }
               else
               {
                  §§push(this.m_visualMinionsForOpponent[_loc2_].m_currMinion == null);
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           §§goto(addr193);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr219);
               }
               addr258:
               return;
            }
         }
         §§goto(addr59);
      }
      
      public function SetupSelectAnAlly() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.m_currState = BattleScreenViualControllerStates.BSVCS_SELECTING_ALLIES_FOR_MOVE;
            if(_loc3_)
            {
               addr26:
               this.m_currBattleScreenMinionVisualObject.m_moveSelector.ExitOut();
            }
            var _loc1_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
            var _loc2_:* = 0;
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() >= this.m_visualMinionsForPlayerOverGrey.length)
                  {
                     this.GreyOutFor(_loc1_);
                  }
                  else
                  {
                     §§push(this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion == null);
                     if(!_loc4_)
                     {
                        §§push(!§§pop());
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              addr54:
                              §§pop();
                              §§push(this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion.m_currHealth > 0);
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 _loc1_.push(this.m_visualMinionsForPlayerOverGrey[_loc2_].m_currMinion);
                                 addr73:
                                 _loc2_++;
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 addr98:
                                 §§push(this.m_collList);
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    §§pop().dispose();
                                    §§push(0);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop() >= 5)
                                       {
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr192:
                                             this.m_movesSelectButton.visible = true;
                                             break;
                                          }
                                          break;
                                       }
                                       §§push(this.m_visualMinionsForPlayer[_loc2_].m_currMinion == null);
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§push(!§§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                }
                                                addr156:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.m_collList);
                                                         addr161:
                                                         while(true)
                                                         {
                                                            §§pop().addItem(this.m_visualMinionsForPlayer[_loc2_].m_minionSprite);
                                                         }
                                                      }
                                                   }
                                                   addr174:
                                                   while(true)
                                                   {
                                                      _loc2_++;
                                                      if(_loc4_ && Boolean(_loc1_))
                                                      {
                                                         break loop2;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                §§goto(addr192);
                                             }
                                             addr144:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             if(_loc3_)
                                             {
                                                §§goto(addr156);
                                                §§push(this.m_visualMinionsForPlayer[_loc2_].m_currMinion.m_currHealth > 0);
                                             }
                                             break loop2;
                                          }
                                       }
                                       §§goto(addr156);
                                       §§goto(addr192);
                                    }
                                    return;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr98);
               }
               break;
            }
            _loc2_ = §§pop();
            if(_loc3_ || _loc3_)
            {
               §§goto(addr182);
            }
            §§goto(addr192);
         }
         §§goto(addr26);
      }
      
      public function SetupVisualsForTheWinningScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.m_collList.dispose();
         }
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(5);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() >= §§pop())
                  {
                     TweenLite.to(this,0.4,{"onComplete":this.BringTheDeadMinoionsBackIn});
                     addr118:
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Singleton.dynamicData);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop().m_currFloorOfTower);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§goto(addr121);
                        }
                        addr120:
                        addr121:
                        §§push(§§pop() == 1);
                        if(_loc2_ || Boolean(this))
                        {
                           addr130:
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           this.m_spaceToSkipTutorial.visible = true;
                           §§goto(addr136);
                        }
                        addr136:
                        return;
                        §§push(§§pop().m_currRoomOfTower);
                     }
                     §§goto(addr120);
                     §§push(Singleton.dynamicData);
                  }
                  else
                  {
                     this.m_visualMinionsForPlayer[_loc1_].TurnOffInterface();
                     this.m_visualMinionsForPlayerOverGrey[_loc1_].TurnOffInterface();
                     if(!(_loc3_ && Boolean(this)))
                     {
                        continue;
                     }
                  }
                  §§goto(addr136);
               }
               addr101:
               §§push(§§pop() > §§pop());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr118);
                        }
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr130);
            }
            break;
         }
         §§push(0);
         if(_loc2_ || _loc2_)
         {
            §§goto(addr101);
         }
         §§goto(addr121);
      }
      
      public function TurnOffTopLayerMinions() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            TweenLite.to(this.m_visualMinionsForOpponentOverGrey[_loc1_],0.3,{"alpha":0});
            if(!_loc2_)
            {
               break;
            }
            TweenLite.to(this.m_visualMinionsForPlayerOverGrey[_loc1_],0.3,{"alpha":0});
            if(_loc3_)
            {
               break;
            }
            _loc1_++;
            if(_loc3_ && _loc3_)
            {
               break;
            }
         }
      }
      
      private function BringTheDeadMinoionsBackIn() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.TurnOffTopLayerMinions();
         }
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            §§push(this.m_visualMinionsForPlayer[_loc1_].m_currMinion == null);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr59:
                        §§pop();
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr82:
                           if(this.m_visualMinionsForPlayer[_loc1_].m_currMinion.m_currHealth >= 1)
                           {
                              continue;
                           }
                           if(_loc3_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        this.m_visualMinionsForPlayer[_loc1_].MakeVisualFromDeath();
                        if(_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr59);
            _loc1_++;
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function TurnOnExpBarForMinion(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).TurnOnExpBar();
            if(!_loc2_)
            {
               addr22:
               this.GetMinionTopLayerVisualObjectFor(param1).TurnOnExpBar();
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function TurnOffExpBarForMinion(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).TurnOffExpBar();
            if(!(_loc3_ && Boolean(this)))
            {
               this.GetMinionTopLayerVisualObjectFor(param1).TurnOffExpBar();
            }
         }
      }
      
      public function AnimateExpBarForMinion(param1:OwnedMinion, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).AnimateExpBarTo(param2,1);
            if(!(_loc4_ && Boolean(param2)))
            {
               addr35:
               this.GetMinionTopLayerVisualObjectFor(param1).AnimateExpBarTo(param2,1);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function PlaySuperEffectiveAnimation(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).PlayASuperEffectiveAttackHasHit();
            if(_loc2_ || Boolean(this))
            {
               this.GetMinionTopLayerVisualObjectFor(param1).PlayASuperEffectiveAttackHasHit();
            }
         }
      }
      
      public function PlayNotEffectiveAnimation(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).PlayANotEffectiveAttackHasHit();
            if(!_loc3_)
            {
               this.GetMinionTopLayerVisualObjectFor(param1).PlayANotEffectiveAttackHasHit();
            }
         }
      }
      
      public function PlayRedirectedAnimation(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).PlayRedirectedHasHappened();
            if(_loc3_)
            {
               this.GetMinionTopLayerVisualObjectFor(param1).PlayRedirectedHasHappened();
            }
         }
      }
      
      public function PlayCritAnimation(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).PlayACritAttackHasHit();
            if(!_loc2_)
            {
               addr27:
               this.GetMinionTopLayerVisualObjectFor(param1).PlayACritAttackHasHit();
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function SetExpBarForMinion(param1:OwnedMinion, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).SetExpBarTo(param2);
            if(!_loc4_)
            {
               this.GetMinionTopLayerVisualObjectFor(param1).SetExpBarTo(param2);
            }
         }
      }
      
      public function SetScreenToPlayMoveVisuals() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.m_currState = BattleScreenViualControllerStates.BSVCS_NOT_ACTIVE;
            if(_loc3_)
            {
               this.m_movesSelectButton.visible = false;
               if(_loc3_ || _loc3_)
               {
                  TweenLite.to(this.m_greyedOutLayer,0.5,{"alpha":0});
               }
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].SetIsSelected(false);
            this.m_visualMinionsForPlayer[_loc1_].SetIsSelected(false);
            if(!_loc2_)
            {
               this.m_visualMinionsForOpponentOverGrey[_loc1_].SetIsSelected(false);
               this.m_visualMinionsForPlayerOverGrey[_loc1_].SetIsSelected(false);
               _loc1_++;
            }
         }
         TweenLite.to(this.m_minionsTurnIndicator,0.3,{"alpha":0});
      }
      
      private function ReturnToMoves(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_ENEMY_SELECT))
            {
               if(_loc3_ || _loc2_)
               {
                  addr28:
                  TweenLite.to(this.m_opponentSelectTutorial,0.5,{"alpha":0});
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr43:
                     this.m_movesSelectButton.visible = false;
                     if(!(_loc4_ && _loc2_))
                     {
                        addr54:
                        §§push(Singleton.utility);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop().m_screenControllers);
                           if(!_loc4_)
                           {
                              §§push(§§pop().m_battleScreen);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().m_playerMoveSystem);
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    §§pop().Reset();
                                    §§goto(addr100);
                                 }
                                 §§pop().m_currMinion = this.m_currMinionWeAreGettingAMoveFor;
                                 §§goto(addr100);
                              }
                           }
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr54);
               }
               addr100:
               if(!(_loc4_ && _loc3_))
               {
                  addr96:
                  §§push(Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem);
               }
               var _loc2_:int = 0;
               while(_loc2_ < 5)
               {
                  this.m_visualMinionsForOpponent[_loc2_].SetIsSelected(false);
                  this.m_visualMinionsForPlayer[_loc2_].SetIsSelected(false);
                  this.m_visualMinionsForOpponentOverGrey[_loc2_].SetIsSelected(false);
                  this.m_visualMinionsForPlayerOverGrey[_loc2_].SetIsSelected(false);
                  _loc2_++;
               }
               if(!(_loc4_ && _loc3_))
               {
                  this.OpenUpTheGetMoveFor(this.m_currMinionWeAreGettingAMoveFor);
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr28);
      }
      
      public function MakeMoveForCurrentMinion(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.GetMinionBottomLayerVisualObjectFor(param1).MakeMove();
            if(_loc2_ || Boolean(this))
            {
               this.GetMinionTopLayerVisualObjectFor(param1).MakeMove();
            }
         }
      }
      
      public function FlashScreen(param1:Number = 0.2, param2:Number = 0.2, param3:uint = 16777215) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.m_flash.visible = true;
         if(_loc6_ || Boolean(param2))
         {
            this.m_flash.alpha = 0;
            this.m_flash.graphics.clear();
            if(_loc6_ || Boolean(param2))
            {
               addr40:
               this.m_flash.graphics.beginFill(param3);
               if(_loc6_ || Boolean(param1))
               {
                  this.m_flash.graphics.drawRect(0,0,700,525);
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     addr74:
                     this.m_flash.graphics.endFill();
                  }
                  var _loc4_:TimelineLite;
                  (_loc4_ = new TimelineLite()).append(new TweenLite(this.m_flash,param1,{"alpha":1}));
                  if(_loc6_)
                  {
                     _loc4_.append(new TweenLite(this.m_flash,param2,{
                        "alpha":0,
                        "onComplete":this.FinishFlash
                     }));
                  }
                  return;
               }
            }
            §§goto(addr74);
         }
         §§goto(addr40);
      }
      
      private function FinishFlash() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.m_flash.visible = false;
         }
      }
      
      public function ShakeScreen(param1:Number = 0.05, param2:int = 5, param3:Number = 10) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = 0;
         if(!_loc8_)
         {
            this.m_currBackground.ShakeScreen(param1,param2,param3);
         }
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_ || Boolean(param2))
            {
               if(§§pop() >= 5)
               {
                  if(_loc7_)
                  {
                     this.AddShakeToObject(this.m_shieldMod,param1,param2,param3);
                     if(!_loc8_)
                     {
                        this.AddShakeToObject(this.m_moveTimerMod,param1,param2,param3);
                        addr106:
                        this.AddShakeToObject(this.m_extraMinionsMod,param1,param2,param3);
                     }
                     this.AddShakeToObject(this.m_resurectionMod,param1,param2,param3);
                  }
                  break;
               }
               this.AddShakeToObject(this.m_visualMinionsForOpponent[_loc4_],param1,param2,param3);
               this.AddShakeToObject(this.m_visualMinionsForOpponentOverGrey[_loc4_],param1,param2,param3);
               if(!(_loc7_ || Boolean(param1)))
               {
                  continue;
               }
               this.AddShakeToObject(this.m_visualMinionsForPlayer[_loc4_],param1,param2,param3);
               this.AddShakeToObject(this.m_visualMinionsForPlayerOverGrey[_loc4_],param1,param2,param3);
               if(!(_loc8_ && Boolean(param3)))
               {
                  continue;
               }
               §§goto(addr106);
            }
            break;
         }
         var _loc5_:* = §§pop();
         if(!(_loc8_ && Boolean(param2)))
         {
            while(true)
            {
               §§push(_loc5_);
               if(!(_loc8_ && Boolean(param2)))
               {
                  if(§§pop() >= this.m_tombstoneSprites.length)
                  {
                     if(!_loc8_)
                     {
                        §§push(0);
                        if(_loc7_ || Boolean(this))
                        {
                           break;
                        }
                        loop8:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           if(_loc7_ || Boolean(this))
                           {
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       §§push(4);
                                       if(_loc7_ || Boolean(param3))
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc8_ && Boolean(this)))
                                             {
                                                addr292:
                                                loop4:
                                                while(true)
                                                {
                                                   _loc5_++;
                                                   if(!(_loc8_ && Boolean(param3)))
                                                   {
                                                      addr300:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr301:
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(5);
                                                            addr302:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  break loop4;
                                                               }
                                                               §§push(0);
                                                               if(_loc7_ || Boolean(param2))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                      addr300:
                                                   }
                                                   break;
                                                }
                                                addr292:
                                             }
                                             §§goto(addr303);
                                          }
                                          if(this.m_visualImpactsForMinionsForPlayer[_loc5_][_loc6_].alpha != 0)
                                          {
                                             if(_loc7_ || Boolean(param1))
                                             {
                                                this.AddShakeToObject(this.m_visualImpactsForMinionsForPlayer[_loc5_][_loc6_],param1,param2,param3);
                                                if(!_loc8_)
                                                {
                                                   addr229:
                                                   if(this.m_visualImpactsForMinionsForOpponent[_loc5_][_loc6_].alpha != 0)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         addr240:
                                                         while(true)
                                                         {
                                                            this.AddShakeToObject(this.m_visualImpactsForMinionsForOpponent[_loc5_][_loc6_],param1,param2,param3);
                                                            if(_loc8_ && Boolean(this))
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                         addr240:
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc6_++;
                                                      if(!_loc8_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                }
                                                §§goto(addr240);
                                             }
                                             addr303:
                                             return;
                                          }
                                          §§goto(addr229);
                                          §§goto(addr292);
                                       }
                                       §§goto(addr302);
                                    }
                                    §§goto(addr301);
                                 }
                              }
                              addr198:
                           }
                        }
                     }
                     §§goto(addr300);
                  }
                  else
                  {
                     this.AddShakeToObject(this.m_tombstoneSprites[_loc5_],param1,param2,param3);
                     if(_loc7_ || Boolean(param1))
                     {
                        continue;
                     }
                  }
                  §§goto(addr240);
               }
               break;
            }
            _loc5_ = §§pop();
            if(_loc7_)
            {
               §§goto(addr300);
            }
            §§goto(addr240);
         }
         §§goto(addr198);
      }
      
      private function AddShakeToObject(param1:Sprite, param2:Number, param3:int, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:TimelineLite = new TimelineLite();
         var _loc6_:int = 0;
         while(_loc6_ < param3)
         {
            _loc5_.append(new TweenLite(param1,0.05 + param2 * (_loc6_ * 0.5),{"x":"" + param4}));
            if(!(_loc7_ || Boolean(param3)))
            {
               break;
            }
            _loc5_.append(new TweenLite(param1,0.05 + param2 * (_loc6_ * 0.5),{"x":"-" + param4}));
            if(_loc7_ || Boolean(param2))
            {
               _loc6_++;
               if(!(_loc7_ || Boolean(param3)))
               {
                  break;
               }
            }
         }
      }
      
      public function Cleanup() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_visualMinionsForOpponent[_loc1_].Cleanup();
            if(!(_loc2_ && _loc3_))
            {
               this.m_visualMinionsForOpponentOverGrey[_loc1_].Cleanup();
               if(!(_loc2_ && _loc2_))
               {
                  this.m_visualMinionsForPlayer[_loc1_].Cleanup();
                  if(_loc2_ && Boolean(this))
                  {
                     break;
                  }
                  this.m_visualMinionsForPlayerOverGrey[_loc1_].Cleanup();
                  if(!(_loc3_ || Boolean(this)))
                  {
                     break;
                  }
               }
            }
            _loc1_++;
            if(_loc2_ && Boolean(this))
            {
               break;
            }
         }
      }
      
      public function reportClick(param1:MouseEvent) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Vector.<OwnedMinion> = null;
         if(!_loc7_)
         {
            if(Singleton.utility.m_screenControllers.m_battleScreen.m_conformationBox.m_isOpen)
            {
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  return;
               }
               addr58:
               this.m_mousePointObject.x = param1.stageX;
               if(_loc8_ || Boolean(_loc3_))
               {
                  this.m_mousePointObject.y = param1.stageY;
               }
               _loc2_ = this.m_collList.checkCollisions();
               if(_loc8_)
               {
                  if(_loc2_.length == 1)
                  {
                     addr86:
                     _loc3_ = new Array();
                     if(_loc8_)
                     {
                        _loc4_ = 0;
                     }
                     loop0:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           if(§§pop() >= _loc2_.length)
                           {
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 addr158:
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                    addr161:
                                    _loc4_ = §§pop();
                                    if(_loc7_)
                                    {
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr403:
                                       _loc4_++;
                                    }
                                    addr404:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < _loc3_.length)
                                    {
                                       if(this.m_selectedMinion != _loc3_[_loc4_].m_currMinion)
                                       {
                                          (_loc6_ = new Vector.<OwnedMinion>()).push(_loc3_[_loc4_].m_currMinion);
                                          this.GreyOutFor(_loc6_);
                                          §§push(this.m_currBattleScreenMinionVisualObject);
                                          if(!_loc7_)
                                          {
                                             if(§§pop() != null)
                                             {
                                                if(!(_loc7_ && Boolean(param1)))
                                                {
                                                   §§push(this.m_collList);
                                                   if(_loc8_)
                                                   {
                                                      §§push(this.m_currBattleScreenMinionVisualObject);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop().m_moveSelector);
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().removeItem(§§pop().m_collisionBackground);
                                                            addr214:
                                                            this.m_selectedMinion = _loc3_[_loc4_].m_currMinion;
                                                            this.m_currBattleScreenMinionVisualObject = this.GetMinionTopLayerVisualObjectFor(this.m_selectedMinion);
                                                            this.m_currBattleScreenMinionVisualObject.m_moveSelector.BringIn(this.m_selectedMinion == this.m_currMinionWeAreGettingAMoveFor);
                                                            addr239:
                                                            §§push(this.m_collList);
                                                            §§push(this.m_currBattleScreenMinionVisualObject.m_moveSelector);
                                                         }
                                                         §§pop().addItem(§§pop().m_collisionBackground,false);
                                                         addr243:
                                                         §§push(Singleton.dynamicData);
                                                         if(!(_loc7_ && Boolean(param1)))
                                                         {
                                                            §§push(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION);
                                                            if(_loc8_ || Boolean(this))
                                                            {
                                                               §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                                                               if(_loc8_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     TweenLite.to(this.m_selectMinionTutorial,0.5,{
                                                                        "delay":0.2,
                                                                        "alpha":0
                                                                     });
                                                                  }
                                                                  §§push(Singleton.dynamicData);
                                                                  if(_loc8_ || Boolean(this))
                                                                  {
                                                                     addr284:
                                                                     §§push(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                                                                        if(_loc8_ || Boolean(this))
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!(_loc7_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr304:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc7_ && Boolean(this)))
                                                                                 {
                                                                                    addr318:
                                                                                    if(this.m_deselectMinionTutorial.visible)
                                                                                    {
                                                                                       TweenLite.to(this.m_deselectMinionTutorial,0.5,{
                                                                                          "delay":0.2,
                                                                                          "alpha":0
                                                                                       });
                                                                                    }
                                                                                    if(this.m_selectedMinion == this.m_currMinionWeAreGettingAMoveFor)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(Singleton.dynamicData);
                                                                                          if(_loc8_ || Boolean(param1))
                                                                                          {
                                                                                             addr345:
                                                                                             §§push(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§pop().SetHasTutorialBeenSeen(§§pop(),true);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr360:
                                                                                                if(!§§pop().HasTutorialBeenSeen(§§pop()))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      this.m_deselectMinionTutorial.visible = true;
                                                                                                      this.m_deselectMinionTutorial.alpha = 0;
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         TweenLite.to(this.m_deselectMinionTutorial,0.5,{
                                                                                                            "delay":0.2,
                                                                                                            "alpha":1
                                                                                                         });
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr402:
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr388:
                                                                                                if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVE_SELECT))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr394:
                                                                                                      TweenLite.to(this.m_moveSelectTutorial,0.5,{"alpha":0});
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr388);
                                                                                       }
                                                                                       §§goto(addr402);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr360);
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr304);
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr243);
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       else
                                       {
                                          §§goto(addr403);
                                       }
                                    }
                                    break;
                                    §§goto(addr404);
                                 }
                                 addr408:
                                 §§push(_loc2_.length == 0);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§pop();
                                             if(_loc8_ || Boolean(_loc3_))
                                             {
                                                §§push(this.m_selectedMinion != null);
                                                if(_loc8_ || Boolean(param1))
                                                {
                                                   addr440:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         TweenLite.to(this.m_greyedOutLayer,0.5,{"alpha":0});
                                                         if(_loc8_ || Boolean(_loc2_))
                                                         {
                                                            this.TurnOffTopLayerMinions();
                                                            if(_loc8_)
                                                            {
                                                               this.GetMinionTopLayerVisualObjectFor(this.m_selectedMinion).m_moveSelector.ExitOut();
                                                               this.m_collList.removeItem(this.m_currBattleScreenMinionVisualObject.m_moveSelector.m_collisionBackground);
                                                               if(!_loc7_)
                                                               {
                                                                  this.m_selectedMinion = null;
                                                                  this.m_currBattleScreenMinionVisualObject = null;
                                                                  if(_loc8_)
                                                                  {
                                                                     addr492:
                                                                     §§push(Singleton.dynamicData);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(TutorialTypes.TUTORIAL_SELECT_YOUR_MINION);
                                                                        if(_loc8_ || Boolean(_loc3_))
                                                                        {
                                                                           addr506:
                                                                           if(!§§pop().HasTutorialBeenSeen(§§pop()))
                                                                           {
                                                                              addr507:
                                                                              this.m_selectMinionTutorial.visible = true;
                                                                              this.m_selectMinionTutorial.alpha = 0;
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr517:
                                                                                 TweenLite.to(this.m_selectMinionTutorial,0.5,{
                                                                                    "delay":0.2,
                                                                                    "alpha":1
                                                                                 });
                                                                                 if(_loc8_)
                                                                                 {
                                                                                 }
                                                                                 addr546:
                                                                                 if(this.m_deselectMinionTutorial.visible)
                                                                                 {
                                                                                    addr551:
                                                                                    TweenLite.to(this.m_deselectMinionTutorial,0.5,{
                                                                                       "delay":0.2,
                                                                                       "alpha":0
                                                                                    });
                                                                                    addr565:
                                                                                    Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION,true);
                                                                                    return;
                                                                                    addr567:
                                                                                    addr563:
                                                                                 }
                                                                                 §§goto(addr567);
                                                                              }
                                                                              §§goto(addr546);
                                                                           }
                                                                           §§push(Singleton.dynamicData);
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr533:
                                                                              §§push(TutorialTypes.TUTORIAL_DESELECT_WRONG_MINION);
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr537:
                                                                                 §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                    }
                                                                                    addr545:
                                                                                    §§pop();
                                                                                    §§goto(addr546);
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr545);
                                                                                 }
                                                                                 §§goto(addr546);
                                                                              }
                                                                              §§goto(addr565);
                                                                           }
                                                                           §§goto(addr563);
                                                                        }
                                                                        §§goto(addr537);
                                                                     }
                                                                     §§goto(addr533);
                                                                  }
                                                                  §§goto(addr546);
                                                               }
                                                               §§goto(addr492);
                                                            }
                                                            §§goto(addr517);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr551);
                                                }
                                                §§goto(addr506);
                                             }
                                             §§goto(addr507);
                                          }
                                          §§goto(addr545);
                                       }
                                       §§goto(addr440);
                                    }
                                    §§goto(addr537);
                                 }
                                 §§goto(addr506);
                              }
                              §§goto(addr408);
                           }
                           else
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       if(§§pop() < this.m_visualMinionsForPlayer.length)
                                       {
                                          if(_loc2_[_loc4_] == this.m_visualMinionsForPlayer[_loc5_].m_minionSprite)
                                          {
                                             _loc3_.push(this.m_visualMinionsForPlayer[_loc5_]);
                                             if(_loc8_ || Boolean(param1))
                                             {
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       _loc4_++;
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr158);
                                    }
                                    break;
                                 }
                              }
                           }
                        }
                        §§goto(addr161);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr86);
            }
            else
            {
               addr51:
               if(this.m_currState == BattleScreenViualControllerStates.BSVCS_GETTING_MOVE)
               {
                  if(_loc8_)
                  {
                  }
                  §§goto(addr58);
               }
               else
               {
                  §§push(this.m_currState);
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     §§push(BattleScreenViualControllerStates.BSVCS_SELECTING_ENEMIES_FOR_MOVE);
                     if(_loc8_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              this.m_mousePointObject.x = param1.stageX;
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 this.m_mousePointObject.y = param1.stageY;
                                 if(_loc8_)
                                 {
                                    addr608:
                                    §§push(this.m_collList);
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       §§push(§§pop().checkCollisions());
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc7_)
                                          {
                                             if(_loc2_.length == 1)
                                             {
                                                addr633:
                                                _loc3_ = new Array();
                                                if(_loc8_ || Boolean(_loc3_))
                                                {
                                                   §§push(0);
                                                   if(_loc8_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc7_)
                                                         {
                                                            loop15:
                                                            while(§§pop() < _loc2_.length)
                                                            {
                                                               §§push(0);
                                                               if(_loc8_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= this.m_visualMinionsForPlayer.length)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        if(_loc2_[_loc4_] != this.m_visualMinionsForOpponent[_loc5_].m_minionSprite)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        _loc3_.push(this.m_visualMinionsForOpponentOverGrey[_loc5_]);
                                                                        while(true)
                                                                        {
                                                                           §§push(Singleton.dynamicData);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(TutorialTypes.TUTORIAL_ENEMY_SELECT);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(§§pop().HasTutorialBeenSeen(§§pop()))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break loop15;
                                                                                 }
                                                                                 TweenLite.to(this.m_opponentSelectTutorial,0.5,{"alpha":0});
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr695:
                                                                                    §§push(Singleton.dynamicData);
                                                                                    §§push(TutorialTypes.TUTORIAL_ENEMY_SELECT);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_++;
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                addr789:
                                                                                                while(§§pop() < _loc3_.length)
                                                                                                {
                                                                                                   if(_loc3_[_loc4_].ToggleIsSelected())
                                                                                                   {
                                                                                                      §§push(Singleton.utility);
                                                                                                      if(_loc8_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop().m_screenControllers);
                                                                                                         if(!(_loc7_ && Boolean(param1)))
                                                                                                         {
                                                                                                            §§push(§§pop().m_battleScreen);
                                                                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               §§push(§§pop().m_playerMoveSystem);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§pop().AddToEnemiesItHits(_loc3_[_loc4_].m_currMinion);
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr777:
                                                                                                               §§push(§§pop().m_playerMoveSystem);
                                                                                                            }
                                                                                                            §§pop().RemoveFromEnemiesItHits(_loc3_[_loc4_].m_currMinion);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         addr776:
                                                                                                         §§push(§§pop().m_battleScreen);
                                                                                                         §§goto(addr777);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr775:
                                                                                                         §§push(§§pop().m_screenControllers);
                                                                                                      }
                                                                                                      §§goto(addr776);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(Singleton.utility);
                                                                                                   }
                                                                                                   §§goto(addr775);
                                                                                                }
                                                                                                break loop19;
                                                                                             }
                                                                                             addr788:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr792:
                                                                                       §§goto(addr551);
                                                                                    }
                                                                                    addr772:
                                                                                 }
                                                                              }
                                                                              §§pop().SetHasTutorialBeenSeen(§§pop(),true);
                                                                              continue loop16;
                                                                           }
                                                                           §§goto(addr695);
                                                                        }
                                                                     }
                                                                     §§goto(addr788);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr703);
                                                            }
                                                            §§push(0);
                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr789);
                                                         }
                                                         break;
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(!(_loc7_ && Boolean(param1)))
                                                      {
                                                         §§goto(addr732);
                                                      }
                                                      §§goto(addr772);
                                                   }
                                                   §§goto(addr732);
                                                }
                                                §§goto(addr671);
                                             }
                                             §§goto(addr792);
                                          }
                                          §§goto(addr633);
                                       }
                                       §§goto(addr551);
                                    }
                                    else
                                    {
                                       addr819:
                                       §§push(§§pop().checkCollisions());
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       if(_loc2_.length == 1)
                                       {
                                       }
                                       §§goto(addr551);
                                    }
                                    _loc3_ = new Array();
                                    §§push(0);
                                    if(_loc8_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc8_)
                                             {
                                                if(§§pop() < _loc2_.length)
                                                {
                                                   §§push(0);
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   _loc5_ = §§pop();
                                                   do
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc8_ || Boolean(this)))
                                                      {
                                                         break loop4;
                                                      }
                                                      if(§§pop() < this.m_visualMinionsForPlayer.length)
                                                      {
                                                         if(_loc2_[_loc4_] == this.m_visualMinionsForPlayer[_loc5_].m_minionSprite)
                                                         {
                                                            _loc3_.push(this.m_visualMinionsForPlayerOverGrey[_loc5_]);
                                                            if(_loc7_ && Boolean(_loc2_))
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   while(!(_loc8_ || Boolean(param1)));
                                                   
                                                   continue;
                                                }
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   §§push(0);
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   loop13:
                                                   while(§§pop() < _loc3_.length)
                                                   {
                                                      if(_loc3_[_loc4_].ToggleIsSelected())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Singleton.utility);
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop().m_screenControllers);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop().m_battleScreen);
                                                                  if(!(_loc7_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(§§pop().m_playerMoveSystem);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§pop().AddToAlliesItHits(_loc3_[_loc4_].m_currMinion);
                                                                        if(_loc8_ || Boolean(this))
                                                                        {
                                                                           addr971:
                                                                           while(true)
                                                                           {
                                                                              _loc4_++;
                                                                              addr972:
                                                                              while(true)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                           }
                                                                           addr971:
                                                                        }
                                                                     }
                                                                     §§goto(addr971);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().m_playerMoveSystem);
                                                                     }
                                                                     addr965:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().RemoveFromAlliesItHits(_loc3_[_loc4_].m_currMinion);
                                                                     §§goto(addr971);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr964:
                                                               }
                                                               §§goto(addr965);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr963:
                                                            }
                                                            §§goto(addr964);
                                                         }
                                                         addr923:
                                                      }
                                                      else
                                                      {
                                                         §§push(Singleton.utility);
                                                      }
                                                      §§goto(addr963);
                                                   }
                                                   §§goto(addr551);
                                                   addr973:
                                                }
                                                §§goto(addr971);
                                                §§goto(addr972);
                                             }
                                             break;
                                          }
                                          _loc4_ = §§pop();
                                          §§goto(addr972);
                                       }
                                       §§goto(addr923);
                                    }
                                    §§goto(addr973);
                                 }
                                 else
                                 {
                                    addr817:
                                    §§push(this.m_collList);
                                 }
                                 §§goto(addr819);
                              }
                              §§goto(addr608);
                           }
                           else
                           {
                              addr805:
                              this.m_mousePointObject.x = param1.stageX;
                              if(!_loc7_)
                              {
                                 addr812:
                                 this.m_mousePointObject.y = param1.stageY;
                              }
                           }
                           §§goto(addr817);
                        }
                        else
                        {
                           addr795:
                           §§push(this.m_currState);
                           §§push(BattleScreenViualControllerStates.BSVCS_SELECTING_ALLIES_FOR_MOVE);
                        }
                        §§goto(addr551);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§goto(addr805);
                        }
                        §§goto(addr812);
                     }
                     §§goto(addr551);
                  }
                  §§goto(addr795);
               }
            }
            §§goto(addr551);
         }
         §§goto(addr51);
      }
   }
}
