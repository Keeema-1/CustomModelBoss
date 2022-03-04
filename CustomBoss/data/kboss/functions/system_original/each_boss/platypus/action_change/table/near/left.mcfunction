
execute if data storage kboss:test {next_action:1b} run tellraw @a "抽選：近距離右方"

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1


# 2:走る
execute if score @s kb.temp matches ..1 run function kboss:system/each_boss/platypus/action_change/2
# 5:噛みつき
#execute if score @s kb.temp matches 4 run function kboss:system/each_boss/platypus/action_change/5
# 6:噛みつき(左)
execute if score @s kb.temp matches 2..5 run function kboss:system/each_boss/platypus/action_change/6
# 7:噛みつき(右)
#execute if score @s kb.temp matches 6 run function kboss:system/each_boss/platypus/action_change/7
# 8:ダイブ
execute if score @s kb.temp matches 6 run function kboss:system/each_boss/platypus/action_change/8
# 9:タックル(左)
execute if score @s kb.temp matches 7..10 run function kboss:system/each_boss/platypus/action_change/9
# 10:タックル(右)
#execute if score @s kb.temp matches 9 run function kboss:system/each_boss/platypus/action_change/10
# 11:尻尾(左)
execute if score @s kb.temp matches 11..12 run function kboss:system/each_boss/platypus/action_change/11
# 12:強尻尾(左)
execute if score @s kb.temp matches 13..14 run function kboss:system/each_boss/platypus/action_change/12
# 11:尻尾(右)
#execute if score @s kb.temp matches 12 run function kboss:system/each_boss/platypus/action_change/13
# 12:強尻尾(右)
#execute if score @s kb.temp matches 13 run function kboss:system/each_boss/platypus/action_change/14
# 15:尻尾(後)
#execute if score @s kb.temp matches 14 run function kboss:system/each_boss/platypus/action_change/15
# 16:ジャンプ(左)
#execute if score @s kb.temp matches 15 run function kboss:system/each_boss/platypus/action_change/16
# 17:水吐き
execute if score @s kb.temp matches 15 run function kboss:system/each_boss/platypus/action_change/17
