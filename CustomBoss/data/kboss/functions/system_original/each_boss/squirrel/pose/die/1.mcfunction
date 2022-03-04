
data modify storage kboss:temp temp set from storage kboss:pose squirrel.die.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 1
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 1
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 1

tag @e[tag=KB.Skin,tag=KB.BossCheck] add KB.UsePoseZ

function kboss:system/each_boss/squirrel/pose/common
