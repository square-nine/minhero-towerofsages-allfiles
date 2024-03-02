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
         super();
         this.m_onToggleCall = param1;
         this.m_onButton = new TCButton(this.ToggleTheButton,param2,param4);
         addChild(this.m_onButton);
         this.m_offButton = new TCButton(this.ToggleTheButton,param3,param5);
         addChild(this.m_offButton);
         this.m_isToggleOn = false;
      }
      
      public function Update() : void
      {
         this.m_onButton.m_isActive = true;
      }
      
      private function ToggleTheButton(param1:MouseEvent) : void
      {
         this.m_isToggleOn = !this._isToggleOn;
         this.m_onToggleCall.call();
      }
      
      public function set m_isToggleOn(param1:Boolean) : void
      {
         this._isToggleOn = param1;
         if(param1)
         {
            this.m_onButton.visible = true;
            this.m_offButton.visible = false;
         }
         else
         {
            this.m_onButton.visible = false;
            this.m_offButton.visible = true;
         }
      }
      
      public function get m_isToggleOn() : Boolean
      {
         return this._isToggleOn;
      }
   }
}
