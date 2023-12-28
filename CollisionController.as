package Utilities
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class CollisionController
   {
       
      
      private var _returnValue:Boolean;
      
      private var _onePoint:Point;
      
      private var _twoPoint:Point;
      
      private var _oneRectangle:Rectangle;
      
      private var _twoRectangle:Rectangle;
      
      private var _oneClipBmpData:BitmapData;
      
      private var _twoClipBmpData:BitmapData;
      
      private var _oneOffset:Matrix;
      
      private var _twoOffset:Matrix;
      
      public function CollisionController()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function SimplePerPixelCollision(param1:DisplayObjectContainer, param2:DisplayObjectContainer) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && Boolean(param1)))
         {
            this._returnValue = false;
            this._oneRectangle = param1.getBounds(param1);
            if(_loc4_)
            {
               this._oneClipBmpData = new BitmapData(this._oneRectangle.width,this._oneRectangle.height,true,0);
               if(!_loc3_)
               {
                  this._oneClipBmpData.draw(param1,param1.transform.matrix);
                  §§push(Singleton.utility);
                  if(!_loc3_)
                  {
                     §§pop().m_stage.addChild(new Bitmap(this._oneClipBmpData));
                     this._twoRectangle = param2.getBounds(param2);
                     addr74:
                     this._twoClipBmpData = new BitmapData(this._twoRectangle.width,this._twoRectangle.height,true,0);
                     this._twoClipBmpData.draw(param2,param2.transform.matrix);
                     if(_loc4_ || Boolean(this))
                     {
                        addr102:
                        Singleton.utility.m_stage.addChild(new Bitmap(this._twoClipBmpData));
                     }
                     this._onePoint = new Point(param1.x,param1.y);
                     this._twoPoint = new Point(param2.x,param2.y);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(this._oneClipBmpData.hitTest(this._onePoint,255,this._twoClipBmpData,this._twoPoint,255))
                        {
                           this._returnValue = true;
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr102);
               }
               addr153:
               return this._returnValue;
            }
         }
         §§goto(addr74);
      }
      
      public function ComplexPerPixelCollision(param1:DisplayObjectContainer, param2:DisplayObjectContainer) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this._returnValue = false;
         if(!_loc4_)
         {
            this._twoRectangle = param1.getBounds(param1);
            if(_loc3_)
            {
               this._oneOffset = param1.transform.matrix;
               this._oneOffset.tx = param1.x - param2.x;
               if(_loc3_)
               {
                  this._oneOffset.ty = param1.y - param2.y;
                  this._twoClipBmpData = new BitmapData(this._twoRectangle.width,this._twoRectangle.height,true,0);
                  addr60:
                  this._twoClipBmpData.draw(param1,param1.transform.matrix);
                  this._oneRectangle = param2.getBounds(param2);
                  this._oneClipBmpData = new BitmapData(this._oneRectangle.width,this._oneRectangle.height,true,0);
                  if(_loc3_)
                  {
                     this._twoOffset = param2.transform.matrix;
                     this._twoOffset.tx = param2.x - param2.x;
                     this._twoOffset.ty = param2.y - param2.y;
                     this._oneClipBmpData.draw(param2,param2.transform.matrix);
                     this._onePoint = new Point(this._oneRectangle.x,this._oneRectangle.y);
                     this._twoPoint = new Point(this._twoRectangle.x,this._twoRectangle.y);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        if(this._oneClipBmpData.hitTest(this._onePoint,255,this._twoClipBmpData,this._twoPoint,255))
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr174:
                              this._returnValue = true;
                              if(_loc4_ && Boolean(this))
                              {
                              }
                              §§goto(addr190);
                           }
                        }
                        this._twoClipBmpData.dispose();
                        this._oneClipBmpData.dispose();
                        addr190:
                        return this._returnValue;
                     }
                  }
               }
               §§goto(addr174);
            }
         }
         §§goto(addr60);
      }
      
      public function PointRectCollision(param1:Point, param2:Rectangle) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2.x < param1.x)
            {
               if(_loc3_ || Boolean(this))
               {
                  if(param2.y < param1.y)
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        addr46:
                        if(param1.x < param2.x + param2.width)
                        {
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr68:
                              if(param1.y < param2.y + param2.height)
                              {
                                 if(_loc3_)
                                 {
                                    addr78:
                                    §§push(true);
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr87:
                                    §§push(false);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr87);
         }
         §§goto(addr46);
      }
      
      public function RectDisplayObjectCollision(param1:Sprite, param2:Sprite) : Boolean
      {
         return param1.getRect(Singleton.utility.m_stage).intersects(param2.getRect(Singleton.utility.m_stage));
      }
      
      public function RectDisplayObjectCollisionReturnIntersectRect(param1:Sprite, param2:Sprite) : Rectangle
      {
         return param1.getRect(Singleton.utility.m_stage).intersection(param2.getRect(Singleton.utility.m_stage));
      }
   }
}
