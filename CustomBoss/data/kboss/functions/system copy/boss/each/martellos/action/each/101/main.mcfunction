
# ムービー


execute if score @s kb.action_sub matches 0 run function kboss:system/boss/each/platypus/action/101/0

execute if score @s kb.action_sub matches 1 run function kboss:system/boss/each/platypus/action/101/1

execute if score @s kb.action_sub matches 2 run function kboss:system/boss/each/platypus/action/101/2

execute if score @s kb.action_sub matches 3 run function kboss:system/boss/each/platypus/action/101/3

execute if score @s kb.action_sub matches 4 run function kboss:system/boss/each/platypus/action/101/4

#execute if score @s kb.anime_time matches 280 run function kboss:system/boss/each/platypus/pose/bark/1

#execute if score @s kb.anime_time matches 320 run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 4 0.9

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/platypus/action/101/finish

execute at @e[tag=platypus_kid,tag=var1,tag=Skin1] run tp @e[tag=platypus_kid,tag=var1,tag=Skin2] ^ ^ ^-0.75

execute at @e[tag=platypus_kid,tag=var2,tag=Skin1] run tp @e[tag=platypus_kid,tag=var2,tag=Skin2] ^ ^ ^-0.75

execute at @e[tag=platypus_kid,tag=var3,tag=Skin1] run tp @e[tag=platypus_kid,tag=var3,tag=Skin2] ^ ^ ^-0.75
