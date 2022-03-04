
execute unless entity @a[distance=..6] facing entity @a[sort=nearest,limit=1] eyes rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~

execute at @s run function kboss:system/each_boss/matsuri/action/common/ypos/main

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/matsuri/action/1/2to1
