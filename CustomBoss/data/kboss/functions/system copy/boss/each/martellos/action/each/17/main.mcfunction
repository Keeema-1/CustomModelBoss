
# 突進

execute if score @s kb.action_sub matches 1..2 if score @s kb.action_time matches 160 run function kboss:system/boss/each/martellos/action/each/17/to_run

execute if score @s kb.action_sub matches 1 run function kboss:system/boss/each/martellos/action/each/17/1

execute if score @s kb.action_sub matches 2 run function kboss:system/boss/each/martellos/action/each/17/2

execute if score @s kb.action_sub matches 3 run function kboss:system/boss/each/martellos/action/each/17/3

execute if score @s kb.action_sub matches 4 run function kboss:system/boss/each/martellos/action/each/17/4

execute if score @s kb.action_sub matches 1..2 if score @s kb.action_time matches ..100 run function kboss:system/boss/each/martellos/action/each/17/to3

#execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/17/finish
