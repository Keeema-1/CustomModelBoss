
execute if score @s kb.anime_time matches 1.. run scoreboard players remove @s kb.anime_time 1
execute if score @s kb.action_time matches 1.. run scoreboard players remove @s kb.action_time 1

# 0:無
execute if score @s kb.action matches 0 run function kboss:system/each_boss/martellos/action/0/main
# 1:歩く
execute if score @s kb.action matches 1 run function kboss:system/each_boss/martellos/action/1/main
# 2:見渡す
execute if score @s kb.action matches 2 run function kboss:system/each_boss/martellos/action/2/main
# 3:咆哮
execute if score @s kb.action matches 3 run function kboss:system/each_boss/martellos/action/3/main
# 4:方向転換前チェック
execute if score @s kb.action matches 4 run function kboss:system/each_boss/martellos/action/4/main
# 5:右にターン
execute if score @s kb.action matches 5 run function kboss:system/each_boss/martellos/action/5/main
# 6:左にターン
execute if score @s kb.action matches 6 run function kboss:system/each_boss/martellos/action/6/main
# 7:叩く(右)
execute if score @s kb.action matches 7 run function kboss:system/each_boss/martellos/action/7/main
# 8:叩く(左)
execute if score @s kb.action matches 8 run function kboss:system/each_boss/martellos/action/8/main
# 9:叩く(尻尾)
execute if score @s kb.action matches 9 run function kboss:system/each_boss/martellos/action/9/main
# 10:ステップ(右)
execute if score @s kb.action matches 10 run function kboss:system/each_boss/martellos/action/10/main
# 11:ステップ(左)
execute if score @s kb.action matches 11 run function kboss:system/each_boss/martellos/action/11/main
# 12:タックル(右)
execute if score @s kb.action matches 12 run function kboss:system/each_boss/martellos/action/12/main
# 13:タックル(左)
execute if score @s kb.action matches 13 run function kboss:system/each_boss/martellos/action/13/main
# 14:回転(右)
execute if score @s kb.action matches 14 run function kboss:system/each_boss/martellos/action/14/main
# 15:回転(左)
execute if score @s kb.action matches 15 run function kboss:system/each_boss/martellos/action/15/main
# 16:揺らす
execute if score @s kb.action matches 16 run function kboss:system/each_boss/martellos/action/16/main
# 17:突進
execute if score @s kb.action matches 17 run function kboss:system/each_boss/martellos/action/17/main
# 18:小突く
execute if score @s kb.action matches 18 run function kboss:system/each_boss/martellos/action/18/main
# 19:回転土飛ばし(右)
execute if score @s kb.action matches 19 run function kboss:system/each_boss/martellos/action/19/main
# 20:回転土飛ばし(左)
execute if score @s kb.action matches 20 run function kboss:system/each_boss/martellos/action/20/main
# 21:ステップ(後)
execute if score @s kb.action matches 21 run function kboss:system/each_boss/martellos/action/21/main

# 99:死亡
execute if score @s kb.action matches 99 run function kboss:system/each_boss/martellos/action/99/main

execute if score @s kb.action matches 100 run function kboss:system/each_boss/martellos/action/100/main

# 右にターン
execute if score @s kb.action matches 102 run function kboss:system/each_boss/martellos/action/102/main
