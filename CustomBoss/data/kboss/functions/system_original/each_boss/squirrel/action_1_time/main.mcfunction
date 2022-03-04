
execute if score @s kb.anime_time matches 1.. run scoreboard players remove @s kb.anime_time 1
execute if score @s kb.action_time matches 1.. run scoreboard players remove @s kb.action_time 1

# 0:無
execute if score @s kb.action matches 0 run function kboss:system/each_boss/squirrel/action/0/main
# 1:歩行
execute if score @s kb.action matches 1 run function kboss:system/each_boss/squirrel/action/1/main
# 2:噛みつき
execute if score @s kb.action matches 2 run function kboss:system/each_boss/squirrel/action/2/main
# 3:噛みつき(右)
execute if score @s kb.action matches 3 run function kboss:system/each_boss/squirrel/action/3/main
# 4:噛みつき(左) 
execute if score @s kb.action matches 4 run function kboss:system/each_boss/squirrel/action/4/main
# 5:タックル(右)
execute if score @s kb.action matches 5 run function kboss:system/each_boss/squirrel/action/5/main
# 6:タックル(左)
execute if score @s kb.action matches 6 run function kboss:system/each_boss/squirrel/action/6/main
# 7:回転
execute if score @s kb.action matches 7 run function kboss:system/each_boss/squirrel/action/7/main
# 9:尻尾振り
execute if score @s kb.action matches 9 run function kboss:system/each_boss/squirrel/action/9/main
# 10:ジャンプ
execute if score @s kb.action matches 10 run function kboss:system/each_boss/squirrel/action/10/main
# 11: 咆哮
execute if score @s kb.action matches 11 run function kboss:system/each_boss/squirrel/action/11/main
# 12: 辺りを見渡す
execute if score @s kb.action matches 12 run function kboss:system/each_boss/squirrel/action/12/main

# 99:死亡
execute if score @s kb.action matches 99 run function kboss:system/each_boss/squirrel/action/99/main

execute if score @s kb.action matches 100 run function kboss:system/each_boss/squirrel/action/100/main
