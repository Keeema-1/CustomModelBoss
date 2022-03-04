
#execute rotated ~ 0 run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:firework_star",Count:1b},NoGravity:1b,Tags:["KB.Firework","KB.Bullet","KB.NewSummoned"]}
execute rotated ~ 0 run summon minecraft:bat ~ ~ ~ {Invulnerable:1b,Tags:["KB.Child","KB.Firework","KB.Bullet","KB.NewSummoned"],ActiveEffects:[{Ambient:0b,ShowParticles:0b,Duration:2147483647,Id:14b,Amplifier:0b}],Silent:1b,NoGravity:1b,NoAI:1b,Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b},NoGravity:1b,Tags:["KB.Firework","KB.BulletSkin","KB.NewSummoned"]}]}

particle minecraft:large_smoke ^ ^ ^ 0.1 0.1 0.1 0.1 20
particle minecraft:flame ^ ^ ^ 0.1 0.1 0.1 0.1 5

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.8


scoreboard players set @e[tag=KB.NewSummoned] kb.action_time 16

#execute as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=KB.NewSummoned] run tp @s ~ ~ ~ ~ ~

tag @e[tag=KB.NewSummoned] remove KB.NewSummoned
