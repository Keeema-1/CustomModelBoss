
## 接近
execute rotated ~ 0 run tp @s ^ ^ ^0.6

execute at @s run function kboss:system/each_boss/matsuri/action/common/ypos/main

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/matsuri/action/15/2to1
