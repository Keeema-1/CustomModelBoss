
data modify storage kboss:temp temp set from storage kboss:pose mantis.swing.right.3

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 15
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 15
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 0

function kboss:system/each_boss/mantis/pose/common

scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.rz_goal 0
