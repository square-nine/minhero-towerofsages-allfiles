#pytest

astring = "Leerpo"
line = '          var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_EvilEye_3,"Leerpo","demonicEyeball3",35,55,70,65,85,MinionType.TYPE_DEMONIC);'


startIndex = line.find(astring)
line = line[startIndex:-1]
line = line.split('","')
print(line)
line = line[1].split('"')
print(line)
codename = line[0]



