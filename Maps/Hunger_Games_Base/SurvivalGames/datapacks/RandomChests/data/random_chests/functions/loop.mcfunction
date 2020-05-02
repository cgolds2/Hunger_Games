execute as @a at @s anchored eyes if block ^ ^ ^ minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^ minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^ {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}
execute as @a at @s anchored eyes if block ^ ^ ^1 minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^1 minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^1 {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}
execute as @a at @s anchored eyes if block ^ ^ ^2 minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^2 minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^2 {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}
execute as @a at @s anchored eyes if block ^ ^ ^3 minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^3 minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^3 {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}
execute as @a at @s anchored eyes if block ^ ^ ^4 minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^4 minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^4 {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}
execute as @a at @s anchored eyes if block ^ ^ ^5 minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^5 minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^5 {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}
execute as @a at @s anchored eyes if block ^ ^ ^6 minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^6 minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^6 {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}
execute as @a at @s anchored eyes if block ^ ^ ^7 minecraft:chest run execute as @a at @s anchored eyes unless block ^ ^ ^7 minecraft:chest{CustomName:'{"text":"Arena Chest"}'} run data merge block ^ ^ ^7 {CustomName:'{"text":"Arena Chest"}',LootTable:"random_chests:arena_chest"}


execute if score counter timer matches 101..200 run scoreboard players set counter timer 0
execute if score game_start timer matches 1 run scoreboard players add counter timer 1
execute if score counter timer matches 100 run title @a actionbar {"text":"START","color":"dark_red"}
execute if score counter timer matches 101..200 run scoreboard players set game_start timer 0
execute if score counter timer matches 1..100 run execute as @a at @s anchored eyes run tp @e[type=minecraft:armor_stand,name=STAY_PUT,sort=nearest,limit=1,distance=..5]
execute if score counter timer matches 101..200 run kill @e[type=minecraft:armor_stand,name=STAY_PUT,sort=nearest]