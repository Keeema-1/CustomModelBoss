
data modify storage kboss:temp temp set from storage kboss:pose mantis.run.1

scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.dry 10
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drz 10

function kboss:system/each_boss/mantis/pose/common_legs_reverse
