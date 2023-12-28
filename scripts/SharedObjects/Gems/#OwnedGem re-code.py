#OwnedGem re-code
#here we gooo

import States.StatType
import Utilities.Singleton
import flash.display.Sprite
import flash.text.TextField
import flash.text.TextFieldAutoSize
import flash.text.TextFormat
import flash.text.TextFormatAlign
from random import random


class OwnedGem():
    self._rawStats = [] #number type
    self.m_tier = 0 #int
    self.m_facetPositions = [] #integer type


    def push(args):
        pass

    #public
    def OwnedGem(self):
        #got rid of _loc1_ and _loc2_ as they do not get referenced or require referencing
        super()
        self._rawStats = {"STAT_HEALTH": 0, "STAT_ENERGY":0, "STAT_ATK":0, "STAT_SPD":0, "STAT:HEALING":0}
        self.m_facetPositions = [0,0,0,0,0,0,0,0,0,0,0,0]
        self.GetNewFacets()

    def GetNewFacets(self):
        _loc5_ = True
        _loc6_ = False
        _loc4_ = 0 #can be any
        _loc1_ = [False,False,False,False,False,False,False,False,False,False,False,False] #12-segment boolean list
        _loc2_ = 0 #int
        while True:
            push(_loc2_)
            if not (_loc6_ and bool(loc1)):
                if §§pop() < len(_loc1_):
                    _loc1_[_loc2_] = True
                    if _loc6_:
                        continue
                    _loc2_ += 1
                    if _loc5_ or bool(_loc1_):
                        continue
                break
            break
        _loc3_ = §§pop() #can be any
        if not _loc6_:
            loop1:
            while True:
                push(_loc3_)
                loop2:
                while §§pop() < 12:
                    while True:
                        push(int(random() * 12))
                        if _loc6_:
                            break
                        _loc4_ = §§pop()
                        if _loc1_[_loc4_]:
                            if _loc6_ and bool(self):
                                break loop2
                            _loc1_[_loc4_] = False
                            self.m_facetPositions[_loc3_] = _loc4_ *30
                            if _loc5_ or   _loc3_:
                                _loc3_ += 1
                                if _loc6_:
                                    break loop2
                            continue loop1

    def CreategemWithTier(self, param1, param2): #param1, param2 are ints
        _loc4_ = False
        _loc5_ = True
        if _loc5_ or bool(self):
            self.m_tier = param1
        push(self.GetRandomGemMod())
        if not _loc4_:
            push(§§pop())
        _loc3_ = §§pop() #any
        if _loc5_:
            self._rawStats[param2] = (3 ** param1) * _loc3_
        
    def GetRandomGemMod(self):
        _loc1_ = False
        _loc2_ = True
        push(1)
        push(random() * 85)
        if not _loc1_:
            push(40)
            if not _loc1_:
                push(§§pop() - §§pop())
                if _loc2_:
                    addr28
                    push(§§pop() / 100)
                return §§pop() + §§pop()
        goto(addr28)


    def CreateRandomGemWithTier(self, param1, param2=-99): #param1 = int, param2 = number
        _loc5_ = False
        _loc6_ = True
        _loc3_ = int(random() * 5)
        if _loc6_:
            self.m_tier = param1
        push(self.GetRandomGemMod())
        if not _loc5_:
            push(§§pop())
        _loc4_ = §§pop()
        if _loc6_ or bool(_loc3_):
            self._rawStats[_loc3_] = 3**param1 * _loc4_


    
    #private
    def GetMaxRawStat(self): #returns a number
        _loc3_ = False
        _loc4_ = True
        _loc1_ = 0 #any
        _loc2_ = 0 #int
        while _loc2_ < len(self._rawStats):
            push(_loc1_)
            if not (_loc3_ and bool(_loc1_)):
                push(§§pop() + self._rawStats[_loc2_])
                if not (_loc3_ and _loc3_):
                    _loc1_ = §§pop()
                    if _loc3_ and bool(self):
                        break
                    _loc2_ += 1
                    if _loc3_ and bool(_loc2_):
                        break
                    continue
                    continue
            return §§pop()
        goto(addr78)
        push(_loc1_)

    
    def GetGemName(self):  #str
        _loc1_ = True
        _loc2_ = False
        push("Gem (tier )")
        if not _loc2_:
            push(§§pop() + self.m_tier)
            if not loc2:
                addr21:
                push(§§pop() + ")")
            return §§pop()
        goto(addr21)


    #public again
    def GetTooltip(self): #Sprite type
        _loc11_ = False
        _loc12_ = True
        _loc9_ = 0 #any
        _loc1_ = Sprite() #new sprite object
        _loc2_ = TextFormat() #new TextFormat object
        if not _loc11_:
            _loc2_.color = 15921906
            if not (_loc11_ and _loc3_):
                _loc2_.size(21)
                if not _loc11_:
                    addr41
                    _loc2_.align(TextFormatAlign.CENTER)
            _loc3_ = TextField() #new TextField
            _loc3_.y = -6
            _loc3_.width = 200
            if not _loc11_:
                _loc3_.embedFonts = True
                if not _loc11_:
                    _loc3_.defaultTextFormat = _loc2_
                    addr75
                    _loc3_.wordWrap = True
                _loc3_.autoSize = TextFieldAutoSize.CENTER
                _loc3_.text = self.GetGemName()
                _loc3_.selectable = false
                _loc4_:TextField
                (_loc4_ = self.GetTextFieldForGemDescription()).y = 27 + _loc3_.y
                _loc5_ = 5
                _loc6_ = 2
                _loc7_ = 6
                _loc8_ = 20
                if not _loc11_:
                    if len(_loc3_) > len(_loc4_):
                        if _loc12_:
                            push(int(len(_loc3_)))
                            if not (_loc11_ and bool(_loc2_)):
                                _loc9_ = §§pop()
                                if _loc12_:
                                    addr136
                            else:
                                addr142
                                _loc9_ = §§pop()
                        push(int(_loc4_.textHeight))
                    else:
                        push(int(_loc4_.width))
                        if not _loc11_:
                            goto(addr142)
                    _loc10_ = §§pop() #can be any
                    if _loc12_ or bool(_loc1_):
                        _loc1_.graphics.beginFill(15066856,0.85)
                        _loc1_.graphics.drawRoundRect(-_loc5_ - _loc6_,-_loc5_ - _loc6_,_loc9_ + _loc5_ * 2 + _loc6_ * 2,_loc10_ + _loc8_ + _loc5_ * 3 + _loc6_ * 2,_loc7_)
                        _loc1_.graphics.drawRoundRect(-_loc5_,-_loc5_,_loc9_ + _loc5_ * 2,_loc10_ + _loc8_ + _loc5_ * 3,_loc7_)
                        if not (_loc11_ and bool(self)):
                            goto(addr218)

                        goto(addr268)
                    addr218
                    _loc1_.graphics.endFill()
                     _loc1_.graphics.beginFill(6186100,0.95)
                     _loc1_.graphics.drawRoundRect(-_loc5_,-_loc5_,_loc9_ + _loc5_ * 2,_loc10_ + _loc8_ + _loc5_ * 3,_loc7_)
                     if loc12 or bool(_loc2_):
                        _loc1_.graphics.endFill()
                        _loc1_.addChild(_loc3_)
                        if not _loc11_:
                            addr268
                            _loc1_.addChild(_loc4_)
                    return _loc1_
                goto(addr136)
            goto(addr75)
        goto(addr41)
    goto(addr51)



    #public






