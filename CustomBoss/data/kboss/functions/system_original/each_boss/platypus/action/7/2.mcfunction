
tp @s ^-0.4 ^ ^-0.2 ~10 ~

execute positioned as @e[distance=..16,tag=KB.Head,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:sweep_attack ^-3 ^1 ^-2 0.1 0.1 0.1 1.5 1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/7/2to3
