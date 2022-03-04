
# ムービー
#execute if entity @s[tag=PlayingMovie] unless score @s kb.action matches 101 unless score @s kb.action matches -1 run function kboss:system/each_boss/martellos/action_change/101

# アクション
execute if score @s kb.action matches 0.. run function kboss:system/each_boss/martellos/action/main

execute if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/martellos/action/common/barrier/main
