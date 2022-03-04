
tp @s ~ ~ ~ facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] eyes

execute if entity @a[tag=KB.SameArea,distance=..16] run function kboss:system/each_boss/squirrel/action/12/finish
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/12/finish
