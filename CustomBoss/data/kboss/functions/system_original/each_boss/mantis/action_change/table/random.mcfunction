
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# 0:無
#execute if score @s kb.temp matches 0 run function kboss:system/each_boss/mantis/action_change/0
# 1:接近
execute if score @s kb.temp matches ..2 run function kboss:system/each_boss/mantis/action_change/1
# 4:方向転換
execute if score @s kb.temp matches 3..8 run function kboss:system/each_boss/mantis/action_change/4
# 7:ダイブ
execute if score @s kb.temp matches 9 run function kboss:system/each_boss/mantis/action_change/7
# 8:毒ブレス
execute if score @s kb.temp matches 10 run function kboss:system/each_boss/mantis/action_change/8
# 9:水吐き
execute if score @s kb.temp matches 11 run function kboss:system/each_boss/mantis/action_change/9
# 10:突進
execute if score @s kb.temp matches 12 run function kboss:system/each_boss/mantis/action_change/10
# 11:鎌叩きつけ(右)
execute if score @s kb.temp matches 13 run function kboss:system/each_boss/mantis/action_change/11
# 12:鎌叩きつけ(左)
# 13:スイング(右)
execute if score @s kb.temp matches 14 run function kboss:system/each_boss/mantis/action_change/13
# 14:スイング(左)
# 15:噛みつき
execute if score @s kb.temp matches 15 run function kboss:system/each_boss/mantis/action_change/15
