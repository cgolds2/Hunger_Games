scoreboard players set game_start timer 1
kill @e[type=!minecraft:player]
execute as @a at @s run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,CustomName:"{\"text\":\"STAY_PUT\"}"}
execute as @a at @s run tp @e[type=!minecraft:player,limit=1,sort=nearest] @s
gamemode adventure @a
time set noon
gamerule doDaylightCycle false
gamerule doMobSpawning false
clear @a
give @a minecraft:lapis_lazuli 32
effect give @a minecraft:instant_health 1 255
effect give @a minecraft:saturation 1 255