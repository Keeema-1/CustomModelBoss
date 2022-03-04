
execute if score @s kb.anime_time matches 1.. run scoreboard players remove @s kb.anime_time 1
execute if score @s kb.action_time matches 1.. run scoreboard players remove @s kb.action_time 1

# 0:無
execute if score @s kb.action matches 0 run function kboss:system/each_boss/platypus/action/0/main
# 2:走る
execute if score @s kb.action matches 2 run function kboss:system/each_boss/platypus/action/2/main
# 3:辺りを見渡す
execute if score @s kb.action matches 3 run function kboss:system/each_boss/platypus/action/3/main
# 4:咆哮
execute if score @s kb.action matches 4 run function kboss:system/each_boss/platypus/action/4/main
# 5:噛みつき
execute if score @s kb.action matches 5 run function kboss:system/each_boss/platypus/action/5/main
# 6:噛みつき(左)
execute if score @s kb.action matches 6 run function kboss:system/each_boss/platypus/action/6/main
# 7:噛みつき(右)
execute if score @s kb.action matches 7 run function kboss:system/each_boss/platypus/action/7/main
# 8:ダイブ
execute if score @s kb.action matches 8 run function kboss:system/each_boss/platypus/action/8/main
# 9:タックル(左)
execute if score @s kb.action matches 9 run function kboss:system/each_boss/platypus/action/9/main
# 10:タックル(右)
execute if score @s kb.action matches 10 run function kboss:system/each_boss/platypus/action/10/main
# 11:尻尾(左)
execute if score @s kb.action matches 11 run function kboss:system/each_boss/platypus/action/11/main
# 12:強尻尾(左)
execute if score @s kb.action matches 12 run function kboss:system/each_boss/platypus/action/12/main
# 13:尻尾(右)
execute if score @s kb.action matches 13 run function kboss:system/each_boss/platypus/action/13/main
# 14:強尻尾(右)
execute if score @s kb.action matches 14 run function kboss:system/each_boss/platypus/action/14/main
# 15:尻尾(後)
execute if score @s kb.action matches 15 run function kboss:system/each_boss/platypus/action/15/main
# 16:ジャンプ(左)
execute if score @s kb.action matches 16 run function kboss:system/each_boss/platypus/action/16/main
# 17:水吐き
execute if score @s kb.action matches 17 run function kboss:system/each_boss/platypus/action/17/main

# 99:死亡
execute if score @s kb.action matches 99 run function kboss:system/each_boss/platypus/action/99/main

execute if score @s kb.action matches 100 run function kboss:system/each_boss/platypus/action/100/main

# 101:アニメーション
execute if score @s kb.action matches 101 run function kboss:system/each_boss/platypus/action/101/main
