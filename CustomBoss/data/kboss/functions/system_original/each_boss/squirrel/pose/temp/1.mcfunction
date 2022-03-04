
data modify storage kboss:temp temp set from storage kboss:pose squirrel.temp

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 5

#tag @e[tag=KB.Skin,tag=KB.BossCheck] remove KB.UsePoseZ

function kboss:system/each_boss/squirrel/pose/common
