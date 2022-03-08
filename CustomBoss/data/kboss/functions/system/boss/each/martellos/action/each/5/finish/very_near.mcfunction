
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

execute at @s run function kboss:system/boss/each/common/action/player_direction/is_leftside

# 10:ステップ(右)
execute if score @s kb.temp matches 0..1 if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/boss/each/martellos/action/each/10/start
# 11:ステップ(左)
execute if score @s kb.temp matches 0..1 if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/boss/each/martellos/action/each/11/start
# 21:ステップ(後)
execute if score @s kb.temp matches 2..3 run function kboss:system/boss/each/martellos/action/each/11/start
# 22:ステップ(後)
execute if score @s kb.temp matches 4..5 run function kboss:system/boss/each/martellos/action/each/12/start

# 他のアクション
execute if score @s kb.temp matches 6.. run function kboss:system/boss/each/martellos/action/random/main
