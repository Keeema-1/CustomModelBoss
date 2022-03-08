
execute if data storage kboss:test {next_action:1b} run tellraw @a "抽選：近距離後方"

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1


# 1:歩く
#execute if score @s kb.temp matches 0..1 run function kboss:system/boss/each/martellos/action/each/1/start
# 4:方向転換前チェック
#execute if score @s kb.temp matches 2..3 run function kboss:system/boss/each/martellos/action/each/4/start
# 7:叩く(右)
#execute if score @s kb.temp matches 0..2 run function kboss:system/boss/each/martellos/action/each/7/start
# 8:叩く(左)
#execute if score @s kb.temp matches 3..4 run function kboss:system/boss/each/martellos/action/each/8/start
# 9:叩く(尻尾)
execute if score @s kb.temp matches ..7 run function kboss:system/boss/each/martellos/action/each/9/start
# 10:ステップ(右)
#execute if score @s kb.temp matches 8..9 run function kboss:system/boss/each/martellos/action/each/10/start
# 11:ステップ(左)
#execute if score @s kb.temp matches 10..11 run function kboss:system/boss/each/martellos/action/each/11/start
# 12:タックル(右)
execute if score @s kb.temp matches 8 run function kboss:system/boss/each/martellos/action/each/12/start
# 13:タックル(左)
execute if score @s kb.temp matches 9 run function kboss:system/boss/each/martellos/action/each/13/start
# 14:回転(右)
execute if score @s kb.temp matches 10..11 run function kboss:system/boss/each/martellos/action/each/14/start
# 15:回転(左)
execute if score @s kb.temp matches 12..13 run function kboss:system/boss/each/martellos/action/each/15/start
# 16:揺らす
#execute if score @s kb.temp matches 12..13 run function kboss:system/boss/each/martellos/action/each/16/start
# 17:突進
#execute if score @s kb.temp matches 11 run function kboss:system/boss/each/martellos/action/each/17/start
# 18:小突く
#execute if score @s kb.temp matches 12..13 run function kboss:system/boss/each/martellos/action/each/1/start8
# 19:回転土飛ばし(右)
execute if score @s kb.temp matches 14 run function kboss:system/boss/each/martellos/action/each/19/start
# 20:回転土飛ばし(左)
execute if score @s kb.temp matches 15 run function kboss:system/boss/each/martellos/action/each/10/start
