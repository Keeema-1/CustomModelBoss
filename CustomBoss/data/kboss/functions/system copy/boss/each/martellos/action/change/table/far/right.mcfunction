
execute if data storage kboss:test {next_action:1b} run tellraw @a "抽選：遠距離右方"

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1


# 1:歩く
#execute if score @s kb.temp matches 0..1 run function kboss:system/boss/each/martellos/action/change/1
# 4:方向転換前チェック
#execute if score @s kb.temp matches 2..3 run function kboss:system/boss/each/martellos/action/change/4
# 7:叩く(右)
execute if score @s kb.temp matches ..1 run function kboss:system/boss/each/martellos/action/change/7
# 8:叩く(左)
#execute if score @s kb.temp matches ..1 run function kboss:system/boss/each/martellos/action/change/8
# 9:叩く(尻尾)
#execute if score @s kb.temp matches 4 run function kboss:system/boss/each/martellos/action/change/9
# 10:ステップ(右)
#execute if score @s kb.temp matches 8..9 run function kboss:system/boss/each/martellos/action/change/10
# 11:ステップ(左)
#execute if score @s kb.temp matches 10..11 run function kboss:system/boss/each/martellos/action/change/11
# 12:タックル(右)
execute if score @s kb.temp matches 2..5 run function kboss:system/boss/each/martellos/action/change/12
# 13:タックル(左)
#execute if score @s kb.temp matches 2..5 run function kboss:system/boss/each/martellos/action/change/13
# 14:回転(右)
execute if score @s kb.temp matches 6..7 run function kboss:system/boss/each/martellos/action/change/14
# 15:回転(左)
#execute if score @s kb.temp matches 6..7 run function kboss:system/boss/each/martellos/action/change/15
# 16:揺らす
#execute if score @s kb.temp matches 9..10 run function kboss:system/boss/each/martellos/action/change/16
# 17:突進
execute if score @s kb.temp matches 8..11 run function kboss:system/boss/each/martellos/action/change/17
# 18:小突く
#execute if score @s kb.temp matches 12..13 run function kboss:system/boss/each/martellos/action/change/18
# 19:回転土飛ばし(右)
execute if score @s kb.temp matches 12..15 run function kboss:system/boss/each/martellos/action/change/19
# 20:回転土飛ばし(左)
#execute if score @s kb.temp matches 12..15 run function kboss:system/boss/each/martellos/action/change/20
