
#execute if predicate kboss:random/500m run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.3
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.2

#particle minecraft:cloud ^-4 ^2 ^-4 0 0 0 0 1
particle minecraft:cloud ^-4 ^2 ^-2 0 0 0 0 1

execute if entity @s[tag=!KB.Angry] run tp @s ^0.75 ^ ^ ~18 ~
execute if entity @s[tag=KB.Angry] run tp @s ^0.8 ^ ^ ~20 ~
#tp @s ^-0.75 ^ ^ ~18 ~

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/14/2to3
