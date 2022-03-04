
#execute if score @s kb.anime_time matches 0.. run function kboss:system/each_boss/matsuri/anime/main

# ムービー
execute if entity @s[tag=PlayingMovie] unless score @s kb.action matches 101 run function kboss:system/each_boss/squirrel/action_change/101

# アクション
execute if score @s kb.action matches 0.. run function kboss:system/each_boss/squirrel/action/main
execute if score @s kb.action matches 0.. at @s run function kboss:system/each_boss/squirrel/action/main

execute if entity @s[tag=KB.Angry] if score @s kb.action matches 0.. at @s run function kboss:system/each_boss/squirrel/action/main
execute if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/squirrel/main/angry/main

execute if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/squirrel/action/common/barrier/main
