
data modify storage kboss:temp temp set from storage kboss:pose mantis.swing.right.3

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 20
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 20
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 20

function kboss:system/each_boss/mantis/pose/common
