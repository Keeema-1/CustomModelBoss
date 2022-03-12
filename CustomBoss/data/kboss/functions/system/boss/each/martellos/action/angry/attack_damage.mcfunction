
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1.1 run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
