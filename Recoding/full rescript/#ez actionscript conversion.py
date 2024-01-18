#ez actionscript conversion
#but very scuffed

import os
#hard-set path
path = "D:/Min HEROOO/scripts/TopDown/Trainers/TrainerSystem.as"
ASFile = open(path, "r")
ASFileData = ASFile.readlines()

newPyFile = []

for item in ASFileData:
    if ";" in item:
        item.replace(";", "")
    if "{" in item:
        item.replace("{", "")
    if "}" in item:
        item.replace("}", "")
    
