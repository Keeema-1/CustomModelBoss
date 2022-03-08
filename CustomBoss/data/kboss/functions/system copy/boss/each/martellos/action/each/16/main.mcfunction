
# 揺らす

execute if score @s kb.action_sub matches 1 run function kboss:system/boss/each/martellos/action/each/16/1

execute if score @s kb.action_sub matches 2 run function kboss:system/boss/each/martellos/action/each/16/2

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/16/finish
