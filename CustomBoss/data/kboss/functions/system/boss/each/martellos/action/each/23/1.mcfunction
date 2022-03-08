
# ステップ(後)


function kboss:system/boss/each/common/action/space/front
execute if data storage kboss:temp {space:1b} run tp @s ^ ^ ^0.9 ~ ~

execute if score @s kb.action_time matches 15.. at @s run tp ~ ~0.1 ~
execute if score @s kb.action_time matches ..14 at @s run tp ~ ~-0.15 ~
execute if score @s kb.action_time matches 1..14 unless block ~ ~-0.1 ~ #kboss:space run function kboss:system/boss/each/martellos/action/each/23/1to2
#execute if score @s kb.action_time matches ..12 at @s run function kboss:system/boss/each/common/action/ypos/main

#execute if score @s kb.action_time matches 12 run function kboss:system/boss/each/martellos/pose/normal/1

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/23/1to2
