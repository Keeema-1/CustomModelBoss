
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1


# 1:歩行
execute if score @s kb.temp matches 0..1 run function kboss:system/each_boss/squirrel/action_change/1
# 2:噛みつき
execute if score @s kb.temp matches 2 run function kboss:system/each_boss/squirrel/action_change/2
# 3:噛みつき(右)
execute if score @s kb.temp matches 3 run function kboss:system/each_boss/squirrel/action_change/3
# 4:噛みつき(左)
#execute if score @s kb.temp matches 3..5 run function kboss:system/each_boss/squirrel/action_change/4
# 5:タックル(右)
execute if score @s kb.temp matches 4 run function kboss:system/each_boss/squirrel/action_change/5
# 6:タックル(左)
# 7:回転
execute if score @s kb.temp matches 5 run function kboss:system/each_boss/squirrel/action_change/7
# 9:尻尾振り
execute if score @s kb.temp matches 6 run function kboss:system/each_boss/squirrel/action_change/9
# 10:ジャンプ
execute if score @s kb.temp matches 7 run function kboss:system/each_boss/squirrel/action_change/10
