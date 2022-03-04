
# その場でノーマルアニメーション

tp @s ~ ~ ~ ~1 ~

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/mantis/action/100/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/mantis/action/100/2
