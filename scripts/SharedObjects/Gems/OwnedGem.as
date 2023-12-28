package SharedObjects.Gems
{
   import States.StatType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class OwnedGem
   {
       
      
      private var _rawStats:Vector.<Number>;
      
      public var m_tier:int;
      
      public var m_facetPositions:Vector.<int>;
      
      public function OwnedGem()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this._rawStats = new Vector.<Number>(5);
         this._rawStats[StatType.STAT_HEALTH] = 0;
         if(_loc1_)
         {
            this._rawStats[StatType.STAT_ENERGY] = 0;
            this._rawStats[StatType.STAT_ATTACK] = 0;
            this._rawStats[StatType.STAT_HEALING] = 0;
            this._rawStats[StatType.STAT_SPEED] = 0;
         }
         this.m_facetPositions = new Vector.<int>(12);
         if(!(_loc2_ && _loc1_))
         {
            this.GetNewFacets();
         }
      }
      
      public function GetNewFacets() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         var _loc1_:Vector.<Boolean> = new Vector.<Boolean>(12);
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               if(§§pop() < _loc1_.length)
               {
                  _loc1_[_loc2_] = true;
                  if(_loc6_)
                  {
                     continue;
                  }
                  _loc2_++;
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     continue;
                  }
               }
               break;
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            loop1:
            while(true)
            {
               §§push(_loc3_);
               loop2:
               while(§§pop() < 12)
               {
                  while(true)
                  {
                     §§push(int(Math.random() * 12));
                     if(_loc6_)
                     {
                        break;
                     }
                     _loc4_ = §§pop();
                     if(_loc1_[_loc4_])
                     {
                        if(_loc6_ && Boolean(this))
                        {
                           break loop2;
                        }
                        _loc1_[_loc4_] = false;
                        this.m_facetPositions[_loc3_] = _loc4_ * 30;
                        if(_loc5_ || _loc3_)
                        {
                           _loc3_++;
                           if(_loc6_)
                           {
                              break loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function CreateGemWithTier(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || Boolean(this))
         {
            this.m_tier = param1;
         }
         §§push(this.GetRandomGemMod());
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this._rawStats[param2] = Math.pow(3,param1) * _loc3_;
         }
      }
      
      private function GetRandomGemMod() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(1);
         §§push(Math.random() * 85);
         if(!_loc1_)
         {
            §§push(40);
            if(!_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
                  addr28:
                  §§push(§§pop() / 100);
               }
               return §§pop() + §§pop();
            }
         }
         §§goto(addr28);
      }
      
      public function CreateRandomGemWithTier(param1:int, param2:Number = -99) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = int(Math.random() * 5);
         if(_loc6_)
         {
            this.m_tier = param1;
         }
         §§push(this.GetRandomGemMod());
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || Boolean(_loc3_))
         {
            this._rawStats[_loc3_] = Math.pow(3,param1) * _loc4_;
         }
      }
      
      private function GetMaxRawStat() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._rawStats.length)
         {
            §§push(_loc1_);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§push(§§pop() + this._rawStats[_loc2_]);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_ = §§pop();
                  if(_loc3_ && Boolean(this))
                  {
                     break;
                  }
                  _loc2_++;
                  if(_loc3_ && Boolean(_loc2_))
                  {
                     break;
                  }
                  continue;
                  continue;
               }
            }
            return §§pop();
         }
         §§goto(addr78);
         §§push(_loc1_);
      }
      
      private function GetGemName() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Gem  (tier ");
         if(!_loc2_)
         {
            §§push(§§pop() + this.m_tier);
            if(!_loc2_)
            {
               addr21:
               §§push(§§pop() + ")");
            }
            return §§pop();
         }
         §§goto(addr21);
      }
      
      public function GetTooltip() : Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = 0;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:TextFormat = new TextFormat();
         if(!_loc11_)
         {
            _loc2_.color = 15921906;
            if(!(_loc11_ && _loc3_))
            {
               _loc2_.size = 21;
               if(!_loc11_)
               {
                  addr41:
                  _loc2_.font = "BurbinCasual";
                  if(_loc12_ || Boolean(_loc1_))
                  {
                     addr51:
                     _loc2_.align = TextFormatAlign.CENTER;
                  }
               }
               var _loc3_:TextField = new TextField();
               _loc3_.y = -6;
               _loc3_.width = 200;
               if(!_loc11_)
               {
                  _loc3_.embedFonts = true;
                  if(!_loc11_)
                  {
                     _loc3_.defaultTextFormat = _loc2_;
                     addr75:
                     _loc3_.wordWrap = true;
                  }
                  _loc3_.autoSize = TextFieldAutoSize.CENTER;
                  _loc3_.text = this.GetGemName();
                  _loc3_.selectable = false;
                  var _loc4_:TextField;
                  (_loc4_ = this.GetTextFieldForGemDescription()).y = 27 + _loc3_.y;
                  var _loc5_:int = 5;
                  var _loc6_:int = 2;
                  var _loc7_:int = 6;
                  var _loc8_:int = 20;
                  if(!_loc11_)
                  {
                     if(_loc3_.width > _loc4_.width)
                     {
                        if(_loc12_)
                        {
                           §§push(int(_loc3_.width));
                           if(!(_loc11_ && Boolean(_loc2_)))
                           {
                              _loc9_ = §§pop();
                              if(_loc12_)
                              {
                                 addr136:
                              }
                           }
                           else
                           {
                              addr142:
                              _loc9_ = §§pop();
                           }
                        }
                        §§push(int(_loc4_.textHeight));
                     }
                     else
                     {
                        §§push(int(_loc4_.width));
                        if(!_loc11_)
                        {
                           §§goto(addr142);
                        }
                     }
                     var _loc10_:* = §§pop();
                     if(_loc12_ || Boolean(_loc1_))
                     {
                        _loc1_.graphics.beginFill(15066856,0.85);
                        _loc1_.graphics.drawRoundRect(-_loc5_ - _loc6_,-_loc5_ - _loc6_,_loc9_ + _loc5_ * 2 + _loc6_ * 2,_loc10_ + _loc8_ + _loc5_ * 3 + _loc6_ * 2,_loc7_);
                        _loc1_.graphics.drawRoundRect(-_loc5_,-_loc5_,_loc9_ + _loc5_ * 2,_loc10_ + _loc8_ + _loc5_ * 3,_loc7_);
                        if(!(_loc11_ && Boolean(this)))
                        {
                           §§goto(addr218);
                        }
                        §§goto(addr268);
                     }
                     addr218:
                     _loc1_.graphics.endFill();
                     _loc1_.graphics.beginFill(6186100,0.95);
                     _loc1_.graphics.drawRoundRect(-_loc5_,-_loc5_,_loc9_ + _loc5_ * 2,_loc10_ + _loc8_ + _loc5_ * 3,_loc7_);
                     if(_loc12_ || Boolean(_loc2_))
                     {
                        _loc1_.graphics.endFill();
                        _loc1_.addChild(_loc3_);
                        if(!_loc11_)
                        {
                           addr268:
                           _loc1_.addChild(_loc4_);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr136);
               }
               §§goto(addr75);
            }
            §§goto(addr41);
         }
         §§goto(addr51);
      }
      
      public function GetTextFieldForGemDescription() : TextField
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:* = "";
         var _loc2_:* = "";
         var _loc3_:Vector.<Object> = new Vector.<Object>();
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc5_:Boolean = true;
         if(!(_loc10_ && Boolean(_loc1_)))
         {
            if(this._rawStats[StatType.STAT_HEALTH] > 0)
            {
               §§push("+");
               if(_loc11_)
               {
                  §§push(this.GetExtraStat(StatType.STAT_HEALTH));
                  if(_loc11_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc10_)
                     {
                        §§push(" Health\n");
                        if(_loc11_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc10_)
                           {
                              _loc2_ = §§pop();
                              §§push(_loc1_);
                              §§push(this.CreateAddText(_loc2_,16546169,_loc3_,_loc4_));
                              if(!_loc10_)
                              {
                                 §§push(String(§§pop() + §§pop()));
                                 if(!(_loc10_ && Boolean(this)))
                                 {
                                    _loc1_ = §§pop();
                                    if(_loc11_)
                                    {
                                       addr86:
                                       if(this._rawStats[StatType.STAT_ENERGY] > 0)
                                       {
                                          §§push("+");
                                          if(!_loc10_)
                                          {
                                             §§push(this.GetExtraStat(StatType.STAT_ENERGY));
                                             if(_loc11_)
                                             {
                                                addr103:
                                                §§push(§§pop() + §§pop());
                                                §§push(" Energy\n");
                                                if(!_loc10_)
                                                {
                                                   addr107:
                                                   _loc2_ = §§pop() + §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      §§push(_loc1_);
                                                      §§push(this.CreateAddText(_loc2_,13273818,_loc3_,_loc4_));
                                                      if(!(_loc10_ && Boolean(_loc1_)))
                                                      {
                                                         addr124:
                                                         §§push(String(§§pop() + §§pop()));
                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                         {
                                                            _loc1_ = §§pop();
                                                            if(_loc11_)
                                                            {
                                                               addr136:
                                                               if(this._rawStats[StatType.STAT_ATTACK] > 0)
                                                               {
                                                                  if(_loc11_ || Boolean(this))
                                                                  {
                                                                     §§push("+");
                                                                     if(_loc11_ || Boolean(_loc2_))
                                                                     {
                                                                        addr158:
                                                                        §§push(this.GetExtraStat(StatType.STAT_ATTACK));
                                                                        if(!(_loc10_ && Boolean(_loc1_)))
                                                                        {
                                                                           addr169:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(" Attack\n");
                                                                           if(_loc11_)
                                                                           {
                                                                              addr173:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc11_ || Boolean(_loc2_))
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!(_loc10_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr189:
                                                                                    §§push(_loc1_);
                                                                                    §§push(this.CreateAddText(_loc2_,16155468,_loc3_,_loc4_));
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       _loc1_ = String(§§pop() + §§pop());
                                                                                       addr201:
                                                                                       if(this._rawStats[StatType.STAT_HEALING] > 0)
                                                                                       {
                                                                                          addr215:
                                                                                          §§push("+");
                                                                                          §§push(this.GetExtraStat(StatType.STAT_HEALING));
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr222:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc11_ || Boolean(this))
                                                                                             {
                                                                                                §§push(" Healing\n");
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr234:
                                                                                                   _loc2_ = §§pop() + §§pop();
                                                                                                   addr233:
                                                                                                   if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      §§push(this.CreateAddText(_loc2_,16775012,_loc3_,_loc4_));
                                                                                                      if(_loc11_ || Boolean(this))
                                                                                                      {
                                                                                                         addr258:
                                                                                                         _loc1_ = String(§§pop() + §§pop());
                                                                                                         addr259:
                                                                                                         if(this._rawStats[StatType.STAT_SPEED] > 0)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr276:
                                                                                                               _loc2_ = "+" + this.GetExtraStat(StatType.STAT_SPEED) + " Speed\n";
                                                                                                               addr275:
                                                                                                            }
                                                                                                            addr287:
                                                                                                            var _loc6_:TextFormat;
                                                                                                            (_loc6_ = new TextFormat()).color = 65280;
                                                                                                            if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               _loc6_.size = 17;
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  _loc6_.font = "BurbinCasual";
                                                                                                                  if(_loc11_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr316:
                                                                                                                     _loc6_.align = TextFormatAlign.LEFT;
                                                                                                                  }
                                                                                                                  var _loc7_:TextField;
                                                                                                                  (_loc7_ = new TextField()).embedFonts = true;
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     _loc7_.defaultTextFormat = _loc6_;
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        _loc7_.autoSize = TextFieldAutoSize.LEFT;
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr340:
                                                                                                                           _loc7_.text = _loc1_;
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr355:
                                                                                                                           _loc7_.selectable = false;
                                                                                                                           var _loc8_:* = 0;
                                                                                                                           var _loc9_:int = 0;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() < _loc3_.length)
                                                                                                                                 {
                                                                                                                                    _loc6_.color = _loc3_[_loc9_];
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    _loc7_.setTextFormat(_loc6_,_loc8_,_loc4_[_loc9_] + _loc8_);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(_loc10_ && Boolean(_loc2_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(int(§§pop() + _loc4_[_loc9_]));
                                                                                                                                    if(_loc10_ && Boolean(this))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       _loc9_++;
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 return _loc7_;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc7_.width = 200;
                                                                                                                        if(_loc10_ && Boolean(this))
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr355);
                                                                                                                  }
                                                                                                                  §§goto(addr340);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr316);
                                                                                                         }
                                                                                                         §§goto(addr287);
                                                                                                         addr256:
                                                                                                      }
                                                                                                      addr284:
                                                                                                      _loc1_ = String(§§pop() + §§pop());
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                   §§goto(addr284);
                                                                                                   §§push(_loc1_);
                                                                                                   §§push(this.CreateAddText(_loc2_,7515622,_loc3_,_loc4_));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 §§goto(addr287);
                                                                              }
                                                                              §§goto(addr234);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                  }
                                                                  §§goto(addr275);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr234);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr276);
               }
               §§goto(addr103);
            }
            §§goto(addr86);
         }
         §§goto(addr215);
      }
      
      private function CreateAddText(param1:String, param2:Object, param3:Vector.<Object>, param4:Vector.<int>) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            param3.push(param2);
            if(!(_loc6_ && Boolean(param2)))
            {
               addr25:
               param4.push(param1.length);
            }
            return param1;
         }
         §§goto(addr25);
      }
      
      public function CombineGems(param1:OwnedGem, param2:OwnedGem) : OwnedGem
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:OwnedGem = new OwnedGem();
         var _loc4_:int = 0;
         while(_loc4_ < this._rawStats.length)
         {
            _loc3_.m_rawStats[_loc4_] = this._rawStats[_loc4_];
            _loc3_.m_rawStats[_loc4_] += param1.m_rawStats[_loc4_];
            if(!_loc7_)
            {
               break;
            }
            _loc3_.m_rawStats[_loc4_] += param2.m_rawStats[_loc4_];
            _loc4_++;
         }
         _loc3_.m_tier = this.m_tier;
         var _loc5_:*;
         §§push((_loc5_ = _loc3_).m_tier);
         if(_loc7_ || Boolean(this))
         {
            §§push(§§pop() + 1);
         }
         var _loc6_:* = §§pop();
         if(!(_loc8_ && Boolean(param1)))
         {
            _loc5_.m_tier = _loc6_;
         }
         return _loc3_;
      }
      
      public function GetExtraStat(param1:int) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = 3;
         if(_loc5_)
         {
            §§push(this.m_tier);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               if(§§pop() > 1)
               {
                  if(_loc5_ || Boolean(param1))
                  {
                     addr40:
                     _loc3_ = 2;
                  }
                  while(true)
                  {
                     if(_loc3_ < this.m_tier + 1)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           _loc2_ = §§pop() + _loc3_;
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              continue;
                           }
                           §§goto(addr80);
                        }
                        break;
                     }
                     if(_loc5_)
                     {
                        addr80:
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(this.GetRatioOfStat(param1));
                           if(_loc5_ || Boolean(this))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    addr120:
                                    addr117:
                                    §§push(_loc2_ * this.GetPowerOfGem());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr133);
                                 }
                                 addr132:
                                 addr133:
                                 return §§pop();
                                 §§push(_loc2_);
                              }
                              break;
                           }
                           §§goto(addr120);
                        }
                        _loc2_ = §§pop();
                        §§goto(addr132);
                     }
                     §§goto(addr117);
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     §§goto(addr80);
                     §§push(Math.ceil(_loc2_));
                  }
                  §§goto(addr132);
               }
               §§goto(addr80);
            }
         }
         §§goto(addr40);
      }
      
      public function GetRatioOfStat(param1:int) : Number
      {
         return this._rawStats[param1] / this.GetMaxRawStat();
      }
      
      private function GetPowerOfGem() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.GetMaxRawStat());
         if(!_loc2_)
         {
            §§push(§§pop() / Math.pow(3,this.m_tier));
         }
         return §§pop();
      }
      
      public function GetExtraPercentage(param1:int) : Number
      {
         return 0;
      }
      
      public function get m_rawStats() : Vector.<Number>
      {
         return this._rawStats;
      }
      
      public function set m_rawStats(param1:Vector.<Number>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this._rawStats = param1;
         }
      }
      
      public function SaveGemAtSlot(param1:int, param2:String = "") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(Singleton.dynamicData);
            if(!(_loc5_ && Boolean(param1)))
            {
               §§pop().m_sharedObject.data[param2 + "gem" + param1] = true;
               if(!_loc5_)
               {
                  addr37:
                  Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "tier"] = this.m_tier;
               }
               var _loc3_:* = 0;
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_ || Boolean(param2))
                  {
                     if(§§pop() >= this.m_facetPositions.length)
                     {
                        §§push(0);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           if(§§pop() < this._rawStats.length)
                           {
                              §§push(Singleton.dynamicData);
                              while(true)
                              {
                                 §§pop().m_sharedObject.data[param2 + "gem" + param1 + "stat" + _loc3_] = this._rawStats[_loc3_];
                                 if(_loc4_ || Boolean(_loc3_))
                                 {
                                    _loc3_++;
                                    if(_loc5_ && Boolean(this))
                                    {
                                       break;
                                    }
                                 }
                                 addr144:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                                 continue loop3;
                              }
                              addr106:
                           }
                           return;
                        }
                     }
                     else
                     {
                        §§push(Singleton.dynamicData);
                        if(_loc4_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr106);
                  }
                  break;
               }
               _loc3_ = §§pop();
               §§goto(addr144);
            }
         }
         §§goto(addr37);
      }
      
      public function CreateGemFromSlot(param1:int, param2:String = "") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || Boolean(this))
         {
            this.m_tier = Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "tier"];
         }
         var _loc3_:* = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() >= this.m_facetPositions.length)
               {
                  §§push(0);
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() < this._rawStats.length)
                     {
                        this._rawStats[_loc3_] = Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "stat" + _loc3_];
                        _loc3_++;
                        addr88:
                        if(!_loc5_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr122);
                  }
                  addr118:
               }
               else
               {
                  this.m_facetPositions[_loc3_] = Singleton.dynamicData.m_sharedObject.data[param2 + "gem" + param1 + "facet" + _loc3_];
                  if(_loc4_ || Boolean(param2))
                  {
                     continue;
                  }
                  addr87:
               }
               while(true)
               {
                  §§goto(addr118);
                  §§goto(addr88);
               }
               addr122:
               return;
            }
            break;
         }
         _loc3_ = §§pop();
         §§goto(addr87);
      }
      
      public function OutputStats() : void
      {
      }
   }
}
