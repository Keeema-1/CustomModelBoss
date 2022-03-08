
execute if score @s kb.action_time matches 11.. run function kboss:system/boss/each/common/action/space/back
execute if score @s kb.action_time matches 11.. if data storage kboss:temp {space:1b} at @s run tp @s ^ ^ ^-0.1

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/18/1to2
