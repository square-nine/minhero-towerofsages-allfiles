why am I getting distracted from the recoding?

it's because if I can understand how the levels can load, I might be able to create my own levels
if i can do that, it means that not only might it be an easy way to mod, but I can see how the sprites interface, so I can trial out the texturepacks.

Main features/functions:
LoadLevelFromXMLOBject() -> Loads up an XML object (from where?) and adds data from it to itself via the below function

AddObject() -> Depending on the type of object, add different things
They can be kind of clarified as such:
Visuals -> just add the visual sprite, usually as a room tile
AddJustVisualTopObject -> Seems like a variant of the above that goes above the tile for detailing
There are also glows able to be added ("AddExpertVisualObjectGlow")
SplashObject -> A layer above something, "splash" like splashscreen
SoundDistanceObject -> A sound emitter, that can have varying sound depending on distance
AddFireTorch -> Add some torches :D
AddButtonZoneCollObject -> Area for a button
AddInvisibleWallCollObject -> Add a colliding rect
Add[Eggery/Courtyard/Elevator]WallCollObject -> Adds an entrance/exit for leaving Hatchery/level. Pairs with "roomtransitionObject" to provide a way to switch between. There are also teleporters in here too.
There are things called "entryObject"s that cause "AddRoomTransitionGoToPointObject", which set the points at which the doors lead you to.
AddRegularDoorObject -> Adds a door
The chests (gold + gem chest) get random chance to place them
The eggs get their own handler (AddEggVisualObject), probably because they get unique interactions, same with the Titan egg (AddTitanEggVisualObject)
Speech bubbles also get a unqiue function (AddChatBox)
The floor tiles are unneccesarily unique:
The *tiles* set the backing music, and have a unique generation function for small details on the floor, depending on the floor
There are music override objects as well (i.e intro), and options to override with a louder/quieter noise


Quite a lot, and this is is not even the actual functions!


