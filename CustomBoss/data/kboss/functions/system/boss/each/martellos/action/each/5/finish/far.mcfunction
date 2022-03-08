
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# 1:歩く
execute if score @s kb.temp matches 0..3 run function kboss:system/boss/each/martellos/action/each/1/start
# 10:ステップ(右)
#execute if score @s kb.temp matches 3 run function kboss:system/boss/each/martellos/action/each/10/start
# 11:ステップ(左)
#execute if score @s kb.temp matches 4 run function kboss:system/boss/each/martellos/action/each/11/start

# 他のアクション
execute if score @s kb.temp matches 4.. run function kboss:system/boss/each/martellos/action/random/main
