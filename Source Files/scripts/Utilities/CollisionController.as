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
         super();
      }
      
      public function SimplePerPixelCollision(param1:DisplayObjectContainer, param2:DisplayObjectContainer) : Boolean
      {
         this._returnValue = false;
         this._oneRectangle = param1.getBounds(param1);
         this._oneClipBmpData = new BitmapData(this._oneRectangle.width,this._oneRectangle.height,true,0);
         this._oneClipBmpData.draw(param1,param1.transform.matrix);
         Singleton.utility.m_stage.addChild(new Bitmap(this._oneClipBmpData));
         this._twoRectangle = param2.getBounds(param2);
         this._twoClipBmpData = new BitmapData(this._twoRectangle.width,this._twoRectangle.height,true,0);
         this._twoClipBmpData.draw(param2,param2.transform.matrix);
         Singleton.utility.m_stage.addChild(new Bitmap(this._twoClipBmpData));
         this._onePoint = new Point(param1.x,param1.y);
         this._twoPoint = new Point(param2.x,param2.y);
         if(this._oneClipBmpData.hitTest(this._onePoint,255,this._twoClipBmpData,this._twoPoint,255))
         {
            this._returnValue = true;
         }
         return this._returnValue;
      }
      
      public function ComplexPerPixelCollision(param1:DisplayObjectContainer, param2:DisplayObjectContainer) : Boolean
      {
         this._returnValue = false;
         this._twoRectangle = param1.getBounds(param1);
         this._oneOffset = param1.transform.matrix;
         this._oneOffset.tx = param1.x - param2.x;
         this._oneOffset.ty = param1.y - param2.y;
         this._twoClipBmpData = new BitmapData(this._twoRectangle.width,this._twoRectangle.height,true,0);
         this._twoClipBmpData.draw(param1,param1.transform.matrix);
         this._oneRectangle = param2.getBounds(param2);
         this._oneClipBmpData = new BitmapData(this._oneRectangle.width,this._oneRectangle.height,true,0);
         this._twoOffset = param2.transform.matrix;
         this._twoOffset.tx = param2.x - param2.x;
         this._twoOffset.ty = param2.y - param2.y;
         this._oneClipBmpData.draw(param2,param2.transform.matrix);
         this._onePoint = new Point(this._oneRectangle.x,this._oneRectangle.y);
         this._twoPoint = new Point(this._twoRectangle.x,this._twoRectangle.y);
         if(this._oneClipBmpData.hitTest(this._onePoint,255,this._twoClipBmpData,this._twoPoint,255))
         {
            this._returnValue = true;
         }
         this._twoClipBmpData.dispose();
         this._oneClipBmpData.dispose();
         return this._returnValue;
      }
      
      public function PointRectCollision(param1:Point, param2:Rectangle) : Boolean
      {
         if(param2.x < param1.x)
         {
            if(param2.y < param1.y)
            {
               if(param1.x < param2.x + param2.width)
               {
                  if(param1.y < param2.y + param2.height)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
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
