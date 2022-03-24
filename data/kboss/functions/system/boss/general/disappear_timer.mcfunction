
scoreboard players add @s kb.disappear_timer 2

execute if score @s kb.disappear_timer matches 10.. run function kboss:system/boss/each/die
