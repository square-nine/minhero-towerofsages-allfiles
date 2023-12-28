package com.greensock.plugins
{
   import com.greensock.*;
   import com.greensock.core.*;
   import flash.display.*;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   
   public class TransformAroundPointPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _classInitted:Boolean;
      
      private static var _isFlex:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            API = 1;
         }
      }
      
      protected var _target:DisplayObject;
      
      protected var _local:Point;
      
      protected var _point:Point;
      
      protected var _shortRotation:ShortRotationPlugin;
      
      protected var _proxy:DisplayObject;
      
      protected var _proxySizeData:Object;
      
      protected var _useAddElement:Boolean;
      
      public function TransformAroundPointPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_)
            {
               this.propName = "transformAroundPoint";
               if(_loc1_ || _loc2_)
               {
               }
               §§goto(addr48);
            }
            this.overwriteProps = ["x","y"];
            if(_loc2_)
            {
            }
            §§goto(addr48);
         }
         addr48:
         this.priority = -1;
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var target:Object;
         var value:*;
         var tween:TweenLite;
         var p:String;
         var short:ShortRotationPlugin;
         var sp:String;
         var m:Matrix;
         var point:Point;
         var b:Rectangle;
         var s:Sprite;
         var container:Sprite;
         var enumerables:Object;
         var endX:Number;
         var endY:Number;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(!(_loc9_ && Boolean(param1)))
         {
            §§pop().§§slot[4] = §§pop();
            §§push(§§newactivation());
            if(_loc10_)
            {
               §§pop().§§slot[5] = null;
               addr38:
               sp = null;
               m = null;
               point = null;
               b = null;
               §§push(§§newactivation());
               if(_loc10_ || Boolean(param3))
               {
                  §§pop().§§slot[10] = null;
                  §§push(§§newactivation());
               }
               §§push(null);
               if(_loc10_)
               {
                  §§pop().§§slot[11] = §§pop();
                  §§push(§§newactivation());
                  §§push(null);
               }
               §§pop().§§slot[12] = §§pop();
               if(!_loc9_)
               {
                  §§push(§§newactivation());
                  §§push(NaN);
                  if(_loc10_ || Boolean(param3))
                  {
                     §§pop().§§slot[13] = §§pop();
                     addr85:
                     §§push(§§newactivation());
                     §§push(NaN);
                  }
                  §§pop().§§slot[14] = §§pop();
                  §§push(§§newactivation());
                  if(_loc10_ || param2)
                  {
                     §§pop().§§slot[1] = param1;
                     if(!_loc9_)
                     {
                        value = param2;
                        if(!_loc9_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc9_ && param2))
                           {
                              addr112:
                              §§pop().§§slot[3] = param3;
                              addr114:
                              §§push(§§newactivation());
                              if(!(_loc9_ && param2))
                              {
                                 §§goto(addr122);
                              }
                              §§goto(addr144);
                           }
                           addr122:
                           §§push(§§pop().§§slot[2].point is Point);
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§push(false);
                                    if(_loc10_)
                                    {
                                       §§goto(addr134);
                                    }
                                 }
                                 else
                                 {
                                    addr199:
                                    §§push(_classInitted);
                                 }
                                 if(!§§pop())
                                 {
                                    try
                                    {
                                       addr201:
                                       _isFlex = Boolean(getDefinitionByName("mx.managers.SystemManager"));
                                       if(!(_loc9_ && Boolean(this)))
                                       {
                                          addr239:
                                          _classInitted = true;
                                          §§push(!isNaN(value.width));
                                          §§push(!isNaN(value.width));
                                          if(!_loc9_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc10_ || param2)
                                                {
                                                   §§pop();
                                                   if(!(_loc9_ && Boolean(this)))
                                                   {
                                                      addr273:
                                                      §§push(!isNaN(value.height));
                                                      §§push(!isNaN(value.height));
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§pop();
                                                               §§push(this._target.parent == null);
                                                               if(_loc10_ || Boolean(this))
                                                               {
                                                                  addr293:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc9_ && Boolean(this)))
                                                                        {
                                                                           §§pop().§§slot[7] = this._target.transform.matrix;
                                                                           if(!(_loc9_ && Boolean(param1)))
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc9_ && Boolean(this)))
                                                                              {
                                                                                 §§pop().§§slot[8] = this._target.parent.globalToLocal(this._target.localToGlobal(new Point(100,100)));
                                                                                 this._target.width *= 2;
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(point.x == this._target.parent.globalToLocal(this._target.localToGlobal(new Point(100,100))).x)
                                                                                    {
                                                                                       this._proxy = this._target;
                                                                                       if(_loc10_ || Boolean(param3))
                                                                                       {
                                                                                          addr375:
                                                                                          this._target.rotation = 0;
                                                                                          this._proxySizeData = {};
                                                                                          if(!isNaN(value.width))
                                                                                          {
                                                                                             addTween(this._proxySizeData,"width",this._target.width / 2,value.width,"width");
                                                                                          }
                                                                                          if(!isNaN(value.height))
                                                                                          {
                                                                                             addTween(this._proxySizeData,"height",this._target.height,value.height,"height");
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                addr427:
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§pop().§§slot[9] = this._target.getBounds(this._target);
                                                                                                   addr437:
                                                                                                   s = new Sprite();
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc9_ && Boolean(param3)))
                                                                                                      {
                                                                                                         §§pop().§§slot[11] = _isFlex ? new (getDefinitionByName("mx.core.UIComponent"))() : new Sprite();
                                                                                                         addr466:
                                                                                                         container.addChild(s);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr472:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc10_ || Boolean(this))
                                                                                                            {
                                                                                                               §§pop().§§slot[11].visible = false;
                                                                                                               this._useAddElement = Boolean(_isFlex && this._proxy.parent.hasOwnProperty("addElement"));
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr502:
                                                                                                                  if(this._useAddElement)
                                                                                                                  {
                                                                                                                     Object(this._proxy.parent).addElement(container);
                                                                                                                     addr511:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     this._proxy.parent.addChild(container);
                                                                                                                     if(_loc10_ || Boolean(param3))
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr1000:
                                                                                                                     §§push(tween);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(§§pop() != null)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr1013:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                              {
                                                                                                                                 addr1021:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!(_loc9_ && Boolean(param1)))
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[12] = §§pop().§§slot[3].vars;
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push("x");
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr1044:
                                                                                                                                             §§push(§§pop() in §§pop().§§slot[12]);
                                                                                                                                             if(!(§§pop() in §§pop().§§slot[12]))
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                   {
                                                                                                                                                      addr1055:
                                                                                                                                                      §§push("y");
                                                                                                                                                      if(_loc10_ || Boolean(param3))
                                                                                                                                                      {
                                                                                                                                                         addr1063:
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() in §§pop().§§slot[12]);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               addr1075:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push("x");
                                                                                                                                                                  if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                  {
                                                                                                                                                                     addr1084:
                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr1092:
                                                                                                                                                                        if(§§pop() in §§pop().§§slot[12])
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1097:
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(typeof §§pop().§§slot[12].x);
                                                                                                                                                                                    if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("number");
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1127:
                                                                                                                                                                                                   §§push(Number(§§pop().§§slot[12].x));
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1150:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().§§slot[13] = §§pop();
                                                                                                                                                                                                      addr1154:
                                                                                                                                                                                                      §§push("y" in enumerables);
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1160:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_ || Boolean(this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1168:
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1176:
                                                                                                                                                                                                                  if(typeof §§pop().§§slot[12].y == "number")
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1185:
                                                                                                                                                                                                                        §§push(Number(enumerables.y));
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1204:
                                                                                                                                                                                                                           §§pop().§§slot[14] = §§pop();
                                                                                                                                                                                                                           addr1207:
                                                                                                                                                                                                                           tween.killVars({
                                                                                                                                                                                                                              "x":true,
                                                                                                                                                                                                                              "y":true
                                                                                                                                                                                                                           },false);
                                                                                                                                                                                                                           this.changeFactor = 1;
                                                                                                                                                                                                                           addr1206:
                                                                                                                                                                                                                           addr1205:
                                                                                                                                                                                                                           if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!isNaN(endX))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addTween(this._point,"x",this._point.x,this._point.x + (endX - this._target.x),"x");
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1299:
                                                                                                                                                                                                                                 return true;
                                                                                                                                                                                                                                 addr1298:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           this.changeFactor = 0;
                                                                                                                                                                                                                           §§goto(addr1298);
                                                                                                                                                                                                                           addr1203:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1204);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1206);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this._target.y + Number(enumerables.y));
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1203);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1204);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1185);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!isNaN(endY))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addTween(this._point,"y",this._point.y,this._point.y + (endY - this._target.y),"y");
                                                                                                                                                                                                                  addr1262:
                                                                                                                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1204);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1298);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1204);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1205);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1299);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1204);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1185);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this._target.x + Number(enumerables.x));
                                                                                                                                                                                             if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1150);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1204);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1176);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1185);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1299);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1154);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1299);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1160);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1092);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1084);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1168);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1299);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1075);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1092);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1063);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1204);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1127);
                                                                                                                              }
                                                                                                                              §§goto(addr1168);
                                                                                                                           }
                                                                                                                           §§goto(addr1097);
                                                                                                                        }
                                                                                                                        §§goto(addr1299);
                                                                                                                     }
                                                                                                                     §§goto(addr1207);
                                                                                                                  }
                                                                                                                  §§goto(addr1000);
                                                                                                               }
                                                                                                               this._target = s;
                                                                                                               addr529:
                                                                                                               s.graphics.beginFill(255,0.4);
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§pop().§§slot[10].graphics.drawRect(b.x,b.y,b.width,b.height);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     s.graphics.endFill();
                                                                                                                     this._proxy.width /= 2;
                                                                                                                     if(_loc10_ || param2)
                                                                                                                     {
                                                                                                                        addr575:
                                                                                                                        s.transform.matrix = this._target.transform.matrix = m;
                                                                                                                        addr610:
                                                                                                                        var _loc5_:int = 0;
                                                                                                                        if(_loc10_ || Boolean(param3))
                                                                                                                        {
                                                                                                                           var _loc6_:* = value;
                                                                                                                           if(!(_loc9_ && Boolean(param3)))
                                                                                                                           {
                                                                                                                              loop0:
                                                                                                                              for(p in _loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!(_loc9_ && Boolean(param3)))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[4]);
                                                                                                                                    §§push("point");
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!(_loc9_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc10_ || param2)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                                                                      §§push("pointIsLocal");
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr685:
                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            addr686:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push("shortRotation");
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           this._shortRotation = new ShortRotationPlugin();
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              addr715:
                                                                                                                                                                              this._shortRotation.onInitTween(this._target,value[p],tween);
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addTween(this._shortRotation,"changeFactor",0,1,"shortRotation");
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _loc7_:int = 0;
                                                                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       var _loc8_:* = value[p];
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       for(sp in _loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                          {
                                                                                                                                                                                             this.overwriteProps[this.overwriteProps.length] = sp;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr986:
                                                                                                                                                                                       this.overwriteProps[this.overwriteProps.length] = p;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr803:
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 if(_loc10_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr811:
                                                                                                                                                                                    §§push(§§pop().§§slot[4]);
                                                                                                                                                                                    if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("y");
                                                                                                                                                                                       if(_loc10_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr830:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc10_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addTween(this._point,p,this._point[p],value[p],p);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(p);
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr861:
                                                                                                                                                                                                if(§§pop() == "scale")
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr870:
                                                                                                                                                                                                      addTween(this._target,"scaleX",this._target.scaleX,value.scale,"scaleX");
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addTween(this._target,"scaleY",this._target.scaleY,value.scale,"scaleY");
                                                                                                                                                                                                         this.overwriteProps[this.overwriteProps.length] = "scaleX";
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.overwriteProps[this.overwriteProps.length] = "scaleY";
                                                                                                                                                                                                            addr912:
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr945:
                                                                                                                                                                                                         §§push(this._proxy == null);
                                                                                                                                                                                                         if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr956:
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addTween(this._target,p,this._target[p],value[p],p);
                                                                                                                                                                                                         if(_loc9_ && Boolean(this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr986);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr933:
                                                                                                                                                                                                      §§push(p == "height");
                                                                                                                                                                                                      if(_loc10_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr942:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr944:
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr945);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr956);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr916:
                                                                                                                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                                                                                                                      if(_loc9_ && Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr933);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr925:
                                                                                                                                                                                             §§push(§§pop() == "width");
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                §§goto(addr933);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr942);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr933);
                                                                                                                                                                                 §§goto(addr986);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr912);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr986);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr870);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(p == "x");
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§goto(addr803);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr830);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr942);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr944);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr925);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr861);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr861);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr811);
                                                                                                                                                }
                                                                                                                                                §§goto(addr715);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr685);
                                                                                                                                       }
                                                                                                                                       §§goto(addr942);
                                                                                                                                    }
                                                                                                                                    §§goto(addr861);
                                                                                                                                 }
                                                                                                                                 §§goto(addr916);
                                                                                                                              }
                                                                                                                              addr997:
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1000);
                                                                                                                              }
                                                                                                                              §§goto(addr1055);
                                                                                                                           }
                                                                                                                           §§goto(addr686);
                                                                                                                        }
                                                                                                                        §§goto(addr997);
                                                                                                                     }
                                                                                                                     §§goto(addr610);
                                                                                                                  }
                                                                                                                  §§goto(addr1204);
                                                                                                               }
                                                                                                               §§goto(addr575);
                                                                                                            }
                                                                                                            §§goto(addr1021);
                                                                                                         }
                                                                                                         §§goto(addr529);
                                                                                                      }
                                                                                                      §§goto(addr1204);
                                                                                                   }
                                                                                                   §§goto(addr1000);
                                                                                                }
                                                                                                §§goto(addr1204);
                                                                                             }
                                                                                             §§goto(addr511);
                                                                                          }
                                                                                          §§goto(addr427);
                                                                                       }
                                                                                       §§goto(addr1262);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this._target.width /= 2;
                                                                                       if(_loc10_ || Boolean(param3))
                                                                                       {
                                                                                          this._target.transform.matrix = m;
                                                                                          §§goto(addr575);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1168);
                                                                                 }
                                                                                 §§goto(addr1013);
                                                                              }
                                                                              §§goto(addr466);
                                                                           }
                                                                           §§goto(addr472);
                                                                        }
                                                                        §§goto(addr575);
                                                                     }
                                                                     §§goto(addr375);
                                                                  }
                                                                  §§goto(addr575);
                                                               }
                                                               §§goto(addr1075);
                                                            }
                                                            §§goto(addr502);
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      §§goto(addr1044);
                                                   }
                                                   §§goto(addr437);
                                                }
                                                §§goto(addr1092);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr1044);
                                       }
                                       §§goto(addr1299);
                                    }
                                    catch(e:Error)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          _isFlex = false;
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr1299);
                                 }
                                 §§goto(addr239);
                              }
                              else
                              {
                                 addr135:
                                 this._target = target as DisplayObject;
                                 if(!_loc9_)
                                 {
                                    addr144:
                                    if(value.pointIsLocal == true)
                                    {
                                       if(!_loc9_)
                                       {
                                          addr150:
                                          this._local = value.point.clone();
                                          addr156:
                                          this._point = this._target.parent.globalToLocal(this._target.localToGlobal(this._local));
                                          if(_loc10_ || Boolean(param3))
                                          {
                                             §§goto(addr199);
                                          }
                                       }
                                       §§goto(addr201);
                                    }
                                    else
                                    {
                                       this._point = value.point.clone();
                                    }
                                    this._local = this._target.globalToLocal(this._target.parent.localToGlobal(this._point));
                                    if(!(_loc9_ && Boolean(param3)))
                                    {
                                       §§goto(addr199);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr156);
                              }
                           }
                           addr134:
                           return §§pop();
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr112);
               }
               §§goto(addr135);
            }
            §§goto(addr85);
         }
         §§goto(addr38);
      }
      
      override public function killProps(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._shortRotation);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     §§push(this._shortRotation);
                     if(_loc3_)
                     {
                        addr47:
                        §§pop().killProps(param1);
                        §§goto(addr64);
                     }
                     if(§§pop().overwriteProps.length == 0)
                     {
                        if(!_loc2_)
                        {
                           param1.shortRotation = true;
                           if(_loc2_)
                           {
                           }
                           §§goto(addr64);
                        }
                     }
                  }
                  §§goto(addr51);
               }
               addr64:
               if(_loc3_)
               {
                  addr51:
                  §§push(this._shortRotation);
               }
               super.killProps(param1);
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr51);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Point = null;
         var _loc6_:PropTween = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         if(!(_loc11_ && Boolean(_loc2_)))
         {
            §§push(this._proxy == null);
            if(!(_loc11_ && Boolean(param1)))
            {
               §§push(!§§pop());
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        §§pop();
                        if(!_loc11_)
                        {
                           §§push(this._proxy.parent == null);
                           if(!_loc11_)
                           {
                              addr69:
                              §§push(!§§pop());
                              if(!(_loc11_ && Boolean(_loc3_)))
                              {
                                 addr77:
                                 if(§§pop())
                                 {
                                    addr80:
                                    if(this._useAddElement)
                                    {
                                       if(_loc10_ || Boolean(_loc2_))
                                       {
                                          Object(this._proxy.parent).addElement(this._target.parent);
                                          addr105:
                                          if(this._target.parent)
                                          {
                                             if(!(_loc11_ && Boolean(_loc2_)))
                                             {
                                                addr116:
                                                _loc7_ = int(_tweens.length);
                                                if(_loc10_)
                                                {
                                                   addr122:
                                                   if(this.round)
                                                   {
                                                      addr125:
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc10_ || Boolean(_loc2_))
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc11_ && Boolean(_loc2_)))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(!(_loc11_ && Boolean(param1)))
                                                                     {
                                                                        addr215:
                                                                        §§push(-1);
                                                                        if(_loc10_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              §§push((_loc6_ = _tweens[_loc7_]).start);
                                                                              if(_loc10_ || Boolean(param1))
                                                                              {
                                                                                 §§push(_loc6_.change);
                                                                                 if(!(_loc11_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§push(§§pop() * param1);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc11_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              if(!_loc11_)
                                                                              {
                                                                                 _loc6_.target[_loc6_.property] = _loc2_ > 0 ? int(_loc2_ + 0.5) : int(_loc2_ - 0.5);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           _loc5_ = this._target.parent.globalToLocal(this._target.localToGlobal(this._local));
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(this._target.x + this._point.x - _loc5_.x);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(this._target.y + this._point.y - _loc5_.y);
                                                                                       if(_loc10_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr268:
                                                                                          _loc4_ = §§pop();
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             this._target.x = _loc3_ > 0 ? int(_loc3_ + 0.5) : int(_loc3_ - 0.5);
                                                                                             addr271:
                                                                                             if(_loc11_ && Boolean(_loc3_))
                                                                                             {
                                                                                             }
                                                                                             addr316:
                                                                                             break;
                                                                                          }
                                                                                          this._target.y = _loc4_ > 0 ? int(_loc4_ + 0.5) : int(_loc4_ - 0.5);
                                                                                          §§goto(addr316);
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 (_loc6_ = _tweens[_loc7_]).target[_loc6_.property] = _loc6_.start + _loc6_.change * param1;
                                                                                 addr318:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc10_ || Boolean(this))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                   }
                                                                                                   addr365:
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             addr354:
                                                                                          }
                                                                                       }
                                                                                       addr351:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr318);
                                                                                 }
                                                                                 addr343:
                                                                              }
                                                                              _loc5_ = this._target.parent.globalToLocal(this._target.localToGlobal(this._local));
                                                                              if(!_loc11_)
                                                                              {
                                                                                 this._target.x += this._point.x - _loc5_.x;
                                                                                 if(_loc11_)
                                                                                 {
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                              this._target.y += this._point.y - _loc5_.y;
                                                                              break loop1;
                                                                           }
                                                                           addr367:
                                                                        }
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr367);
                                                            }
                                                            §§goto(addr351);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      _changeFactor = param1;
                                                      §§push(this._proxy == null);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc10_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc11_ && Boolean(param1)))
                                                               {
                                                                  addr430:
                                                                  §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(this._proxy.parent == null);
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                     §§goto(addr441);
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                            }
                                                         }
                                                         addr441:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc10_ || Boolean(this))
                                                            {
                                                               _loc8_ = this._target.rotation;
                                                               this._proxy.rotation = this._target.rotation = 0;
                                                            }
                                                            if(this._proxySizeData.width != undefined)
                                                            {
                                                               addr470:
                                                               this._proxy.width = this._target.width = this._proxySizeData.width;
                                                            }
                                                            if(this._proxySizeData.height != undefined)
                                                            {
                                                               this._proxy.height = this._target.height = this._proxySizeData.height;
                                                               if(_loc10_)
                                                               {
                                                                  addr503:
                                                                  this._proxy.rotation = this._target.rotation = _loc8_;
                                                               }
                                                               _loc5_ = this._target.parent.globalToLocal(this._target.localToGlobal(this._local));
                                                               §§push(this._target.x + this._point.x - _loc5_.x);
                                                               if(!(_loc11_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc10_ || Boolean(param1))
                                                                  {
                                                                     addr550:
                                                                     _loc3_ = §§pop();
                                                                     §§push(this._target.y + this._point.y - _loc5_.y);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr563:
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     if(this.round)
                                                                     {
                                                                        if(_loc10_ || Boolean(_loc2_))
                                                                        {
                                                                           this._proxy.x = _loc3_ > 0 ? int(_loc3_ + 0.5) : int(_loc3_ - 0.5);
                                                                           this._proxy.y = _loc4_ > 0 ? int(_loc4_ + 0.5) : int(_loc4_ - 0.5);
                                                                           if(_loc11_ && Boolean(_loc3_))
                                                                           {
                                                                              addr625:
                                                                              this._proxy.y = _loc4_;
                                                                           }
                                                                        }
                                                                        if(this._useAddElement)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              Object(this._proxy.parent).removeElement(this._target.parent);
                                                                              if(_loc10_ || Boolean(_loc2_))
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this._proxy.parent.removeChild(this._target.parent);
                                                                        }
                                                                        §§goto(addr665);
                                                                     }
                                                                     else
                                                                     {
                                                                        this._proxy.x = _loc3_;
                                                                     }
                                                                     §§goto(addr625);
                                                                  }
                                                                  §§goto(addr563);
                                                               }
                                                               §§goto(addr550);
                                                            }
                                                            §§goto(addr503);
                                                         }
                                                         addr665:
                                                         return;
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr122);
                                    }
                                    else
                                    {
                                       this._proxy.parent.addChild(this._target.parent);
                                    }
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr125);
      }
   }
}
