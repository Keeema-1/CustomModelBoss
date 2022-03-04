
function kboss:system/each_boss/squirrel/model/mouth/close

execute positioned as @e[distance=..16,tag=KB.Head,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:sweep_attack ^ ^1 ^1 0.1 0.1 0.1 1.5 4

playsound minecraft:entity.panda.bite hostile @a ~ ~ ~ 2 1

tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck,limit=1] add KB.Attack
