
# 接近

function kboss:system/each_boss/mantis/pose/walk/1

scoreboard players set @s kb.action 1
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 240
scoreboard players set @s kb.anime_time 4

tp ~ ~0.1 ~

# 攻撃力
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.1 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run attribute @s generic.attack_knockback base set 0.2
