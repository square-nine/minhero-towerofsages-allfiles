package BattleSystems.Visuals.Backgrounds
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class BattleBackground
   {
       
      
      private var m_skyBackground:Sprite;
      
      private var m_mountainsBackground:Sprite;
      
      private var m_clouds:Vector.<Sprite>;
      
      private var m_cloudMoveSpeeds:Vector.<Number>;
      
      private var m_cloudXPositions:Vector.<Number>;
      
      private var m_battleTower:Sprite;
      
      private var m_battleTowerHieght:int;
      
      private var m_goldenCity:Sprite;
      
      private var m_otherIslands:Vector.<Sprite>;
      
      private var m_goldenCityPosition:int;
      
      private var m_otherIslandsPositions:Vector.<int>;
      
      private var m_foregroundCloud:Sprite;
      
      private var m_isForegroundCloundActive:Boolean;
      
      private var m_arenaFloor:Sprite;
      
      private var m_arenaGlow:Sprite;
      
      private var m_backgroundPosition:Number;
      
      private var m_currDirection:Number;
      
      public function BattleBackground()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function AddBackground(param1:Sprite) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param1))
         {
            this.m_skyBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_sky");
            if(_loc4_ || Boolean(this))
            {
               param1.addChild(this.m_skyBackground);
               if(!(_loc3_ && _loc3_))
               {
                  addr46:
                  this.m_clouds = new Vector.<Sprite>(5);
                  if(_loc4_)
                  {
                     addr55:
                     this.m_cloudMoveSpeeds = new Vector.<Number>(this.m_clouds.length);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr71:
                        this.m_cloudXPositions = new Vector.<Number>(this.m_clouds.length);
                     }
                  }
                  var _loc2_:int = 0;
                  while(true)
                  {
                     if(_loc2_ < this.m_clouds.length)
                     {
                        this.m_clouds[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_clouds");
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           param1.addChild(this.m_clouds[_loc2_]);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              continue;
                           }
                           §§goto(addr153);
                        }
                        break;
                     }
                     this.m_cloudXPositions[0] = 0.3;
                     if(_loc4_ || Boolean(param1))
                     {
                        this.m_cloudXPositions[1] = 0.6;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.m_cloudXPositions[2] = 0.1;
                           this.m_cloudXPositions[3] = 0.7;
                           addr153:
                           this.m_cloudXPositions[4] = 0.9;
                           if(!_loc3_)
                           {
                              this.m_cloudMoveSpeeds[0] = 1.2;
                              addr165:
                              this.m_cloudMoveSpeeds[1] = 1;
                              this.m_cloudMoveSpeeds[2] = 1;
                              this.m_cloudMoveSpeeds[3] = 1.2;
                              this.m_cloudMoveSpeeds[4] = 2;
                              this.m_mountainsBackground = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_horizon");
                              addr199:
                              this.m_mountainsBackground.x = -32;
                              param1.addChild(this.m_mountainsBackground);
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.m_otherIslands = new Vector.<Sprite>(2);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    this.m_otherIslandsPositions = new Vector.<int>(2);
                                    this.m_otherIslands[0] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_smallIsland");
                                    if(_loc4_)
                                    {
                                       param1.addChild(this.m_otherIslands[0]);
                                       this.m_goldenCity = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_city");
                                       param1.addChild(this.m_goldenCity);
                                       this.m_otherIslands[1] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_smallIsland");
                                       param1.addChild(this.m_otherIslands[1]);
                                       this.m_battleTower = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_mountain");
                                       param1.addChild(this.m_battleTower);
                                       this.m_foregroundCloud = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_clouds");
                                       if(_loc4_)
                                       {
                                          addr298:
                                          this.m_foregroundCloud.scaleX = 2;
                                          break;
                                       }
                                       addr314:
                                       this.m_foregroundCloud.y = -180;
                                       addr318:
                                       this.m_foregroundCloud.alpha = 0.7;
                                       if(_loc4_)
                                       {
                                          param1.addChild(this.m_foregroundCloud);
                                          addr328:
                                          this.m_arenaFloor = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_island");
                                          this.m_arenaFloor.x = -169;
                                          if(!_loc3_)
                                          {
                                             this.m_arenaFloor.y = 116;
                                             param1.addChild(this.m_arenaFloor);
                                             this.m_arenaGlow = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_lanternGlow");
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                this.m_arenaGlow.x = 302;
                                             }
                                             §§goto(addr382);
                                          }
                                          this.m_arenaGlow.y = 178;
                                       }
                                       param1.addChild(this.m_arenaGlow);
                                    }
                                    addr382:
                                    this.m_backgroundPosition = -55;
                                    return;
                                 }
                                 §§goto(addr318);
                              }
                              this.m_foregroundCloud.x = -380;
                              if(!_loc3_)
                              {
                                 §§goto(addr314);
                              }
                              §§goto(addr328);
                           }
                           §§goto(addr298);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr199);
                     §§goto(addr153);
                  }
                  this.m_foregroundCloud.scaleY = this.m_foregroundCloud.scaleX;
                  §§goto(addr165);
               }
               §§goto(addr71);
            }
            §§goto(addr55);
         }
         §§goto(addr46);
      }
      
      public function ShakeScreen(param1:Number, param2:int, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:TimelineLite = new TimelineLite();
         var _loc5_:* = 0;
         while(_loc5_ < param2)
         {
            _loc4_.append(new TweenLite(this.m_arenaFloor,0.05 + param1 * (_loc5_ * 0.5),{"x":"" + param3}));
            if(_loc7_ && Boolean(param3))
            {
               break;
            }
            _loc4_.append(new TweenLite(this.m_arenaFloor,0.05 + param1 * (_loc5_ * 0.5),{"x":"-" + param3}));
            if(_loc6_ || Boolean(this))
            {
               _loc5_++;
               if(!(_loc6_ || Boolean(param2)))
               {
                  break;
               }
            }
         }
         _loc4_ = new TimelineLite();
         if(_loc6_ || Boolean(this))
         {
            §§push(0);
            if(_loc6_)
            {
               _loc5_ = §§pop();
               if(_loc6_ || Boolean(param3))
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr174:
                     while(true)
                     {
                        if(§§pop() < param2)
                        {
                           _loc4_.append(new TweenLite(this.m_arenaGlow,0.05 + param1 * (_loc5_ * 0.5),{"x":"" + param3}));
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 _loc4_.append(new TweenLite(this.m_arenaGlow,0.05 + param1 * (_loc5_ * 0.5),{"x":"-" + param3}));
                                 if(_loc6_ || Boolean(param3))
                                 {
                                    continue loop1;
                                 }
                              }
                              addr133:
                           }
                        }
                        §§goto(addr176);
                     }
                  }
                  addr173:
               }
               while(true)
               {
                  _loc5_++;
                  if(_loc6_ || Boolean(param2))
                  {
                     §§goto(addr173);
                  }
                  break;
               }
               addr176:
               return;
            }
            §§goto(addr174);
         }
         §§goto(addr133);
      }
      
      public function StartTheBringInAnimation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_currDirection = -1;
            if(!_loc1_)
            {
               this.GenerateNewRandomPositions();
               if(_loc2_ || Boolean(this))
               {
               }
               §§goto(addr48);
            }
            this.SetBackgroundPosition(this.m_backgroundPosition);
            if(_loc2_ || _loc1_)
            {
            }
            §§goto(addr48);
         }
         addr48:
         this.AnimateGlow();
      }
      
      private function AnimateGlow() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this.m_arenaGlow,1.2,{"alpha":0.5}));
         _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
         if(_loc2_ || _loc3_)
         {
            _loc1_.append(new TweenLite(this.m_arenaGlow,1.2,{"alpha":1}));
            if(_loc2_)
            {
               _loc1_.append(new TweenLite(this.m_arenaGlow,1,{"alpha":0.6}));
               _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
               _loc1_.append(new TweenLite(this.m_arenaGlow,1,{"alpha":1}));
               addr89:
               _loc1_.append(new TweenLite(this.m_arenaGlow,1.8,{"alpha":0.5}));
               _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
               if(!_loc3_)
               {
                  _loc1_.append(new TweenLite(this.m_arenaGlow,1.8,{"alpha":1}));
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.append(new TweenLite(this.m_arenaGlow,1,{"alpha":0.5}));
                     addr143:
                     _loc1_.append(new TweenLite(this.m_arenaGlow,0.9,{}));
                     _loc1_.append(new TweenLite(this.m_arenaGlow,1,{
                        "alpha":1,
                        "onComplete":this.AnimateGlow
                     }));
                  }
                  return;
               }
            }
            §§goto(addr143);
         }
         §§goto(addr89);
      }
      
      private function SetBackgroundPosition(param1:Number, param2:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            this.m_battleTower.x = this.GetActualPosition(this.m_battleTower,-1000,this.m_battleTowerHieght,param1,1.6,0.5,2000);
         }
         §§push(Math.abs(this.m_battleTower.x) / 1000);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            this.m_mountainsBackground.y = 154 - _loc3_ * 15;
            if(_loc6_)
            {
               this.m_otherIslands[0].x = this.GetActualPosition(this.m_otherIslands[0],-1250,this.m_otherIslandsPositions[0],param1 * 0.5,1.5 * _loc3_,0.8,2000);
               this.m_otherIslands[0].scaleX *= 0.7;
               this.m_otherIslands[0].scaleY = this.m_otherIslands[0].scaleX;
               if(!(_loc5_ && _loc3_))
               {
                  this.m_otherIslands[1].x = this.GetActualPosition(this.m_otherIslands[1],-1250,this.m_otherIslandsPositions[1],param1 * 1.1,1.5 * _loc3_,0.8,2000);
                  addr111:
                  if(_loc6_ || _loc3_)
                  {
                     addr149:
                     this.m_goldenCity.x = this.GetActualPosition(this.m_goldenCity,-1180,this.m_goldenCityPosition,param1 * 0.3,1.5 * _loc3_,0.8,2000);
                  }
               }
               var _loc4_:int = 0;
               while(true)
               {
                  if(_loc4_ >= this.m_clouds.length)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§goto(addr238);
                  }
                  this.m_clouds[_loc4_].x = this.GetActualPosition(this.m_clouds[_loc4_],-700,-99,param1 * this.m_cloudMoveSpeeds[_loc4_],-99,this.m_cloudXPositions[_loc4_],1200);
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc4_++;
                  if(_loc6_ || Boolean(param2))
                  {
                     continue;
                  }
                  §§goto(addr232);
               }
               this.m_foregroundCloud.visible = this.m_isForegroundCloundActive;
               if(!(_loc5_ && Boolean(this)))
               {
                  addr232:
                  if(this.m_foregroundCloud.visible)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr238);
                     }
                  }
                  §§goto(addr238);
               }
               addr238:
               this.m_foregroundCloud.x = this.GetActualPosition(this.m_foregroundCloud,-700,-99,param1 * 1.1,-99,0.1,3000);
               return;
            }
            §§goto(addr149);
         }
         §§goto(addr111);
      }
      
      private function GetActualPosition(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number = -99, param6:Number = 0.5, param7:Number = 2000) : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc8_:Number = int(param4 / 360);
         §§push(param4);
         if(!_loc10_)
         {
            §§push(360 * param6);
            if(_loc11_)
            {
               §§push(§§pop() + §§pop());
               if(_loc11_ || Boolean(param2))
               {
                  addr37:
                  §§push(_loc8_);
                  if(_loc11_ || Boolean(param1))
                  {
                     §§push(§§pop() * 360);
                     if(_loc11_ || Boolean(param2))
                     {
                        addr54:
                        §§push(§§pop() - §§pop());
                        if(_loc11_)
                        {
                           addr58:
                           §§push(§§pop());
                           §§push(§§pop());
                        }
                        §§goto(addr58);
                     }
                  }
                  var _loc9_:* = §§pop();
                  if(_loc11_)
                  {
                     §§push(360);
                     if(_loc11_ || Boolean(param2))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc10_ && Boolean(param1)))
                           {
                              §§push(_loc9_);
                              §§push(360);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc11_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc10_ && Boolean(this)))
                                    {
                                       _loc9_ = §§pop();
                                       addr103:
                                       if(param5 != -99)
                                       {
                                          if(_loc11_ || Boolean(this))
                                          {
                                             addr123:
                                             param5 = 1 + Math.abs(param5 * ((_loc9_ - 180) / 360));
                                             if(_loc11_ || Boolean(this))
                                             {
                                                §§push(int(param5 * 800) / 800);
                                                if(_loc11_)
                                                {
                                                   param5 = §§pop();
                                                   param1.scaleX = param5;
                                                   addr145:
                                                   param1.scaleY = param1.scaleX;
                                                   param1.y = param3 + (437 - param1.height) / 2;
                                                   §§push(this.m_currDirection);
                                                   if(!(_loc10_ && Boolean(param1)))
                                                   {
                                                      addr168:
                                                      §§push(param2);
                                                      if(!(_loc10_ && Boolean(param2)))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc10_)
                                                         {
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                }
                                                §§goto(addr206);
                                             }
                                          }
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr168);
                                 }
                                 addr206:
                                 §§push(this.m_currDirection);
                                 if(!_loc10_)
                                 {
                                    addr190:
                                    §§push(_loc9_);
                                    if(!(_loc10_ && Boolean(param2)))
                                    {
                                       §§push(param7);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() / 360);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 return §§pop() + §§pop();
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr123);
               }
               §§goto(addr58);
            }
            §§goto(addr54);
         }
         §§goto(addr37);
      }
      
      public function GenerateNewRandomPositions() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = new Array(1,0.8,0.6);
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.m_clouds.length)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr95:
                  this.m_goldenCityPosition = 5 - Math.random() * 150;
                  break;
               }
               break;
            }
            this.m_clouds[_loc2_].y = -59 + Math.random() * 129;
            if(_loc4_)
            {
               this.m_clouds[_loc2_].scaleX = _loc1_[int(Math.random() * 3)];
               this.m_clouds[_loc2_].scaleY = this.m_clouds[_loc2_].scaleX;
               if(!(_loc3_ && _loc3_))
               {
                  continue;
               }
               §§goto(addr95);
            }
            break;
            §§goto(addr95);
         }
         this.m_otherIslandsPositions[0] = -22 - Math.random() * 140;
         if(!_loc3_)
         {
            §§goto(addr115);
         }
         §§goto(addr148);
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.m_backgroundPosition);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + 0.1);
            }
            §§pop().m_backgroundPosition = §§pop();
            if(!_loc1_)
            {
               this.SetBackgroundPosition(this.m_backgroundPosition);
            }
         }
      }
   }
}
