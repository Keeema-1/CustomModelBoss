
execute if score @s kb.anime_time matches 1.. run scoreboard players remove @s kb.anime_time 1
execute if score @s kb.action_time matches 1.. run scoreboard players remove @s kb.action_time 1

# 0:無
execute if score @s kb.action matches 0 run function kboss:system/each_boss/mantis/action/0/main
# 1:接近
execute if score @s kb.action matches 1 run function kboss:system/each_boss/mantis/action/1/main
# 2:見渡す
execute if score @s kb.action matches 2 run function kboss:system/each_boss/mantis/action/2/main
# 3:咆哮
execute if score @s kb.action matches 3 run function kboss:system/each_boss/mantis/action/3/main
# 4:方向確認
execute if score @s kb.action matches 4 run function kboss:system/each_boss/mantis/action/4/main
# 5:方向転換(右)
execute if score @s kb.action matches 5 run function kboss:system/each_boss/mantis/action/5/main
# 6:方向転換(左)
execute if score @s kb.action matches 6 run function kboss:system/each_boss/mantis/action/6/main
# 7:ダイブ
execute if score @s kb.action matches 7 run function kboss:system/each_boss/mantis/action/7/main
# 8:毒ブレス
execute if score @s kb.action matches 8 run function kboss:system/each_boss/mantis/action/8/main
# 9:水吐き
execute if score @s kb.action matches 9 run function kboss:system/each_boss/mantis/action/9/main
# 10:突進
execute if score @s kb.action matches 10 run function kboss:system/each_boss/mantis/action/10/main
# 11:鎌叩きつけ(右)
execute if score @s kb.action matches 11 run function kboss:system/each_boss/mantis/action/11/main
# 12:鎌叩きつけ(左)
# 13:スイング(右)
execute if score @s kb.action matches 13 run function kboss:system/each_boss/mantis/action/13/main
# 14:スイング(左)
# 15:噛みつき
execute if score @s kb.action matches 15 run function kboss:system/each_boss/mantis/action/15/main

# 99:死亡
execute if score @s kb.action matches 99 run function kboss:system/each_boss/mantis/action/99/main

execute if score @s kb.action matches 100 run function kboss:system/each_boss/mantis/action/100/main

execute if score @s kb.action matches 101 run function kboss:system/each_boss/mantis/action/101/main

execute if score @s kb.action matches 102 run function kboss:system/each_boss/mantis/action/102/main

execute if score @s kb.action matches 103 run function kboss:system/each_boss/mantis/action/103/main
