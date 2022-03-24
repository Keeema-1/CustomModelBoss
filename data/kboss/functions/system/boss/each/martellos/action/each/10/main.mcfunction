
# ステップ(左)


function kboss:system/boss/each/common/action/space/left
execute if data storage kboss:temp {space:1b} run tp @s ^0.6 ^ ^ ~4 ~

execute if score @s kb.action_time matches 13.. at @s run tp ~ ~0.1 ~
execute if score @s kb.action_time matches ..12 at @s run tp ~ ~-0.1 ~
execute if score @s kb.action_time matches 1..12 unless block ~ ~-0.1 ~ #kboss:space run function kboss:system/boss/each/martellos/action/each/11/finish
#execute if score @s kb.action_time matches ..12 at @s run function kboss:system/boss/each/common/action/ypos/main

execute if score @s kb.action_time matches 12 run function kboss:system/boss/each/martellos/pose/normal/1

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/11/finish
