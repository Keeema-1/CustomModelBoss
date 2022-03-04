

function kboss:system/each_boss/matsuri/action/common/space/right
execute if data storage kboss:temp {space:1b} run tp @s ^-0.5 ^ ^ ~-2 ~

execute if score @s kb.action_time matches 13.. at @s run tp ~ ~0.1 ~
execute if score @s kb.action_time matches ..12 at @s run tp ~ ~-0.1 ~

execute if score @s kb.action_time matches 1..12 unless block ~ ~-0.1 ~ #kboss:space run function kboss:system/each_boss/matsuri/action/19/1to2
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/19/1to2
