package SharedObjects.BaseInterfacePieces
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ToggleButton extends Sprite
   {
       
      
      private var m_onButton:TCButton;
      
      private var m_offButton:TCButton;
      
      private var m_onToggleCall:Function;
      
      private var _isToggleOn:Boolean;
      
      public function ToggleButton(param1:Function, param2:String, param3:String, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         if(_loc6_)
         {
            this.m_onToggleCall = param1;
         }
         this.m_onButton = new TCButton(this.ToggleTheButton,param2,param4);
         addChild(this.m_onButton);
         if(!(_loc7_ && Boolean(param3)))
         {
            this.m_offButton = new TCButton(this.ToggleTheButton,param3,param5);
            if(_loc6_)
            {
               addChild(this.m_offButton);
               if(_loc6_ || Boolean(param2))
               {
                  addr74:
                  this.m_isToggleOn = false;
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_onButton.m_isActive = true;
         }
      }
      
      private function ToggleTheButton(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this._isToggleOn);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().m_isToggleOn = §§pop();
            if(_loc2_)
            {
               this.m_onToggleCall.call();
            }
         }
      }
      
      public function set m_isToggleOn(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this._isToggleOn = param1;
         if(param1)
         {
            §§push(this.m_onButton);
            if(_loc3_ || param1)
            {
               §§push(true);
               if(_loc3_)
               {
                  §§pop().visible = §§pop();
                  §§push(this.m_offButton);
                  if(!(_loc2_ && param1))
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§pop().visible = §§pop();
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     addr68:
                     §§push(true);
                  }
                  §§pop().visible = §§pop();
               }
               else
               {
                  addr63:
                  §§pop().visible = §§pop();
                  if(_loc3_)
                  {
                     §§goto(addr68);
                     §§push(this.m_offButton);
                  }
               }
               addr70:
               return;
            }
            addr62:
            §§push(false);
            §§goto(addr63);
         }
         else
         {
            §§push(this.m_onButton);
         }
         §§goto(addr62);
      }
      
      public function get m_isToggleOn() : Boolean
      {
         return this._isToggleOn;
      }
   }
}
