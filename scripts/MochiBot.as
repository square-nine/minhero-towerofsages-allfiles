package
{
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.Capabilities;
   import flash.system.Security;
   
   public dynamic class MochiBot extends Sprite
   {
       
      
      public function MochiBot()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function track(param1:Sprite, param2:String) : MochiBot
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            if(Security.sandboxType == "localWithFile")
            {
               if(_loc10_)
               {
                  return null;
               }
            }
         }
         var _loc3_:MochiBot = new MochiBot();
         if(!_loc9_)
         {
            param1.addChild(_loc3_);
            if(_loc10_ || MochiBot)
            {
               addr40:
               Security.allowDomain("*");
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  Security.allowInsecureDomain("*");
               }
            }
            var _loc4_:String = "http://core.mochibot.com/my/core.swf";
            var _loc5_:URLVariables;
            (_loc5_ = new URLVariables())["sb"] = Security.sandboxType;
            if(_loc10_)
            {
               _loc5_["v"] = Capabilities.version;
               if(_loc10_ || Boolean(_loc3_))
               {
                  _loc5_["swfid"] = param2;
                  if(_loc10_)
                  {
                     _loc5_["mv"] = "8";
                     addr84:
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        _loc5_["fv"] = "9";
                     }
                  }
               }
               var _loc6_:String;
               if((_loc6_ = _loc3_.root.loaderInfo.loaderURL).indexOf("http") == 0)
               {
                  if(_loc10_ || MochiBot)
                  {
                     _loc5_["url"] = _loc6_;
                     if(_loc9_ && MochiBot)
                     {
                     }
                  }
               }
               else
               {
                  _loc5_["url"] = "local";
               }
               var _loc7_:URLRequest;
               (_loc7_ = new URLRequest(_loc4_)).contentType = "application/x-www-form-urlencoded";
               if(!_loc9_)
               {
                  _loc7_.method = URLRequestMethod.POST;
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     _loc7_.data = _loc5_;
                  }
               }
               var _loc8_:Loader = new Loader();
               if(!_loc9_)
               {
                  _loc3_.addChild(_loc8_);
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     _loc8_.load(_loc7_);
                  }
               }
               return _loc3_;
            }
            §§goto(addr84);
         }
         §§goto(addr40);
      }
   }
}
