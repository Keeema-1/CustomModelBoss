
execute if score @s kb.ry < @s kb.ry_goal run function kboss:system/each_boss/common/skin/ry/add

execute if score @s kb.ry > @s kb.ry_goal run function kboss:system/each_boss/common/skin/ry/remove

execute if score @s kb.ry = @s kb.ry_goal run scoreboard players set @s kb.dry -1
