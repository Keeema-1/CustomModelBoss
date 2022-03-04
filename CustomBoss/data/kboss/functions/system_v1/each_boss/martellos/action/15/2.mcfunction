
#execute if predicate kboss:random/500m run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.3
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.2

#particle minecraft:cloud ^-4 ^2 ^-4 0 0 0 0 1
particle minecraft:cloud ^4 ^2 ^-2 0 0 0 0 1

tp @s ^-0.75 ^ ^ ~-18 ~
#tp @s ^-0.75 ^ ^ ~18 ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/15/2to3
