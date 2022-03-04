
function kboss:system/each_boss/platypus/action/commmon/player_direction/area

summon minecraft:slime ~ ~-10 ~ {Size:1,wasOnGround:0b,OnGround:1b,Invulnerable:1b,Tags:["KB.Child","KB.Thorn","KB.Bullet","KB.NewSummoned","KB.WillTP","KB.Left"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Child","KB.Thorn","KB.BulletSkin","KB.NewSummoned","KB.Left"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20214}}]}]}
summon minecraft:slime ~ ~-10 ~ {Size:1,wasOnGround:0b,OnGround:1b,Invulnerable:1b,Tags:["KB.Child","KB.Thorn","KB.Bullet","KB.NewSummoned","KB.WillTP","KB.Center"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Child","KB.Thorn","KB.BulletSkin","KB.NewSummoned","KB.Center"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20214}}]}]}
summon minecraft:slime ~ ~-10 ~ {Size:1,wasOnGround:0b,OnGround:1b,Invulnerable:1b,Tags:["KB.Child","KB.Thorn","KB.Bullet","KB.NewSummoned","KB.WillTP","KB.Right"],Silent:1b,ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],NoGravity:1b,NoAI:0b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Tags:["KB.Child","KB.Thorn","KB.BulletSkin","KB.NewSummoned","KB.Right"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20214}}]}]}

scoreboard players set @e[tag=KB.NewSummoned] kb.action_time 40

execute if data storage kboss:temp {direction:{area:"front"}} facing entity @p eyes as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~ ~10
execute unless data storage kboss:temp {direction:{area:"front"}} as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~ ~10

tag @e[tag=KB.NewSummoned] remove KB.NewSummoned
