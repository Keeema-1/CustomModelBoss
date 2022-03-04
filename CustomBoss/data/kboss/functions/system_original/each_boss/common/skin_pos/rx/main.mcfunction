
execute if score @s kb.rx < @s kb.rx_goal run function kboss:system/each_boss/common/skin/rx/add

execute if score @s kb.rx > @s kb.rx_goal run function kboss:system/each_boss/common/skin/rx/remove

execute if score @s kb.rx = @s kb.rx_goal run scoreboard players set @s kb.drx -1
