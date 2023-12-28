package TopDown.LevelObjects
{
   import Utilities.Singleton;
   import flash.geom.Point;
   
   public class SoundDistanceObject extends VisualLevelObject
   {
       
      
      private var m_roomMaxDistance:int;
      
      private var m_minVolume:Number;
      
      private var m_maxVolume:Number;
      
      private var m_backgroundTrack:int;
      
      public function SoundDistanceObject(param1:int, param2:Number, param3:Number, param4:int = -99)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(param3))
         {
            super();
            if(!(_loc6_ && Boolean(param1)))
            {
               this.m_roomMaxDistance = param1;
               if(_loc5_ || Boolean(param2))
               {
                  this.m_minVolume = param2;
                  if(!_loc6_)
                  {
                     addr58:
                     this.m_maxVolume = param3;
                     if(_loc6_)
                     {
                     }
                     §§goto(addr66);
                  }
               }
               this.m_backgroundTrack = param4;
            }
            addr66:
            return;
         }
         §§goto(addr58);
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.AddSprite();
            if(!_loc1_)
            {
               if(this.m_backgroundTrack != -99)
               {
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr39);
            }
            Singleton.utility.m_soundController.PlayExtraBackgroundTrack(this.m_backgroundTrack);
         }
         addr39:
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.Cleanup();
            if(_loc1_ || Boolean(this))
            {
               if(this.m_backgroundTrack != -99)
               {
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr48);
            }
            Singleton.utility.m_soundController.TurnOffExtraBackgroundTrack(this.m_backgroundTrack);
         }
         addr48:
      }
      
      public function OnCharMovement(param1:int, param2:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:int = m_initialX + m_currSprite.width / 2;
         var _loc4_:int = m_initialY + m_currSprite.height / 2;
         var _loc5_:Number = Point.distance(new Point(_loc3_,_loc4_),new Point(param1,param2));
         §§push(1);
         §§push(_loc5_);
         if(_loc9_)
         {
            §§push(§§pop() / this.m_roomMaxDistance);
         }
         §§push(§§pop() - §§pop());
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc5_);
            if(!(_loc8_ && Boolean(this)))
            {
               if(§§pop() > this.m_roomMaxDistance)
               {
                  if(!(_loc8_ && Boolean(param2)))
                  {
                     addr81:
                     §§push(0);
                     if(_loc9_ || Boolean(param1))
                     {
                        _loc6_ = §§pop();
                        addr91:
                        §§push(this.m_minVolume);
                        if(_loc9_)
                        {
                           addr95:
                           §§push(this.m_maxVolume);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc8_)
                           {
                              addr104:
                              §§push(§§pop());
                           }
                        }
                        var _loc7_:* = §§pop();
                        if(_loc9_)
                        {
                           if(this.m_backgroundTrack == -99)
                           {
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 §§push(Singleton.utility);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop().m_soundController);
                                    if(!_loc8_)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc8_)
                                       {
                                          §§pop().SetCurrBackgroundMusicVolume(§§pop());
                                          if(!(_loc8_ && Boolean(param2)))
                                          {
                                             addr152:
                                             return;
                                             addr144:
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    else
                                    {
                                       addr148:
                                       §§push(_loc7_);
                                    }
                                    §§pop().SetBackgroundMusicVolume(§§pop(),this.m_backgroundTrack);
                                    §§goto(addr152);
                                 }
                                 else
                                 {
                                    addr147:
                                    §§push(§§pop().m_soundController);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr152);
                           }
                           else
                           {
                              §§push(Singleton.utility);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr104);
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr95);
         }
         §§goto(addr81);
      }
   }
}
