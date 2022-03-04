
data modify storage kboss:temp temp set from storage kboss:pose mantis.normal.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 3
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 3
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 3

function kboss:system/each_boss/mantis/pose/common
