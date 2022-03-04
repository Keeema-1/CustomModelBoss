
#execute if score @s kb.anime_time matches 0.. run function kboss:system/each_boss/matsuri/anime/main

# アクション
execute if score @s kb.action matches 0.. run function kboss:system/each_boss/matsuri/action/main

execute if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/matsuri/action/common/barrier/main
