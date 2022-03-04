
# 走る

## 1:走るモーション1
execute if score @s kb.action_sub matches 1 at @s run function kboss:system/each_boss/matsuri/action/1/1

## 2:走るモーション2
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/matsuri/action/1/2

execute if score @s kb.action_sub matches 1..2 if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/1/finish
