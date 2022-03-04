
execute if score @s kb.rz < @s kb.rz_goal run function kboss:system/boss/each/common/skin/rz/add

execute if score @s kb.rz > @s kb.rz_goal run function kboss:system/boss/each/common/skin/rz/remove

execute if score @s kb.rz = @s kb.rz_goal run scoreboard players set @s kb.drz -1
