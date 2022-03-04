
data modify storage kboss:temp temp set from storage kboss:pose squirrel.tackle.right.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 5

#tag @e[tag=KB.Skin,tag=KB.BossCheck] add KB.UsePoseZ

function kboss:system/each_boss/squirrel/pose/common
