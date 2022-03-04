
# その場でノーマルアニメーション

tp @s ~ ~ ~ ~1 ~

execute if score @s kb.action_sub matches 1 run function kboss:system/boss/each/martellos/action/each/100/1

execute if score @s kb.action_sub matches 2 run function kboss:system/boss/each/martellos/action/each/100/2
