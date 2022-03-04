
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# 19:ステップ(右)
execute if score @s kb.temp matches 0 run function kboss:system/each_boss/matsuri/action_change/19
# 20:ステップ(左)
execute if score @s kb.temp matches 1 run function kboss:system/each_boss/matsuri/action_change/20
# 11:バックステップ
execute if score @s kb.temp matches 2 run function kboss:system/each_boss/matsuri/action_change/11

# 他のアクション
execute if score @s kb.temp matches 3.. run function kboss:system/each_boss/matsuri/action_change/table/main
