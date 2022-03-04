
tp @s ^0.5 ^ ^ ~18 ~

execute positioned as @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:cloud ^ ^1 ^-3 0.1 0.1 0.1 0 1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/7/2to3
