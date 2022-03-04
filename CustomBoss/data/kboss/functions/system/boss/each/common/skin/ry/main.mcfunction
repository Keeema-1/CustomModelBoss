
execute if score @s kb.ry < @s kb.ry_goal run function kboss:system/boss/each/common/skin/ry/add

execute if score @s kb.ry > @s kb.ry_goal run function kboss:system/boss/each/common/skin/ry/remove

execute if score @s kb.ry = @s kb.ry_goal run scoreboard players set @s kb.dry -1
