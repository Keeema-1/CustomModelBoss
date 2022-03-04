
#playsound minecraft:item.bucket.empty hostile @a ~ ~ ~ 2 0
#playsound minecraft:entity.dolphin.jump hostile @a ~ ~ ~ 2 1.5
playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0

#execute if predicate kboss:random/500m run function kboss:system/each_boss/mantis/action/8/2_sub
execute if score @s kb.action_time matches ..50 run function kboss:system/each_boss/mantis/action/8/2_sub

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/8/2to3
