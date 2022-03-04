
function kboss:system/each_boss/platypus/action/commmon/player_direction/is_frontside

summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["KB.Child","KB.Water","KB.Bullet","KB.NewSummoned"],ArmorItems:[{},{},{},{id:"minecraft:exposed_cut_copper",Count:1b}]}

scoreboard players set @e[tag=KB.NewSummoned] kb.action_time 100

execute if data storage kboss:temp {direction:{frontside:1b}} facing entity @p eyes as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~ 0
execute unless data storage kboss:temp {direction:{frontside:1b}} as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~ 0

execute if entity @a[distance=..6] run scoreboard players set @e[tag=KB.NewSummoned] kb.action 1
execute unless entity @a[distance=..6] if entity @a[distance=..12] run scoreboard players set @e[tag=KB.NewSummoned] kb.action 2
execute unless entity @a[distance=..12] run scoreboard players set @e[tag=KB.NewSummoned] kb.action 3

tag @e[tag=KB.NewSummoned] remove KB.NewSummoned
