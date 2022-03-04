
data modify storage kboss:temp temp set from storage kboss:pose squirrel.bite.right.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 2
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 2
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 2

#tag @e[tag=KB.Skin,tag=KB.BossCheck] remove KB.UsePoseZ

function kboss:system/each_boss/squirrel/pose/common_reverse
