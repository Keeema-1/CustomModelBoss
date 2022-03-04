
# アクション
execute if score @s kb.action matches 0.. run function kboss:system/each_boss/mantis/action/main

execute if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/mantis/action/common/barrier/main
