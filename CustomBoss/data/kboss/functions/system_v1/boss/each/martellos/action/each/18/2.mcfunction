
execute if score @s kb.action_time matches 3.. run function kboss:system/boss/each/martellos/action/common/space/front
execute if score @s kb.action_time matches 3.. if data storage kboss:temp {space:1b} at @s run tp @s ^ ^ ^0.5

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/18/finish
