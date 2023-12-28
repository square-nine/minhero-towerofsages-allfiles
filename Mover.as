package Utilities
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class Mover extends Sprite
   {
       
      
      private const moverButtonAssest:Class;
      
      private var m_currObjects:Vector.<Object>;
      
      private var m_objectIds:Vector.<int>;
      
      private var m_buttons:Vector.<Sprite>;
      
      private var m_currObjectToMove:int;
      
      private var m_currObjectToMoveText:TextField;
      
      public function Mover()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.moverButtonAssest = Mover_moverButtonAssest;
            if(_loc2_ || _loc2_)
            {
               super();
            }
         }
      }
      
      private function CreateObject(param1:Sprite = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Sprite = null;
         x = 110;
         y = 110;
         if(_loc6_)
         {
            if(param1 == null)
            {
               Singleton.utility.m_stage.addChild(this);
               if(_loc6_ || Boolean(_loc2_))
               {
                  addr45:
                  this.m_buttons = new Vector.<Sprite>();
                  addr39:
               }
            }
            else
            {
               param1.addChild(this);
               if(_loc6_)
               {
                  §§goto(addr45);
               }
            }
            var _loc3_:int = 0;
            while(true)
            {
               §§push(_loc3_);
               if(_loc7_)
               {
                  break;
               }
               if(§§pop() >= 10)
               {
                  break;
               }
               _loc2_ = new Sprite();
               _loc2_.addChild(new this.moverButtonAssest());
               _loc2_.alpha = 0.4;
               if(!_loc7_)
               {
                  _loc2_.scaleX = 0.5;
                  _loc2_.scaleY = 0.5;
                  addChild(_loc2_);
                  this.m_buttons.push(_loc2_);
               }
               _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.ButtonPressed);
               _loc3_++;
            }
            var _loc4_:* = §§pop();
            this.m_buttons[0].x -= _loc4_;
            this.m_buttons[1].x -= _loc4_ * 2;
            this.m_buttons[2].x += _loc4_;
            if(_loc6_ || Boolean(this))
            {
               this.m_buttons[3].x += _loc4_ * 2;
               this.m_buttons[4].y -= _loc4_;
               if(!_loc7_)
               {
                  this.m_buttons[5].y -= _loc4_ * 2;
                  this.m_buttons[6].y += _loc4_;
                  if(_loc6_)
                  {
                     this.m_buttons[7].y += _loc4_ * 2;
                     addr217:
                     this.m_buttons[8].x += _loc4_ * 2;
                     addr231:
                     this.m_buttons[8].y -= _loc4_ * 2;
                  }
                  this.m_buttons[8].scaleX = 0.4;
                  this.m_buttons[8].scaleY = 0.4;
                  this.m_buttons[9].x += _loc4_ * 2;
                  if(_loc6_ || Boolean(param1))
                  {
                     this.m_buttons[9].y -= _loc4_ * 1.2;
                     this.m_buttons[9].scaleX = 0.4;
                     this.m_buttons[9].scaleY = 0.4;
                  }
                  var _loc5_:TextFormat;
                  (_loc5_ = new TextFormat()).color = 16382457;
                  _loc5_.size = 17;
                  _loc5_.font = "BurbinCasual";
                  _loc5_.align = TextFormatAlign.CENTER;
                  if(_loc6_)
                  {
                     this.m_currObjectToMoveText = new TextField();
                     this.m_currObjectToMoveText.embedFonts = true;
                     if(!_loc7_)
                     {
                        this.m_currObjectToMoveText.defaultTextFormat = _loc5_;
                        this.m_currObjectToMoveText.wordWrap = true;
                        this.m_currObjectToMoveText.autoSize = TextFieldAutoSize.CENTER;
                        if(!_loc7_)
                        {
                           this.m_currObjectToMoveText.text = "1";
                           this.m_currObjectToMoveText.width = 50;
                           addr356:
                           this.m_currObjectToMoveText.x += _loc4_ * 2;
                           if(_loc6_ || Boolean(this))
                           {
                              this.m_currObjectToMoveText.y -= _loc4_ * 3.2;
                           }
                           this.m_currObjectToMoveText.selectable = false;
                        }
                        §§goto(addr356);
                     }
                     addChild(this.m_currObjectToMoveText);
                     return;
                  }
                  §§goto(addr356);
               }
               §§goto(addr231);
            }
            §§goto(addr217);
         }
         §§goto(addr39);
      }
      
      private function ButtonPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(this.m_buttons[0] == param1.target)
         {
            this.MoveTheClip(-1,0);
         }
         if(this.m_buttons[1] == param1.target)
         {
            this.MoveTheClip(-10,0);
            if(!(_loc4_ && _loc2_))
            {
               addr43:
               if(this.m_buttons[2] == param1.target)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.MoveTheClip(1,0);
                     addr61:
                     if(this.m_buttons[3] == param1.target)
                     {
                        if(_loc5_)
                        {
                           this.MoveTheClip(10,0);
                           addr74:
                           if(this.m_buttons[4] == param1.target)
                           {
                              this.MoveTheClip(0,-1);
                              if(_loc4_)
                              {
                              }
                              addr226:
                              this.m_currObjectToMove = this.m_currObjects.length - 1;
                              addr232:
                              this.m_currObjectToMoveText.text = "" + this.m_currObjectToMove;
                              §§goto(addr239);
                           }
                           if(this.m_buttons[5] == param1.target)
                           {
                              this.MoveTheClip(0,-10);
                              if(!_loc4_)
                              {
                                 addr100:
                                 if(this.m_buttons[6] == param1.target)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       this.MoveTheClip(0,1);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr132:
                                          if(this.m_buttons[7] == param1.target)
                                          {
                                             §§goto(addr139);
                                          }
                                          if(this.m_buttons[8] == param1.target)
                                          {
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).m_currObjectToMove);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                             if(!_loc4_)
                                             {
                                                _loc2_.m_currObjectToMove = _loc3_;
                                             }
                                             if(_loc5_)
                                             {
                                                §§push(this.m_currObjectToMove);
                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                {
                                                   if(§§pop() > this.m_currObjects.length - 1)
                                                   {
                                                      if(!(_loc4_ && Boolean(param1)))
                                                      {
                                                         addr190:
                                                         this.m_currObjectToMove = -1;
                                                         addr193:
                                                         if(this.m_buttons[9] == param1.target)
                                                         {
                                                            addr200:
                                                            §§push((_loc2_ = this).m_currObjectToMove);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               _loc2_.m_currObjectToMove = _loc3_;
                                                            }
                                                            §§push(this.m_currObjectToMove);
                                                         }
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                if(§§pop() < -1)
                                                {
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr132);
                              }
                              addr139:
                              this.MoveTheClip(0,10);
                              if(_loc4_)
                              {
                              }
                              addr239:
                              return;
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr190);
               }
               §§goto(addr61);
            }
            §§goto(addr226);
         }
         §§goto(addr43);
      }
      
      private function MoveTheClip(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = null;
         var _loc4_:int = 0;
         if(_loc5_ || Boolean(_loc3_))
         {
            §§push(this.m_currObjectToMove);
            if(!_loc6_)
            {
               if(§§pop() == -1)
               {
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     addr39:
                     _loc4_ = 0;
                  }
                  while(_loc4_ < this.m_currObjects.length)
                  {
                     this.m_currObjects[_loc4_].x += param1;
                     this.m_currObjects[_loc4_].y += param2;
                     _loc4_++;
                     if(!(_loc5_ || Boolean(_loc3_)))
                     {
                        break;
                     }
                  }
               }
               else
               {
                  this.m_currObjects[this.m_currObjectToMove].x += param1;
                  if(_loc5_)
                  {
                     this.m_currObjects[this.m_currObjectToMove].y += param2;
                     if(this.m_currObjects.length > 1)
                     {
                     }
                     §§goto(addr130);
                  }
               }
               addr130:
               return;
            }
         }
         §§goto(addr39);
      }
      
      public function SetObject(param1:Object, param2:Sprite = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.CreateObject(param2);
         this.m_currObjects = new Vector.<Object>();
         this.m_objectIds = new Vector.<int>();
         this.m_currObjects.push(param1);
         this.m_objectIds.push(0);
         this.m_currObjectToMove = 0;
         this.m_currObjectToMoveText.text = "";
      }
      
      public function SetObjects(param1:Array, param2:Sprite = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.CreateObject(param2);
            if(_loc5_)
            {
               this.m_currObjects = new Vector.<Object>();
               if(!_loc4_)
               {
                  addr29:
                  this.m_objectIds = new Vector.<int>();
               }
            }
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= param1.length)
               {
                  if(_loc5_)
                  {
                     addr81:
                     this.m_currObjectToMove = -1;
                     if(!_loc4_)
                     {
                        this.m_currObjectToMoveText.text = "" + this.m_currObjectToMove;
                        break;
                     }
                     break;
                  }
                  break;
               }
               this.m_currObjects.push(param1[_loc3_]);
               if(_loc5_)
               {
                  this.m_objectIds.push(_loc3_);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     _loc3_++;
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr81);
                  }
                  break;
               }
               continue;
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function SetIds(param1:Array) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.m_objectIds[_loc2_] = param1[_loc2_];
            if(_loc4_)
            {
               break;
            }
            _loc2_++;
            if(!(_loc3_ || Boolean(param1)))
            {
               break;
            }
         }
      }
   }
}
