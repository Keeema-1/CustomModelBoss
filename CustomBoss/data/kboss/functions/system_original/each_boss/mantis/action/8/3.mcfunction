
playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0

#execute if predicate kboss:random/500m run function kboss:system/each_boss/mantis/action/8/3_sub
function kboss:system/each_boss/mantis/action/8/3_sub

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/8/3to2
