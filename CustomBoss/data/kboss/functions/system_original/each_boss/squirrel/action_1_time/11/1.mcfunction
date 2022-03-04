
execute if score @s kb.action_time matches 60 run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 4 0.9

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/11/finish
