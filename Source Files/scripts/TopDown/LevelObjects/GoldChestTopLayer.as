package TopDown.LevelObjects
{
   public class GoldChestTopLayer extends VisualLevelObjectWithHeight
   {
       
      
      public var m_hasBeenUsed:Boolean;
      
      public function GoldChestTopLayer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               this.m_hasBeenUsed = false;
            }
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super.AddSprite();
            if(!_loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr36);
         }
         addr31:
         if(this.m_hasBeenUsed)
         {
            if(_loc1_)
            {
               addr36:
               m_currSprite.alpha = 0;
            }
         }
      }
   }
}
