
function kboss:system/each_boss/platypus/action/commmon/player_direction/area

#summon minecraft:slime ~ ~-10 ~ {Size:1,wasOnGround:0b,OnGround:1b,Invulnerable:1b,Tags:["KB.Child","KB.Water","KB.Bullet","KB.NewSummoned","KB.WillTP"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Water","KB.BulletSkin","KB.NewSummoned","KB.Center"],Small:0b,ArmorItems:[{},{},{},{id:"minecraft:exposed_cut_copper",Count:1b}]}]}
summon minecraft:slime ~ ~-10 ~ {Size:1,wasOnGround:0b,OnGround:1b,Invulnerable:1b,Tags:["KB.Child","KB.Water","KB.Bullet","KB.NewSummoned","KB.WillTP"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Water","KB.BulletSkin","KB.NewSummoned","KB.Center"],Small:0b,ArmorItems:[{},{},{},{id:"minecraft:exposed_cut_copper",Count:1b}]}]}

scoreboard players set @e[tag=KB.NewSummoned] kb.action_time 100

execute if data storage kboss:temp {direction:{area:"front"}} facing entity @p eyes as @e[tag=KB.NewSummoned,tag=KB.Bullet] run tp @s ~ ~ ~ ~ ~
execute unless data storage kboss:temp {direction:{area:"front"}} as @e[tag=KB.NewSummoned,tag=KB.Bullet] run tp @s ~ ~ ~ ~ ~

tag @e[tag=KB.NewSummoned] remove KB.NewSummoned
