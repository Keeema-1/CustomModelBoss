
#tp @s ~ ~ ~ facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] eyes
tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1] eyes

#execute if entity @a[tag=KB.SameArea,distance=..16] run function kboss:system/each_boss/platypus/action/3/finish
execute if entity @a[distance=..16] run function kboss:system/each_boss/platypus/action/3/finish
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/3/finish
