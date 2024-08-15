#going to add a quick renamed section of all the assets.

import os

ASSET_PATH = "D:\Min HEROOO\minhero-towerofsages-allfiles\Source Files\images_raw"

files = os.listdir(ASSET_PATH)

for item in files:
    if "_" in item and "." in item:
        first_dot = item.find(".")
        newstr = item[first_dot:]
        first_underscore = newstr.find("_")
        if first_underscore != -1:
            newstr_2 = newstr[first_underscore:]
            newstr_2 != newstr
            os.rename(os.path.join(ASSET_PATH, item), os.path.join(ASSET_PATH, newstr_2[1:]))
        else: pass
        