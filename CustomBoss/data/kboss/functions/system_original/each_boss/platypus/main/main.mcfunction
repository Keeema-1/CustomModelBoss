
#execute if score @s kb.anime_time matches 0.. run function kboss:system/each_boss/matsuri/anime/main

# ムービー
execute if entity @s[tag=PlayingMovie] unless score @s kb.action matches 101 unless score @s kb.action matches -1 run function kboss:system/each_boss/platypus/action_change/101

# アクション
execute if score @s kb.action matches 0.. run function kboss:system/each_boss/platypus/action/main

execute if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/platypus/action/common/barrier/main
