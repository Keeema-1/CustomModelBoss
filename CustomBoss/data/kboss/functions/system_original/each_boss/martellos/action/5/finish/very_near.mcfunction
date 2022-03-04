
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# 10:ステップ(右)
execute if score @s kb.temp matches 0 run function kboss:system/each_boss/martellos/action_change/10
# 11:ステップ(左)
execute if score @s kb.temp matches 1 run function kboss:system/each_boss/martellos/action_change/11
# 16:揺らす
execute if score @s kb.temp matches 2 run function kboss:system/each_boss/martellos/action_change/16
# 21:ステップ(後)
execute if score @s kb.temp matches 3..6 run function kboss:system/each_boss/martellos/action_change/21

# 他のアクション
execute if score @s kb.temp matches 7.. run function kboss:system/each_boss/martellos/action_change/table/main
