
data modify storage kboss:temp temp set from storage kboss:pose mantis.turn.right.3

scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drx 5
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.dry 5
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drz 5

function kboss:system/each_boss/mantis/pose/common_legs
