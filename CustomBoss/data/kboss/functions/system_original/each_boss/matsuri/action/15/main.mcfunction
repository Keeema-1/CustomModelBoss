
# 走る

## 0:予備動作
execute if score @s kb.action_sub matches 0 run function kboss:system/each_boss/matsuri/action/15/0

## 1:走るモーション1
execute if score @s kb.action_sub matches 1 at @s run function kboss:system/each_boss/matsuri/action/15/1

## 2:走るモーション2
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/matsuri/action/15/2

execute if score @s kb.action_sub matches 1..2 if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/15/finish

execute unless entity @a[distance=..32,gamemode=!spectator] run function kboss:system/each_boss/matsuri/action/15/finish
