
function kboss:system/boss/each/platypus/action/commmon/player_direction/is_backside

#summon minecraft:slime ~ ~ ~ {Size:1,wasOnGround:0b,Invulnerable:1b,Tags:["KB.Child","KB.Dirt","KB.Bullet","KB.NewSummoned"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Thorn","KB.BulletSkin","KB.NewSummoned"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20214}}]}]}

summon minecraft:armor_stand ~ ~ ~ {Glowing:1b,Invisible:1b,NoGravity:1b,Tags:["KB.Child","KB.Dirt","KB.BulletSkin","KB.NewSummoned"],ArmorItems:[{},{},{},{id:"minecraft:dirt",Count:1b,tag:{CustomModelData:1}}]}

scoreboard players set @e[tag=KB.NewSummoned] kb.action_time 100

execute if data storage kboss:temp {direction:{backside:1b}} facing entity @p eyes as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~180 0
execute unless data storage kboss:temp {direction:{backside:1b}} as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~180 0

execute if entity @a[distance=..6] run scoreboard players set @e[tag=KB.NewSummoned] kb.action 1
execute unless entity @a[distance=..6] if entity @a[distance=..12] run scoreboard players set @e[tag=KB.NewSummoned] kb.action 2
execute unless entity @a[distance=..12] run scoreboard players set @e[tag=KB.NewSummoned] kb.action 3

execute if entity @e[tag=KB.NewSummoned,scores={kb.action=1}] run tellraw @a "near"
execute if entity @e[tag=KB.NewSummoned,scores={kb.action=2}] run tellraw @a "normal"
execute if entity @e[tag=KB.NewSummoned,scores={kb.action=3}] run tellraw @a "far"

tag @e[tag=KB.NewSummoned] remove KB.NewSummoned
