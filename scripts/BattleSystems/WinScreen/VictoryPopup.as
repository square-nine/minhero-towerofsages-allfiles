package BattleSystems.WinScreen
{
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   
   public class VictoryPopup extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_playerIcon:Sprite;
      
      private var m_stars:Vector.<Sprite>;
      
      public function VictoryPopup()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               addr25:
               this.m_stars = new Vector.<Sprite>();
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function LoadSprite() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryBackground");
         this.m_background.alpha = 0;
         addChild(this.m_background);
         if(_loc2_ || _loc2_)
         {
            this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_maleBust_icon");
            if(_loc2_)
            {
               this.m_playerIcon.x = 29;
            }
         }
         this.m_playerIcon.y = 112;
         if(_loc2_ || _loc2_)
         {
            this.m_background.addChild(this.m_playerIcon);
         }
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this.m_stars[_loc1_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryStar");
            if(_loc2_ || _loc3_)
            {
               this.m_stars[_loc1_].x = 19 + _loc1_ * 58;
               if(_loc2_ || Boolean(_loc1_))
               {
                  this.m_stars[_loc1_].y = 66;
                  if(_loc3_ && Boolean(_loc1_))
                  {
                     continue;
                  }
               }
               break;
            }
            this.m_background.addChild(this.m_stars[_loc1_]);
            if(!_loc3_)
            {
               _loc1_++;
               if(!_loc2_)
               {
                  break;
               }
            }
         }
      }
      
      public function BringInVictoryPopup() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.m_background.removeChild(this.m_playerIcon);
         if(Singleton.dynamicData.m_isMale)
         {
            if(_loc3_ || Boolean(this))
            {
               this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_maleBust_icon");
               addr44:
               this.m_playerIcon.x = 29;
               if(!(_loc4_ && _loc2_))
               {
                  addr55:
                  this.m_playerIcon.y = 112;
                  this.m_background.addChild(this.m_playerIcon);
               }
               this.m_background.alpha = 0;
               var _loc1_:TimelineLite = new TimelineLite();
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  _loc1_.append(new TweenLite(this.m_background,0.3,{}));
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.append(new TweenLite(this.m_background,0.5,{"alpha":1}));
                     if(_loc4_)
                     {
                     }
                     addr124:
                     var _loc2_:* = 0;
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(3);
                           if(_loc3_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(0);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Singleton.dynamicData.GetNumberOfStarsEarnedForTheCurrentTrainer());
                                    addr249:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc1_ = new TimelineLite();
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             _loc1_.append(new TweenLite(this.m_stars[_loc2_],0.8 + _loc2_ * 0.5,{}));
                                             if(_loc4_ && Boolean(_loc2_))
                                             {
                                             }
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                             addr250:
                                             return;
                                             addr245:
                                          }
                                          _loc1_.append(new TweenLite(this.m_stars[_loc2_],0.4,{"transformAroundCenter":{
                                             "alpha":1,
                                             "scaleX":1,
                                             "scaleY":1
                                          }}));
                                          if(!_loc4_)
                                          {
                                             _loc2_++;
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr250);
                                    }
                                 }
                              }
                              else
                              {
                                 this.m_stars[_loc2_].alpha = 0;
                                 this.m_stars[_loc2_].scaleX = 0.8;
                                 this.m_stars[_loc2_].scaleY = 0.8;
                                 this.m_stars[_loc2_].x = 21 + _loc2_ * 60;
                                 if(_loc3_)
                                 {
                                    this.m_stars[_loc2_].y = 66;
                                    _loc2_++;
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr183:
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr249);
                        }
                        break;
                     }
                     _loc2_ = §§pop();
                     §§goto(addr183);
                  }
                  _loc1_.append(new TweenLite(this.m_background,2.1,{"onComplete":this.CloseOutPopup}));
               }
               §§goto(addr124);
            }
            §§goto(addr55);
         }
         else
         {
            this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_femaleBust_icon");
         }
         §§goto(addr44);
      }
      
      public function CloseOutPopup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            TweenLite.to(this.m_background,0.5,{"alpha":0});
         }
      }
      
      public function DeActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_background.alpha = 0;
         }
      }
   }
}
