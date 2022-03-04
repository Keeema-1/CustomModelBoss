
data modify storage kboss:temp temp set from storage kboss:pose martellos.push.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 4
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 4
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 1

function kboss:system/each_boss/martellos/pose/common
