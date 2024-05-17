# Editing Min Hero Save Files

Here is a guide to edit save files for Min Hero: Tower of Sages, if you play this game with my provided files or on Flashpoint. Currently unsure about editing/retrieving website save files, so I'd avoid those sites to play Min Hero if you want to be able to back up, modify or share your save file.

## Getting Save files
First: Play on Flashpoint or using the GitHub release. No websites will do!
Then: Open file explorer and navigate to `C:\Users\[username]\AppData\Roaming\Macromedia\Flash Player\#SharedObjects`. This is where Flash Player will store your save games.
Then: If there are multiple folders in this folder, repeat for each one:
* If you use Flashpoint, there should be a a folder called `armorgames.com`, then another folder called `minhero`inside that one. Open them and reach `C:\Users\[username]\AppData\Roaming\Macromedia\Flash Player\#SharedObjects\[some random name\armorgames.com\minhero\min-hero-tower-of-sa-15474.swf\`.
* If you use the GitHub release, there should be folder called `localhost` or `#localWithNet`, and then click through the folders that represent the path of the exe.

There should be a `TCrpgInitialData.sol` file and a `TCrpgSaveSlot` file(s).
The `TCrpgInitialData.sol` file stores the data for what you see on the save slot selector
The  `TCrpgSaveSlot` will store a save file for one of the save slots, with  `TCrpgSaveSlot0.sol` being for the first slot,  `TCrpgSaveSlot1` for the middle slot, and  `TCrpgSaveSlot2` for the last one. If you don't have all 3 it's fine: they are only created if there is a save there.

Copy the  `TCrpgSaveSlot` file of the one you want to mod to somewhere else, to use it as a backup if you screw up the save!

## Setting up area to mod
Then, head to https://mariani.life/projects/minerva/, which is an editor of these types of files (conveniently!) and on that site, click "Open" and "Choose File". Select the file you want to modify and click "Open".

When you open the file, there will be loads of different things to change. This is because the save files stores the best and current star rating of every trainer *even before you meet them*. So it is quite hard to bulk-change things, a question that requires solving with that.

## What you can change!

### Minion Modification:
First, you need to find out what ID represents the minion. Each minion in the save file has a number to identify their position. This number will be 0-4 for each minion in the current party, and 5-199 for the minions in storage. If the minion to mod is in your team, it's probably faster to type `minion[number]name` and see if the name is the one you want.

Once you have the minion you want, then here's what you can change: These code lines assume `minion[number]` is the line "minion" + the number you found. For example, the first minion in your party would be `minion0`
* The statbonus: Type `minion[number]statbonus`. This is a number of the stat, with numbers 0-5 meaning HP, Energy, Attack, Healing, Speed, None in that order.
* The EXP: Type `minion[number]exp`. This is the number of EXP gained, and thus able to change the levels. The game has been designed though such that the levels will apparently be on level 60. I haven't checked if this is a display error or that the value will always get cut off at level 60, maybe that's an experiment to do.
* The actual minion it is: Type `minion[number]dexID`. This is the ID of the minion it references, for all base stats. 0-101 corresponding to 1-102 in the minion list you can find on the [Wiki](https://minhero.fandom.com/wiki/Minion_List) 
* The name: Type `minion[number]name`. This is just the name you gave the minion. Not really useful as you can change it anyway in the game.
* Prescence of a minion: Type `minion[number]`. Lets the game know there is actually a minion there! Essential if you want to spawn a minion in or completely remove one, as it *could* break the game.
* Moves: Type `minion[number]move[move_num]`. Decides what moves the minion can have, with -99 as a placeholder for no move, and 0-892 being different moves and move tiers in-game. Will try to create a spreadsheet for that to share, but for now just DM me for a specific move.

### Gem modification:
There are variables for gems (0-149) and there are gem variables for the minions themselves, but I have yet to experiment with them

### Metadata/General Modification:

Note: Star total is not calculated with a single value, but as a summation of all of your best attempts at all trainers. But, you *might be able to* set a negative value to "Spent Stars" to get more stars

* Tutorial completion: Type `m_aretutorialson`. A choice between enabling or disabling them, I believe it's there for easy disabling in Hard Mode.
* Tutorial viewing: `m_hastutorialsbeenseen[tutorial_number]` . A choice to enable if a player has seen that tutorial or not.
* Map unlocking: Type `m_ismapunlocked[floor_num]`. Able to lock/unlock maps for each level, important if you keep getting lost and unable to find a map! (0-31 for each floor from 1-1)
* Floor unlocking/completion: Type `m_hasbeatenfloor[floor_number]`. Able to change what floors you have beaten (even in Hard Mode). Allows for passive unlocking of other floor, which could break the game if all done at once (I don't know how the animating works, after all)
* Star upgrade levels: Type `m_starupgradeamounts[stat_number]`. Change the level of the star upgrade amount! Doesn't affect star count. Numbers 0-7 mean upgrades in HP, Energy, Attack, Healing, * Speed, Move Speed, EXP gain, Money gain.
* Money: Type `m_currmoney.` The amount of money you have. Very simple to use, good if you need lots of money to test out something.
* Spent Stars: Type `m_numofspentstars`. The number of stars you have spent on things. 

### Level Modification:
* Change current floor: Type `m_currflooroftower`. Able to change which floor you were on. Interesting as you might be able to bypass being unable to actually be there due to floor unlocking.
* Position in level: Type `m_topdowncharposition[x/y]`. Allows you to change the position of the character as X + Y coordinate. Good if you are testing out a new map, or teleporting them.
* Facing of character: Type `m_chardirectionsforsave`. Allows you to change the facing of the character. Is it necessary? 
* Number of Hatchery keys: Type `m_curreggerykeys`. Number of keys for Hatchery. Surprisingly an integer value, so you can technically get enough keys for all the eggs!
* Number of normal keys: Type `m_currkeysonfloor`. Number of keys to unlock the door to fight the Minor Sage. If you are currently on a difficult level, you can use this to quickly get the keys you need!
* Number of retries at Hatchery: Type `m_numofminionslefttochoose`. Number or rerolls. Simple to change.

## Final notes
There are some other variables that you can change, but whether they are actually needed is debateable. These include flags to show if you own a minion type, which will probably be reactive to owning that type of minion to unlock it in the minionpedia.
