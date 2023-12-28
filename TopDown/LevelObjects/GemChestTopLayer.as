package TopDown.LevelObjects
{
   public class GemChestTopLayer extends VisualLevelObjectWithHeight
   {
       
      
      public var m_hasBeenUsed:Boolean;
      
      public function GemChestTopLayer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_)
            {
               addr24:
               this.m_hasBeenUsed = false;
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.AddSprite();
            if(!_loc1_)
            {
               addr20:
               if(this.m_hasBeenUsed)
               {
                  if(_loc2_)
                  {
                     m_currSprite.alpha = 0;
                  }
               }
            }
            return;
         }
         §§goto(addr20);
      }
   }
}
