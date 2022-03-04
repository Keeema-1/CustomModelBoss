
scoreboard players set $system kb.attack_damage 6
scoreboard players set $system kb.max_health 800


summon minecraft:marker ~ ~ ~ {Tags:["KB.SpawnPos"]}

spreadplayers ~ ~ 8 16 false @e[tag=KB.SpawnPos]

execute at @e[tag=KB.SpawnPos] positioned ~ ~ ~ run function kboss:system/summon/matsuri/large/sub

kill @e[tag=KB.SpawnPos]

#execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.warning hostile @s ~ ~ ~ 1 1
#execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.warning hostile @s ~ ~ ~ 1 1
#execute as @a[distance=..64] at @s run playsound minecraft:entity.polar_bear.warning hostile @s ~ ~ ~ 1 1

#function kboss:system/each_boss/action_change/2

tag @e[tag=KB.NewSummon] remove KB.BossCheck
tag @e[tag=KB.NewSummon] remove KB.NewSummon
