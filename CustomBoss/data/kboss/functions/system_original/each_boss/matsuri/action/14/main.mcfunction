
# ジャンプ花火

## 1:準備
execute if score @s kb.action_sub matches 1 if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/14/after1

## 2:ジャンプ(右から)
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/matsuri/action/14/2

## 3:ジャンプ(左から)
execute if score @s kb.action_sub matches 3 run function kboss:system/each_boss/matsuri/action/14/3

## 4:余韻
execute if score @s kb.action_sub matches 4 run function kboss:system/each_boss/matsuri/action/14/4
