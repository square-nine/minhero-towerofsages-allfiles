#takes StaticData and reworks int

path = "D:/Min HEROOO/Min Hero All Files/minhero-towerofsages-allfiles/Source Files/scripts/PresistentData/StaticData.as"
file = open(path, "r").readlines()

DaList = []

for item in file:
    if "this.m_typeEffectivenessArray[param1][param2]" in item:
        pass
    elif "this.m_typeEffectivenessArray[_loc1_][_loc2_]" in item:
        pass
    elif "this.m_typeEffectivenessArray[" in item:
        DaList.append(item)

#print(DaList)

#formatting
DaFormattedList = []
for item in DaList:
    newTempVal = item.split("   ")
    while "" in newTempVal:
        newTempVal.remove("")
    newTempVal2 = newTempVal[0].split(" = ")
    temp = newTempVal2[0].lstrip("this.m_typeEffectivenessArray")
    temp = temp.split("]")
    temp = [(temp[0].lstrip("[MinionType.TYPE"))[1:], (temp[1].lstrip("[MinionType.TYPE"))[1:]]
    DaFormattedList.append([temp[0],temp[1], (newTempVal2[1].rstrip("_MODIFIER;\n").lstrip("this.") + "E")])
    print(DaFormattedList) #[typeATK][typeTRG], modifier

Output = open("D:/Min HEROOO/Min Hero All Files/TypeEffectivenessArray.csv", "w")
for item in DaFormattedList:
    Output.write(item[0] + "," + item[1] + "," + item[2] + "," + "\n")

Output.close()

