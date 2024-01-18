#BaseEggery.as re-code as best as i can

import Minions.OwnedMinion;
import TopDown.LevelObjects.MainChar;
import TopDown.LevelObjects.VisualsForEgg;
import TopDown.Levels.BaseTopDownLevel;
import TopDown.Menus.EggeryMinionDetailsObject;
import Utilities.Singleton;
import com.greensock.TweenLite

class BaseEggery(BaseTopDownLevel):
    #privates:
    self.m_currMinionToAdd = OwnedMinion
    self.m_eggsAlreadySelcted = [] #int
    self.m_minionDetailsObject = EggeryMinionDetailsObject
    self.m_visualsForEgg = VisualsForEgg
    self.m_visualsForEggTopLayer = VisualsForEgg

    #public function
    def baseEggery(self, param1 = None): #param1 - class
        _loc2_  = True
        _loc3_ = False
        if not _loc3_:
            super(param1)
    
    def LoadSprites(self): #overwrites BaseTopDownLevel
        _loc1_ = False
        _loc2_ = True
        super.LoadSprites()
        if _loc2_ or _loc1_:
            self.m_eggsAlreadySelcted = [] #int
            self.m_minionDetailsObject = EggeryMinionDetailsObject()
            self.m_minionDetailsObject.LoadSprites()
            if _loc2_ or _loc1_:
                Singleton.utility.m_screenControllers.m_topDownScreen.addChild(self.m_minionDetailsObject)
            if Singleton.dynamicData.m_numOfMinionsLeftToChoose < 1:
                if not (_loc1_ and bool(self)):
                    m_displayKeyPress = False
    #protected
    def PreformButtonAction(self, param1): #param1 = int, ovverides
        _loc6_ = False
        _loc7_ = True
        _loc2_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar #MainChar object
        _loc3_ = 0
        loop0:
        while True:
            push(_loc3_)
            while True:
                push(9)
                while True:
                    if(§§pop() < §§pop()):
                       push(param1)
                       if _loc7_:
                            push(_loc3_)
                            if _loc6_:
                                continue
                            push(§§pop() == §§pop())
                                 if _loc7_ or bool(_loc3_):
                                    if §§pop():
                                        if _loc7_ or bool(_loc2):
                                            addr49
                                            §§pop()
                                            push(self.m_eggsAlreadySelected.indexOf(_loc3_) == -1)
                                    if §§pop():
                                        if not _loc6_:
                                            self.m_currMinionToAdd = Singleton.staticData.GetRandomMinionForFloor(Singleton.dynamicData.m_currFloorOfTower)
                                            push(Singleton.dynamicData)
                                            if _loc7_ or bool(param1):
                                                push(§§pop().m_numOfMinionsLeftToChoose)
                                                if _loc6_:
                                                    break
                                                addr79
                                                push(1)
                                                if _loc7_ or bool(self):
                                                    if (§§pop() == §§pop()):
                                                        if(_loc7_):
                                                            push(_loc2_):
                                                            push("You've received a ")
                                                            if _loc7_ or bool(_loc3_):
                                                                push(§§pop() + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName)
                                                                if not _loc6_:
                                                                    push(§§pop() + ".")
                                                            §§pop().BringInCharChatBoxWithText(§§pop(),self.AddMinion)
                                                            self.m_visualsForEgg = GetEggForButtonZone(_loc3_)
                                                            self.m_visualsForEggTopLayer = GetEggOnTopLayerForButtonZone(_loc3_)
                                                            if _loc7_:
                                                                push(Singleton.dynamicData)
                                                                if _loc7_ or bool(_loc2_):
                                                                    _loc4_ = None #any type
                                                                    push((_loc4_ = §§pop()).m_numOfMinionsLeftToChoose)
                                                                    if not _loc6_:
                                                                        push(§§pop()-1)
                                                                    _loc5_ = §§pop() #any value
                                                                    if _loc7_ or bool(_loc3_):
                                                                        _loc4_.m_numOfMinionsLeftToChoose = _loc5_
                                                                    if _loc7_:
                                                                        self.m_eggsAlreadySelcted.push(_loc3_):
                                                                        if _loc7_ or bool(_loc2_):
                                                                            push(self.m_minionDetailsObject)
                                                                            if not _loc6_:
                                                                                push self.m_currMinionToAdd
                                                                                if not (_loc6_ and bool(param1)):
                                                                                    §§pop().BringInWithMinion(§§pop())
                                                                                    if _loc7_ or bool(_loc2_):
                                                                                        §§push(self.m_minionDetailsObject)
                                                                                        if not (_loc6_ and bool(_loc2_)):
                                                                                            addr201
                                                                                            push(_loc2_.x + 87)
                                                                                            if not (_loc6_ and bool(param1)):
                                                                                                §§pop().x = §§pop()
                                                                                                addr215
                                                                                                push(self.m_minionDetailsObject)
                                                                                                if not (_loc6_ and bool(_loc2_)):
                                                                                                    push(_loc2_.y - 184)
                                                                                                    if not _loc6_:
                                                                                                        §§pop().y = §§pop()
                                                                                                        addr377
                                                                                                        _loc3_ += 1
                                                                                                        if not _loc7_:
                                                                                                            goto(addr318)
                                                                                                        continue loop0
                                                                                                    goto(addr377)
                                                                                                else:
                                                                                                    addr317
                                                                                                    §§pop().BringInWithMinion(self.m_currMinionToAdd)
                                                                                                    addr338
                                                                                                    push(self.m_minionDetailsObject)
                                                                                                    if _loc7_ or bool(_loc2_):
                                                                                                        addr369
                                                                                                        push(_loc2_.x + 87)
                                                                                                        if _loc7_:
                                                                                                            addr362:
                                                                                                            §§pop().x = §§pop()
                                                                                                            push(self.m_minionDetailsObject)
                                                                                                        §§pop().y = §§pop()
                                                                                                        if not _loc7_ or bool(param1):
                                                                                                            continue loop0
                                                                                                        goto(aadr377)
                                                                                                    push(_loc2_.y - 184)
                                                                                                    addr335
                                                                                                goto(addr369)
                                                                                            goto(addr362)
                                                                                    else:
                                                                                        addr362:
                                                                                        push(self.m_minionDetailsObject)
                                                                                        if _loc7_ or bool(param1):
                                                                                            goto(addr335)
                                                                                    goto(addr369)
                                                                                goto(addr362)
                                                                            
                                                                        else: #pause
                                                                            addr326 
                                                                            push(self.m_minionDetailsObject)
                                                                            if _loc7_ or bool(param1):
                                                                                goto(addr335)
                                                                    §§goto(addr369)
                                                                §§goto(addr337)
                                                            §§goto(addr201)
                                                        §§goto(addr362)
                                                    §§goto(addr215)
                                                else:
                                                    addr241
                                                    push(§§pop().m_numOfMinionsLeftToChoose)
                                                    if not _loc7_:
                                                        continue
                                                    addr247
                                                    if §§pop() > §§pop():
                                                        if _loc7_ or bool(_loc3_):
                                                            addr255
                                                            push(_loc2)
                                                            push("This egg contains a ")
                                                            if _loc7_ or bool(_loc2_):
                                                                push(§§pop() + self.m_currMinionToAdd.m_baseMinion.m_baseMinionName)
                                                                if not _loc6_:
                                                                    addr271
                                                                    push(§§pop() + ". Would you like to keep it?")
                                                                §§pop().BringInCharChatBoxWithText(§§pop(),None,self.AddMinion,self.ClosingChatBox)
                                                                self.m_visualsForEgg = GetEggForButtonZone(_loc3_)
                                                                if not (_loc6_ and bool(param1)):
                                                                    self.m_visualsForEggTopLayer = GetEggOnTopLayerForButtonZone(_loc3_)
                                                                addr298
                                                                push((_loc4_ = Singleton.dynamicData).m_numOfMinionsLeftToChoose)
                                                                if not (_loc6_ and bool(self)):
                                                                    push(§§pop() - 1)
                                                                _loc5_ = §§pop()
                                                                if _loc7_ or bool(param1)
                                                                    _loc4_.m_numOfMinionsLeftToChoose = _loc5_
                                                                self.m_eggsAlreadySelected.push(_loc3_)
                                                                goto(addr326)
                                                            goto(addr271)
                                                        goto(addr338)
                                                    goto(addr377)
                                            goto(addr326)
                                        goto(addr255)
                                    else:
                                        push(Singleton.dynamicData)
                                        if not (_loc6_ and bool(_loc3_)):
                                            goto(addr241)
                                    goto(addr298)
                                §§goto(addr247)
                            §§goto(addr241)
                        §§goto(addr362)
                    §§goto(addr377)
                §§goto(addr49)
            §§goto(addr79)
        addr383:
    return
                            







        #just private                                                         
        def ClosingChatBox(self):
            _loc1_ = True
            _loc2_ = False
            if _loc1_:
                self.m_minionDetailsObject.ExitOut()
                if not _loc2_:
                    goto(addr20)
                goto(addr25)
            addr20
            self.m_visualsForEgg.MoveEggIntoGround()
            if not _loc2_:
                addr25:
                self.m_visualsForEggTopLayer.MoveEggIntoGround()                                                        

                                                                                                
    #public

        def AddToFirstAvailablePosition(self):
            _loc2_ = True
            _loc3_ = False
            if _loc2_:
                push(Singleton.dynamicData)
                if not _loc3_:
                §§pop().m_numOfMinionsLeftToChoose = 0   
                if not _loc3_:
                    goto(addr23)
                goto(addr33)
            goto(addr35)
        addr23:
        self.m_currMinionToAdd.ReFillHealthAndEnergy()
        if _loc2_ or bool(self):
            addr35:
            Singleton.dynamicData.AddToOwnedMinions(self.m_currMinionToAdd)
            addr33:
            if _loc1_ or _loc2_:
                self.ClosingChatBox()
        _loc1_ = 0
        while not (_loc3_ and _loc2_):
            if _loc1_ >=9:
                if not (_loc3_ and bool(_loc1_))
                    break
                goto(addr114)
            if self.m_eggsAlreadySelected.indexOf(_loc1_) == -1:
                if (_loc3_ and _loc2_):
                    break
                GetEggForButtonZone(_loc1_).MoveEggIntoGround()
                if not _loc3_:
                    GetEggOnTopLayerForButtonZone(_loc1_).MoveEggIntoGround()
                    if not _loc2_:
                        break
                        
            _loc1_ += 1
        Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD()
        addr114:


        #privates
        def PopupAddToPartySelector(self):
            _loc1_ = True
            _loc2_ = False
            if not _loc2_:
            _loc6_ = self.m_minionDetailsObject.ExitOut()
            if _loc1_:
                Singleton.utility.m_screenControllers.m_topDownScreen.m_eggeryPartySwapMenu.BringIn(this.m_currMinionToAdd)
        

        def AddMinion(self):
            _loc3_ = False
            _loc4_ = True
            _loc1_ = True #can be any
            _loc2_ = 0
            while _loc2_ < 5:
                if Singleton.dynamicData.GetOwnedMinionAt(_loc2_) == None:
                    push(False)
                    if not (_loc3_ and _loc3_):
                        _loc1_ = §§pop()
                        if _loc4_ or bool(loc2):
                            break
                        break
                    addr69:
                    if(§§pop()):
                    TweenLite.to(self,0.25,{"onComplete":this.BringInTheWouldYouLikeToAddPopup})
                    else:
                        self.AddToFirstAvailablePosition()
                    m.displayKeyPress = False
                    goto(addr86)
                _loc2_ += 1
                if _loc3_ and bool(self):
                    addr86:
                    return
            goto(addr69):
            push(_loc1_)


        def BringInTheWouldYouLikeToAddPopup(self):
            _loc2_ = False
            _loc3_ = True
            _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar #MainChar type
            if not (_loc2_ and _loc2_):
                push(_loc1_)
                push("Would you like to add ")
                if not _loc2_:
                    push(§§pop() + self.m_currMinionToAdd.m_baseMinion.m_baseMinionName)
                    if not _loc2_:
                        addr54:
                        push(§§pop() + " to your party?")
                    §§pop().BringInCharChatBoxWithText(§§pop(),None,self.PopupAddToPartySelector,self.AddToFirstAvailiblePosition)
                    goto(addr62)
                goto(addr54)
            addr62:
            


    

            


