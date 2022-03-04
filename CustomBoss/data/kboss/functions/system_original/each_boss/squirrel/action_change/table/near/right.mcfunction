
execute if data storage kboss:test {next_action:1b} run tellraw @a "抽選：近距離右方"

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1


# 1:歩行
execute if score @s kb.temp matches 0 run function kboss:system/each_boss/squirrel/action_change/1
# 2:噛みつき
execute if score @s kb.temp matches 1 run function kboss:system/each_boss/squirrel/action_change/2
# 3:噛みつき(右)
execute if score @s kb.temp matches 2..5 run function kboss:system/each_boss/squirrel/action_change/3
# 4:噛みつき(左)
# 5:タックル(右)
execute if score @s kb.temp matches 6..10 run function kboss:system/each_boss/squirrel/action_change/5
# 6:タックル(左)
# 7:回転
execute if score @s kb.temp matches 11..13 run function kboss:system/each_boss/squirrel/action_change/7
# 9:尻尾振り
execute if score @s kb.temp matches 14 run function kboss:system/each_boss/squirrel/action_change/9
# 10:ジャンプ
execute if score @s kb.temp matches 15 run function kboss:system/each_boss/squirrel/action_change/10
