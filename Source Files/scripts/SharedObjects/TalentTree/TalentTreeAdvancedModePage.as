package SharedObjects.TalentTree
{
   import Minions.MinionTalentTree;
   import Minions.MinionTalentTreeDataNode;
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   
   public class TalentTreeAdvancedModePage extends GameObject
   {
       
      
      private var m_topBackground:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      public var m_nodes:Vector.<Vector.<TalentTreeNode>>;
      
      public var m_dependancyBars:Vector.<Vector.<Sprite>>;
      
      private var m_updateTreeFunction:Function;
      
      private var m_talentTreePosition:int;
      
      public function TalentTreeAdvancedModePage(param1:Function, param2:int)
      {
         super();
         this.m_updateTreeFunction = param1;
         this.m_talentTreePosition = param2;
         this.m_nodes = new Vector.<Vector.<TalentTreeNode>>();
         this.m_dependancyBars = new Vector.<Vector.<Sprite>>();
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            this.m_nodes.push(new Vector.<TalentTreeNode>(4));
            this.m_dependancyBars.push(new Vector.<Sprite>(4));
            _loc3_++;
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:int = 0;
         if(this.m_talentTreePosition == 0)
         {
            this.m_topBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_advancedTabsLeft");
            this.m_topBackground.x = 19;
            this.m_topBackground.y = 20;
         }
         else if(this.m_talentTreePosition == 1)
         {
            this.m_topBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_advancedTabsCentert");
            this.m_topBackground.x = 19;
            this.m_topBackground.y = 20;
         }
         else
         {
            this.m_topBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_advancedTabsLeft");
            this.m_topBackground.scaleX = -1;
            this.m_topBackground.x = 341;
            this.m_topBackground.y = 21;
         }
         addChild(this.m_topBackground);
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.m_dependancyBars[_loc1_][_loc2_] = new Sprite();
               this.m_dependancyBars[_loc1_][_loc2_].x = 67 + _loc1_ * 107;
               this.m_dependancyBars[_loc1_][_loc2_].y = 52 + _loc2_ * 63;
               this.m_dependancyBars[_loc1_][_loc2_].visible = false;
               addChild(this.m_dependancyBars[_loc1_][_loc2_]);
               this.m_dependancyBars[_loc1_][_loc2_].graphics.beginFill(986895);
               this.m_dependancyBars[_loc1_][_loc2_].graphics.drawRect(0,0,16,16);
               this.m_dependancyBars[_loc1_][_loc2_].graphics.endFill();
               this.m_nodes[_loc1_][_loc2_] = new TalentTreeNode(this.NodeHasBeenPressed);
               this.m_nodes[_loc1_][_loc2_].x = 48 + _loc1_ * 107;
               this.m_nodes[_loc1_][_loc2_].y = 65 + _loc2_ * 63;
               this.m_nodes[_loc1_][_loc2_].LoadSprites();
               addChild(this.m_nodes[_loc1_][_loc2_]);
               TweenMax.to(this.m_nodes[_loc1_][_loc2_],0,{"colorMatrixFilter":{
                  "saturation":0.1,
                  "brightness":0.5
               }});
               _loc2_++;
            }
            _loc1_++;
         }
         this.visible = false;
      }
      
      public function NodeHasBeenPressed() : void
      {
         this.ExitOut();
         this.m_updateTreeFunction.call();
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         this.visible = true;
         this.m_currMinion = param1;
         this.RefreshNodes();
      }
      
      public function RefreshNodes() : void
      {
         var _loc2_:MinionTalentTreeDataNode = null;
         var _loc3_:Vector.<int> = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc1_:MinionTalentTree = this.m_currMinion.m_baseMinion.GetTalentTree(this.m_talentTreePosition);
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < 3)
         {
            _loc8_ = 0;
            while(_loc8_ < 4)
            {
               _loc2_ = _loc1_.GetMovesAt(_loc7_,_loc8_);
               _loc3_ = _loc2_.m_moves;
               if(_loc3_.length > 0)
               {
                  this.m_nodes[_loc7_][_loc8_].visible = true;
                  _loc5_ = 0;
                  _loc4_ = _loc3_[0];
                  _loc9_ = 0;
                  while(_loc9_ < _loc3_.length)
                  {
                     if(this.m_currMinion.IsMoveOwned(_loc3_[_loc9_]))
                     {
                        _loc5_ = _loc9_ + 1;
                        if(_loc3_.length != _loc9_ + 1)
                        {
                           _loc4_ = _loc3_[_loc9_ + 1];
                        }
                        else
                        {
                           _loc4_ = _loc3_[_loc9_];
                        }
                     }
                     _loc9_++;
                  }
                  _loc6_ += _loc5_;
                  this.m_nodes[_loc7_][_loc8_].Create(this.m_currMinion,_loc4_,_loc5_,_loc3_.length,this.m_talentTreePosition);
               }
               else
               {
                  this.m_nodes[_loc7_][_loc8_].visible = false;
               }
               _loc8_++;
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < 3)
         {
            _loc8_ = 0;
            while(_loc8_ < 4)
            {
               if(_loc1_.IsMoveDependantAt(_loc7_,_loc8_))
               {
                  this.m_nodes[_loc7_][_loc8_].SetIfTheNodeLooksActive(_loc6_,_loc8_ * 3,this.m_nodes[_loc7_][_loc8_ - 1]);
                  this.m_dependancyBars[_loc7_][_loc8_].visible = true;
               }
               else
               {
                  this.m_nodes[_loc7_][_loc8_].SetIfTheNodeLooksActive(_loc6_,_loc8_ * 3,null);
                  this.m_dependancyBars[_loc7_][_loc8_].visible = false;
               }
               _loc8_++;
            }
            _loc7_++;
         }
         TweenLite.to(this,0.4,{"onComplete":Singleton.utility.m_globalMouseMovementUpdateFunction});
      }
      
      public function ExitOut() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               if(this.m_nodes[_loc1_][_loc2_].visible)
               {
                  this.m_nodes[_loc1_][_loc2_].Cleanup();
               }
               _loc2_++;
            }
            _loc1_++;
         }
         this.visible = false;
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:int = 0;
         super.UpdateFullFrames();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               if(this.m_nodes[_loc1_][_loc2_].visible)
               {
                  this.m_nodes[_loc1_][_loc2_].UpdateFullFrames();
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
   }
}
