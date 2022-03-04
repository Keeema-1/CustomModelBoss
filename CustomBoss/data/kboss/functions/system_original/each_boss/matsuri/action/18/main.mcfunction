
# 左回転噛みつき

## 1:準備
execute if score @s kb.action_sub matches 1 if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/18/1to2

## 2:噛みつき
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/matsuri/action/18/2

## 3:余韻
#execute if score @s kb.action_sub matches 3 run function kboss:system/each_boss/matsuri/action/8/3
