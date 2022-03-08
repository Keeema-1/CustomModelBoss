
tag @a[distance=..128] add KB.Target

scoreboard players operation $target kb.id = @s kb.target_id

execute as @a[tag=KB.Target] if score @s kb.id = $target kb.id run tag @s add KB.MainTarget

execute unless entity @a[tag=KB.MainTarget] if entity @a[tag=KB.Target] run function kboss:system/boss/eacg/common/target/change/main
