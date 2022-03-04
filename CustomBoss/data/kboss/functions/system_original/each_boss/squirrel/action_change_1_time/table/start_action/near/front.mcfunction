
execute if data storage kboss {test:1b} run tellraw @a "抽選：近距離正面"

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# 1:パンチ
execute if score @s kb.temp matches 0..2 run function kboss:system/each_boss/matsuri/action_change/1
# 2:噛みつき
execute if score @s kb.temp matches 3 run function kboss:system/each_boss/matsuri/action_change/2
# 3:発射
execute if score @s kb.temp matches 4..6 run function kboss:system/each_boss/matsuri/action_change/3
# 6:バックステップ
execute if score @s kb.temp matches 7 run function kboss:system/each_boss/matsuri/action_change/6
# 7:回転
execute if score @s kb.temp matches 8..9 run function kboss:system/each_boss/matsuri/action_change/7
# 8:バックステップ発射
execute if score @s kb.temp matches 10..11 run function kboss:system/each_boss/matsuri/action_change/8
# 9:咆哮
execute if score @s kb.temp matches 12 run function kboss:system/each_boss/matsuri/action_change/9
# 11:ジャンプ
execute if score @s kb.temp matches 13 run function kboss:system/each_boss/matsuri/action_change/11
# 12:接近->スライディング
execute if score @s kb.temp matches 14 run function kboss:system/each_boss/matsuri/action_change/12
# 13:接近->ターン
execute if score @s kb.temp matches 15 run function kboss:system/each_boss/matsuri/action_change/13
#function kboss:system/each_boss/matsuri/action_change/12
