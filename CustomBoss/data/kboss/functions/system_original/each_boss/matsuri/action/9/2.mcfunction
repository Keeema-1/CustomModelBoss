
tp @s ^-0.75 ^ ^ ~-24 ~
#tp @s ^ ^ ^ ~-8 ~
#tp @s ^ ^ ^ ~-10 ~

#particle minecraft:sweep_attack ^ ^1 ^-1
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/9/2to3
