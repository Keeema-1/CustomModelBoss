
data modify storage kboss:temp temp set from storage kboss:pose squirrel.bite.front.3

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 4
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 4
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 4

#tag @e[tag=KB.Skin,tag=KB.BossCheck] remove KB.UsePoseZ

function kboss:system/each_boss/squirrel/pose/common
