
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# 1:歩く
execute if score @s kb.temp matches 0..3 run function kboss:system/each_boss/martellos/action_change/1
# 10:ステップ(右)
#execute if score @s kb.temp matches 3 run function kboss:system/each_boss/martellos/action_change/10
# 11:ステップ(左)
#execute if score @s kb.temp matches 4 run function kboss:system/each_boss/martellos/action_change/11

# 他のアクション
execute if score @s kb.temp matches 4.. run function kboss:system/each_boss/martellos/action_change/table/main
