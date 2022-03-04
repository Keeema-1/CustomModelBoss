
data modify storage kboss:temp temp set from storage kboss:pose squirrel.tail.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 5
scoreboard players set @e[tag=KB.Skin,tag=KB.Tail1,tag=KB.BossCheck] kb.dry 20
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 5

#tag @e[tag=KB.Skin,tag=KB.BossCheck] remove KB.UsePoseZ

function kboss:system/each_boss/squirrel/pose/common
