
execute if entity @s[tag=var1] if entity @e[distance=..8,type=minecraft:salmon,tag=var1,limit=1] run function map:system/mob/each_mob/platypus_kid/moving/main

execute if entity @s[tag=var2] if entity @e[distance=..8,type=minecraft:salmon,tag=var2,limit=1] run function map:system/mob/each_mob/platypus_kid/moving/main

execute if entity @s[tag=var3] if entity @e[distance=..8,type=minecraft:salmon,tag=var3,limit=1] run function map:system/mob/each_mob/platypus_kid/moving/main


execute if entity @s[tag=var1,tag=Skin1] unless entity @e[distance=..1,type=minecraft:salmon,tag=var1,limit=1] facing entity @e[type=minecraft:salmon,tag=var1,limit=1] eyes run tp ^ ^ ^0.1

execute if entity @s[tag=var2,tag=Skin1] unless entity @e[distance=..1,type=minecraft:salmon,tag=var2,limit=1] facing entity @e[type=minecraft:salmon,tag=var2,limit=1] eyes run tp ^ ^ ^0.1

execute if entity @s[tag=var3,tag=Skin1] unless entity @e[distance=..1,type=minecraft:salmon,tag=var3,limit=1] facing entity @e[type=minecraft:salmon,tag=var3,limit=1] eyes run tp ^ ^ ^0.1


execute if entity @s[tag=var1,tag=Skin1] if entity @e[distance=..1,type=minecraft:salmon,tag=var1,limit=1] run kill @e[distance=..1,type=minecraft:salmon,tag=var1,limit=1]

execute if entity @s[tag=var2,tag=Skin1] if entity @e[distance=..1,type=minecraft:salmon,tag=var2,limit=1] run kill @e[distance=..1,type=minecraft:salmon,tag=var2,limit=1]

execute if entity @s[tag=var3,tag=Skin1] if entity @e[distance=..1,type=minecraft:salmon,tag=var3,limit=1] run kill @e[distance=..1,type=minecraft:salmon,tag=var3,limit=1]


execute if entity @s[tag=Skin1] at @s if block ~ ~0.2 ~ #map:space run tp ~ ~0.05 ~

