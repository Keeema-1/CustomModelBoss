
#execute if predicate kboss:random/500m run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.3
#playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.2
playsound minecraft:block.gravel.break hostile @a ~ ~ ~ 2 0
playsound minecraft:block.nether_bricks.break hostile @a ~ ~ ~ 2 0.5

#particle minecraft:cloud ^-4 ^2 ^-4 0 0 0 0 1
particle minecraft:cloud ^-4 ^2 ^-2 0 0 0 0 1

particle minecraft:block minecraft:dirt ^-4 ^1 ^-2 0 0 0 0 3

tp @s ^0.75 ^ ^ ~18 ~
#tp @s ^-0.75 ^ ^ ~18 ~

execute if predicate kboss:random/200m positioned ^ ^1 ^-3 run function kboss:system/each_boss/martellos/action/common/dirt/1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/19/3to4
