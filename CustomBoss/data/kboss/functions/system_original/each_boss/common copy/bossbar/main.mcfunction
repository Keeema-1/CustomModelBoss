
scoreboard players operation $system area = @s area

execute if entity @s[tag=KB.Noticed] as @a[tag=InField] if score @s area = $system area run tag @s add KB.SameArea

#execute if score @s kb.id matches 1 run bossbar set kboss:health/1 players
execute if score @s kb.id matches 1 run bossbar set kboss:health/1 players @a[tag=KB.SameArea]
execute if score @s kb.id matches 2 run bossbar set kboss:health/2 players @a[tag=KB.SameArea]
execute if score @s kb.id matches 3 run bossbar set kboss:health/3 players @a[tag=KB.SameArea]

tag @a remove KB.SameArea
