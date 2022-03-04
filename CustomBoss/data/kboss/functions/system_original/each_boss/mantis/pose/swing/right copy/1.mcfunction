
data modify storage kboss:temp temp set from storage kboss:pose mantis.swing.right.1

scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drx 2
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.dry 2
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drz 2

tag @e[distance=..16,tag=KB.RightArm3,tag=KB.Skin,tag=KB.BossCheck,limit=1] add KB.UsePoseZ
tag @e[distance=..16,tag=KB.RightArm4,tag=KB.Skin,tag=KB.BossCheck,limit=1] add KB.UsePoseZ

function kboss:system/each_boss/mantis/pose/common
