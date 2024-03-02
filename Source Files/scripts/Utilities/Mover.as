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
       
      
      private const moverButtonAssest:Class = Mover_moverButtonAssest;
      
      private var m_currObjects:Vector.<Object>;
      
      private var m_objectIds:Vector.<int>;
      
      private var m_buttons:Vector.<Sprite>;
      
      private var m_currObjectToMove:int;
      
      private var m_currObjectToMoveText:TextField;
      
      public function Mover()
      {
         super();
      }
      
      private function CreateObject(param1:Sprite = null) : void
      {
         var _loc2_:Sprite = null;
         x = 110;
         y = 110;
         if(param1 == null)
         {
            Singleton.utility.m_stage.addChild(this);
         }
         else
         {
            param1.addChild(this);
         }
         this.m_buttons = new Vector.<Sprite>();
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc2_ = new Sprite();
            _loc2_.addChild(new this.moverButtonAssest());
            _loc2_.alpha = 0.4;
            _loc2_.scaleX = 0.5;
            _loc2_.scaleY = 0.5;
            addChild(_loc2_);
            this.m_buttons.push(_loc2_);
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.ButtonPressed);
            _loc3_++;
         }
         this.m_buttons[0].x -= 25;
         this.m_buttons[1].x -= 25 * 2;
         this.m_buttons[2].x += 25;
         this.m_buttons[3].x += 25 * 2;
         this.m_buttons[4].y -= 25;
         this.m_buttons[5].y -= 25 * 2;
         this.m_buttons[6].y += 25;
         this.m_buttons[7].y += 25 * 2;
         this.m_buttons[8].x += 25 * 2;
         this.m_buttons[8].y -= 25 * 2;
         this.m_buttons[8].scaleX = 0.4;
         this.m_buttons[8].scaleY = 0.4;
         this.m_buttons[9].x += 25 * 2;
         this.m_buttons[9].y -= 25 * 1.2;
         this.m_buttons[9].scaleX = 0.4;
         this.m_buttons[9].scaleY = 0.4;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat()).color = 16382457;
         _loc5_.size = 17;
         _loc5_.font = "BurbinCasual";
         _loc5_.align = TextFormatAlign.CENTER;
         this.m_currObjectToMoveText = new TextField();
         this.m_currObjectToMoveText.embedFonts = true;
         this.m_currObjectToMoveText.defaultTextFormat = _loc5_;
         this.m_currObjectToMoveText.wordWrap = true;
         this.m_currObjectToMoveText.autoSize = TextFieldAutoSize.CENTER;
         this.m_currObjectToMoveText.text = "1";
         this.m_currObjectToMoveText.width = 50;
         this.m_currObjectToMoveText.x += 25 * 2;
         this.m_currObjectToMoveText.y -= 25 * 3.2;
         this.m_currObjectToMoveText.selectable = false;
         addChild(this.m_currObjectToMoveText);
      }
      
      private function ButtonPressed(param1:MouseEvent) : void
      {
         if(this.m_buttons[0] == param1.target)
         {
            this.MoveTheClip(-1,0);
         }
         if(this.m_buttons[1] == param1.target)
         {
            this.MoveTheClip(-10,0);
         }
         if(this.m_buttons[2] == param1.target)
         {
            this.MoveTheClip(1,0);
         }
         if(this.m_buttons[3] == param1.target)
         {
            this.MoveTheClip(10,0);
         }
         if(this.m_buttons[4] == param1.target)
         {
            this.MoveTheClip(0,-1);
         }
         if(this.m_buttons[5] == param1.target)
         {
            this.MoveTheClip(0,-10);
         }
         if(this.m_buttons[6] == param1.target)
         {
            this.MoveTheClip(0,1);
         }
         if(this.m_buttons[7] == param1.target)
         {
            this.MoveTheClip(0,10);
         }
         if(this.m_buttons[8] == param1.target)
         {
            ++this.m_currObjectToMove;
            if(this.m_currObjectToMove > this.m_currObjects.length - 1)
            {
               this.m_currObjectToMove = -1;
            }
         }
         if(this.m_buttons[9] == param1.target)
         {
            --this.m_currObjectToMove;
            if(this.m_currObjectToMove < -1)
            {
               this.m_currObjectToMove = this.m_currObjects.length - 1;
            }
         }
         this.m_currObjectToMoveText.text = "" + this.m_currObjectToMove;
      }
      
      private function MoveTheClip(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         if(this.m_currObjectToMove == -1)
         {
            _loc4_ = 0;
            while(_loc4_ < this.m_currObjects.length)
            {
               this.m_currObjects[_loc4_].x += param1;
               this.m_currObjects[_loc4_].y += param2;
               _loc4_++;
            }
         }
         else
         {
            this.m_currObjects[this.m_currObjectToMove].x += param1;
            this.m_currObjects[this.m_currObjectToMove].y += param2;
            if(this.m_currObjects.length > 1)
            {
            }
         }
      }
      
      public function SetObject(param1:Object, param2:Sprite = null) : void
      {
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
         this.CreateObject(param2);
         this.m_currObjects = new Vector.<Object>();
         this.m_objectIds = new Vector.<int>();
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            this.m_currObjects.push(param1[_loc3_]);
            this.m_objectIds.push(_loc3_);
            _loc3_++;
         }
         this.m_currObjectToMove = -1;
         this.m_currObjectToMoveText.text = "" + this.m_currObjectToMove;
      }
      
      public function SetIds(param1:Array) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.m_objectIds[_loc2_] = param1[_loc2_];
            _loc2_++;
         }
      }
   }
}
