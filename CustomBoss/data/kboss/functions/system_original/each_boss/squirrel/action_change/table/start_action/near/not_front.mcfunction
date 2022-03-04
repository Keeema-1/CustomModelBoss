
execute if data storage kboss {test:1b} run tellraw @a "抽選：近距離非正面"

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# 6:バックステップ
execute if score @s kb.temp matches 1 run function kboss:system/each_boss/matsuri/action_change/6
# 7:回転
execute if score @s kb.temp matches 2..4 run function kboss:system/each_boss/matsuri/action_change/7
# 8:バックステップ発射
execute if score @s kb.temp matches 5..7 run function kboss:system/each_boss/matsuri/action_change/8
# 9:咆哮
execute if score @s kb.temp matches 7..8 run function kboss:system/each_boss/matsuri/action_change/9
# 10:左噛みつき
execute if score @s kb.temp matches 9..12 run function kboss:system/each_boss/matsuri/action_change/10
# 11:ジャンプ
execute if score @s kb.temp matches 13 run function kboss:system/each_boss/matsuri/action_change/11
# 12:接近->スライディング
execute if score @s kb.temp matches 14 run function kboss:system/each_boss/matsuri/action_change/12
# 13:接近->ターン
execute if score @s kb.temp matches 15 run function kboss:system/each_boss/matsuri/action_change/13
#function kboss:system/each_boss/matsuri/action_change/12
