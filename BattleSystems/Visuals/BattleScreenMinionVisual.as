package BattleSystems.Visuals
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BattleScreenMinionVisual extends GameObject
   {
       
      
      private var m_healthBarBackgroundSprite:Sprite;
      
      private var m_healthBar:InterfaceBar;
      
      private var m_shieldBar:InterfaceBar;
      
      public var m_minionSprite:Sprite;
      
      private var m_turnBackground:Sprite;
      
      private var m_currTurnText:TextField;
      
      private var m_expBarBackgroundSprite:Sprite;
      
      public var m_expBar:InterfaceBar;
      
      private var m_currLevelText:TextField;
      
      public var m_currMinion:OwnedMinion;
      
      public var m_moveSelector:MoveSelectorForPlayer;
      
      private var m_selectedSprite:Sprite;
      
      private var m_isSelected:Boolean;
      
      public var m_superEffectivePopup:Sprite;
      
      public var m_notEffectivePopup:Sprite;
      
      public var m_critPopup:Sprite;
      
      public var m_redirectedPopup:Sprite;
      
      public var m_minionShield:Sprite;
      
      private var m_isPlayersMinion:Boolean;
      
      private var m_buffIcons:Vector.<BuffIcon>;
      
      private var m_startedDead:Boolean;
      
      public var m_teleportAnimationPieces:Vector.<Sprite>;
      
      public function BattleScreenMinionVisual()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         if(_loc1_ || _loc1_)
         {
            this.m_moveSelector = new MoveSelectorForPlayer();
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_buffIcons = new Vector.<BuffIcon>();
               if(_loc1_ || _loc2_)
               {
                  this.m_healthBar = new InterfaceBar("battleScreenMenus_fillBar_healthFill","battleScreenMenus_fillBar_healthCap");
                  this.m_shieldBar = new InterfaceBar("battleScreenMenus_fillBar_shieldFill","battleScreenMenus_fillBar_shieldCap");
                  this.m_expBar = new InterfaceBar("battleScreenMenus_fillBar_expFill","battleScreenMenus_fillBar_expCap");
               }
            }
         }
      }
      
      public function Cleanup() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            if(this.m_minionSprite == null)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               TweenLite.to(this.m_minionSprite,0.1,{"removeTint":true});
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               if(§§pop() < this.m_buffIcons.length)
               {
                  continue;
               }
               if(_loc3_ || Boolean(_loc1_))
               {
                  this.m_buffIcons = new Vector.<BuffIcon>();
                  removeChild(this.m_minionSprite);
                  removeChild(this.m_healthBarBackgroundSprite);
                  if(!_loc4_)
                  {
                     removeChild(this.m_expBarBackgroundSprite);
                     removeChild(this.m_turnBackground);
                     addr108:
                     this.m_turnBackground.removeChild(this.m_currTurnText);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        removeChild(this.m_currLevelText);
                        removeChild(this.m_minionShield);
                        this.m_minionSprite = null;
                        if(this.m_isPlayersMinion)
                        {
                           addr134:
                           this.m_moveSelector.CleanUp();
                           addr137:
                           removeChild(this.m_moveSelector);
                           if(_loc3_)
                           {
                              addr143:
                              removeChild(this.m_selectedSprite);
                              if(_loc3_)
                              {
                                 removeChild(this.m_superEffectivePopup);
                                 removeChild(this.m_notEffectivePopup);
                                 removeChild(this.m_critPopup);
                                 removeChild(this.m_healthBar);
                                 if(_loc3_)
                                 {
                                    removeChild(this.m_shieldBar);
                                    if(_loc3_)
                                    {
                                       addr173:
                                       removeChild(this.m_expBar);
                                    }
                                 }
                                 break;
                              }
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr134);
               }
               §§goto(addr108);
            }
            break;
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
         }
         while(_loc2_ < this.m_teleportAnimationPieces.length)
         {
            removeChild(this.m_teleportAnimationPieces[_loc2_]);
            if(_loc3_ || _loc3_)
            {
               _loc2_++;
               if(!_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function SetNewMinion(param1:OwnedMinion, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.alpha = 0;
            this.m_isPlayersMinion = param2;
            if(_loc6_ || _loc3_)
            {
               this.m_currMinion = param1;
               this.m_isSelected = false;
               §§push(Singleton.dynamicData.m_isInMysteryMode);
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§push(§§pop());
                  if(!(_loc7_ && Boolean(this)))
                  {
                     addr52:
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           §§push(param2);
                           if(_loc6_)
                           {
                              addr60:
                              §§push(!§§pop());
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite("unknownMinion");
                           if(_loc6_)
                           {
                              addr90:
                              addChild(this.m_minionSprite);
                              this.m_teleportAnimationPieces = new Vector.<Sprite>(7);
                              addr101:
                              var _loc3_:int = 0;
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() >= this.m_teleportAnimationPieces.length)
                                    {
                                       if(!_loc7_)
                                       {
                                          this.m_minionSprite.y = -this.m_minionSprite.height;
                                       }
                                    }
                                    else
                                    {
                                       this.m_teleportAnimationPieces[_loc3_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenIntro_teleportPiece" + (_loc3_ + 1));
                                       if(!_loc7_)
                                       {
                                          this.m_teleportAnimationPieces[_loc3_].x = -this.m_teleportAnimationPieces[_loc3_].width / 2;
                                          if(!_loc7_)
                                          {
                                             this.m_teleportAnimationPieces[_loc3_].y = -this.m_teleportAnimationPieces[_loc3_].height * 1.4;
                                             this.m_teleportAnimationPieces[_loc3_].alpha = 0;
                                             if(_loc6_)
                                             {
                                             }
                                             addr187:
                                             break;
                                          }
                                          this.m_teleportAnimationPieces[_loc3_].visible = false;
                                          addChild(this.m_teleportAnimationPieces[_loc3_]);
                                          _loc3_++;
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                                 break;
                              }
                              var _loc4_:Number = §§pop();
                              §§push(param2);
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       this.m_minionSprite.x = this.m_minionSprite.width / 2;
                                       this.m_minionSprite.scaleX = -1;
                                       if(_loc6_)
                                       {
                                          addr236:
                                          this.m_healthBarBackgroundSprite = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_healthFillBar_background");
                                          addChild(this.m_healthBarBackgroundSprite);
                                          this.m_healthBarBackgroundSprite.x = -(this.m_healthBarBackgroundSprite.width / 2);
                                          if(_loc6_ || param2)
                                          {
                                             this.m_healthBarBackgroundSprite.y = -this.m_minionSprite.height - 20 - _loc4_;
                                             addr274:
                                             addChild(this.m_healthBar);
                                             §§push(this.m_healthBar);
                                             if(!(_loc7_ && Boolean(_loc3_)))
                                             {
                                                §§push(-(this.m_healthBarBackgroundSprite.width / 2));
                                                §§push(4);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || Boolean(_loc3_))
                                                   {
                                                      §§pop().x = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.m_healthBar);
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            addr321:
                                                            §§push(-this.m_minionSprite.height - 17);
                                                            if(_loc6_ || param2)
                                                            {
                                                               addr329:
                                                               §§push(§§pop() - _loc4_);
                                                               if(!(_loc7_ && Boolean(this)))
                                                               {
                                                                  addr338:
                                                                  §§pop().y = §§pop();
                                                                  §§push(this.m_healthBar);
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     §§pop().alpha = 1;
                                                                     addr352:
                                                                     §§push(this.m_healthBar);
                                                                     §§push(param1.m_currHealthPercentage);
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                               §§pop().SetBarSize(§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  addChild(this.m_shieldBar);
                                                                  if(!(_loc7_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr368:
                                                                     §§push(this.m_shieldBar);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(-(this.m_healthBarBackgroundSprite.width / 2));
                                                                        §§push(4);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§pop().x = §§pop() + §§pop();
                                                                           addr412:
                                                                           §§push(this.m_shieldBar);
                                                                           if(!(_loc7_ && Boolean(this)))
                                                                           {
                                                                              §§push(-this.m_minionSprite.height);
                                                                              §§push(17);
                                                                           }
                                                                           §§pop().alpha = 1;
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr418:
                                                                              this.m_shieldBar.SetBarSize(param1.m_currHealthPercentage);
                                                                              this.m_expBarBackgroundSprite = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_fillBar_background");
                                                                              if(_loc6_)
                                                                              {
                                                                                 addChild(this.m_expBarBackgroundSprite);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    this.m_expBarBackgroundSprite.x = -(this.m_expBarBackgroundSprite.width / 2) - 6;
                                                                                    if(!(_loc7_ && Boolean(param1)))
                                                                                    {
                                                                                       addr454:
                                                                                       this.m_expBarBackgroundSprite.y = -this.m_minionSprite.height - 20 - _loc4_;
                                                                                       this.m_expBarBackgroundSprite.alpha = 0;
                                                                                       addChild(this.m_expBar);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(this.m_expBar);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(this.m_healthBarBackgroundSprite.width / 2);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                §§push(4);
                                                                                                if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc7_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr503:
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr506:
                                                                                                         addr531:
                                                                                                         §§push(this.m_expBar);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr518:
                                                                                                            §§pop().y = -this.m_minionSprite.height - 17 - _loc4_;
                                                                                                            §§push(this.m_expBar);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr523:
                                                                                                               §§pop().SetBarSize(param1.m_currExpPercentageToNextLevel);
                                                                                                               §§push(this.m_expBar);
                                                                                                            }
                                                                                                            addr515:
                                                                                                         }
                                                                                                         §§pop().alpha = 0;
                                                                                                         if(param2)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               this.m_turnBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_turnIndicator_player");
                                                                                                               addr534:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.m_turnBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenMenus_turnIndicator_enemy");
                                                                                                         }
                                                                                                         addChild(this.m_turnBackground);
                                                                                                      }
                                                                                                      this.m_turnBackground.x = -58;
                                                                                                      addr564:
                                                                                                      this.m_turnBackground.y = -this.m_minionSprite.height - 28 - _loc4_;
                                                                                                      var _loc5_:TextFormat;
                                                                                                      (_loc5_ = new TextFormat()).color = 1250067;
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         _loc5_.size = 14;
                                                                                                         if(_loc6_ || Boolean(this))
                                                                                                         {
                                                                                                            _loc5_.font = "BurbinCasual";
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               _loc5_.align = TextFormatAlign.CENTER;
                                                                                                               this.m_currTurnText = new TextField();
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr609:
                                                                                                                  this.m_currTurnText.embedFonts = true;
                                                                                                                  this.m_currTurnText.defaultTextFormat = _loc5_;
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr619:
                                                                                                                     this.m_currTurnText.wordWrap = true;
                                                                                                                     this.m_currTurnText.autoSize = TextFieldAutoSize.CENTER;
                                                                                                                     this.m_currTurnText.text = "1";
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        this.m_currTurnText.x = 1;
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           this.m_currTurnText.y = 2;
                                                                                                                           this.m_currTurnText.width = 25;
                                                                                                                           this.m_currTurnText.selectable = false;
                                                                                                                           if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              this.m_turnBackground.addChild(this.m_currTurnText);
                                                                                                                              if(_loc6_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(Singleton.dynamicData.m_isInMysteryMode);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       this.m_currTurnText.visible = false;
                                                                                                                                       addr693:
                                                                                                                                       this.m_currLevelText = new TextField();
                                                                                                                                       this.m_currLevelText.embedFonts = true;
                                                                                                                                       _loc5_.size = 9;
                                                                                                                                       if(!(_loc7_ && param2))
                                                                                                                                       {
                                                                                                                                          _loc5_.color = 15461355;
                                                                                                                                          this.m_currLevelText.defaultTextFormat = _loc5_;
                                                                                                                                          this.m_currLevelText.text = "lv. 0";
                                                                                                                                          this.m_currLevelText.x = -21;
                                                                                                                                          this.m_currLevelText.y = -this.m_minionSprite.height - 7 - _loc4_;
                                                                                                                                          this.m_currLevelText.width = 45;
                                                                                                                                          addr741:
                                                                                                                                          this.m_currLevelText.selectable = false;
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             addChild(this.m_currLevelText);
                                                                                                                                             addr752:
                                                                                                                                             if(param2)
                                                                                                                                             {
                                                                                                                                                §§push(this.m_moveSelector);
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§pop().CreateMoveSelectorForMinion(param1);
                                                                                                                                                   addr759:
                                                                                                                                                   §§push(this.m_moveSelector);
                                                                                                                                                   if(_loc6_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr768:
                                                                                                                                                      §§push(117);
                                                                                                                                                      if(!(_loc7_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr782:
                                                                                                                                                            this.m_moveSelector.y = -114;
                                                                                                                                                            addChild(this.m_moveSelector);
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr789:
                                                                                                                                                               this.m_selectedSprite = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenSelectedIndicator");
                                                                                                                                                               if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addChild(this.m_selectedSprite);
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     addr809:
                                                                                                                                                                     this.m_selectedSprite.x = -28;
                                                                                                                                                                     this.m_selectedSprite.y = -this.m_minionSprite.height - 50 - _loc4_;
                                                                                                                                                                     if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                     {
                                                                                                                                                                        addr831:
                                                                                                                                                                        this.m_selectedSprite.visible = false;
                                                                                                                                                                        this.AnimateIsSelected();
                                                                                                                                                                        this.m_superEffectivePopup = Singleton.utility.m_spriteHandler.CreateSprite("superEffectivePopup");
                                                                                                                                                                        addChild(this.m_superEffectivePopup);
                                                                                                                                                                        if(_loc6_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           addr855:
                                                                                                                                                                           this.m_superEffectivePopup.x = -56;
                                                                                                                                                                           this.m_superEffectivePopup.y = -this.m_minionSprite.height - 99 - _loc4_;
                                                                                                                                                                           this.m_superEffectivePopup.visible = false;
                                                                                                                                                                           this.m_notEffectivePopup = Singleton.utility.m_spriteHandler.CreateSprite("notEffectivePopup");
                                                                                                                                                                           if(_loc6_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              addChild(this.m_notEffectivePopup);
                                                                                                                                                                              this.m_notEffectivePopup.x = -56;
                                                                                                                                                                              if(_loc6_ || Boolean(this))
                                                                                                                                                                              {
                                                                                                                                                                                 this.m_notEffectivePopup.y = -this.m_minionSprite.height - 99 - _loc4_;
                                                                                                                                                                                 this.m_notEffectivePopup.visible = false;
                                                                                                                                                                                 this.m_critPopup = Singleton.utility.m_spriteHandler.CreateSprite("critPopup");
                                                                                                                                                                                 addChild(this.m_critPopup);
                                                                                                                                                                                 this.m_critPopup.x = -146;
                                                                                                                                                                                 if(_loc6_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.m_critPopup.y = -this.m_minionSprite.height - 99 - _loc4_;
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.m_critPopup.visible = false;
                                                                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.m_redirectedPopup = Singleton.utility.m_spriteHandler.CreateSprite("damageRedirected");
                                                                                                                                                                                          addChild(this.m_redirectedPopup);
                                                                                                                                                                                          §§goto(addr975);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr975:
                                                                                                                                                                                       this.m_redirectedPopup.x = -56;
                                                                                                                                                                                       this.m_redirectedPopup.y = -this.m_minionSprite.height - 70 - _loc4_;
                                                                                                                                                                                       addr990:
                                                                                                                                                                                       this.m_redirectedPopup.visible = false;
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr996:
                                                                                                                                                                                          this.m_shieldBar.SetBarSize(this.m_currMinion.m_shieldPercentage);
                                                                                                                                                                                          addr1002:
                                                                                                                                                                                          if(param1.m_currHealth > 0)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.visible = true;
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1011:
                                                                                                                                                                                                this.m_startedDead = false;
                                                                                                                                                                                                addr1028:
                                                                                                                                                                                                this.m_minionShield = Singleton.utility.m_spriteHandler.CreateSprite("modStone_shield");
                                                                                                                                                                                                if(!(_loc7_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addChild(this.m_minionShield);
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1071);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1014:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1014);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             this.visible = false;
                                                                                                                                                                                             this.m_startedDead = true;
                                                                                                                                                                                             if(_loc6_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1028);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1087);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       this.m_minionShield.x = -(this.m_minionShield.height / 2);
                                                                                                                                                                                       if(_loc7_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1071);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1028);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1087);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1071);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1002);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1071);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1087);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr855);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1011);
                                                                                                                                                         }
                                                                                                                                                         addr1071:
                                                                                                                                                         this.m_minionShield.y = -this.m_minionShield.height - 10;
                                                                                                                                                         if(_loc6_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            addr1087:
                                                                                                                                                            this.m_minionShield.visible = false;
                                                                                                                                                         }
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr782);
                                                                                                                                                }
                                                                                                                                                §§goto(addr768);
                                                                                                                                             }
                                                                                                                                             §§goto(addr789);
                                                                                                                                          }
                                                                                                                                          §§goto(addr831);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1011);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       this.m_currTurnText.visible = true;
                                                                                                                                       if(_loc6_ || Boolean(_loc3_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr693);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr759);
                                                                                                                                 }
                                                                                                                                 §§goto(addr752);
                                                                                                                              }
                                                                                                                              §§goto(addr1011);
                                                                                                                           }
                                                                                                                           §§goto(addr741);
                                                                                                                        }
                                                                                                                        §§goto(addr855);
                                                                                                                     }
                                                                                                                     §§goto(addr996);
                                                                                                                  }
                                                                                                                  §§goto(addr975);
                                                                                                               }
                                                                                                               §§goto(addr619);
                                                                                                            }
                                                                                                            §§goto(addr809);
                                                                                                         }
                                                                                                         §§goto(addr990);
                                                                                                      }
                                                                                                      §§goto(addr609);
                                                                                                   }
                                                                                                   §§goto(addr518);
                                                                                                }
                                                                                                §§goto(addr515);
                                                                                             }
                                                                                             §§goto(addr503);
                                                                                          }
                                                                                          §§goto(addr523);
                                                                                       }
                                                                                       §§goto(addr503);
                                                                                    }
                                                                                    §§goto(addr506);
                                                                                 }
                                                                                 §§goto(addr454);
                                                                              }
                                                                              §§goto(addr518);
                                                                           }
                                                                           §§goto(addr454);
                                                                        }
                                                                        §§pop().y = §§pop() - §§pop() - _loc4_;
                                                                        if(_loc6_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(this.m_shieldBar);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr412);
                                                                           }
                                                                        }
                                                                        §§goto(addr418);
                                                                     }
                                                                     §§goto(addr412);
                                                                  }
                                                               }
                                                               §§goto(addr454);
                                                            }
                                                            §§goto(addr338);
                                                         }
                                                         §§goto(addr352);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr506);
                                       }
                                       §§goto(addr564);
                                    }
                                    §§goto(addr274);
                                 }
                                 else
                                 {
                                    this.m_minionSprite.scaleX = 1;
                                    this.m_minionSprite.x = -(this.m_minionSprite.width / 2);
                                    if(_loc6_)
                                    {
                                       §§goto(addr236);
                                    }
                                 }
                                 §§goto(addr534);
                              }
                              §§goto(addr531);
                           }
                           §§goto(addr101);
                        }
                     }
                     else
                     {
                        this.m_minionSprite = Singleton.utility.m_spriteHandler.CreateSprite(param1.m_baseMinion.m_minionBattleSprite);
                        if(_loc6_ || param2)
                        {
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr60);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr90);
      }
      
      public function AnimateAndSetBattleModShield(param1:Boolean) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.m_minionShield.visible);
         §§push(this.m_minionShield.visible);
         if(_loc3_ || Boolean(this))
         {
            if(§§pop())
            {
               if(!(_loc2_ && param1))
               {
                  §§pop();
                  if(!(_loc2_ && param1))
                  {
                     addr44:
                     if(!param1)
                     {
                        TweenLite.to(this.m_minionShield,0.8,{
                           "alpha":0,
                           "y":-this.m_minionShield.height - 30,
                           "onComplete":this.FinishBattleModShieldAnimation
                        });
                        §§push(this.m_currMinion);
                        if(!_loc2_)
                        {
                           §§push(false);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§pop().m_isBattleModShieldActive = §§pop();
                              if(_loc3_)
                              {
                                 §§goto(addr86);
                              }
                              else
                              {
                                 addr120:
                                 this.m_minionShield.visible = true;
                                 addr124:
                                 this.m_minionShield.alpha = 0;
                                 if(!_loc2_)
                                 {
                                    this.m_minionShield.y = -this.m_minionShield.height - 30;
                                 }
                                 TweenLite.to(this.m_minionShield,0.8,{
                                    "alpha":1,
                                    "y":-this.m_minionShield.height + 10
                                 });
                                 addr163:
                                 §§push(this.m_currMinion);
                                 §§push(true);
                              }
                           }
                           §§pop().m_isBattleModShieldActive = §§pop();
                           §§goto(addr166);
                        }
                        §§goto(addr163);
                     }
                     else
                     {
                        §§push(!this.m_minionShield.visible);
                        if(!(_loc2_ && param1))
                        {
                           addr106:
                           if(§§pop())
                           {
                              §§pop();
                              §§push(param1);
                              if(_loc3_ || Boolean(this))
                              {
                                 addr117:
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr120);
                                    }
                                    §§goto(addr124);
                                 }
                                 else
                                 {
                                    return false;
                                 }
                              }
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr117);
                     }
                  }
                  addr166:
                  return true;
               }
               addr86:
               return true;
            }
            §§goto(addr44);
         }
         §§goto(addr106);
      }
      
      private function FinishBattleModShieldAnimation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_minionShield.visible = false;
         }
      }
      
      public function AnimateIn() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:TimelineLite = null;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            if(this.m_teleportAnimationPieces)
            {
               if(_loc5_ || Boolean(_loc2_))
               {
                  addr34:
                  _loc2_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     loop1:
                     while(true)
                     {
                        §§push(7);
                        addr133:
                        addr229:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              continue loop1;
                           }
                           §§push(0);
                           if(!_loc6_)
                           {
                              break loop0;
                           }
                           addr222:
                           if(§§pop() < this.m_teleportAnimationPieces.length)
                           {
                              this.m_teleportAnimationPieces[_loc3_].visible = true;
                              this.m_teleportAnimationPieces[_loc3_].alpha = 0;
                              _loc1_ = new TimelineLite();
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 _loc1_.append(new TweenLite(this.m_teleportAnimationPieces[_loc3_],0.8,{
                                    "x":-this.m_teleportAnimationPieces[_loc3_].width / 2,
                                    "y":-this.m_teleportAnimationPieces[_loc3_].height * 1.4,
                                    "alpha":0.4
                                 }));
                                 if(_loc5_)
                                 {
                                    _loc1_.append(new TweenLite(this.m_teleportAnimationPieces[_loc3_],0.2 + _loc3_ * 0.15,{"alpha":0}));
                                    if(_loc6_)
                                    {
                                    }
                                    while(true)
                                    {
                                       §§goto(addr222);
                                    }
                                    addr226:
                                    alpha = 1;
                                    break;
                                    addr221:
                                 }
                                 _loc3_++;
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr226);
                        }
                        if(this.m_teleportAnimationPieces)
                        {
                           if(!(_loc6_ && Boolean(_loc1_)))
                           {
                              this.m_turnBackground.alpha = 0;
                              if(!_loc6_)
                              {
                                 this.m_healthBar.alpha = 0;
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr256);
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr271);
                           }
                           addr256:
                           this.m_healthBarBackgroundSprite.alpha = 0;
                           this.m_currLevelText.alpha = 0;
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              addr271:
                              if(this.m_minionSprite)
                              {
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr281);
                                 }
                              }
                              §§goto(addr292);
                           }
                           §§goto(addr281);
                        }
                        addr281:
                        this.m_minionSprite.alpha = 0;
                        if(_loc5_ || Boolean(this))
                        {
                           addr292:
                           TweenLite.to(this.m_minionSprite,0.5,{
                              "delay":0.5,
                              "alpha":1
                           });
                           TweenLite.to(this.m_turnBackground,0.5,{
                              "delay":0.8,
                              "alpha":1
                           });
                           TweenLite.to(this.m_healthBar,0.5,{
                              "delay":0.8,
                              "alpha":1
                           });
                           TweenLite.to(this.m_healthBarBackgroundSprite,0.5,{
                              "delay":0.8,
                              "alpha":1
                           });
                        }
                        addr339:
                        TweenLite.to(this.m_currLevelText,0.5,{
                           "delay":0.8,
                           "alpha":1
                        });
                        return;
                     }
                  }
                  break;
               }
               _loc3_ = §§pop();
            }
            §§goto(addr226);
         }
         §§goto(addr34);
      }
      
      public function TurnOffInterface() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.m_currMinion == null)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr32);
               }
            }
            §§push(0.3);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            if(!(_loc2_ && Boolean(this)))
            {
               TweenLite.to(this.m_healthBar,_loc1_,{"alpha":0});
               if(!(_loc2_ && _loc2_))
               {
                  TweenLite.to(this.m_shieldBar,_loc1_,{"alpha":0});
                  if(!(_loc2_ && _loc3_))
                  {
                     addr87:
                     TweenLite.to(this.m_healthBarBackgroundSprite,_loc1_,{"alpha":0});
                     if(!_loc2_)
                     {
                        addr97:
                        TweenLite.to(this.m_turnBackground,_loc1_,{"alpha":0});
                        TweenLite.to(this.m_currTurnText,_loc1_,{"alpha":0});
                        TweenLite.to(this.m_currLevelText,_loc1_,{"alpha":0});
                        TweenLite.to(this.m_expBar,_loc1_,{"alpha":0});
                        if(_loc3_)
                        {
                        }
                        §§goto(addr146);
                     }
                     TweenLite.to(this.m_expBarBackgroundSprite,_loc1_,{"alpha":0});
                  }
                  addr146:
                  return;
               }
               §§goto(addr97);
            }
            §§goto(addr87);
         }
         addr32:
      }
      
      public function MakeVisualFromDeath() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this.m_currMinion == null)
            {
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
            else
            {
               addr41:
               TweenLite.to(this,0.3,{"alpha":0.5});
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function TurnOnExpBar() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            if(this.m_currMinion == null)
            {
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr39);
               }
            }
            TweenLite.to(this.m_expBar,0.3,{"alpha":1});
            if(!(_loc1_ && _loc1_))
            {
               TweenLite.to(this.m_expBarBackgroundSprite,0.3,{"alpha":1});
            }
            return;
         }
         addr39:
      }
      
      public function TurnOffExpBar() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.m_currMinion == null)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
               addr54:
               TweenLite.to(this.m_expBarBackgroundSprite,0.3,{"alpha":0});
            }
            else
            {
               TweenLite.to(this.m_expBar,0.3,{"alpha":0});
               if(_loc2_)
               {
                  §§goto(addr54);
               }
            }
         }
      }
      
      public function AnimateExpBarTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.m_currMinion == null)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  return;
               }
            }
            else
            {
               this.m_expBar.AnimateToBarSize(param1,0.6);
            }
         }
      }
      
      public function SetExpBarTo(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.m_currMinion == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
            }
            TweenLite.killTweensOf(this.m_expBar.m_bar);
            if(!(_loc2_ && _loc2_))
            {
               this.m_expBar.SetBarSize(param1);
            }
         }
      }
      
      public function ToggleIsSelected() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.m_isSelected);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().m_isSelected = §§pop();
            if(!_loc2_)
            {
               this.m_selectedSprite.visible = this.m_isSelected;
            }
         }
         return this.m_isSelected;
      }
      
      private function AnimateIsSelected() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TimelineLite = new TimelineLite();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.append(new TweenLite(this.m_selectedSprite,0.7,{"y":"-10"}));
            if(_loc3_)
            {
               _loc1_.append(new TweenLite(this.m_selectedSprite,0.7,{
                  "y":"10",
                  "onComplete":this.AnimateIsSelected
               }));
            }
         }
      }
      
      public function SetIsSelected(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.m_currMinion == null)
            {
               if(_loc2_ || Boolean(this))
               {
                  return;
               }
               addr46:
               this.m_selectedSprite.visible = this.m_isSelected;
            }
            else
            {
               this.m_isSelected = param1;
               if(_loc2_)
               {
                  §§goto(addr46);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function MakeMove() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TimelineLite = null;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this.m_isPlayersMinion)
            {
               addr27:
               _loc1_ = new TimelineLite();
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.append(new TweenLite(this,0.1,{"x":"20"}));
                  if(_loc3_)
                  {
                     _loc1_.append(new TweenLite(this,0.1,{"x":"-20"}));
                  }
               }
            }
            else
            {
               _loc1_ = new TimelineLite();
               if(_loc3_)
               {
                  _loc1_.append(new TweenLite(this,0.1,{"x":"-20"}));
                  if(!_loc2_)
                  {
                     _loc1_.append(new TweenLite(this,0.1,{"x":"20"}));
                  }
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function UpdateVisuals() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Vector.<int> = null;
         var _loc2_:int = 0;
         var _loc3_:BaseMinionMove = null;
         var _loc4_:* = 0;
         §§push(this.m_currMinion);
         if(_loc5_)
         {
            §§push(§§pop() == null);
            if(_loc5_ || Boolean(_loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr133);
               }
               §§goto(addr55);
            }
            addr45:
            §§pop();
            if(!_loc6_)
            {
               §§push(this.m_startedDead);
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     addr55:
                     if(§§pop())
                     {
                        this.visible = false;
                        return;
                     }
                     this.visible = true;
                     §§push(this.m_currMinion);
                     if(!_loc6_)
                     {
                        §§push(§§pop().m_moveOrderPosition);
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    this.m_currTurnText.text = "";
                                 }
                              }
                              else
                              {
                                 this.m_currTurnText.text = "" + this.m_currMinion.m_moveOrderPosition;
                              }
                              addr130:
                              §§push(this.m_currMinion);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 addr104:
                                 §§push(§§pop().m_currLevel);
                                 §§push(60);
                              }
                              §§push(§§pop().m_hasMovedOnThisTurn);
                              if(_loc5_)
                              {
                                 addr133:
                                 if(§§pop())
                                 {
                                    TweenLite.to(this.m_turnBackground,0.3,{"alpha":0.3});
                                    addr142:
                                 }
                                 else
                                 {
                                    TweenLite.to(this.m_turnBackground,0.3,{"alpha":1});
                                 }
                                 if(this.m_minionSprite == null)
                                 {
                                    return;
                                 }
                                 §§push(this.m_isPlayersMinion);
                              }
                              if(§§pop())
                              {
                                 §§goto(addr166);
                              }
                              else
                              {
                                 §§push(Singleton.dynamicData);
                              }
                              §§goto(addr194);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc6_)
                              {
                                 this.m_currLevelText.text = "max lvl";
                                 addr128:
                                 §§goto(addr130);
                                 §§push(this.m_currMinion);
                              }
                           }
                           else
                           {
                              this.m_currLevelText.text = "lv. " + this.m_currMinion.m_currLevel;
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr128);
                              }
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr130);
                  }
               }
               §§goto(addr133);
            }
            addr166:
            §§push(Singleton.dynamicData);
            if(!_loc6_)
            {
               _loc1_ = §§pop().GetGlobalPassiveMovesForPlayer().concat(this.m_currMinion.m_currDOTsAndHOTs);
               if(!(_loc6_ && Boolean(_loc1_)))
               {
                  §§goto(addr201);
               }
               §§goto(addr235);
            }
            else
            {
               addr194:
               _loc1_ = §§pop().GetGlobalPassiveMovesForOpponet().concat(this.m_currMinion.m_currDOTsAndHOTs);
            }
            addr201:
            §§push(this.m_buffIcons.length == _loc1_.length);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  §§goto(addr212);
               }
               §§goto(addr221);
            }
            addr212:
            if(§§pop())
            {
               if(_loc5_ || Boolean(_loc1_))
               {
                  addr221:
                  §§pop();
                  if(!_loc6_)
                  {
                     §§push(this.m_currMinion.m_currHealth);
                     if(_loc5_)
                     {
                        §§goto(addr231);
                     }
                  }
                  §§goto(addr235);
               }
            }
            addr231:
            if(§§pop() > 0)
            {
               if(!_loc6_)
               {
                  addr235:
                  _loc2_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     if(§§pop() >= this.m_buffIcons.length)
                     {
                        if(_loc6_)
                        {
                        }
                        §§goto(addr377);
                     }
                     this.m_buffIcons[_loc2_].CleanUp();
                     removeChild(this.m_buffIcons[_loc2_]);
                     _loc2_++;
                     if(!_loc6_)
                     {
                        continue;
                     }
                     this.m_buffIcons = new Vector.<BuffIcon>(_loc1_.length);
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           _loc4_ = §§pop();
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        break loop0;
                     }
                     addr366:
                  }
                  break;
               }
               while(§§pop() < _loc1_.length)
               {
                  _loc3_ = Singleton.staticData.GetBaseMinionMove(_loc1_[_loc4_]);
                  this.m_buffIcons[_loc4_] = new BuffIcon(_loc3_);
                  if(this.m_isPlayersMinion)
                  {
                     this.m_buffIcons[_loc4_].x = -(this.m_minionSprite.width / 2) - this.m_buffIcons[_loc4_].width;
                     if(!(_loc5_ || Boolean(this)))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     this.m_buffIcons[_loc4_].x = this.m_minionSprite.width / 2;
                  }
                  this.m_buffIcons[_loc4_].y = -this.m_minionSprite.height + _loc4_ * this.m_buffIcons[_loc4_].height;
                  addChild(this.m_buffIcons[_loc4_]);
                  _loc4_++;
                  §§goto(addr366);
               }
               if(_loc5_ || Boolean(_loc3_))
               {
               }
               §§goto(addr377);
            }
            addr377:
            this.m_moveSelector.UpdateEnergyBar();
            return;
         }
         §§goto(addr130);
      }
      
      public function UpdateHealth() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.m_currMinion);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  return;
               }
               this.m_healthBar.AnimateToBarSize(this.m_currMinion.m_currHealthPercentage,0.6);
               this.m_shieldBar.AnimateToBarSize(this.m_currMinion.m_shieldPercentage,0.6);
               addr63:
               §§push(this.m_currMinion);
            }
            if(§§pop().m_currHealth < 1)
            {
               if(_loc2_)
               {
                  TweenLite.to(this,1.2,{"onComplete":this.PlayDeathAnimation});
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function PlayASuperEffectiveAttackHasHit() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_superEffectivePopup.x = -65;
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_superEffectivePopup.y = -this.m_minionSprite.height - 70 - 10;
               if(_loc3_ || _loc3_)
               {
                  addr45:
                  this.m_superEffectivePopup.visible = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     this.m_superEffectivePopup.alpha = 0;
                  }
               }
            }
            var _loc1_:TimelineLite = new TimelineLite();
            if(_loc3_ || Boolean(this))
            {
               _loc1_.append(new TweenLite(this.m_superEffectivePopup,0.5,{"alpha":1}));
               if(_loc3_)
               {
                  _loc1_.append(new TweenLite(this.m_superEffectivePopup,0.5,{}));
                  if(_loc2_ && Boolean(this))
                  {
                  }
                  §§goto(addr124);
               }
               _loc1_.append(new TweenLite(this.m_superEffectivePopup,0.2,{"alpha":0}));
               if(_loc3_)
               {
               }
               §§goto(addr124);
            }
            addr124:
            TweenLite.to(this.m_superEffectivePopup,1.2,{
               "y":"-50",
               "onComplete":this.FinishSuperEffectAnimation
            });
            return;
         }
         §§goto(addr45);
      }
      
      public function PlayANotEffectiveAttackHasHit() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_notEffectivePopup.x = -63;
            if(_loc3_)
            {
               this.m_notEffectivePopup.y = -this.m_minionSprite.height - 70 - 10;
               if(_loc3_ || Boolean(this))
               {
               }
               §§goto(addr51);
            }
            this.m_notEffectivePopup.visible = true;
            if(_loc3_ || _loc2_)
            {
            }
            §§goto(addr51);
         }
         addr51:
         this.m_notEffectivePopup.alpha = 0;
         var _loc1_:TimelineLite = new TimelineLite();
         if(_loc3_ || _loc3_)
         {
            _loc1_.append(new TweenLite(this.m_notEffectivePopup,0.5,{"alpha":1}));
            if(!_loc2_)
            {
               _loc1_.append(new TweenLite(this.m_notEffectivePopup,0.5,{}));
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.append(new TweenLite(this.m_notEffectivePopup,0.2,{"alpha":0}));
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr130);
            }
            TweenLite.to(this.m_notEffectivePopup,1.2,{
               "y":"-50",
               "onComplete":this.FinishSuperEffectAnimation
            });
         }
         addr130:
      }
      
      public function PlayRedirectedHasHappened() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_redirectedPopup.x = -41;
            if(!(_loc2_ && _loc1_))
            {
               this.m_redirectedPopup.y = -this.m_minionSprite.height - 60 - 10;
               if(!(_loc2_ && _loc3_))
               {
                  this.m_redirectedPopup.visible = true;
                  if(_loc2_ && Boolean(this))
                  {
                  }
                  addr67:
                  var _loc1_:TimelineLite = new TimelineLite();
                  if(_loc3_)
                  {
                     _loc1_.append(new TweenLite(this.m_redirectedPopup,0.5,{"alpha":1}));
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr90:
                        _loc1_.append(new TweenLite(this.m_redirectedPopup,0.5,{}));
                        if(_loc3_)
                        {
                           _loc1_.append(new TweenLite(this.m_redirectedPopup,0.2,{"alpha":0}));
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              TweenLite.to(this.m_redirectedPopup,1.2,{
                                 "y":"-20",
                                 "onComplete":this.FinishSuperEffectAnimation
                              });
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr90);
               }
               §§goto(addr67);
            }
            this.m_redirectedPopup.alpha = 0;
         }
         §§goto(addr67);
      }
      
      public function PlayACritAttackHasHit() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_critPopup.x = -62;
            if(_loc3_)
            {
               this.m_critPopup.y = -this.m_minionSprite.height - 25 - 10;
               if(_loc3_ || _loc1_)
               {
               }
               addr51:
               this.m_critPopup.alpha = 0;
               var _loc1_:TimelineLite = new TimelineLite();
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.append(new TweenLite(this.m_critPopup,0.5,{"alpha":1}));
                  if(!_loc2_)
                  {
                     addr85:
                     _loc1_.append(new TweenLite(this.m_critPopup,0.5,{}));
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.append(new TweenLite(this.m_critPopup,0.2,{"alpha":0}));
                        if(_loc3_)
                        {
                           TweenLite.to(this.m_critPopup,1.2,{
                              "y":"-50",
                              "onComplete":this.FinishSuperEffectAnimation
                           });
                        }
                     }
                  }
                  return;
               }
               §§goto(addr85);
            }
            this.m_critPopup.visible = true;
            if(_loc3_ || _loc3_)
            {
            }
         }
         §§goto(addr51);
      }
      
      private function FinishSuperEffectAnimation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_superEffectivePopup.visible = false;
            if(_loc1_)
            {
               this.m_notEffectivePopup.visible = false;
               if(_loc2_ && _loc1_)
               {
               }
               §§goto(addr61);
            }
            this.m_critPopup.visible = false;
            if(_loc1_)
            {
               this.m_redirectedPopup.visible = false;
            }
         }
         addr61:
      }
      
      private function PlayDeathAnimation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.visible = true;
            if(!_loc3_)
            {
               TweenLite.to(this,0.5,{"alpha":0});
            }
         }
         var _loc1_:int = 0;
         do
         {
            if(_loc1_ >= this.m_buffIcons.length)
            {
               if(_loc2_)
               {
                  addr80:
                  this.m_buffIcons = new Vector.<BuffIcon>();
                  break;
               }
               break;
            }
            this.m_buffIcons[_loc1_].CleanUp();
            if(!_loc2_)
            {
               continue;
            }
            removeChild(this.m_buffIcons[_loc1_]);
            if(!(_loc3_ && Boolean(this)))
            {
               continue;
            }
            §§goto(addr80);
         }
         while(_loc1_++, !(_loc3_ && _loc2_));
         
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.UpdateFullFrames();
            if(!(_loc2_ && _loc1_))
            {
               addr24:
               this.m_moveSelector.UpdateFullFrames();
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
