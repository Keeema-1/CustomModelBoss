
#summon minecraft:slime ~ ~ ~ {Size:1,wasOnGround:0b,Invulnerable:1b,Tags:["KB.Child","KB.Thorn","KB.Bullet","KB.NewSummoned","KB.WillTP"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Thorn","KB.BulletSkin","KB.NewSummoned"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20214}}]}]}
summon minecraft:slime ~ ~ ~ {Size:1,wasOnGround:0b,Invulnerable:1b,Tags:["KB.Child","KB.Thorn","KB.Bullet","KB.NewSummoned"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Thorn","KB.BulletSkin","KB.NewSummoned"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20214}}]}]}

scoreboard players set @e[tag=KB.NewSummoned] kb.action_time 30

#execute as @e[tag=KB.NewSummoned] run tp @s ~ ~-10 ~ ~ 2
execute as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~ 2

tag @e[tag=KB.NewSummoned] remove KB.NewSummoned
