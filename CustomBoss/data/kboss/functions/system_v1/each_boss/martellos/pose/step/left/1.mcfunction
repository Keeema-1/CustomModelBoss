
data modify storage kboss:temp temp set from storage kboss:pose martellos.step.left.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 5

function kboss:system/each_boss/martellos/pose/common
